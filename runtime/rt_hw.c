/* rt_hw.c - GBA I/O registers, DMA, timers, interrupts and frame timing.
 *
 * The game's frame loop calls BiosVBlankIntrWait() once per frame.  That
 * call runs the video timing for a whole frame: 160 visible lines (rendered
 * by the PPU with HBlank/VCount interrupts and HBlank DMA in between), then
 * VBlank (VBlank DMA and interrupt), then lines 160-227.  The game logic
 * between two calls stands for the work the cartridge did during the frame.
 */
#include <setjmp.h>
#include <string.h>

#include "rt.h"
#include "rt_mem.h"
#include "decomp_gen.h"
#include "rt_link.h"

u32 g_rt_line;
u16 g_rt_frame[RT_FRAME_LINES][RT_GBA_W];
rt_config g_rt_cfg;
static u32 s_frames;
static int s_rendered;
static jmp_buf s_reset;
static int s_in_irq;

/* DMA channel state (internal copies latched at enable) */
typedef struct {
    u32 src, dst, count;
    u16 ctrl;
    int active;
} Dma;
static Dma s_dma[4];

/* timers */
typedef struct {
    u32 counter;     /* 16.16: integer part is the visible counter */
    u16 reload;
    u16 ctrl;
} Timer;
static Timer s_tm[4];

#define IO_DISPSTAT 0x004
#define IO_VCOUNT   0x006
#define IO_KEYINPUT 0x130
#define IO_IE       0x200
#define IO_IF       0x202
#define IO_IME      0x208

u32 rt_frame_count(void) { return s_frames; }
int rt_frame_rendered(void) { return s_rendered; }

void rt_hw_reset(void)
{
    memset(g_rt_io, 0, sizeof g_rt_io);
    memset(s_dma, 0, sizeof s_dma);
    memset(s_tm, 0, sizeof s_tm);
    RT_IO16(IO_KEYINPUT) = 0x3FF;
    RT_IO16(0x020) = 0x100;  /* BG2PA */
    RT_IO16(0x026) = 0x100;  /* BG2PD */
    RT_IO16(0x030) = 0x100;
    RT_IO16(0x036) = 0x100;
    g_rt_line = 0;
}

/* --- interrupts ---------------------------------------------------------- */

void rt_raise_irq(u32 bits)
{
    RT_IO16(IO_IF) |= (u16)bits;
    /* The CPU takes the interrupt when IME and IE allow it.  BIOS saves
     * state, calls the handler at 0x03007FFC, and returns. */
    if (s_in_irq) return;
    while ((RT_IO16(IO_IME) & 1u) && (RT_IO16(IO_IE) & RT_IO16(IO_IF) & 0x3FFFu)) {
        u32 vec = LD32(0x03007FFCu);
        u32 before = RT_IO16(IO_IF);
        s_in_irq = 1;
        ((void (*)(void))rt_fn(vec))();
        s_in_irq = 0;
        if (RT_IO16(IO_IF) == before) break;   /* handler did not acknowledge */
    }
}

/* The cartridge's ARM dispatcher (asm/startup.s), reproduced natively:
 * pick the highest-priority pending source, acknowledge it, call its
 * callback from the table at 0x0858BD40. */
void F_irq_dispatch(void)
{
    u32 ie_if = RT_IO16(IO_IE) & RT_IO16(IO_IF);
    static const u32 masks[] = { 0x1, 0x2, 0x4, 0xC0, 0x100, 0x200, 0x400, 0x800, 0x1000 };
    u32 i, bit = 0, idx = 0;
    if (ie_if & 0x2000u) {
        g_rt_io[0x84] = 0;   /* game pak removed: the cartridge halts; ignore */
    }
    for (i = 0; i < 9; i++) {
        bit = ie_if & masks[i];
        idx = i * 4u;
        if (bit) break;
    }
    if (bit & 1u) ST16(0x03007FF8u, LD16(0x03007FF8u) | 1u);  /* BIOS IntrCheck */
    RT_IO16(IO_IF) &= (u16)~bit;
    {
        u32 cb = LD32(0x0858BD40u + idx);
        ((void (*)(void))rt_fn(cb))();
    }
}

