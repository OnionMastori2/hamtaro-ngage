/* rt_ppu.c - scanline GBA PPU.
 *
 * Renders one line at a time from the current VRAM/palette/OAM/register
 * state, so HBlank interrupt effects (raster scrolls, palette changes,
 * windows) come out as on hardware.  Output is BGR555 (the GBA's own
 * format); front ends convert while scaling.
 *
 * Supported: modes 0-4; text BGs of every size, 4/8bpp, flips; affine BGs
 * with wrap and the internal reference-point registers; 128 OBJs, normal
 * and affine (double size), 1D/2D mapping, semi-transparent and OBJ-window
 * sprites; WIN0/WIN1/OBJ window; BG and OBJ mosaic; alpha blending,
 * brightness up/down; forced blank.
 *
 * Views (rt_view.c): a pass can be limited to some BG layers
 * (g_rt_ppu_bgmask) and to no sprites; the UI pass writes a transparent
 * backdrop (RT_UI_CLEAR) and leaves the affine reference points alone, so
 * it can run on the same line as the main pass.  In the zoom view the
 * game's camera works on a 208-line screen (g_rt_ppu_screen_h): sprites
 * on lines 160..207 are real, as they would be on a taller GBA.
 */
#include <string.h>

#include "rt.h"

#define IO16(o) (*(const u16 *)(g_rt_io + (o)))
#define PAL ((const u16 *)g_rt_pal)
#define OAM ((const u16 *)g_rt_oam)

#define OPAQUE 0x8000u

static s32 s_ref[2][2];         /* internal affine reference points, BG2/BG3 x/y */
static u16 s_bg[4][240];
static u16 s_obj[240];
static u8 s_obj_prio[240];
static u8 s_obj_semi[240];
static u8 s_objwin[240];
static u8 s_win[240];

u32 g_rt_ppu_bgmask = 15u;     /* BG layers this pass draws */
int g_rt_ppu_objs = 1;         /* this pass draws sprites */
int g_rt_ppu_ui = 0;           /* UI pass: transparent backdrop, no affine step */
int g_rt_ppu_screen_h = 160;   /* lines the game's screen has */
const u8 *g_rt_ppu_objfilter;  /* if set: only OBJs with a nonzero entry */

static s32 ref_reg(int bg, int axis)
{
    u32 off = 0x28u + (u32)(bg - 2) * 0x10u + (u32)axis * 4u;
    u32 v = (u32)IO16(off) | ((u32)IO16(off + 2u) << 16);
    return ((s32)(v << 4)) >> 4;    /* 28-bit signed */
}

static s16 affine_param(int bg, int which)
{
    return (s16)IO16(0x20u + (u32)(bg - 2) * 0x10u + (u32)which * 2u);
}

void rt_ppu_affine_reload(int bg)
{
    s_ref[bg - 2][0] = ref_reg(bg, 0);
    s_ref[bg - 2][1] = ref_reg(bg, 1);
}

void rt_ppu_frame_start(void)
{
    int bg;
    for (bg = 2; bg < 4; bg++) {
        rt_ppu_affine_reload(bg);
    }
}

static int pmod(int a, int m)
{
    int r = a % m;
    return r < 0 ? r + m : r;
}

/* --- backgrounds ----------------------------------------------------------- */

static int s_backmost_bg = -1;   /* lowest-priority enabled BG this line */

static void text_bg_mode(int bg, int y, u16 *dst, int paint);
static void text_bg(int bg, int y, u16 *dst) { text_bg_mode(bg, y, dst, 0); }

