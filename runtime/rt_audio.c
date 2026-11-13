/* rt_audio.c - the cartridge's M4A (MP2K) sound engine, ported from its
 * hand-written assembly (asm/audio_*.s), plus the GBA sound output.
 *
 * The engine's C half (song start/stop, fades, CgbSound, frequency tables)
 * is translated with the rest of the decomp.  The assembly half lives here:
 *
 *   ProcessAudioPlayerAsm      MPlayMain: sequencer tick and channel update
 *   ply_* command handlers     reached through the dispatch table at
 *                              SoundInfo+0x34 (ROM 0x086E9BAC)
 *   StartAudioTrackNoteAsm     ply_note: channel allocation
 *   RunAudioMixerAsm           SoundMain/SoundMainRAM: envelopes and the
 *                              8-bit PCM mixer
 *   SyncAudioDmaAtVblankAsm    m4aSoundVSync
 *
 * Each routine follows its assembly instruction for instruction, on GBA
 * memory, so the engine's data matches a real cartridge byte for byte.
 *
 * Output: the GBA plays the mixer's buffer through FIFO A (right) and
 * FIFO B (left).  Here each mixer pass hands its finished segment to a
 * ring buffer, together with the four PSG channels (CgbSound drives them
 * through the sound registers, which rt_audio_io_write follows).  The
 * front end drains the ring at the engine's sample rate. */

#include "rt.h"
#include "rt_mem.h"
#include "decomp_gen.h"
#include <string.h>

#define IDENT        0x68736D53u
#define CORE_PTR     0x03007FF0u
#define CLOCK_TABLE  0x086E9E20u

typedef void (*fn0)(void);
typedef void (*fn1)(u32);
typedef void (*fn2)(u32, u32);
typedef void (*fn3)(u32, u32, u32);
typedef u32 (*fn3r)(u32, u32, u32);

#define CALL0(a)          ((fn0)rt_fn(a))()
#define CALL1(a, x)       ((fn1)rt_fn(a))(x)
#define CALL2(a, x, y)    ((fn2)rt_fn(a))(x, y)
#define CALL3(a, x, y, z) ((fn3)rt_fn(a))(x, y, z)

int g_rt_audio_on = 1;

/* --- sample cache ----------------------------------------------------------------
 * Instrument samples are spread over about 1.5 MiB of the cartridge.  Read
 * through the 32 KiB page cache they would push the game's own pages out
 * (on the N-Gage the cache holds only 16 pages), so the mixer streams them
 * in 1 KiB chunks through a small cache of its own. */

#define CH_SHIFT 10u
#define CH_SIZE  (1u << CH_SHIFT)
#define CH_MASK  (CH_SIZE - 1u)
#define NCHUNK   48

static u8 s_cbuf[NCHUNK][CH_SIZE];
static u32 s_ctag[NCHUNK];          /* chunk number + 1, 0 = empty */
static u8 s_cref[NCHUNK];
static int s_chand;
static u32 s_last_tag = 0xFFFFFFFFu;
static const u8 *s_last;

static const u8 *chunk(u32 tag)
{
    u32 a = tag << CH_SHIFT;
    int i;
    if ((a >> 25) != 4u) {
        /* not the cartridge: RAM is read in place */
        static u8 scratch[CH_SIZE];
        u32 pg = a >> RT_PAGE_SHIFT, k;
        if (pg < RT_PAGES && g_rt_rd[pg]) return g_rt_rd[pg] + (a & RT_PAGE_MASK);
        for (k = 0; k < CH_SIZE; k++) scratch[k] = LD8(a + k);
        return scratch;
    }
    tag = (a & 0x01FFFFFFu) >> CH_SHIFT;
    for (i = 0; i < NCHUNK; i++) {
        if (s_ctag[i] == tag + 1u) {
            s_cref[i] = 1;
            return s_cbuf[i];
        }
    }
    for (;;) {
        if (!s_ctag[s_chand] || !s_cref[s_chand]) break;
        s_cref[s_chand] = 0;
        s_chand = (s_chand + 1) % NCHUNK;
    }
    i = s_chand;
    s_chand = (s_chand + 1) % NCHUNK;
    rt_rom_fetch(tag << CH_SHIFT, s_cbuf[i], CH_SIZE);
    s_ctag[i] = tag + 1u;
    s_cref[i] = 1;
    return s_cbuf[i];
}

static s32 smp(u32 a)
{
    u32 tag = a >> CH_SHIFT;
    if (tag != s_last_tag) {
        s_last = chunk(tag);
        s_last_tag = ((a >> 25) == 4u) ? tag : 0xFFFFFFFFu;
    }
    return (s8)s_last[a & CH_MASK];
}

static u32 smp32(u32 a)
{
    return ((u32)(u8)smp(a)) | ((u32)(u8)smp(a + 1u) << 8) | ((u32)(u8)smp(a + 2u) << 16) | ((u32)(u8)smp(a + 3u) << 24);
}

/* CalculateAudioWaveFrequency (MidiKeyToFreq), with the sample header read
 * through the cache above */
static u32 wave_freq(u32 wav, u32 key, u32 pitm)
{
    u32 fine = pitm << 24, lo, hi, e;
    key &= 0xFFu;
    if (key > 0xB2u) {
        key = 0xB2u;
        fine = 0xFF000000u;
    }
    e = LD8(0x086E9C3Cu + key);
    lo = LD32(0x086E9CF0u + (e & 0xFu) * 4u) >> (e >> 4);
    e = LD8(0x086E9C3Cu + key + 1u);
    hi = LD32(0x086E9CF0u + (e & 0xFu) * 4u) >> (e >> 4);
    return (u32)(((u64)smp32(wav + 4u) * ((u32)(((u64)(hi - lo) * fine) >> 32) + lo)) >> 32);
}

