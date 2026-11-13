/* rt_mem.c - GBA address space for the translated decomp: page tables,
 * slow paths (I/O, palette, OAM, VRAM byte writes, cartridge faults,
 * save RAM), bulk memory and the indirect-call table. */
#include <stdarg.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "rt.h"
#include "rt_mem.h"

u8 *g_rt_rd[RT_PAGES];
u8 *g_rt_wr[RT_PAGES];
u8 *g_rt_wr8[RT_PAGES];
u32 g_rt_sp;

RT_ALIGNED u8 g_rt_ewram[0x40000];
RT_ALIGNED u8 g_rt_iwram[0x8000];
RT_ALIGNED u8 g_rt_io[0x400];
RT_ALIGNED u8 g_rt_pal[0x400];
RT_ALIGNED u8 g_rt_vram[0x18000];
RT_ALIGNED u8 g_rt_oam[0x400];
RT_ALIGNED u8 g_rt_sram[0x10000];
static RT_ALIGNED u8 s_stack[RT_STACK_SIZE];
static u8 *s_native;

int g_rt_sram_dirty;

extern const rt_fn_entry g_rt_fn_table[];
extern const u32 g_rt_fn_count;
extern const u32 g_rt_native_data_base;
extern const u32 g_rt_native_data_size;
extern const u8 g_rt_native_data[];

static void map(u32 addr, u32 size, u8 *buf, u32 bufsize, int rd, int wr, int wr8)
{
    u32 a;
    for (a = addr; a < addr + size; a += RT_PAGE_SIZE) {
        u32 page = a >> RT_PAGE_SHIFT;
        u8 *p = buf + ((a - addr) % bufsize);
        if (rd) g_rt_rd[page] = p;
        if (wr) g_rt_wr[page] = p;
        if (wr8) g_rt_wr8[page] = p;
    }
}

int rt_mem_init(void)
{
    static u8 *native_buf;
    u32 n;
    memset(g_rt_rd, 0, sizeof g_rt_rd);
    memset(g_rt_wr, 0, sizeof g_rt_wr);
    memset(g_rt_wr8, 0, sizeof g_rt_wr8);
    /* EWRAM 256 KiB, mirrored through 0x02FFFFFF */
    map(0x02000000u, 0x01000000u, g_rt_ewram, sizeof g_rt_ewram, 1, 1, 1);
    /* IWRAM 32 KiB = one page, mirrored through 0x03FFFFFF */
    map(0x03000000u, 0x01000000u, g_rt_iwram, sizeof g_rt_iwram, 1, 1, 1);
    /* VRAM: 64 KiB BG + 32 KiB OBJ, mirrored every 128 KiB (upper 32 KiB
     * repeats the OBJ area).  Byte stores take the slow path. */
    {
        u32 base;
        for (base = 0x06000000u; base < 0x07000000u; base += 0x20000u) {
            map(base, 0x18000u, g_rt_vram, sizeof g_rt_vram, 1, 1, 0);
            map(base + 0x18000u, 0x8000u, g_rt_vram + 0x10000u, 0x8000u, 1, 1, 0);
        }
    }
    /* palette and OAM are 1 KiB: smaller than a page, slow path only */
    /* save RAM: reads direct, writes tracked (slow path) */
    map(0x0E000000u, 0x01000000u, g_rt_sram, sizeof g_rt_sram, 1, 0, 0);
    /* runtime regions */
    n = g_rt_native_data_size ? g_rt_native_data_size : 1;
    n = (n + RT_PAGE_MASK) & ~RT_PAGE_MASK;
    if (!native_buf) {
        native_buf = (u8 *)calloc(n, 1);
        if (!native_buf) return -1;
    }
    s_native = native_buf;
    memcpy(s_native, g_rt_native_data, g_rt_native_data_size);
    map(g_rt_native_data_base, n, s_native, n, 1, 1, 1);
    map(RT_STACK_ADDR, RT_STACK_SIZE, s_stack, RT_STACK_SIZE, 1, 1, 1);
    /* misaligned buffers misread 32-bit values on ARM: worth seeing in the log */
    rt_log("memory: ewram %p iwram %p vram %p stack %p native %p",
           (void *)g_rt_ewram, (void *)g_rt_iwram, (void *)g_rt_vram, (void *)s_stack, (void *)s_native);
    g_rt_sp = RT_STACK_ADDR + RT_STACK_SIZE - 16u;
    return 0;
}