static void text_bg_mode(int bg, int y, u16 *dst, int paint)
{
    u32 cnt = IO16(0x08u + (u32)bg * 2u);
    u32 hofs = IO16(0x10u + (u32)bg * 4u) & 0x1FFu;
    u32 vofs = IO16(0x12u + (u32)bg * 4u) & 0x1FFu;
    u32 charbase = ((cnt >> 2) & 3u) * 0x4000u;
    u32 screenbase = ((cnt >> 8) & 31u) * 0x800u;
    int c256 = (cnt & 0x80u) != 0;
    u32 size = cnt >> 14;
    u32 wmask = (size & 1u) ? 511u : 255u;
    u32 hmask = (size & 2u) ? 511u : 255u;
    u32 mos = IO16(0x4C);
    int mh = (cnt & 0x40u) ? (int)(mos & 15u) + 1 : 1;
    int mv = (cnt & 0x40u) ? (int)((mos >> 4) & 15u) + 1 : 1;
    int yy = y - pmod(y, mv);
    u32 ty = ((u32)yy + vofs) & hmask;
    u32 row_block, row_base, last_col = 0xFFFFFFFFu, entry = 0;
    int x;
    row_block = (ty >> 8) * ((size & 1u) ? 2u : 1u);
    row_base = (ty >> 3) & 31u;
    if (mh == 1) {
        /* fast path: one map entry and one tile row per run of up to 8 pixels */
        u32 tx = hofs & wmask;
        x = 0;
        while (x < 240) {
            u32 col = tx >> 3, px0 = tx & 7u, n = 8u - px0, py, tile, i;
            u32 ea = (screenbase + ((tx >> 8) + row_block) * 0x800u + row_base * 64u + (col & 31u) * 2u) & 0xFFFEu;
            entry = *(const u16 *)(g_rt_vram + ea);
            if (n > (u32)(240 - x)) n = (u32)(240 - x);
            py = ty & 7u;
            if (entry & 0x800u) py = 7u - py;
            tile = entry & 0x3FFu;
            if (c256) {
                u32 addr = charbase + tile * 64u + py * 8u;
                if (addr >= 0x10000u) {
                    if (!paint) for (i = 0; i < n; i++) dst[x + (int)i] = 0;
                } else {
                    const u8 *row = g_rt_vram + addr;
                    for (i = 0; i < n; i++) {
                        u32 px = px0 + i, idx;
                        if (entry & 0x400u) px = 7u - px;
                        idx = row[px];
                        if (paint) { if (idx) dst[x + (int)i] = PAL[idx]; }
                        else dst[x + (int)i] = idx ? (u16)(PAL[idx] | OPAQUE) : 0;
                    }
                }
            } else {
                u32 addr = charbase + tile * 32u + py * 4u;
                if (addr >= 0x10000u) {
                    if (!paint) for (i = 0; i < n; i++) dst[x + (int)i] = 0;
                } else {
                    const u8 *r8 = g_rt_vram + addr;
                    u32 rowbits = (u32)r8[0] | ((u32)r8[1] << 8) | ((u32)r8[2] << 16) | ((u32)r8[3] << 24);
                    const u16 *pal = PAL + ((entry >> 12) << 4);
                    if (!rowbits) {
                        if (!paint) for (i = 0; i < n; i++) dst[x + (int)i] = 0;
                    } else if (paint) {
                        for (i = 0; i < n; i++) {
                            u32 px = px0 + i, idx;
                            if (entry & 0x400u) px = 7u - px;
                            idx = (rowbits >> (px * 4u)) & 15u;
                            if (idx) dst[x + (int)i] = pal[idx];
                        }
                    } else {
                        for (i = 0; i < n; i++) {
                            u32 px = px0 + i, idx;
                            if (entry & 0x400u) px = 7u - px;
                            idx = (rowbits >> (px * 4u)) & 15u;
                            dst[x + (int)i] = idx ? (u16)(pal[idx] | OPAQUE) : 0;
                        }
                    }
                }
            }
            x += (int)n;
            tx = (tx + n) & wmask;
        }
        return;
    }
    for (x = 0; x < 240; x++) {
        int sx = x - (x % mh);
        u32 tx = ((u32)sx + hofs) & wmask;
        u32 col = tx >> 3;
        u32 px, py, tile, addr, idx;
        if (col != last_col) {
            u32 block = (tx >> 8) + row_block;
            u32 ea = (screenbase + block * 0x800u + row_base * 64u + (col & 31u) * 2u) & 0xFFFEu;
            entry = *(const u16 *)(g_rt_vram + ea);
            last_col = col;
        }
        px = tx & 7u;
        py = ty & 7u;
        if (entry & 0x400u) px = 7u - px;
        if (entry & 0x800u) py = 7u - py;
        tile = entry & 0x3FFu;
        if (c256) {
            addr = charbase + tile * 64u + py * 8u + px;
            if (addr >= 0x10000u) { dst[x] = 0; continue; }
            idx = g_rt_vram[addr];
            dst[x] = idx ? (u16)(PAL[idx] | OPAQUE) : 0;
        } else {
            addr = charbase + tile * 32u + py * 4u + (px >> 1);
            if (addr >= 0x10000u) { dst[x] = 0; continue; }
            idx = (g_rt_vram[addr] >> ((px & 1u) * 4u)) & 15u;
            dst[x] = idx ? (u16)(PAL[((entry >> 12) << 4) | idx] | OPAQUE) : 0;
        }
    }
}