/* --- DMA ----------------------------------------------------------------- */

static void dma_run(int ch)
{
    Dma *d = &s_dma[ch];
    u32 ctrl = d->ctrl;
    int wide = (ctrl >> 10) & 1;
    u32 unit = wide ? 4u : 2u;
    int dmode = (ctrl >> 5) & 3, smode = (ctrl >> 7) & 3;
    s32 dstep = dmode == 1 ? -(s32)unit : dmode == 2 ? 0 : (s32)unit;
    s32 sstep = smode == 1 ? -(s32)unit : smode == 2 ? 0 : (s32)unit;
    u32 n = d->count;
    u32 src = d->src, dst = d->dst;
    u32 base = 0x0B0u + (u32)ch * 12u;

    if (wide) {
        src &= ~3u;
        dst &= ~3u;
    } else {
        src &= ~1u;
        dst &= ~1u;
    }
    RT_WATCH("dma", dst, n * unit, src);
    if (sstep == (s32)unit && dstep == (s32)unit) {
        rt_memcpy(dst, src, n * unit);
        src += n * unit;
        dst += n * unit;
    } else {
        u32 i;
        for (i = 0; i < n; i++) {
            if (wide) ST32(dst, LD32(src));
            else ST16(dst, LD16(src));
            src += (u32)sstep;
            dst += (u32)dstep;
        }
    }
    d->src = src;
    if (dmode != 3) d->dst = dst;
    else d->dst = RT_IO32(base + 4u);       /* increment/reload */
    if (ctrl & 0x4000u) rt_raise_irq(0x100u << ch);
    if ((ctrl & 0x0200u) && ((ctrl >> 12) & 3u) != 0) {
        /* repeat: reload count */
        u32 c = RT_IO16(base + 8u);
        d->count = c ? c : (ch == 3 ? 0x10000u : 0x4000u);
    } else {
        d->ctrl &= 0x7FFFu;
        d->active = 0;
        RT_IO16(base + 10u) &= 0x7FFFu;
    }
}

static void dma_write_ctrl(int ch, u32 v)
{
    u32 base = 0x0B0u + (u32)ch * 12u;
    u32 old = RT_IO16(base + 10u);
    RT_IO16(base + 10u) = (u16)v;
    if ((v & 0x8000u) && !(old & 0x8000u)) {
        Dma *d = &s_dma[ch];
        u32 c = RT_IO16(base + 8u);
        if (ch < 3) c &= 0x3FFFu;
        d->src = RT_IO32(base) & (ch == 0 ? 0x07FFFFFFu : 0x0FFFFFFFu);
        d->dst = RT_IO32(base + 4u) & (ch == 3 ? 0x0FFFFFFFu : 0x07FFFFFFu);
        d->count = c ? c : (ch == 3 ? 0x10000u : 0x4000u);
        d->ctrl = (u16)v;
        d->active = 1;
        if (((v >> 12) & 3u) == 0) dma_run(ch);
    } else if (!(v & 0x8000u)) {
        s_dma[ch].active = 0;
        s_dma[ch].ctrl = (u16)v;
    }
}

static void dma_trigger(u32 timing)
{
    int ch;
    for (ch = 0; ch < 4; ch++) {
        if (s_dma[ch].active && ((s_dma[ch].ctrl >> 12) & 3u) == timing) {
            if (timing == 3) {
                /* sound FIFO (DMA1/2) and video capture: rt_audio takes the
                 * mixer's segments directly, so just keep the channel alive */
                continue;
            }
            dma_run(ch);
        }
    }
}

/* --- timers -------------------------------------------------------------- */

static const u32 s_prescale_shift[4] = { 0, 6, 8, 10 };

static void timers_advance(u32 cycles)
{
    int i;
    u32 overflow_prev = 0;
    for (i = 0; i < 4; i++) {
        Timer *t = &s_tm[i];
        u32 ticks;
        if (!(t->ctrl & 0x80u)) {
            overflow_prev = 0;
            continue;
        }
        if ((t->ctrl & 4u) && i > 0) ticks = overflow_prev;
        else ticks = cycles >> s_prescale_shift[t->ctrl & 3u];
        overflow_prev = 0;
        while (ticks) {
            u32 room = 0x10000u - (t->counter & 0xFFFFu);
            if (ticks >= room) {
                ticks -= room;
                t->counter = t->reload;
                overflow_prev++;
                if (t->ctrl & 0x40u) rt_raise_irq(0x8u << i);
            } else {
                t->counter += ticks;
                ticks = 0;
            }
        }
    }
}

