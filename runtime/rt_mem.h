/* rt_mem.h - the GBA address space as seen by the translated decomp.
 *
 * Generated code never holds native pointers: every "pointer" is a 32-bit
 * GBA address.  Loads and stores go through the inline functions below.
 *
 * The space below 0x10000000 is cut into 32 KiB pages.  g_rt_rd/g_rt_wr hold
 * a native pointer for each page that can be accessed directly (EWRAM and
 * its mirrors, IWRAM and its mirrors, VRAM, cartridge pages currently in the
 * cache, save RAM, the runtime's own regions).  A null entry sends the access
 * to the slow path in rt_mem.c, which implements I/O registers, palette/OAM,
 * VRAM byte-write rules, cartridge page faults and open bus.
 *
 * Unaligned word loads rotate like the ARM7TDMI; stores ignore the low
 * address bits like the GBA bus.
 */
#ifndef RT_MEM_H
#define RT_MEM_H

#include "rt_types.h"

#define RT_PAGE_SHIFT 15
#define RT_PAGE_SIZE  (1u << RT_PAGE_SHIFT)
#define RT_PAGE_MASK  (RT_PAGE_SIZE - 1u)
#define RT_PAGES      0x2000u           /* covers 0x00000000-0x0FFFFFFF */

extern u8 *g_rt_rd[RT_PAGES];
extern u8 *g_rt_wr[RT_PAGES];           /* 16/32-bit stores */
extern u8 *g_rt_wr8[RT_PAGES];          /* 8-bit stores (null for VRAM/OAM/PAL) */
extern u32 g_rt_sp;                     /* emulated stack for address-taken locals */

u32  rt_ld8_slow(u32 a);
u32  rt_ld16_slow(u32 a);
u32  rt_ld32_slow(u32 a);
void rt_st8_slow(u32 a, u32 v);
void rt_st16_slow(u32 a, u32 v);
void rt_st32_slow(u32 a, u32 v);

RT_INLINE u8 LD8(u32 a)
{
    u32 i = a >> RT_PAGE_SHIFT;
    u8 *p;
    if (i < RT_PAGES && (p = g_rt_rd[i]) != 0)
        return p[a & RT_PAGE_MASK];
    return (u8)rt_ld8_slow(a);
}

RT_INLINE u16 LD16(u32 a)
{
    u32 i = a >> RT_PAGE_SHIFT;
    u8 *p;
    if (i < RT_PAGES && (p = g_rt_rd[i]) != 0)
        return *(const u16 *)(p + (a & RT_PAGE_MASK & ~1u));
    return (u16)rt_ld16_slow(a);
}

RT_INLINE u32 LD32(u32 a)
{
    u32 i = a >> RT_PAGE_SHIFT;
    u8 *p;
    u32 v;
    if (i < RT_PAGES && (p = g_rt_rd[i]) != 0) {
        v = *(const u32 *)(p + (a & RT_PAGE_MASK & ~3u));
        if (a & 3u) {
            u32 r = (a & 3u) * 8u;
            v = (v >> r) | (v << (32u - r));
        }
        return v;
    }
    return rt_ld32_slow(a);
}

RT_INLINE void ST8(u32 a, u32 v)
{
    u32 i = a >> RT_PAGE_SHIFT;
    u8 *p;
    if (i < RT_PAGES && (p = g_rt_wr8[i]) != 0)
        p[a & RT_PAGE_MASK] = (u8)v;
    else
        rt_st8_slow(a, v);
}

RT_INLINE void ST16(u32 a, u32 v)
{
    u32 i = a >> RT_PAGE_SHIFT;
    u8 *p;
    if (i < RT_PAGES && (p = g_rt_wr[i]) != 0)
        *(u16 *)(p + (a & RT_PAGE_MASK & ~1u)) = (u16)v;
    else
        rt_st16_slow(a, v);
}

RT_INLINE void ST32(u32 a, u32 v)
{
    u32 i = a >> RT_PAGE_SHIFT;
    u8 *p;
    if (i < RT_PAGES && (p = g_rt_wr[i]) != 0)
        *(u32 *)(p + (a & RT_PAGE_MASK & ~3u)) = v;
    else
        rt_st32_slow(a, v);
}

RT_INLINE u64 LD64(u32 a) { return (u64)LD32(a) | ((u64)LD32(a + 4u) << 32); }
RT_INLINE void ST64(u32 a, u64 v) { ST32(a, (u32)v); ST32(a + 4u, (u32)(v >> 32)); }