static void affine_bg(int bg, u16 *dst)
{
    u32 cnt = IO16(0x08u + (u32)bg * 2u);
    u32 charbase = ((cnt >> 2) & 3u) * 0x4000u;
    u32 screenbase = ((cnt >> 8) & 31u) * 0x800u;
    s32 size = 128 << (cnt >> 14);
    int wrap = (cnt & 0x2000u) != 0;
    s32 pa = affine_param(bg, 0), pc = affine_param(bg, 2);
    s32 rx = s_ref[bg - 2][0], ry = s_ref[bg - 2][1];
    u32 tiles_per_row = (u32)size >> 3;
    int x;
    for (x = 0; x < 240; x++, rx += pa, ry += pc) {
        s32 px = rx >> 8, py = ry >> 8;
        u32 tile, idx;
        if (wrap) {
            px &= size - 1;
            py &= size - 1;
        } else if (px < 0 || py < 0 || px >= size || py >= size) {
            dst[x] = 0;
            continue;
        }
        tile = g_rt_vram[(screenbase + ((u32)py >> 3) * tiles_per_row + ((u32)px >> 3)) & 0xFFFFu];
        idx = g_rt_vram[(charbase + tile * 64u + ((u32)py & 7u) * 8u + ((u32)px & 7u)) & 0xFFFFu];
        dst[x] = idx ? (u16)(PAL[idx] | OPAQUE) : 0;
    }
}

static void bitmap_bg(int mode, int y, u16 *dst)
{
    int x;
    u32 page = (IO16(0) & 0x10u) ? 0xA000u : 0;
    if (y < 0 || y >= 160) {
        memset(dst, 0, 240 * sizeof(u16));
        return;
    }
    for (x = 0; x < 240; x++) {
        if (mode == 3) {
            dst[x] = (u16)(*(const u16 *)(g_rt_vram + ((u32)y * 240u + (u32)x) * 2u) | OPAQUE);
        } else if (mode == 4) {
            u32 idx = g_rt_vram[page + (u32)y * 240u + (u32)x];
            dst[x] = idx ? (u16)(PAL[idx] | OPAQUE) : 0;
        } else {
            if (x < 160 && y < 128)
                dst[x] = (u16)(*(const u16 *)(g_rt_vram + page + ((u32)y * 160u + (u32)x) * 2u) | OPAQUE);
            else
                dst[x] = 0;
        }
    }
}

/* --- sprites ------------------------------------------------------------------ */

static const u8 s_obj_w[3][4] = { { 8, 16, 32, 64 }, { 16, 32, 32, 64 }, { 8, 8, 16, 32 } };
static const u8 s_obj_h[3][4] = { { 8, 16, 32, 64 }, { 8, 8, 16, 32 }, { 16, 32, 32, 64 } };

int g_rt_oam_dirty = 1;
static u8 s_objlist[128];
static s16 s_objtop[128], s_objh[128];   /* vertical extent (mod 256) */
static int s_nobj;
static int s_obj_on_line;

static void build_objlist(void)
{
    int i;
    s_nobj = 0;
    for (i = 0; i < 128; i++) {
        u32 a0 = OAM[i * 4];
        if (((a0 >> 14) & 3u) == 3u || ((a0 >> 10) & 3u) == 3u) continue;
        if (!(a0 & 0x100u) && (a0 & 0x200u)) continue;
        {
            static const u8 hs[3][4] = { { 8, 16, 32, 64 }, { 8, 8, 16, 32 }, { 16, 32, 32, 64 } };
            int h = hs[(a0 >> 14) & 3u][(OAM[i * 4 + 1] >> 14) & 3u];
            if ((a0 & 0x300u) == 0x300u) h *= 2;
            s_objtop[s_nobj] = (s16)(a0 & 0xFFu);
            s_objh[s_nobj] = (s16)h;
        }
        s_objlist[s_nobj++] = (u8)i;
    }
    g_rt_oam_dirty = 0;
}