/* --- I/O registers --------------------------------------------------------- */

static int s_in_frame;

/* Code that polls VCOUNT/DISPSTAT between frames is waiting for the beam:
 * let one scanline pass per read. */
static void poll_tick(void)
{
    if (!s_in_frame) g_rt_line = (g_rt_line + 1u) % 228u;
}

u32 rt_io_read16(u32 off)
{
    switch (off) {
    case IO_DISPSTAT: {
        u32 v;
        poll_tick();
        v = RT_IO16(IO_DISPSTAT) & ~7u;
        if (g_rt_line >= 160 && g_rt_line < 227) v |= 1u;
        if (((RT_IO16(IO_DISPSTAT) >> 8) & 0xFFu) == g_rt_line) v |= 4u;
        return v;
    }
    case IO_VCOUNT:
        poll_tick();
        return g_rt_line;
    case IO_KEYINPUT: {
        extern u32 rt_mods_keys(u32 keys);
        return (~rt_mods_keys(rt_platform_keys())) & 0x3FFu;
    }
    case 0x100: case 0x104: case 0x108: case 0x10C:
        return s_tm[(off - 0x100u) >> 2].counter & 0xFFFFu;
    case 0x128:
        return rt_link_siocnt(RT_IO16(0x128));
    default:
        return RT_IO16(off);
    }
}

void rt_io_write16(u32 off, u32 v)
{
    v &= 0xFFFFu;
    switch (off) {
    case IO_DISPSTAT:
        RT_IO16(off) = (u16)((v & ~7u) | (RT_IO16(off) & 7u));
        return;
    case IO_VCOUNT:
        return;
    case IO_IF:
        RT_IO16(off) &= (u16)~v;
        return;
    case IO_KEYINPUT:
        return;
    case 0x0BA: dma_write_ctrl(0, v); return;
    case 0x0C6: dma_write_ctrl(1, v); return;
    case 0x0D2: dma_write_ctrl(2, v); return;
    case 0x0DE: dma_write_ctrl(3, v); return;
    case 0x100: case 0x104: case 0x108: case 0x10C:
        s_tm[(off - 0x100u) >> 2].reload = (u16)v;
        RT_IO16(off) = (u16)v;
        return;
    case 0x102: case 0x106: case 0x10A: case 0x10E: {
        Timer *t = &s_tm[(off - 0x102u) >> 2];
        if ((v & 0x80u) && !(t->ctrl & 0x80u)) t->counter = t->reload;
        t->ctrl = (u16)v;
        RT_IO16(off) = (u16)v;
        return;
    }
    case 0x028: case 0x02A: case 0x02C: case 0x02E:
        RT_IO16(off) = (u16)v;
        rt_ppu_affine_reload(2);
        return;
    case 0x038: case 0x03A: case 0x03C: case 0x03E:
        RT_IO16(off) = (u16)v;
        rt_ppu_affine_reload(3);
        return;
    case 0x128:
        /* SIOCNT: bit 7 starts a transfer (parent); the link layer finishes it */
        RT_IO16(off) = (u16)((v & ~0x80u) | (RT_IO16(off) & 0x80u));
        if ((v & 0x80u) && !(RT_IO16(off) & 0x80u)) {
            RT_IO16(off) |= 0x80u;
            rt_link_start();
        }
        return;
    default:
        RT_IO16(off) = (u16)v;
        if (off >= 0x060u && off < 0x0A0u) rt_audio_io_write(off, v);
        return;
    }
}