RT_INLINE float LDF32(u32 a) { union { u32 u; float f; } x; x.u = LD32(a); return x.f; }
RT_INLINE void STF32(u32 a, float f) { union { u32 u; float f; } x; x.f = f; ST32(a, x.u); }
RT_INLINE double LDF64(u32 a) { union { u64 u; double f; } x; x.u = LD64(a); return x.f; }
RT_INLINE void STF64(u32 a, double f) { union { u64 u; double f; } x; x.f = f; ST64(a, x.u); }

/* Arithmetic helpers with defined results where C has none. */
RT_INLINE u32 RT_UDIV(u32 a, u32 b) { return b ? a / b : 0xFFFFFFFFu; }
RT_INLINE u32 RT_UREM(u32 a, u32 b) { return b ? a % b : a; }
RT_INLINE u64 RT_UDIV64(u64 a, u64 b) { return b ? a / b : ~(u64)0; }
RT_INLINE u64 RT_UREM64(u64 a, u64 b) { return b ? a % b : a; }
RT_INLINE s32 RT_SDIV(s32 a, s32 b)
{
    if (b == 0) return a < 0 ? 1 : -1;
    if (b == -1) return (s32)(0u - (u32)a);
    return a / b;
}
RT_INLINE s32 RT_SREM(s32 a, s32 b)
{
    if (b == 0) return a;
    if (b == -1) return 0;
    return a % b;
}
RT_INLINE s64 RT_SDIV64(s64 a, s64 b) { return b ? (b == -1 ? (s64)(0 - (u64)a) : a / b) : (a < 0 ? 1 : -1); }
RT_INLINE s64 RT_SREM64(s64 a, s64 b) { return b ? (b == -1 ? 0 : a % b) : a; }
RT_INLINE u32 RT_FSHL32(u32 a, u32 b, u32 c) { c &= 31u; return c ? (a << c) | (b >> (32u - c)) : a; }
RT_INLINE u64 RT_FSHL64(u64 a, u64 b, u64 c) { c &= 63u; return c ? (a << c) | (b >> (64u - c)) : a; }

/* Float conversions through signed 32-bit helpers only (see ir2c.py). */
RT_INLINE double RT_U32_TO_F(u32 x)
{
    if (x < 0x80000000u) return (double)(s32)x;
    return (double)(s32)(x >> 1) * 2.0 + (double)(s32)(x & 1u);
}
RT_INLINE u32 RT_F_TO_U32(double f)
{
    if (f < 2147483648.0) return (u32)(s32)f;
    return (u32)(s32)(f - 2147483648.0) + 0x80000000u;
}

/* Screen size the game's camera code works with (tools/view_patch.py):
 * 240x160 normally, the N-Gage view size while the zoom view is on. */
extern u32 g_rt_cam_w, g_rt_cam_h;
extern u32 g_rt_cam_used;               /* set when the camera code runs (rt_view.c) */
#define RT_CAM_W (g_rt_cam_used = 1u, g_rt_cam_w)
#define RT_CAM_H (g_rt_cam_used = 1u, g_rt_cam_h)
#define RT_CAM_ORIGIN_X ((u32)(0x69 - (240 - (s32)g_rt_cam_w) / 2))
#define RT_CAM_ORIGIN_Y ((u32)(0x41 + ((s32)g_rt_cam_h - 160) / 2))

extern u32 g_rt_watch;
void rt_watch_hit(const char *tag, u32 dst, u32 n, u32 src);
#define RT_WATCH(tag, d, n, s) do { if (g_rt_watch && g_rt_watch >= (u32)(d) && g_rt_watch < (u32)(d) + (u32)(n)) rt_watch_hit(tag, d, n, s); } while (0)
/* Bulk memory on GBA addresses. */
void rt_memcpy(u32 dst, u32 src, u32 n);
void rt_memmove(u32 dst, u32 src, u32 n);
void rt_memset(u32 dst, u32 v, u32 n);

/* Indirect calls: GBA code address -> translated function. */
typedef void (*rt_fnptr)(void);
typedef struct { u32 addr; rt_fnptr fn; } rt_fn_entry;
rt_fnptr rt_fn(u32 addr);
void rt_unreachable(const char *where);

#endif