/* --- small helpers shared by the handlers ----------------------------------- */

/* song data is streamed through the sample cache too */
#define SB(a) ((u32)(u8)smp(a))

static u32 read_cmd_byte(u32 tr)
{
    u32 cp = LD32(tr + 0x40u);
    ST32(tr + 0x40u, cp + 1u);
    return SB(cp);
}

static u32 ld32_unaligned(u32 a)
{
    return smp32(a);
}

static void reset_mod(u32 tr)
{
    ST8(tr + 0x16u, 0);
    ST8(tr + 0x1Au, 0);
    ST8(tr, LD8(tr) | (LD8(tr + 0x18u) ? 3u : 0xCu));
}

/* UpdateAudioChannelVolumeAsm (ChnVolSetAsm): r4 = channel, r5 = track */
static void chn_vol_set(u32 ch, u32 tr)
{
    u32 vel = LD8(ch + 0x12u);
    s32 rp = (s8)LD8(ch + 0x14u);
    s32 v;
    v = ((0x80 + rp) * (s32)vel * (s32)LD8(tr + 0x10u)) >> 14;
    if ((u32)v > 0xFFu) v = 0xFF;
    ST8(ch + 2u, (u32)v);
    v = ((0x7F - rp) * (s32)vel * (s32)LD8(tr + 0x11u)) >> 14;
    if ((u32)v > 0xFFu) v = 0xFF;
    ST8(ch + 3u, (u32)v);
}

/* --- command handlers (dispatch table) ----------------------------------- */

/* ply_fine: StopAudioTrackCommandChannels */
static void ply_fine(u32 mp, u32 tr)
{
    u32 ch = LD32(tr + 0x20u);
    (void)mp;
    while (ch) {
        u32 st = LD8(ch);
        if (st & 0xC7u) ST8(ch, st | 0x40u);
        F_UnlinkAudioChannelAsm(ch);
        ch = LD32(ch + 0x34u);
    }
    ST8(tr, 0);
}

static void ply_goto(u32 mp, u32 tr)
{
    (void)mp;
    ST32(tr + 0x40u, ld32_unaligned(LD32(tr + 0x40u)));
}

static void ply_patt(u32 mp, u32 tr)
{
    u32 lvl = LD8(tr + 2u);
    if (lvl >= 3u) {
        ply_fine(mp, tr);
        return;
    }
    ST32(tr + 0x44u + lvl * 4u, LD32(tr + 0x40u) + 4u);
    ST8(tr + 2u, lvl + 1u);
    ply_goto(mp, tr);
}

static void ply_pend(u32 mp, u32 tr)
{
    u32 lvl = LD8(tr + 2u);
    (void)mp;
    if (lvl == 0) return;
    lvl--;
    ST8(tr + 2u, lvl);
    ST32(tr + 0x40u, LD32(tr + 0x44u + lvl * 4u));
}

static void ply_rept(u32 mp, u32 tr)
{
    u32 cp = LD32(tr + 0x40u);
    u32 n = SB(cp), cnt;
    if (n == 0) {
        ST32(tr + 0x40u, cp + 1u);
        ply_goto(mp, tr);
        return;
    }
    cnt = LD8(tr + 3u) + 1u;
    ST8(tr + 3u, cnt);
    ST32(tr + 0x40u, cp + 1u);
    if (cnt < n) {
        ply_goto(mp, tr);
    } else {
        ST8(tr + 3u, 0);
        ST32(tr + 0x40u, cp + 5u);
    }
}

static void ply_prio(u32 mp, u32 tr) { (void)mp; ST8(tr + 0x1Du, read_cmd_byte(tr)); }

static void ply_tempo(u32 mp, u32 tr)
{
    u32 t = read_cmd_byte(tr) << 1;
    ST16(mp + 0x1Cu, t);
    ST16(mp + 0x20u, (t * LD16(mp + 0x1Eu)) >> 8);
}

static void ply_keysh(u32 mp, u32 tr)
{
    (void)mp;
    ST8(tr + 0x0Au, read_cmd_byte(tr));
    ST8(tr, LD8(tr) | 0xCu);
}

static void ply_voice(u32 mp, u32 tr)
{
    u32 e = LD32(mp + 0x30u) + read_cmd_byte(tr) * 12u;
    ST32(tr + 0x24u, LD32(e));
    ST32(tr + 0x28u, LD32(e + 4u));
    ST32(tr + 0x2Cu, LD32(e + 8u));
}

static void ply_vol(u32 mp, u32 tr)
{
    (void)mp;
    ST8(tr + 0x12u, read_cmd_byte(tr));
    ST8(tr, LD8(tr) | 3u);
}

static void ply_pan(u32 mp, u32 tr)
{
    (void)mp;
    ST8(tr + 0x14u, read_cmd_byte(tr) - 0x40u);
    ST8(tr, LD8(tr) | 3u);
}

static void ply_bend(u32 mp, u32 tr)
{
    (void)mp;
    ST8(tr + 0x0Eu, read_cmd_byte(tr) - 0x40u);
    ST8(tr, LD8(tr) | 0xCu);
}

static void ply_bendr(u32 mp, u32 tr)
{
    (void)mp;
    ST8(tr + 0x0Fu, read_cmd_byte(tr));
    ST8(tr, LD8(tr) | 0xCu);
}

static void ply_lfodl(u32 mp, u32 tr) { (void)mp; ST8(tr + 0x1Bu, read_cmd_byte(tr)); }

static void ply_modt(u32 mp, u32 tr)
{
    u32 b = read_cmd_byte(tr);
    (void)mp;
    if (LD8(tr + 0x18u) != b) {
        ST8(tr + 0x18u, b);
        ST8(tr, LD8(tr) | 0xFu);
    }
}