static void obj_line(int y)
{
    u32 dispcnt = IO16(0);
    int map1d = (dispcnt & 0x40u) != 0;
    int bitmap_mode = (dispcnt & 7u) >= 3;
    u32 mos = IO16(0x4C);
    int i;
    int li;
    if (g_rt_oam_dirty) build_objlist();
    if (s_obj_on_line) {
        memset(s_obj, 0, sizeof s_obj);
        memset(s_objwin, 0, sizeof s_objwin);
        memset(s_obj_semi, 0, sizeof s_obj_semi);
        s_obj_on_line = 0;
    }
    for (li = 0; li < s_nobj; li++) {
        u32 a0, a1, a2;
        if (y >= 0 && y < g_rt_ppu_screen_h && ((y - s_objtop[li]) & 0xFF) >= s_objh[li]) continue;
        i = s_objlist[li];
        if (g_rt_ppu_objfilter && !g_rt_ppu_objfilter[i]) continue;
        a0 = OAM[i * 4]; a1 = OAM[i * 4 + 1]; a2 = OAM[i * 4 + 2];
        int affine = (a0 & 0x100u) != 0;
        u32 shape = (a0 >> 14) & 3u, sz = (a1 >> 14) & 3u;
        int w, h, bw, bh, ly, top, sx;
        int oy = (int)(a0 & 0xFFu), ox = (int)(a1 & 0x1FFu);
        u32 mode = (a0 >> 10) & 3u;
        int c256 = (a0 & 0x2000u) != 0;
        u32 tile_base = a2 & 0x3FFu;
        u32 prio = (a2 >> 10) & 3u;
        u32 palbank = (a2 >> 12) & 15u;
        s32 pa = 0x100, pb = 0, pc = 0, pd = 0x100;
        u32 row_stride;
        if (shape == 3 || mode == 3) continue;
        if (!affine && (a0 & 0x200u)) continue;          /* disabled */
        w = s_obj_w[shape][sz];
        h = s_obj_h[shape][sz];
        bw = w;
        bh = h;
        if (affine && (a0 & 0x200u)) {
            bw *= 2;
            bh *= 2;
        }
        if (y >= 0 && y < g_rt_ppu_screen_h) {
            ly = (y - oy) & 0xFF;
            if (ly >= bh) continue;
        } else {
            /* extended line: only sprites that are on the real screen */
            int t1 = oy, t2 = oy - 256, ok = 0;
            top = t1;
            if (t1 < 160 && t1 + bh > 0 && y >= t1 && y < t1 + bh) ok = 1;
            else if (t2 + bh > 0 && y >= t2 && y < t2 + bh) { ok = 1; top = t2; }
            if (!ok) continue;
            ly = y - top;
        }
        if (ox >= 240) ox -= 512;
        if ((a0 & 0x1000u) && ((mos >> 12) & 15u)) {
            int m = (int)((mos >> 12) & 15u) + 1;
            ly -= ly % m;
        }
        if (affine) {
            u32 g = (a1 >> 9) & 31u;
            pa = (s16)OAM[g * 16 + 3];
            pb = (s16)OAM[g * 16 + 7];
            pc = (s16)OAM[g * 16 + 11];
            pd = (s16)OAM[g * 16 + 15];
        }
        if (map1d) row_stride = (u32)(w >> 3) * (c256 ? 2u : 1u);
        else row_stride = 32u;
        for (sx = 0; sx < bw; sx++) {
            int x = ox + sx;
            int tx, ty;
            u32 tile, addr, idx, color;
            if (x < 0 || x >= 240) continue;
            if (affine) {
                int dx = sx - bw / 2, dy = ly - bh / 2;
                tx = ((pa * dx + pb * dy) >> 8) + w / 2;
                ty = ((pc * dx + pd * dy) >> 8) + h / 2;
                if (tx < 0 || ty < 0 || tx >= w || ty >= h) continue;
            } else {
                tx = (a1 & 0x1000u) ? w - 1 - sx : sx;
                ty = (a1 & 0x2000u) ? h - 1 - ly : ly;
            }
            if (c256) {
                tile = tile_base + (u32)(ty >> 3) * row_stride + (u32)(tx >> 3) * 2u;
                if (bitmap_mode && (tile & 0x3FFu) < 512u) continue;
                addr = 0x10000u + (tile & 0x3FFu) * 32u + (u32)(ty & 7) * 8u + (u32)(tx & 7);
                idx = addr < 0x18000u ? g_rt_vram[addr] : 0;
                if (!idx) continue;
                color = PAL[256 + idx];
            } else {
                tile = tile_base + (u32)(ty >> 3) * row_stride + (u32)(tx >> 3);
                if (bitmap_mode && (tile & 0x3FFu) < 512u) continue;
                addr = 0x10000u + (tile & 0x3FFu) * 32u + (u32)(ty & 7) * 4u + (u32)((tx & 7) >> 1);
                idx = addr < 0x18000u ? (g_rt_vram[addr] >> ((tx & 1) * 4)) & 15u : 0;
                if (!idx) continue;
                color = PAL[256 + palbank * 16u + idx];
            }
            s_obj_on_line = 1;
            if (mode == 2) {
                s_objwin[x] = 1;
                continue;
            }
            if (s_obj[x]) continue;   /* lower OAM index already drew here */
            s_obj[x] = (u16)(color | OPAQUE);
            s_obj_prio[x] = (u8)prio;
            s_obj_semi[x] = (u8)(mode == 1);
        }
    }
}