/* --- slow paths -------------------------------------------------------- */

static u32 open_bus(u32 a)
{
    (void)a;
    return 0;
}

static u8 *rom_ptr(u32 a)
{
    u32 off = a & 0x01FFFFFFu;
    u8 *page;
    if (off >= rt_rom_size()) return 0;
    page = rt_rom_page(off >> RT_PAGE_SHIFT);
    return page ? page + (off & RT_PAGE_MASK) : 0;
}

static int is_rom(u32 a)
{
    u32 r = a >> 24;
    return r == 0x08 || r == 0x09;
}

u32 rt_ld8_slow(u32 a)
{
    u32 r = a >> 24;
    if (r == 0x04) {
        u32 off = a & 0x3FFu;
        if ((a & 0x00FFFFFFu) >= 0x400u) return 0;
        return (rt_io_read16(off & ~1u) >> ((off & 1u) * 8u)) & 0xFFu;
    }
    if (r == 0x05) return g_rt_pal[a & 0x3FFu];
    if (r == 0x07) return g_rt_oam[a & 0x3FFu];
    if (is_rom(a)) {
        u8 *p = rom_ptr(a);
        return p ? *p : 0;
    }
    return open_bus(a) & 0xFFu;
}

u32 rt_ld16_slow(u32 a)
{
    u32 r = a >> 24;
    a &= ~1u;
    if (r == 0x04) {
        if ((a & 0x00FFFFFFu) >= 0x400u) return 0;
        return rt_io_read16(a & 0x3FEu);
    }
    if (r == 0x05) return *(u16 *)(g_rt_pal + (a & 0x3FEu));
    if (r == 0x07) return *(u16 *)(g_rt_oam + (a & 0x3FEu));
    if (r == 0x0E) return g_rt_sram[a & 0xFFFFu] * 0x0101u;
    if (is_rom(a)) {
        u8 *p = rom_ptr(a);
        return p ? *(u16 *)p : 0;
    }
    return open_bus(a) & 0xFFFFu;
}

u32 rt_ld32_slow(u32 a)
{
    u32 r = a >> 24;
    u32 v;
    u32 al = a & ~3u;
    if (r == 0x04) {
        if ((al & 0x00FFFFFFu) >= 0x400u) v = 0;
        else v = rt_io_read16(al & 0x3FCu) | (rt_io_read16((al & 0x3FCu) + 2u) << 16);
    } else if (r == 0x05) {
        v = *(u32 *)(g_rt_pal + (al & 0x3FCu));
    } else if (r == 0x07) {
        v = *(u32 *)(g_rt_oam + (al & 0x3FCu));
    } else if (r == 0x0E) {
        v = g_rt_sram[a & 0xFFFFu] * 0x01010101u;
    } else if (is_rom(al)) {
        u8 *p = rom_ptr(al);
        v = p ? *(u32 *)p : 0;
    } else {
        v = open_bus(a);
    }
    if (a & 3u) {
        u32 rot = (a & 3u) * 8u;
        v = (v >> rot) | (v << (32u - rot));
    }
    return v;
}

static void sram_store(u32 a, u32 v)
{
    u8 *p = &g_rt_sram[a & 0xFFFFu];
    if (*p != (u8)v) {
        *p = (u8)v;
        g_rt_sram_dirty = 1;
    }
}

void rt_st8_slow(u32 a, u32 v)
{
    u32 r = a >> 24;
    v &= 0xFFu;
    if (r == 0x04) {
        if ((a & 0x00FFFFFFu) < 0x400u) rt_io_write8(a & 0x3FFu, v);
    } else if (r == 0x05) {
        /* 8-bit palette writes store the byte in both halves */
        *(u16 *)(g_rt_pal + (a & 0x3FEu)) = (u16)(v * 0x0101u);
    } else if (r == 0x06) {
        u32 off = a & 0x1FFFFu;
        if (off >= 0x18000u) off -= 0x8000u;
        /* BG VRAM: duplicated byte; OBJ VRAM: ignored (modes 0-2) */
        if (off < 0x10000u) *(u16 *)(g_rt_vram + (off & ~1u)) = (u16)(v * 0x0101u);
    } else if (r == 0x07) {
        /* OAM ignores byte writes */
    } else if (r == 0x0E) {
        sram_store(a, v);
    }
}