static void ply_tune(u32 mp, u32 tr)
{
    (void)mp;
    ST8(tr + 0x0Cu, read_cmd_byte(tr) - 0x40u);
    ST8(tr, LD8(tr) | 0xCu);
}

static void ply_port(u32 mp, u32 tr)
{
    u32 reg = read_cmd_byte(tr);
    u32 v = read_cmd_byte(tr);
    (void)mp;
    ST8(0x04000060u + reg, v);
}

void F_SetAudioTrackLfoSpeedAsm(u32 mp, u32 tr)
{
    u32 b = read_cmd_byte(tr);
    (void)mp;
    ST8(tr + 0x19u, b);
    if (!b) reset_mod(tr);
}

void F_SetAudioTrackModulationDepthAsm(u32 mp, u32 tr)
{
    u32 b = read_cmd_byte(tr);
    (void)mp;
    ST8(tr + 0x17u, b);
    if (!b) reset_mod(tr);
}

void F_EndAudioTrackTieAsm(u32 mp, u32 tr)
{
    u32 cp = LD32(tr + 0x40u);
    u32 key = SB(cp), ch;
    (void)mp;
    if (key < 0x80u) {
        ST8(tr + 5u, key);
        ST32(tr + 0x40u, cp + 1u);
    } else {
        key = LD8(tr + 5u);
    }
    for (ch = LD32(tr + 0x20u); ch; ch = LD32(ch + 0x34u)) {
        u32 st = LD8(ch);
        if ((st & 0x83u) && !(st & 0x40u) && LD8(ch + 0x11u) == key) {
            ST8(ch, st | 0x40u);
            return;
        }
    }
}

void F_StopAudioTrack(u32 mp, u32 tr)
{
    u32 ch;
    (void)mp;
    if (!(LD8(tr) & 0x80u)) return;
    for (ch = LD32(tr + 0x20u); ch; ch = LD32(ch + 0x34u)) {
        if (LD8(ch)) {
            u32 type = LD8(ch + 1u) & 7u;
            if (type) CALL1(LD32(LD32(CORE_PTR) + 0x2Cu), type);
            ST8(ch, 0);
        }
        ST32(ch + 0x2Cu, 0);
    }
    ST32(tr + 0x20u, 0);
}

/* --- ply_note ---------------------------------------------------------------- */

void F_StartAudioTrackNoteAsm(u32 idx, u32 mp, u32 tr)
{
    u32 si = LD32(CORE_PTR);
    u32 cp, b, ttype, sub, key, prio, type, ch, wav, f;
    s32 rpan = 0, k;

    ST8(tr + 4u, LD8(CLOCK_TABLE + idx));
    cp = LD32(tr + 0x40u);
    b = SB(cp);
    if (b < 0x80u) {
        ST8(tr + 5u, b);
        cp++;
        b = SB(cp);
        if (b < 0x80u) {
            ST8(tr + 6u, b);
            cp++;
            b = SB(cp);
            if (b < 0x80u) {
                ST8(tr + 4u, LD8(tr + 4u) + b);
                cp++;
            }
        }
        ST32(tr + 0x40u, cp);
    }

    ttype = LD8(tr + 0x24u);
    key = LD8(tr + 5u);
    if (ttype & 0xC0u) {
        u32 i = (ttype & 0x40u) ? LD8(LD32(tr + 0x2Cu) + key) : key;
        sub = LD32(tr + 0x28u) + i * 12u;
        if (LD8(sub) & 0xC0u) return;
        if (ttype & 0x80u) {
            u32 p = LD8(sub + 3u);
            if (p & 0x80u) rpan = ((s32)p - 0xC0) * 2;
            key = LD8(sub + 1u);
        }
    } else {
        sub = tr + 0x24u;
    }

    prio = LD8(mp + 9u) + LD8(tr + 0x1Du);
    if (prio > 0xFFu) prio = 0xFFu;
    type = LD8(sub) & 7u;

    if (type) {
        u32 cgb = LD32(si + 0x1Cu), st;
        if (!cgb) return;
        ch = cgb + (type - 1u) * 0x40u;
        st = LD8(ch);
        if ((st & 0xC7u) && !(st & 0x40u)) {
            u32 p = LD8(ch + 0x13u);
            if (p > prio) return;
            if (p == prio && LD32(ch + 0x2Cu) < tr) return;
        }
    } else {
        u32 best_p = prio, best_t = tr, found = 0, cand = 0;
        s32 n = (s32)LD8(si + 6u);
        ch = si + 0x50u;
        for (;;) {
            u32 st = LD8(ch);
            if (!(st & 0xC7u)) goto attach;
            if (st & 0x40u) {
                if (!found) {
                    found = 1;
                    best_p = LD8(ch + 0x13u);
                    best_t = LD32(ch + 0x2Cu);
                    cand = ch;
                    goto next;
                }
            } else if (found) {
                goto next;
            }
            {
                u32 p = LD8(ch + 0x13u);
                if (p < best_p) {
                    best_p = p;
                    best_t = LD32(ch + 0x2Cu);
                    cand = ch;
                } else if (p == best_p) {
                    u32 t = LD32(ch + 0x2Cu);
                    if (t > best_t) {
                        best_t = t;
                        cand = ch;
                    } else if (t == best_t) {
                        cand = ch;
                    }
                }
            }
        next:
            ch += 0x40u;
            if (--n <= 0) break;
        }
        ch = cand;
        if (!ch) return;
    }

attach:
    F_UnlinkAudioChannelIndirect(ch);
    ST32(ch + 0x30u, 0);
    {
        u32 head = LD32(tr + 0x20u);
        ST32(ch + 0x34u, head);
        if (head) ST32(head + 0x30u, ch);
    }
    ST32(tr + 0x20u, ch);
    ST32(ch + 0x2Cu, tr);
    {
        u32 d = LD8(tr + 0x1Bu);
        ST8(tr + 0x1Cu, d);
        if (d) reset_mod(tr);
    }
    F_UpdateAudioTrackVolumePitch(mp, tr);
    ST32(ch + 0x10u, LD32(tr + 4u));
    ST8(ch + 0x13u, prio);
    ST8(ch + 8u, key);
    ST8(ch + 0x14u, (u32)rpan);
    ST8(ch + 1u, LD8(sub));
    wav = LD32(sub + 4u);
    ST32(ch + 0x24u, wav);
    ST32(ch + 4u, LD32(sub + 8u));
    ST16(ch + 0x0Cu, LD16(tr + 0x1Eu));
    chn_vol_set(ch, tr);
    k = (s32)LD8(ch + 8u) + (s8)LD8(tr + 8u);
    if (k < 0) k = 0;
    if (type) {
        u32 p3 = LD8(sub + 3u);
        ST8(ch + 0x1Eu, LD8(sub + 2u));
        ST8(ch + 0x1Fu, ((p3 & 0x80u) || !(p3 & 0x70u)) ? 8u : p3);
        f = ((fn3r)rt_fn(LD32(si + 0x30u)))(type, (u32)k & 0xFFu, LD8(tr + 9u));
    } else {
        f = wave_freq(wav, (u32)k, LD8(tr + 9u));
    }
    ST32(ch + 0x20u, f);
    ST8(ch, 0x80u);
    ST8(tr, LD8(tr) & 0xF0u);
}