/* --- windows ------------------------------------------------------------------ */

static int in_range(u32 reg, int v, int limit)
{
    int a = (int)(reg >> 8), b = (int)(reg & 0xFFu);
    if (b > limit || a > b) b = limit;
    return v >= a && v < b;
}

static void windows(int y)
{
    u32 dispcnt = IO16(0);
    u32 winin = IO16(0x48), winout = IO16(0x4A);
    int w0 = (dispcnt & 0x2000u) && y >= 0 && y < 160 && in_range(IO16(0x44), y, 160);
    int w1 = (dispcnt & 0x4000u) && y >= 0 && y < 160 && in_range(IO16(0x46), y, 160);
    int ow = (dispcnt & 0x8000u) != 0;
    int x;
    if (!(dispcnt & 0xE000u)) {
        memset(s_win, 0x3F, sizeof s_win);
        return;
    }
    for (x = 0; x < 240; x++) {
        if (w0 && in_range(IO16(0x40), x, 240)) s_win[x] = (u8)(winin & 0x3Fu);
        else if (w1 && in_range(IO16(0x42), x, 240)) s_win[x] = (u8)((winin >> 8) & 0x3Fu);
        else if (ow && s_objwin[x]) s_win[x] = (u8)((winout >> 8) & 0x3Fu);
        else s_win[x] = (u8)(winout & 0x3Fu);
    }
}

/* --- composition ---------------------------------------------------------------- */

static u16 blend_alpha(u32 a, u32 b, u32 eva, u32 evb)
{
    u32 r = ((a & 31u) * eva + (b & 31u) * evb) >> 4;
    u32 g = (((a >> 5) & 31u) * eva + ((b >> 5) & 31u) * evb) >> 4;
    u32 bl = (((a >> 10) & 31u) * eva + ((b >> 10) & 31u) * evb) >> 4;
    if (r > 31) r = 31;
    if (g > 31) g = 31;
    if (bl > 31) bl = 31;
    return (u16)(r | (g << 5) | (bl << 10));
}

static u16 brighten(u32 c, u32 evy)
{
    u32 r = c & 31u, g = (c >> 5) & 31u, b = (c >> 10) & 31u;
    r += ((31u - r) * evy) >> 4;
    g += ((31u - g) * evy) >> 4;
    b += ((31u - b) * evy) >> 4;
    return (u16)(r | (g << 5) | (b << 10));
}

static u16 darken(u32 c, u32 evy)
{
    u32 r = c & 31u, g = (c >> 5) & 31u, b = (c >> 10) & 31u;
    r -= (r * evy) >> 4;
    g -= (g * evy) >> 4;
    b -= (b * evy) >> 4;
    return (u16)(r | (g << 5) | (b << 10));
}

/* Painter's algorithm: layers from back to front, so the last two painted
 * at a pixel are its top and second layers (what blending needs).
 * Order: priority 3..0; within a priority, BGs from highest index to lowest,
 * then sprites (sprites win ties, lower BG index wins over higher). */
static u16 s_top[240], s_under[240];
static u8 s_topl[240], s_underl[240];

