/* rt_bios.c - GBA BIOS services the cartridge calls (asm/bios.s), the
 * libgcc division entry points, and assembly routines reached by address. */

#include "rt.h"
#include "rt_mem.h"
#include "decomp_gen.h"

/* --- CpuSet / CpuFastSet ----------------------------------------------------- */

int g_rt_trace_bios;
#define TRACE(...) do { if (g_rt_trace_bios) rt_log(__VA_ARGS__); } while (0)

void F_BiosCpuSet(u32 src, u32 dst, u32 ctrl)
{
    TRACE("SWI 0B %08X -> %08X ctrl %08X", src, dst, ctrl);
    u32 n = ctrl & 0x1FFFFFu;
    u32 i;
    RT_WATCH("cpuset", dst, n * 4u, src);
    /* bit 26: 32-bit units, bit 24: fill (fixed source) */
    if (ctrl & (1u << 26)) {
        src &= ~3u;
        dst &= ~3u;
        if (ctrl & (1u << 24)) {
            u32 v = LD32(src);
            for (i = 0; i < n; i++) ST32(dst + i * 4u, v);
        } else {
            rt_memcpy(dst, src, n * 4u);
        }
    } else {
        src &= ~1u;
        dst &= ~1u;
        if (ctrl & (1u << 24)) {
            u32 v = LD16(src);
            for (i = 0; i < n; i++) ST16(dst + i * 2u, v);
        } else {
            rt_memcpy(dst, src, n * 2u);
        }
    }
}

void F_BiosCpuFastSet(u32 src, u32 dst, u32 ctrl)
{
    u32 n = ((ctrl & 0x1FFFFFu) + 7u) & ~7u;
    u32 i;
    RT_WATCH("cpufastset", dst, n * 4u, src);
    src &= ~3u;
    dst &= ~3u;
    if (ctrl & (1u << 24)) {
        u32 v = LD32(src);
        for (i = 0; i < n; i++) ST32(dst + i * 4u, v);
    } else {
        rt_memcpy(dst, src, n * 4u);
    }
}

/* --- LZ77 (type 0x10) -------------------------------------------------------- */

void rt_mods_decompressed(u32 src, u32 dst, u32 size);

static void lz77_body(u32 src, u32 dst, int vram);

static void lz77(u32 src, u32 dst, int vram)
{
    lz77_body(src, dst, vram);
    rt_mods_decompressed(src & ~3u, dst, LD32(src & ~3u) >> 8);
}

static void lz77_body(u32 src, u32 dst, int vram)
{
    u32 header = LD32(src & ~3u);
    u32 remaining = header >> 8;
    u32 out = 0;
    u16 pending = 0;
    src = (src & ~3u) + 4u;
    while (remaining) {
        u32 flags = LD8(src++);
        int bit;
        for (bit = 0; bit < 8 && remaining; bit++, flags <<= 1) {
            if (flags & 0x80u) {
                u32 b1 = LD8(src++), b2 = LD8(src++);
                u32 len = (b1 >> 4) + 3u;
                u32 disp = (((b1 & 0xFu) << 8) | b2) + 1u;
                while (len-- && remaining) {
                    u32 from = out - disp;
                    u32 v;
                    if (vram) {
                        /* the byte may still be in the pending halfword */
                        if ((from >> 1) == (out >> 1)) v = pending & 0xFFu;
                        else v = LD8(dst + from);
                    } else {
                        v = LD8(dst + from);
                    }
                    if (vram) {
                        if (out & 1u) {
                            pending |= (u16)(v << 8);
                            ST16(dst + out - 1u, pending);
                        } else {
                            pending = (u16)v;
                        }
                    } else {
                        ST8(dst + out, v);
                    }
                    out++;
                    remaining--;
                }
            } else {
                u32 v = LD8(src++);
                if (vram) {
                    if (out & 1u) {
                        pending |= (u16)(v << 8);
                        ST16(dst + out - 1u, pending);
                    } else {
                        pending = (u16)v;
                    }
                } else {
                    ST8(dst + out, v);
                }
                out++;
                remaining--;
            }
        }
    }
    if (vram && (out & 1u)) ST16(dst + out - 1u, pending);
}

void F_BiosLZ77WRAM(u32 src, u32 dst) { TRACE("SWI 11 %08X -> %08X", src, dst); lz77(src, dst, 0); }
void F_BiosLZ77VRAM(u32 src, u32 dst) { lz77(src, dst, 1); }