void rt_st16_slow(u32 a, u32 v)
{
    u32 r = a >> 24;
    a &= ~1u;
    v &= 0xFFFFu;
    if (r == 0x04) {
        if ((a & 0x00FFFFFFu) < 0x400u) rt_io_write16(a & 0x3FEu, v);
    } else if (r == 0x05) {
        *(u16 *)(g_rt_pal + (a & 0x3FEu)) = (u16)v;
    } else if (r == 0x07) {
        extern int g_rt_oam_dirty;
        *(u16 *)(g_rt_oam + (a & 0x3FEu)) = (u16)v;
        g_rt_oam_dirty = 1;
    } else if (r == 0x0E) {
        sram_store(a, v >> ((a & 1u) * 8u));
    }
}

void rt_st32_slow(u32 a, u32 v)
{
    u32 r = a >> 24;
    a &= ~3u;
    if (r == 0x04) {
        if ((a & 0x00FFFFFFu) < 0x400u) {
            rt_io_write16(a & 0x3FCu, v & 0xFFFFu);
            rt_io_write16((a & 0x3FCu) + 2u, v >> 16);
        }
    } else if (r == 0x05) {
        *(u32 *)(g_rt_pal + (a & 0x3FCu)) = v;
    } else if (r == 0x07) {
        extern int g_rt_oam_dirty;
        *(u32 *)(g_rt_oam + (a & 0x3FCu)) = v;
        g_rt_oam_dirty = 1;
    } else if (r == 0x0E) {
        sram_store(a, v);
    }
}

/* --- bulk memory --------------------------------------------------------- */

/* Native pointer for [a, a+n) when it lies in one directly mapped page. */
static u8 *direct(u8 **table, u32 a, u32 n)
{
    u32 i = a >> RT_PAGE_SHIFT;
    if (!n || i >= RT_PAGES || ((a + n - 1u) >> RT_PAGE_SHIFT) != i || !table[i]) return 0;
    return table[i] + (a & RT_PAGE_MASK);
}

u32 g_rt_watch;
void rt_watch_hit(const char *tag, u32 dst, u32 n, u32 src) { extern u32 rt_frame_count(void); rt_log("WATCH %s frame %u dst %08X n %X src %08X", tag, rt_frame_count(), dst, n, src); }
void rt_memcpy(u32 dst, u32 src, u32 n)
{
    RT_WATCH("memcpy", dst, n, src);
    while (n) {
        u32 chunk = RT_PAGE_SIZE - (dst & RT_PAGE_MASK);
        u32 c2 = RT_PAGE_SIZE - (src & RT_PAGE_MASK);
        u8 *d, *s;
        if (c2 < chunk) chunk = c2;
        if (chunk > n) chunk = n;
        d = direct(g_rt_wr8, dst, chunk);
        if (!d && !((dst | src | chunk) & 1u)) d = direct(g_rt_wr, dst, chunk);
        s = direct(g_rt_rd, src, chunk);
        if (!s && (src >> 24) >= 8 && (src >> 24) <= 9) {
            (void)LD8(src);   /* fault the cartridge page in */
            s = direct(g_rt_rd, src, chunk);
        }
        if (d && s) {
            memmove(d, s, chunk);
        } else {
            u32 i;
            if (!((dst | src | chunk) & 1u)) {
                for (i = 0; i < chunk; i += 2) ST16(dst + i, LD16(src + i));
            } else {
                for (i = 0; i < chunk; i++) ST8(dst + i, LD8(src + i));
            }
        }
        dst += chunk;
        src += chunk;
        n -= chunk;
    }
}

void rt_memmove(u32 dst, u32 src, u32 n)
{
    RT_WATCH("memmove", dst, n, src);
    if (dst <= src || dst >= src + n) {
        rt_memcpy(dst, src, n);
    } else {
        while (n) {
            n--;
            ST8(dst + n, LD8(src + n));
        }
    }
}

void rt_memset(u32 dst, u32 v, u32 n)
{
    RT_WATCH("memset", dst, n, v);
    while (n) {
        u32 chunk = RT_PAGE_SIZE - (dst & RT_PAGE_MASK);
        u8 *d;
        if (chunk > n) chunk = n;
        d = direct(g_rt_wr8, dst, chunk);
        if (d) {
            memset(d, (int)(v & 0xFFu), chunk);
        } else {
            u32 i;
            for (i = 0; i < chunk; i++) ST8(dst + i, v);
        }
        dst += chunk;
        n -= chunk;
    }
}