void rt_io_write8(u32 off, u32 v)
{
    u32 half = off & ~1u;
    u32 cur = RT_IO16(half);
    if (half == IO_IF) {
        rt_io_write16(half, (off & 1u) ? (v << 8) : v);
        return;
    }
    if (off & 1u) cur = (cur & 0x00FFu) | (v << 8);
    else cur = (cur & 0xFF00u) | v;
    if (off == 0x301) return;   /* HALTCNT: frame pacing is BiosVBlankIntrWait */
    rt_io_write16(half, cur);
}

/* --- frame ------------------------------------------------------------------- */

#define CYCLES_PER_LINE 1232u

static void line_events(u32 line)
{
    u32 ds;
    g_rt_line = line;
    ds = RT_IO16(IO_DISPSTAT);
    if (((ds >> 8) & 0xFFu) == line && (ds & 0x20u)) rt_raise_irq(4u);
}

static void hblank(u32 line)
{
    rt_link_poll();
    if (line < 160) dma_trigger(2);
    if (RT_IO16(IO_DISPSTAT) & 0x10u) rt_raise_irq(2u);
    timers_advance(CYCLES_PER_LINE);
}

void rt_frame(void)
{
    u32 line;
    int render = (g_rt_cfg.frameskip <= 0) || (s_frames % (u32)(g_rt_cfg.frameskip + 1) == 0);

    s_rendered = render;
    s_in_frame = 1;
    {
        extern void rt_mods_pre_render(void);
        rt_mods_pre_render();
    }
    if (render) {
        rt_ppu_frame_start();
        rt_view_frame_begin();
    }
    for (line = 0; line < 160; line++) {
        line_events(line);
        if (render) rt_view_line((int)line);
        hblank(line);
    }
    if (render) rt_view_frame_end();
    /* VBlank */
    line_events(160);
    dma_trigger(1);
    s_frames++;
    {
        extern void rt_mods_frame(void);
        rt_mods_frame();
    }
    rt_platform_frame();
    if (g_rt_sram_dirty && (s_frames & 63u) == 0) rt_sram_flush();
    if (RT_IO16(IO_DISPSTAT) & 0x8u) rt_raise_irq(1u);
    else RT_IO16(IO_IF) |= 1u;
    for (line = 160; line < 228; line++) {
        if (line > 160) line_events(line);
        hblank(line);
    }
    line_events(0);
    s_in_frame = 0;
}

/* BIOS VBlankIntrWait: wait for the next VBlank interrupt. */
void F_BiosVBlankIntrWait(void)
{
    ST16(0x03007FF8u, LD16(0x03007FF8u) & ~1u);
    rt_frame();
}

void F_BiosSoftReset(u32 unused)
{
    (void)unused;
    longjmp(s_reset, 1);
}

/* --- entry ---------------------------------------------------------------- */

int rt_mem_init(void);

int rt_init(const rt_config *cfg)
{
    g_rt_cfg = *cfg;
    if (g_rt_cfg.rom_cache_pages <= 0) g_rt_cfg.rom_cache_pages = 64;
    if (rt_mem_init() != 0) {
        rt_log("out of memory");
        return -1;
    }
    if (rt_rom_open(cfg->rom_path, g_rt_cfg.rom_cache_pages) != 0) return -2;
    rt_sram_load();
    rt_view_set_zoom(g_rt_cfg.zoom);
    return 0;
}

void rt_run(void)
{
    setjmp(s_reset);
    /* power-on state: RAM cleared, registers reset (the cartridge's own
     * startup clears and initializes the rest) */
    memset(g_rt_ewram, 0, sizeof g_rt_ewram);
    memset(g_rt_iwram, 0, sizeof g_rt_iwram);
    memset(g_rt_vram, 0, sizeof g_rt_vram);
    memset(g_rt_pal, 0, sizeof g_rt_pal);
    memset(g_rt_oam, 0, sizeof g_rt_oam);
    { extern int g_rt_oam_dirty; g_rt_oam_dirty = 1; }
    rt_hw_reset();
    g_rt_sp = RT_STACK_ADDR + RT_STACK_SIZE - 16u;
    s_in_irq = 0;
    /* a soft reset can come from inside a frame (the IRQ handler): without
     * this VCOUNT would stop moving and the sound setup would wait forever */
    s_in_frame = 0;
    g_rt_line = 0;
    F_game_main();
}