/* --- MPlayMain ---------------------------------------------------------------- */

void F_ProcessAudioPlayerAsm(u32 mp)
{
    u32 si, tc;

    if (LD32(mp + 0x34u) != IDENT) return;
    ST32(mp + 0x34u, IDENT + 1u);
    if (LD32(mp + 0x38u)) CALL1(LD32(mp + 0x38u), LD32(mp + 0x3Cu));
    if ((s32)LD32(mp + 4u) < 0) goto done;
    si = LD32(CORE_PTR);
    F_ProcessAudioPlayerFade(mp);
    if ((s32)LD32(mp + 4u) < 0) goto done;

    tc = LD16(mp + 0x22u) + LD16(mp + 0x20u);
    for (;;) {
        s32 n;
        u32 tr, bit = 1, active = 0;
        ST16(mp + 0x22u, tc);
        if (tc < 150u) break;

        n = (s32)LD8(mp + 8u);
        tr = LD32(mp + 0x2Cu);
        for (;;) {
            if (LD8(tr) & 0x80u) {
                u32 ch, lfo;
                active |= bit;
                for (ch = LD32(tr + 0x20u); ch; ch = LD32(ch + 0x34u)) {
                    u32 st = LD8(ch);
                    if (st & 0xC7u) {
                        u32 g = LD8(ch + 0x10u);
                        if (g) {
                            g--;
                            ST8(ch + 0x10u, g);
                            if (!g) ST8(ch, st | 0x40u);
                        }
                    } else {
                        F_UnlinkAudioChannelIndirect(ch);
                    }
                }
                if (LD8(tr) & 0x40u) {
                    F_ClearAudioTrackIndirect(tr);
                    ST8(tr, 0x80u);
                    ST8(tr + 0x0Fu, 2);
                    ST8(tr + 0x13u, 0x40u);
                    ST8(tr + 0x19u, 0x16u);
                    ST8(tr + 0x24u, 1);
                }
                while (LD8(tr + 1u) == 0) {
                    u32 cp = LD32(tr + 0x40u);
                    u32 c = SB(cp);
                    if (c < 0x80u) {
                        c = LD8(tr + 7u);
                    } else {
                        ST32(tr + 0x40u, cp + 1u);
                        if (c >= 0xBDu) ST8(tr + 7u, c);
                    }
                    if (c >= 0xCFu) {
                        CALL3(LD32(si + 0x38u), c - 0xCFu, mp, tr);
                    } else if (c > 0xB0u) {
                        ST8(mp + 0x0Au, c - 0xB1u);
                        CALL2(LD32(LD32(si + 0x34u) + (c - 0xB1u) * 4u), mp, tr);
                        if (LD8(tr) == 0) goto track_done;
                    } else {
                        ST8(tr + 1u, LD8(CLOCK_TABLE + c - 0x80u));
                    }
                }
                ST8(tr + 1u, LD8(tr + 1u) - 1u);
                lfo = LD8(tr + 0x19u);
                if (lfo && LD8(tr + 0x17u)) {
                    u32 dl = LD8(tr + 0x1Cu);
                    if (dl) {
                        ST8(tr + 0x1Cu, dl - 1u);
                    } else {
                        u32 sum = LD8(tr + 0x1Au) + lfo;
                        s32 v;
                        ST8(tr + 0x1Au, sum);
                        if ((s8)(u8)(sum - 0x40u) < 0) v = (s8)(u8)sum;
                        else v = 0x80 - (s32)sum;
                        v = ((s32)LD8(tr + 0x17u) * v) >> 6;
                        if ((u8)(LD8(tr + 0x16u) ^ (u32)v) != 0) {
                            ST8(tr + 0x16u, (u32)v);
                            ST8(tr, LD8(tr) | (LD8(tr + 0x18u) ? 3u : 0xCu));
                        }
                    }
                }
            }
        track_done:
            if (--n <= 0) break;
            tr += 0x50u;
            bit <<= 1;
        }
        ST32(mp + 0x0Cu, LD32(mp + 0x0Cu) + 1u);
        if (!active) {
            ST32(mp + 4u, 0x80000000u);
            goto done;
        }
        ST32(mp + 4u, active);
        tc = LD16(mp + 0x22u) - 150u;
    }

    {
        s32 n = (s32)LD8(mp + 8u);
        u32 tr = LD32(mp + 0x2Cu);
        for (;;) {
            u32 f = LD8(tr);
            if ((f & 0x80u) && (f & 0xFu)) {
                u32 ch;
                F_UpdateAudioTrackVolumePitch(mp, tr);
                for (ch = LD32(tr + 0x20u); ch; ch = LD32(ch + 0x34u)) {
                    u32 st = LD8(ch), type;
                    if (!(st & 0xC7u)) {
                        F_UnlinkAudioChannelIndirect(ch);
                        continue;
                    }
                    type = LD8(ch + 1u) & 7u;
                    if (LD8(tr) & 3u) {
                        chn_vol_set(ch, tr);
                        if (type) ST8(ch + 0x1Du, LD8(ch + 0x1Du) | 1u);
                    }
                    if (LD8(tr) & 0xCu) {
                        s32 k = (s32)LD8(ch + 8u) + (s8)LD8(tr + 8u);
                        if (k < 0) k = 0;
                        if (type) {
                            ST32(ch + 0x20u, ((fn3r)rt_fn(LD32(si + 0x30u)))(type, (u32)k & 0xFFu, LD8(tr + 9u)));
                            ST8(ch + 0x1Du, LD8(ch + 0x1Du) | 2u);
                        } else {
                            ST32(ch + 0x20u, wave_freq(LD32(ch + 0x24u), (u32)k, LD8(tr + 9u)));
                        }
                    }
                }
                ST8(tr, LD8(tr) & 0xF0u);
            }
            if (--n <= 0) break;
            tr += 0x50u;
        }
    }
done:
    ST32(mp + 0x34u, IDENT);
}