/* --- indirect calls ------------------------------------------------------ */

static void unknown_target(void)
{
    rt_fatal("call through an unknown code address");
}

/* Code the game copied into RAM (SRAM access routines, the IRQ handler)
 * is recognised by its bytes: they match the cartridge code of the
 * function it was copied from. */
#define SIG_BYTES 16
typedef struct { u32 sum; u32 index; } Sig;
static Sig *s_sigs;
static u32 s_nsigs;
static struct { u32 addr; rt_fnptr fn; u8 bytes[SIG_BYTES]; } s_ram_code[32];
static u32 s_nram_code;

static u32 sig_hash(const u8 *b)
{
    u32 h = 2166136261u, i;
    for (i = 0; i < SIG_BYTES; i++) h = (h ^ b[i]) * 16777619u;
    return h;
}

static void sigs_build(void)
{
    u32 i;
    s_sigs = (Sig *)malloc(sizeof(Sig) * g_rt_fn_count);
    for (i = 0; i < g_rt_fn_count; i++) {
        u32 a = g_rt_fn_table[i].addr & ~1u;
        u8 b[SIG_BYTES];
        u32 j;
        if ((a >> 24) != 0x08) continue;
        for (j = 0; j < SIG_BYTES; j++) b[j] = LD8(a + j);
        s_sigs[s_nsigs].sum = sig_hash(b);
        s_sigs[s_nsigs].index = i;
        s_nsigs++;
    }
}

static rt_fnptr ram_code(u32 addr)
{
    u8 b[SIG_BYTES];
    u32 a = addr & ~1u, i, h;
    for (i = 0; i < SIG_BYTES; i++) b[i] = LD8(a + i);
    for (i = 0; i < s_nram_code; i++)
        if (s_ram_code[i].addr == a && !memcmp(s_ram_code[i].bytes, b, SIG_BYTES)) return s_ram_code[i].fn;
    if (!s_sigs) sigs_build();
    h = sig_hash(b);
    for (i = 0; i < s_nsigs; i++) {
        if (s_sigs[i].sum == h) {
            const rt_fn_entry *e = &g_rt_fn_table[s_sigs[i].index];
            u32 j, src = e->addr & ~1u;
            for (j = 0; j < SIG_BYTES && LD8(src + j) == b[j]; j++) {}
            if (j < SIG_BYTES) continue;
            if (s_nram_code < 32) {
                s_ram_code[s_nram_code].addr = a;
                s_ram_code[s_nram_code].fn = e->fn;
                memcpy(s_ram_code[s_nram_code].bytes, b, SIG_BYTES);
                s_nram_code++;
            }
            rt_log("RAM code at %08X is a copy of %08X", a, e->addr & ~1u);
            return e->fn;
        }
    }
    return 0;
}

rt_fnptr rt_fn(u32 addr)
{
    u32 lo = 0, hi = g_rt_fn_count;
    u32 key = addr | 1u;     /* Thumb bit: table keys are odd */
    while (lo < hi) {
        u32 mid = (lo + hi) >> 1;
        u32 a = g_rt_fn_table[mid].addr;
        if (a == key) return g_rt_fn_table[mid].fn;
        if (a < key) lo = mid + 1;
        else hi = mid;
    }
    if ((addr >> 24) == 0x02 || (addr >> 24) == 0x03) {
        rt_fnptr f = ram_code(addr);
        if (f) return f;
    }
    {
        extern rt_fnptr rt_fn_extra(u32 addr);
        rt_fnptr f = rt_fn_extra(addr);
        if (f) return f;
    }
    rt_fatal("indirect call to unknown address %08X", addr);
    return unknown_target;
}

void rt_unreachable(const char *where)
{
    rt_fatal("reached unreachable code in %s", where);
}

/* --- logging --------------------------------------------------------------- */

void rt_log(const char *fmt, ...)
{
    char buf[256];
    va_list ap;
    va_start(ap, fmt);
    vsprintf(buf, fmt, ap);
    va_end(ap);
    rt_platform_log(buf);
}

void rt_fatal(const char *fmt, ...)
{
    char buf[256];
    va_list ap;
    va_start(ap, fmt);
    vsprintf(buf, fmt, ap);
    va_end(ap);
    rt_platform_fatal(buf);
}