static void compose(u16 *out, const int *order, const int *prio, int n, u32 backdrop,
                    u32 bldcnt, u32 bmode, u32 eva, u32 evb, u32 evy, int windowed, int objs)
{
    int x, p, k;
    int semi = 0;
    if (objs) {
        for (x = 0; x < 240; x++)
            if (s_obj_semi[x]) { semi = 1; break; }
    }
    if (!windowed && bmode == 0 && !semi) {
        /* fast path: plain overwrite */
        for (x = 0; x < 240; x++) out[x] = (u16)backdrop;
        for (p = 3; p >= 0; p--) {
            for (k = n - 1; k >= 0; k--) {
                const u16 *src;
                if (prio[k] != p) continue;
                src = s_bg[order[k]];
                for (x = 0; x < 240; x++)
                    if (src[x] & OPAQUE) out[x] = (u16)(src[x] & 0x7FFFu);
            }
            if (objs) {
                for (x = 0; x < 240; x++)
                    if ((s_obj[x] & OPAQUE) && s_obj_prio[x] == p) out[x] = (u16)(s_obj[x] & 0x7FFFu);
            }
        }
        return;
    }
    for (x = 0; x < 240; x++) {
        s_top[x] = s_under[x] = (u16)backdrop;
        s_topl[x] = s_underl[x] = 5;
    }
    for (p = 3; p >= 0; p--) {
        for (k = n - 1; k >= 0; k--) {
            const u16 *src;
            int b = order[k];
            u32 bit = 1u << b;
            if (prio[k] != p) continue;
            src = s_bg[b];
            for (x = 0; x < 240; x++) {
                if (!(src[x] & OPAQUE)) continue;
                if (windowed && !(s_win[x] & bit)) continue;
                s_under[x] = s_top[x];
                s_underl[x] = s_topl[x];
                s_top[x] = (u16)(src[x] & 0x7FFFu);
                s_topl[x] = (u8)b;
            }
        }
        if (objs) {
            for (x = 0; x < 240; x++) {
                if (!(s_obj[x] & OPAQUE) || s_obj_prio[x] != p) continue;
                if (windowed && !(s_win[x] & 0x10u)) continue;
                s_under[x] = s_top[x];
                s_underl[x] = s_topl[x];
                s_top[x] = (u16)(s_obj[x] & 0x7FFFu);
                s_topl[x] = 4;
            }
        }
    }
    for (x = 0; x < 240; x++) {
        u32 c1 = s_top[x], c2 = s_under[x];
        int l1 = s_topl[x], l2 = s_underl[x];
        u32 wmask = windowed ? s_win[x] : 0x3Fu;
        if (backdrop == RT_UI_CLEAR) {
            /* UI pass: nothing drawn stays clear; nothing to blend with below */
            if (l1 == 5) { out[x] = RT_UI_CLEAR; continue; }
            if (l2 == 5 && (bmode == 1 || (l1 == 4 && s_obj_semi[x]))) { out[x] = (u16)c1; continue; }
        }
        if (l1 == 4 && s_obj_semi[x] && (bldcnt & (0x100u << l2))) {
            out[x] = blend_alpha(c1, c2, eva, evb);
        } else if ((wmask & 0x20u) && (bldcnt & (1u << l1))) {
            if (bmode == 1 && (bldcnt & (0x100u << l2))) out[x] = blend_alpha(c1, c2, eva, evb);
            else if (bmode == 2) out[x] = brighten(c1, evy);
            else if (bmode == 3) out[x] = darken(c1, evy);
            else out[x] = (u16)c1;
        } else {
            out[x] = (u16)c1;
        }
    }
}