/* --- maths ------------------------------------------------------------------- */

static s32 s_r1;   /* BIOS Div leaves the remainder in r1 */

u32 F_BiosDiv(u32 num, u32 den)
{
    s32 n = (s32)num, d = (s32)den;
    if (d == 0) {
        s_r1 = n;
        return n < 0 ? (u32)-1 : 1u;
    }
    if (d == -1 && n == (s32)0x80000000) {
        s_r1 = 0;
        return 0x80000000u;
    }
    s_r1 = n % d;
    return (u32)(n / d);
}

u32 F_BiosDivRem(u32 num, u32 den)
{
    F_BiosDiv(num, den);
    return (u32)s_r1;
}

u32 F_BiosSqrt(u32 x)
{
    u32 r = 0, bit = 1u << 30;
    while (bit > x) bit >>= 2;
    while (bit) {
        if (x >= r + bit) {
            x -= r + bit;
            r = (r >> 1) + bit;
        } else {
            r >>= 1;
        }
        bit >>= 2;
    }
    return r & 0xFFFFu;
}

static s32 arctan(s32 i)
{
    s32 a = -((i * i) >> 14);
    s32 b = ((0xA9 * a) >> 14) + 0x390;
    b = ((b * a) >> 14) + 0x91C;
    b = ((b * a) >> 14) + 0xFB6;
    b = ((b * a) >> 14) + 0x16AA;
    b = ((b * a) >> 14) + 0x2081;
    b = ((b * a) >> 14) + 0x3651;
    b = ((b * a) >> 14) + 0xA2F9;
    return (i * b) >> 16;
}

/* BIOS ArcTan2 (SWI 0x0A), same branch structure as the BIOS. */
u32 F_BiosArcTan2(u32 xu, u32 yu)
{
    s32 x = (s32)xu, y = (s32)yu;
    s32 r;
    if (!y) r = x >= 0 ? 0 : 0x8000;
    else if (!x) r = y >= 0 ? 0x4000 : 0xC000;
    else if (y >= 0) {
        if (x >= 0) {
            if (x >= y) r = arctan((y << 14) / x);
            else r = 0x4000 - arctan((x << 14) / y);
        } else if (-x >= y) {
            r = arctan((y << 14) / x) + 0x8000;
        } else {
            r = 0x4000 - arctan((x << 14) / y);
        }
    } else {
        if (x <= 0) {
            if (-x > -y) r = arctan((y << 14) / x) + 0x8000;
            else r = 0xC000 - arctan((x << 14) / y);
        } else if (x >= -y) {
            r = arctan((y << 14) / x) + 0x10000;
        } else {
            r = 0xC000 - arctan((x << 14) / y);
        }
    }
    return (u32)r & 0xFFFFu;
}

/* sin(i * 2pi / 256) * 0x4000, rounded: the BIOS ObjAffineSet table. */
static const s16 s_sin[256] = {
    0, 402, 804, 1205, 1606, 2006, 2404, 2801, 3196, 3590, 3981, 4370, 4756, 5139, 5520, 5897,
    6270, 6639, 7005, 7366, 7723, 8076, 8423, 8765, 9102, 9434, 9760, 10080, 10394, 10702, 11003, 11297,
    11585, 11866, 12140, 12406, 12665, 12916, 13160, 13395, 13623, 13842, 14053, 14256, 14449, 14635, 14811, 14978,
    15137, 15286, 15426, 15557, 15679, 15791, 15893, 15986, 16069, 16143, 16207, 16261, 16305, 16340, 16364, 16379,
    16384, 16379, 16364, 16340, 16305, 16261, 16207, 16143, 16069, 15986, 15893, 15791, 15679, 15557, 15426, 15286,
    15137, 14978, 14811, 14635, 14449, 14256, 14053, 13842, 13623, 13395, 13160, 12916, 12665, 12406, 12140, 11866,
    11585, 11297, 11003, 10702, 10394, 10080, 9760, 9434, 9102, 8765, 8423, 8076, 7723, 7366, 7005, 6639,
    6270, 5897, 5520, 5139, 4756, 4370, 3981, 3590, 3196, 2801, 2404, 2006, 1606, 1205, 804, 402,
    0, -402, -804, -1205, -1606, -2006, -2404, -2801, -3196, -3590, -3981, -4370, -4756, -5139, -5520, -5897,
    -6270, -6639, -7005, -7366, -7723, -8076, -8423, -8765, -9102, -9434, -9760, -10080, -10394, -10702, -11003, -11297,
    -11585, -11866, -12140, -12406, -12665, -12916, -13160, -13395, -13623, -13842, -14053, -14256, -14449, -14635, -14811, -14978,
    -15137, -15286, -15426, -15557, -15679, -15791, -15893, -15986, -16069, -16143, -16207, -16261, -16305, -16340, -16364, -16379,
    -16384, -16379, -16364, -16340, -16305, -16261, -16207, -16143, -16069, -15986, -15893, -15791, -15679, -15557, -15426, -15286,
    -15137, -14978, -14811, -14635, -14449, -14256, -14053, -13842, -13623, -13395, -13160, -12916, -12665, -12406, -12140, -11866,
    -11585, -11297, -11003, -10702, -10394, -10080, -9760, -9434, -9102, -8765, -8423, -8076, -7723, -7366, -7005, -6639,
    -6270, -5897, -5520, -5139, -4756, -4370, -3981, -3590, -3196, -2801, -2404, -2006, -1606, -1205, -804, -402
};