/* --- m4aSoundVSync ------------------------------------------------------------ */

void F_SyncAudioDmaAtVblankAsm(void)
{
    u32 si = LD32(CORE_PTR);
    s32 c;
    if (LD32(si) - IDENT > 1u) return;
    c = (s32)LD8(si + 4u) - 1;
    ST8(si + 4u, (u32)c);
    if (c > 0) return;
    ST8(si + 4u, LD8(si + 0x0Bu));
    /* the FIFO DMA restart is implicit here: rt_audio_push reads each
     * segment as the mixer finishes it */
}

/* --- PSG (channels 1-4) ---------------------------------------------------- */

typedef struct {
    int on;
    u32 phase, step;        /* 16.16 position in the waveform */
    int vol, env_up, env_period, env_cnt;
    int len, len_on;
    /* square 1 sweep */
    int sw_period, sw_cnt;
    u32 freq;
    /* noise */
    u32 lfsr;
} PsgCh;

static PsgCh s_psg[4];
static u8 s_wave[2][16];
static u32 s_rate = 13379;           /* engine sample rate */
static u32 s_seq;                    /* 512 Hz frame sequencer, 16.16 */
static u32 s_seq_step;
static int s_seq_n;

static void psg_steps(void)
{
    int i;
    for (i = 0; i < 4; i++) {
        PsgCh *c = &s_psg[i];
        u32 hz2;                    /* waveform steps per second */
        if (i < 2) {
            hz2 = 1048576u / (2048u - (c->freq & 0x7FFu));          /* 8 steps */
        } else if (i == 2) {
            hz2 = 2097152u / (2048u - (c->freq & 0x7FFu));          /* 32 steps */
        } else {
            u32 n4 = RT_IO16(0x7C);
            u32 r = n4 & 7u, s = (n4 >> 4) & 15u;
            hz2 = (r ? 524288u / r : 1048576u) >> (s + 1u);
        }
        c->step = (u32)(((u64)hz2 << 16) / s_rate);
    }
}

static void env_load(PsgCh *c, u32 e)
{
    c->vol = (int)(e >> 4) & 15;
    c->env_up = (e >> 3) & 1;
    c->env_period = (int)(e & 7u);
    c->env_cnt = c->env_period;
}

static void psg_trigger(int i)
{
    PsgCh *c = &s_psg[i];
    c->on = 1;
    c->phase = 0;
    switch (i) {
    case 0:
        env_load(c, RT_IO16(0x62) >> 8);
        c->len = 64 - (int)(RT_IO16(0x62) & 63u);
        c->len_on = (RT_IO16(0x64) >> 14) & 1;
        c->freq = RT_IO16(0x64) & 0x7FFu;
        c->sw_period = (int)(RT_IO16(0x60) >> 4) & 7;
        c->sw_cnt = c->sw_period;
        if (!(RT_IO16(0x62) & 0xF800u)) c->on = 0;
        break;
    case 1:
        env_load(c, RT_IO16(0x68) >> 8);
        c->len = 64 - (int)(RT_IO16(0x68) & 63u);
        c->len_on = (RT_IO16(0x6C) >> 14) & 1;
        c->freq = RT_IO16(0x6C) & 0x7FFu;
        if (!(RT_IO16(0x68) & 0xF800u)) c->on = 0;
        break;
    case 2:
        c->len = 256 - (int)(RT_IO16(0x72) & 255u);
        c->len_on = (RT_IO16(0x74) >> 14) & 1;
        c->freq = RT_IO16(0x74) & 0x7FFu;
        if (!(RT_IO16(0x70) & 0x80u)) c->on = 0;
        break;
    case 3:
        env_load(c, RT_IO16(0x78) >> 8);
        c->len = 64 - (int)(RT_IO16(0x78) & 63u);
        c->len_on = (RT_IO16(0x7C) >> 14) & 1;
        c->lfsr = 0x7FFFu;
        if (!(RT_IO16(0x78) & 0xF800u)) c->on = 0;
        break;
    }
    psg_steps();
}