void rt_ppu_line(int y, u16 *out)
{
    u32 dispcnt = IO16(0) & ~(((~g_rt_ppu_bgmask) & 15u) << 8) & (g_rt_ppu_objs ? 0xFFFFu : ~0x1000u);
    u32 mode = dispcnt & 7u;
    u32 bldcnt = IO16(0x50), bldalpha = IO16(0x52), bldy = IO16(0x54);
    u32 eva = bldalpha & 31u, evb = (bldalpha >> 8) & 31u, evy = bldy & 31u;
    u32 bmode = (bldcnt >> 6) & 3u;
    int order[4], prio[4], n = 0;
    int bg, x, k;
    u32 backdrop = g_rt_ppu_ui ? RT_UI_CLEAR : PAL[0] & 0x7FFFu;

    if (eva > 16) eva = 16;
    if (evb > 16) evb = 16;
    if (evy > 16) evy = 16;

    if (dispcnt & 0x80u) {
        for (x = 0; x < 240; x++) out[x] = g_rt_ppu_ui ? RT_UI_CLEAR : 0x7FFF;
        goto advance;
    }
    s_backmost_bg = -1;
    {
        int best = -1, bp = -1, b2;
        for (b2 = 0; b2 < 4; b2++) {
            int p2 = (int)(IO16(0x08u + (u32)b2 * 2u) & 3u);
            if (!((dispcnt >> (8 + b2)) & 1)) continue;
            if (p2 > bp || (p2 == bp && b2 > best)) { bp = p2; best = b2; }
        }
        s_backmost_bg = best;
    }
    {
        int kinds[4];
        int semi = 0, objs, windowed = (IO16(0) & 0xE000u) != 0;
        u32 mos = IO16(0x4C);
        for (bg = 0; bg < 4; bg++) {
            int on = (dispcnt >> (8 + bg)) & 1;
            int kind;   /* 0 text, 1 affine, 2 bitmap */
            if (!on) continue;
            if (mode == 0) kind = 0;
            else if (mode == 1) { if (bg == 3) continue; kind = bg == 2 ? 1 : 0; }
            else if (mode == 2) { if (bg < 2) continue; kind = 1; }
            else { if (bg != 2) continue; kind = 2; }
            kinds[bg] = kind;
            /* insert sorted by priority, then index */
            {
                int p = (int)(IO16(0x08u + (u32)bg * 2u) & 3u);
                int j = n;
                while (j > 0 && prio[j - 1] > p) {
                    order[j] = order[j - 1];
                    prio[j] = prio[j - 1];
                    j--;
                }
                order[j] = bg;
                prio[j] = p;
                n++;
            }
        }
        if (dispcnt & 0x1000u) obj_line(y);
        else if (s_obj_on_line) {
            memset(s_obj, 0, sizeof s_obj);
            memset(s_objwin, 0, sizeof s_objwin);
            memset(s_obj_semi, 0, sizeof s_obj_semi);
            s_obj_on_line = 0;
        }
        objs = (dispcnt & 0x1000u) && s_obj_on_line;
        if (objs) {
            for (x = 0; x < 240; x++)
                if (s_obj_semi[x]) { semi = 1; break; }
        }
        if (!windowed && bmode == 0 && !semi) {
            /* fast path: paint layers back to front straight into the line */
            int p;
            for (x = 0; x < 240; x++) out[x] = (u16)backdrop;
            for (p = 3; p >= 0; p--) {
                for (k = n - 1; k >= 0; k--) {
                    int b2 = order[k];
                    u32 cnt = IO16(0x08u + (u32)b2 * 2u);
                    if (prio[k] != p) continue;
                    if (kinds[b2] == 0 && !((cnt & 0x40u) && (mos & 15u))) {
                        text_bg_mode(b2, y, out, 1);
                    } else {
                        const u16 *src = s_bg[b2];
                        if (kinds[b2] == 0) text_bg(b2, y, s_bg[b2]);
                        else if (kinds[b2] == 1) affine_bg(b2, s_bg[b2]);
                        else bitmap_bg((int)mode, y, s_bg[b2]);
                        for (x = 0; x < 240; x++)
                            if (src[x] & OPAQUE) out[x] = (u16)(src[x] & 0x7FFFu);
                    }
                }
                if (objs) {
                    for (x = 0; x < 240; x++)
                        if ((s_obj[x] & OPAQUE) && s_obj_prio[x] == p) out[x] = (u16)(s_obj[x] & 0x7FFFu);
                }
            }
        } else {
            for (k = 0; k < n; k++) {
                int b2 = order[k];
                if (kinds[b2] == 0) text_bg(b2, y, s_bg[b2]);
                else if (kinds[b2] == 1) affine_bg(b2, s_bg[b2]);
                else bitmap_bg((int)mode, y, s_bg[b2]);
            }
            windows(y);
            compose(out, order, prio, n, backdrop, bldcnt, bmode, eva, evb, evy, windowed, objs);
        }
    }

advance:
    if (g_rt_ppu_ui) return;
    for (bg = 2; bg < 4; bg++) {
        s_ref[bg - 2][0] += affine_param(bg, 1);
        s_ref[bg - 2][1] += affine_param(bg, 3);
    }
}