void F_BiosObjAffineSet(u32 src, u32 dst, u32 count, u32 stride)
{
    while (count--) {
        s32 sx = (s16)LD16(src), sy = (s16)LD16(src + 2u);
        u32 theta = (LD16(src + 4u) >> 8) & 0xFFu;
        s32 s = s_sin[theta], c = s_sin[(theta + 64u) & 0xFFu];
        ST16(dst, (u32)((sx * c) >> 14));
        ST16(dst + stride, (u32)(-(sx * s) >> 14));
        ST16(dst + stride * 2u, (u32)((sy * s) >> 14));
        ST16(dst + stride * 3u, (u32)((sy * c) >> 14));
        src += 8u;
        dst += stride * 4u;
    }
}

/* --- libgcc entry points the C calls by name --------------------------------- */

u32 F___divsi3(u32 a, u32 b) { return (u32)RT_SDIV((s32)a, (s32)b); }
u32 F___modsi3(u32 a, u32 b) { return (u32)RT_SREM((s32)a, (s32)b); }
u32 F___udivsi3(u32 a, u32 b) { return RT_UDIV(a, b); }
u32 F___umodsi3(u32 a, u32 b) { return RT_UREM(a, b); }

/* --- M4A assembly ------------------------------------------------------------ */
/* asm/audio_sequence_library.s: copy the 36 initial dispatch words from
 * gAudioInitialDispatchWords9BAC (cartridge words pass the address filter
 * unchanged). */
void F_CopyInitialAudioDispatchAsm(u32 dst)
{
    u32 i;
    for (i = 0; i < 36u; i++) ST32(dst + i * 4u, LD32(0x086E9BACu + i * 4u));
}
u32 F_MultiplyAudioUnsignedHigh(u32 a, u32 b) { return (u32)(((u64)a * b) >> 32); }

/* The rest of the M4A assembly is ported in rt_audio.c. */
rt_fnptr rt_audio_fn(u32 addr);

/* --- script callbacks written in assembly (asm/*.s) ------------------------ */

/* asm/save_counter_prefix.s: count the used entries (not 0, not 0xFF) among
 * the first 31 bytes of gSaveGroup01Block1CC20 into
 * gRasterScriptControlBytes[0x60].  The shop scripts use it. */
static void store_nonempty_save_group01_count(void)
{
    u32 i, n = 0;
    for (i = 0; i < 31u; i++) {
        u32 b = LD8(0x0201CC20u + i);
        if (b != 0u && b != 0xFFu) n++;
    }
    ST8(0x02004520u + 0x60u, n);
}

/* asm/map_bank2_script_noops.s */
static void main51_noop(void) {}

static const rt_fn_entry s_extra[] = {
    { 0x0802C875u, (rt_fnptr)store_nonempty_save_group01_count },
    { 0x08043119u, (rt_fnptr)main51_noop },
    { 0x0804311Du, (rt_fnptr)main51_noop },
    { 0x08043121u, (rt_fnptr)main51_noop },
    { 0, 0 }
};

rt_fnptr rt_fn_extra(u32 addr)
{
    const rt_fn_entry *e;
    rt_fnptr f = rt_audio_fn(addr);
    if (f) return f;
    for (e = s_extra; e->addr; e++)
        if (e->addr == (addr | 1u)) return e->fn;
    return 0;
}