/* Called for every store to 0x060-0x0AF (rt_io_write16, after the store). */
void rt_audio_io_write(u32 off, u32 v)
{
    if (off >= 0x90u && off < 0xA0u) {
        /* wave RAM: the CPU sees the bank that is not playing */
        u32 bank = (RT_IO16(0x70) >> 6) & 1u;
        s_wave[bank ^ 1u][off - 0x90u] = (u8)v;
        s_wave[bank ^ 1u][off - 0x90u + 1u] = (u8)(v >> 8);
        return;
    }
    switch (off) {
    case 0x64: s_psg[0].freq = v & 0x7FFu; s_psg[0].len_on = (v >> 14) & 1; if (v & 0x8000u) psg_trigger(0); else psg_steps(); break;
    case 0x6C: s_psg[1].freq = v & 0x7FFu; s_psg[1].len_on = (v >> 14) & 1; if (v & 0x8000u) psg_trigger(1); else psg_steps(); break;
    case 0x74: s_psg[2].freq = v & 0x7FFu; s_psg[2].len_on = (v >> 14) & 1; if (v & 0x8000u) psg_trigger(2); else psg_steps(); break;
    case 0x7C: s_psg[3].len_on = (v >> 14) & 1; if (v & 0x8000u) psg_trigger(3); else psg_steps(); break;
    case 0x70: if (!(v & 0x80u)) s_psg[2].on = 0; break;
    case 0x62: if (!(v & 0xF800u)) s_psg[0].on = 0; break;
    case 0x68: if (!(v & 0xF800u)) s_psg[1].on = 0; break;
    case 0x78: if (!(v & 0xF800u)) s_psg[3].on = 0; break;
    case 0x84: if (!(v & 0x80u)) { s_psg[0].on = s_psg[1].on = s_psg[2].on = s_psg[3].on = 0; } break;
    default: break;
    }
}

static void psg_sequencer(void)
{
    int i;
    s_seq_n = (s_seq_n + 1) & 7;
    if (!(s_seq_n & 1)) {                       /* 256 Hz: length */
        for (i = 0; i < 4; i++) {
            PsgCh *c = &s_psg[i];
            if (c->on && c->len_on && c->len > 0 && --c->len == 0) c->on = 0;
        }
    }
    if ((s_seq_n & 3) == 2) {                   /* 128 Hz: sweep */
        PsgCh *c = &s_psg[0];
        u32 sw = RT_IO16(0x60);
        if (c->on && c->sw_period && --c->sw_cnt <= 0) {
            u32 sh = sw & 7u, d = c->freq >> sh;
            c->sw_cnt = c->sw_period;
            if (sh) {
                u32 nf = (sw & 8u) ? c->freq - d : c->freq + d;
                if (nf > 2047u) c->on = 0;
                else { c->freq = nf; psg_steps(); }
            }
        }
    }
    if (s_seq_n == 7) {                         /* 64 Hz: envelopes */
        for (i = 0; i < 4; i++) {
            PsgCh *c;
            if (i == 2) continue;
            c = &s_psg[i];
            if (c->env_period && --c->env_cnt <= 0) {
                c->env_cnt = c->env_period;
                if (c->env_up && c->vol < 15) c->vol++;
                else if (!c->env_up && c->vol > 0) c->vol--;
            }
        }
    }
}

static const u8 s_duty[4] = { 0x01, 0x81, 0x87, 0x7E };   /* 8-step patterns */

/* one PSG sample for each side, in the GBA's -480..480 range at 100% */
static void psg_sample(int *pl, int *pr)
{
    int out[4] = { 0, 0, 0, 0 };
    u32 cnt = RT_IO16(0x80), i;
    int l = 0, r = 0;
    int vr = (int)(cnt & 7u) + 1, vl = (int)((cnt >> 4) & 7u) + 1;
    u32 pv = RT_IO16(0x82) & 3u;

    s_seq += s_seq_step;
    while (s_seq >= 0x10000u) {
        s_seq -= 0x10000u;
        psg_sequencer();
    }
    for (i = 0; i < 2; i++) {
        PsgCh *c = &s_psg[i];
        if (c->on) {
            u32 duty = (RT_IO16(i ? 0x68 : 0x62) >> 6) & 3u;
            u32 pos = (c->phase >> 16) & 7u;
            out[i] = ((s_duty[duty] >> pos) & 1u) ? c->vol : -c->vol;
            c->phase += c->step;
        }
    }
    {
        PsgCh *c = &s_psg[2];
        if (c->on) {
            u32 w = RT_IO16(0x70), h = RT_IO16(0x72);
            u32 bank = (w >> 6) & 1u, two = (w >> 5) & 1u;
            u32 pos = (c->phase >> 16) & (two ? 63u : 31u);
            u32 b = two ? ((bank ^ (pos >> 5)) & 1u) : bank;
            u32 by = s_wave[b][(pos & 31u) >> 1];
            int s = (int)((pos & 1u) ? (by & 15u) : (by >> 4));
            int v = 2 * s - 15;
            u32 vc = (h >> 13) & 3u;
            if (h & 0x8000u) v = v * 3 / 4;
            else if (vc == 0) v = 0;
            else v >>= (vc - 1u);
            out[2] = v / 2;
            c->phase += c->step;
        }
    }
    {
        PsgCh *c = &s_psg[3];
        if (c->on) {
            u32 n = c->phase >> 16;
            c->phase &= 0xFFFFu;
            while (n--) {
                u32 bit = (c->lfsr ^ (c->lfsr >> 1)) & 1u;
                c->lfsr = (c->lfsr >> 1) | (bit << 14);
                if (RT_IO16(0x7C) & 8u) c->lfsr = (c->lfsr & ~0x40u) | (bit << 6);
            }
            out[3] = (c->lfsr & 1u) ? -c->vol : c->vol;
            c->phase += c->step;
        }
    }
    for (i = 0; i < 4; i++) {
        if (cnt & (0x100u << i)) r += out[i];
        if (cnt & (0x1000u << i)) l += out[i];
    }
    r *= vr;
    l *= vl;
    if (pv < 2u) {
        r >>= (2u - pv);
        l >>= (2u - pv);
    }
    *pl = l;
    *pr = r;
}

/* --- output ring ----------------------------------------------------------- */

#define RING 8192u                   /* stereo frames, power of two */
static s16 s_ring[RING * 2];
static volatile u32 s_wr, s_rd;

u32 rt_audio_rate(void) { return s_rate; }

u32 rt_audio_available(void) { return s_wr - s_rd; }

u32 rt_audio_read(s16 *out, u32 frames)
{
    u32 n = s_wr - s_rd, i;
    if (frames > n) frames = n;
    for (i = 0; i < frames; i++) {
        u32 p = (s_rd + i) & (RING - 1u);
        out[2 * i] = s_ring[2 * p];
        out[2 * i + 1] = s_ring[2 * p + 1];
    }
    s_rd += frames;
    return frames;
}

void rt_audio_clear(void) { s_rd = s_wr; }

static s16 clip(int v)
{
    if (v > 32767) return 32767;
    if (v < -32768) return -32768;
    return (s16)v;
}

/* R/L: the segment the mixer just finished, n samples per side */
static void push_segment(const u8 *R, const u8 *L, u32 n, u32 si)
{
    u32 i, h = RT_IO16(0x82), x = RT_IO16(0x84);
    int dsa = (h & 4u) ? 4 : 2, dsb = (h & 8u) ? 4 : 2;
    int ar = (h >> 8) & 1, al = (h >> 9) & 1, br = (h >> 12) & 1, bl = (h >> 13) & 1;
    u32 rate = LD32(si + 0x14u);
    (void)i;

    if (rate >= 4000u && rate <= 48000u && rate != s_rate) {
        s_rate = rate;
        psg_steps();
    }
    s_seq_step = (u32)((512u << 16) / s_rate);
    if (!g_rt_audio_on || !(x & 0x80u)) {
        /* sound off: keep the timing, write silence */
        for (i = 0; i < n; i++) {
            u32 p = s_wr & (RING - 1u);
            if (s_wr - s_rd >= RING) s_rd++;
            s_ring[2 * p] = s_ring[2 * p + 1] = 0;
            s_wr++;
        }
        return;
    }
    for (i = 0; i < n; i++) {
        int a = (s8)R[i] * dsa, b = (s8)L[i] * dsb;
        int l = 0, r = 0, pl, pr;
        u32 p = s_wr & (RING - 1u);
        psg_sample(&pl, &pr);
        if (ar) r += a;
        if (al) l += a;
        if (br) r += b;
        if (bl) l += b;
        /* levels matched to mGBA: a PSG volume step and a FIFO sample step
         * come out about as loud as on the console */
        l = l * 46 + pl * 51;
        r = r * 46 + pr * 51;
        if (s_wr - s_rd >= RING) s_rd++;   /* nobody reading: drop the oldest */
        s_ring[2 * p] = clip(l);
        s_ring[2 * p + 1] = clip(r);
        s_wr++;
    }
}

/* --- SoundMain ------------------------------------------------------------------ */

static u8 *host_ptr(u32 a, u32 n)
{
    u32 i = a >> RT_PAGE_SHIFT;
    if (i < RT_PAGES && g_rt_wr8[i] && ((a + n - 1u) >> RT_PAGE_SHIFT) == i)
        return g_rt_wr8[i] + (a & RT_PAGE_MASK);
    return 0;
}

void F_RunAudioMixerAsm(void)
{
    u32 si = LD32(CORE_PTR);
    u32 spv, buf, cnt, ip, ch, i;
    s32 n;
    u8 *R, *L;

    if (LD32(si) != IDENT) return;
    ST32(si, IDENT + 1u);
    if (LD32(si + 0x20u)) CALL1(LD32(si + 0x20u), LD32(si + 0x24u));
    CALL0(LD32(si + 0x28u));

    spv = LD32(si + 0x10u);
    buf = si + 0x350u;
    cnt = LD8(si + 4u);
    if (cnt > 1u) buf += (LD8(si + 0x0Bu) - (cnt - 1u)) * spv;
    R = host_ptr(buf, spv + 0x630u);
    if (!R || spv == 0 || spv > 0x630u) {
        ST32(si, IDENT);
        return;
    }
    L = R + 0x630;

    if (LD8(si + 5u)) {
        u32 rev = LD8(si + 5u);
        u8 *O = (cnt == 2u) ? host_ptr(si + 0x350u, 0x630u + spv) : R + spv;
        for (i = 0; i < spv; i++) {
            s32 s = (s8)L[i] + (s8)R[i] + (s8)O[i + 0x630u] + (s8)O[i];
            s = (s * (s32)rev) >> 9;
            if (s & 0x80) s++;
            L[i] = (u8)s;
            R[i] = (u8)s;
        }
    } else {
        memset(R, 0, spv);
        memset(L, 0, spv);
    }

    ip = LD32(si + 0x18u);
    n = (s32)LD8(si + 6u);
    ch = si + 0x50u;
    for (;; ch += 0x40u) {
        u32 wav = LD32(ch + 0x24u);
        u32 st = LD8(ch), env;
        s32 vr, vl, count;
        u32 cp, loop, lstart = 0;
        s32 llen = 0;

        if (!(st & 0xC7u)) goto next;
        if (st & 0x80u) {
            if (st & 0x40u) goto stop;
            st = 3;
            ST8(ch, st);
            ST32(ch + 0x28u, wav + 0x10u);
            ST32(ch + 0x18u, smp32(wav + 0x0Cu));
            env = 0;
            ST8(ch + 9u, 0);
            ST32(ch + 0x1Cu, 0);
            if ((u32)smp(wav + 3u) & 0xC0u) {
                st |= 0x10u;
                ST8(ch, st);
            }
            goto attack;
        }
        env = LD8(ch + 9u);
        if (st & 4u) {
            u32 e = LD8(ch + 0x0Du);
            ST8(ch + 0x0Du, e - 1u);
            if (e > 1u) goto ready;
            goto stop;
        }
        if (st & 0x40u) {
            env = (env * LD8(ch + 7u)) >> 8;
            if (env > LD8(ch + 0x0Cu)) goto ready;
        echo:
            env = LD8(ch + 0x0Cu);
            if (!env) goto stop;
            st |= 4u;
            ST8(ch, st);
            goto ready;
        }
        if ((st & 3u) == 2u) {
            u32 s;
            env = (env * LD8(ch + 5u)) >> 8;
            s = LD8(ch + 6u);
            if (env > s) goto ready;
            env = s;
            if (!env) goto echo;
            st--;
            ST8(ch, st);
            goto ready;
        }
        if ((st & 3u) != 3u) goto ready;
    attack:
        env += LD8(ch + 4u);
        if (env >= 0xFFu) {
            env = 0xFFu;
            st--;
            ST8(ch, st);
        }
    ready:
        ST8(ch + 9u, env);
        {
            u32 v = ((LD8(si + 7u) + 1u) * env) >> 4;
            vr = (s32)((LD8(ch + 2u) * v) >> 8);
            vl = (s32)((LD8(ch + 3u) * v) >> 8);
            ST8(ch + 0x0Au, (u32)vr);
            ST8(ch + 0x0Bu, (u32)vl);
            vr &= 0xFF;
            vl &= 0xFF;
        }
        loop = st & 0x10u;
        if (loop) {
            u32 ls = smp32(wav + 8u);
            lstart = wav + 0x10u + ls;
            llen = (s32)(smp32(wav + 0x0Cu) - ls);
        }
        count = (s32)LD32(ch + 0x18u);
        cp = LD32(ch + 0x28u);

        if (LD8(ch + 1u) & 8u) {
            /* fixed rate: one source sample per output sample */
            for (i = 0; i < spv; i++) {
                s32 s = smp(cp++);
                R[i] = (u8)(R[i] + ((vr * s) >> 8));
                L[i] = (u8)(L[i] + ((vl * s) >> 8));
                if (--count == 0) {
                    if (!loop) {
                        ST8(ch, 0);
                        goto next;
                    }
                    count = llen;
                    cp = lstart;
                }
            }
        } else {
            u32 fw = LD32(ch + 0x1Cu);
            u32 step = ip * LD32(ch + 0x20u);
            s32 s0 = smp(cp), d;
            cp++;
            d = smp(cp) - s0;
            for (i = 0; i < spv; i++) {
                s32 v = s0 + ((s32)(fw * (u32)d) >> 23);
                u32 adv;
                R[i] = (u8)(R[i] + ((vr * v) >> 8));
                L[i] = (u8)(L[i] + ((vl * v) >> 8));
                fw += step;
                adv = fw >> 23;
                if (!adv) continue;
                fw &= ~0x3F800000u;
                count -= (s32)adv;
                if (count <= 0) {
                    s32 r9;
                    if (!loop) {
                        ST8(ch, 0);
                        goto next;
                    }
                    cp = lstart;
                    r9 = -count;
                    for (;;) {
                        count += llen;
                        if (count > 0) break;
                        r9 -= llen;
                        if (llen <= 0) break;
                    }
                    cp += (u32)r9;
                    s0 = smp(cp);
                } else {
                    adv--;
                    if (adv == 0) {
                        s0 += d;
                    } else {
                        cp += adv;
                        s0 = smp(cp);
                    }
                }
                cp++;
                d = smp(cp) - s0;
            }
            cp--;
            ST32(ch + 0x1Cu, fw);
        }
        ST32(ch + 0x18u, (u32)count);
        ST32(ch + 0x28u, cp);
        goto next;
    stop:
        ST8(ch, 0);
    next:
        if (--n <= 0) break;
    }

    push_segment(R, L, spv, si);
    ST32(si, IDENT);
}

/* --- dispatch table entries (ROM 0x086E9BAC) ---------------------------------- */

static void clear64(u32 dst) { rt_memset(dst, 0, 64u); }

static const rt_fn_entry s_audio_fns[] = {
    { 0x080EA33Du, (rt_fnptr)clear64 },
    { 0x080EA375u, (rt_fnptr)ply_fine },
    { 0x080EA3E5u, (rt_fnptr)ply_goto },
    { 0x080EA405u, (rt_fnptr)ply_patt },
    { 0x080EA421u, (rt_fnptr)ply_pend },
    { 0x080EA435u, (rt_fnptr)ply_rept },
    { 0x080EA465u, (rt_fnptr)ply_prio },
    { 0x080EA471u, (rt_fnptr)ply_tempo },
    { 0x080EA485u, (rt_fnptr)ply_keysh },
    { 0x080EA499u, (rt_fnptr)ply_voice },
    { 0x080EA4C9u, (rt_fnptr)ply_vol },
    { 0x080EA4DDu, (rt_fnptr)ply_pan },
    { 0x080EA4F1u, (rt_fnptr)ply_bend },
    { 0x080EA505u, (rt_fnptr)ply_bendr },
    { 0x080EA519u, (rt_fnptr)ply_lfodl },
    { 0x080EA525u, (rt_fnptr)ply_modt },
    { 0x080EA53Du, (rt_fnptr)ply_tune },
    { 0x080EA551u, (rt_fnptr)ply_port },
    { 0, 0 }
};

rt_fnptr rt_audio_fn(u32 addr)
{
    const rt_fn_entry *e;
    for (e = s_audio_fns; e->addr; e++)
        if (e->addr == (addr | 1u)) return e->fn;
    return 0;
}
