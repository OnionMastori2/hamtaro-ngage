/* rt_scale.c - GBA frame -> N-Gage panel (176x208, portrait).
 *
 * letterbox: the 240x160 picture scaled by 176/240 to 176x117, centred;
 *            the bars show the game's plaid wallpaper (rt_view.c).
 * zoom:      the frame is already the panel at 1:1 (rt_view.c); rooms
 *            smaller than the panel are centred on black.  The UI layers
 *            (g_rt_ui, GBA screen space) go on top: at 1:1 kept to their
 *            corner of the screen when they fit in 176 columns, otherwise
 *            scaled by 176/240 like the letterbox picture.
 *
 * Filtered (default): every panel pixel blends the two nearest source
 * columns and the two nearest source rows by their coverage, so 1-pixel
 * outlines, small sprites and text survive the 0.73x shrink instead of
 * dropping out the way whole columns do with nearest-neighbour sampling.
 * Blending runs on all three 5-bit channels at once in one 32-bit word.
 * Nearest-neighbour stays available (cheaper on the phone).
 */
#include "rt.h"
#include "rt_scale.h"

static u16 s_lut[32768];
static u8 s_col0[RT_PANEL_W], s_colw[RT_PANEL_W];     /* left source column, weight of the right one (0..32) */
static u16 s_row0[RT_PANEL_H];
static u8 s_roww[RT_PANEL_H];
static u8 s_row_valid[RT_PANEL_H];
static int s_ready_mode = -1;
int g_rt_scale_filter = 1;

void rt_scale_set_format(int format)
{
    u32 c;
    for (c = 0; c < 32768u; c++) {
        u32 r = c & 31u, g = (c >> 5) & 31u, b = (c >> 10) & 31u;
        if (format == RT_FMT_RGB565)
            s_lut[c] = (u16)((r << 11) | (((g << 1) | (g >> 4)) << 5) | b);
        else if (format == RT_FMT_XRGB4444)
            s_lut[c] = (u16)(((r >> 1) << 8) | ((g >> 1) << 4) | (b >> 1));
        else
            s_lut[c] = (u16)c;
    }
}

/* source coordinate of panel pixel centre, in 1/32 pixels */
static void map_axis(int i, int src_len, int dst_len, int *s0, int *w)
{
    int pos = ((2 * i + 1) * src_len * 32) / (2 * dst_len) - 16;   /* centre-aligned */
    if (pos < 0) pos = 0;
    *s0 = pos >> 5;
    *w = pos & 31;
    if (*s0 >= src_len - 1) {
        *s0 = src_len - 1;
        *w = 0;
    }
}

static void prepare(void)
{
    int x, y, s0, w;
    int pic_h = (160 * RT_PANEL_W + 120) / 240;   /* 117 */
    int top = (RT_PANEL_H - pic_h) / 2;
    for (x = 0; x < RT_PANEL_W; x++) {
        map_axis(x, 240, RT_PANEL_W, &s0, &w);
        s_col0[x] = (u8)s0;
        s_colw[x] = (u8)w;
    }
    for (y = 0; y < RT_PANEL_H; y++) {
        s_row_valid[y] = y >= top && y < top + pic_h;
        if (s_row_valid[y]) {
            map_axis(y - top, 160, pic_h, &s0, &w);
            s_row0[y] = (u16)s0;
            s_roww[y] = (u8)w;
        }
    }
    s_ready_mode = 0;
}

#define SPREAD(c) (((u32)(c) | ((u32)(c) << 16)) & 0x03E07C1Fu)
#define PACK(x)   ((u16)(((x) | ((x) >> 16)) & 0x7FFFu))

static void hline(const u16 *s, u32 *dst)
{
    int x;
    for (x = 0; x < RT_PANEL_W; x++) {
        u32 w = s_colw[x];
        const u16 *p = s + s_col0[x];
        u32 a = SPREAD(p[0] & 0x7FFFu);
        if (w) {
            u32 b = SPREAD(p[1] & 0x7FFFu);
            a = ((a * (32u - w) + b * w) >> 5) & 0x03E07C1Fu;
        }
        dst[x] = a;
    }
}

u16 rt_scale_color(u32 bgr555) { return s_lut[bgr555 & 0x7FFFu]; }

void rt_mods_overlay(u16 *panel, int pitch);

static void bar_row(u16 *d, int y)
{
    int x;
    for (x = 0; x < RT_PANEL_W; x++) d[x] = s_lut[g_rt_plaid[y & 63][x & 63]];
}

/* --- zoom ------------------------------------------------------------------ */

static void zoom_world(u16 *dst, int pitch)
{
    const rt_view_state *v = &g_rt_view;
    int x, y;
    for (y = 0; y < RT_PANEL_H; y++) {
        u16 *d = dst + y * pitch;
        int sy = y - v->shift_y;
        if (y < v->room_y0 || y >= v->room_y1 || sy < 0 || sy >= RT_FRAME_LINES) {
            /* outside a room smaller than the panel: the bars of the
             * letterbox view, black line along the picture */
            if (y == v->room_y0 - 1 || y == v->room_y1) {
                for (x = 0; x < RT_PANEL_W; x++) d[x] = s_lut[0];
            } else {
                bar_row(d, y);
            }
            continue;
        }
        {
            const u16 *s = g_rt_frame[sy];
            for (x = 0; x < RT_PANEL_W; x++) {
                int sx = x - v->shift_x;
                if (x < v->room_x0 - 1 || x > v->room_x1 || sx < 0 || sx >= RT_GBA_W)
                    d[x] = s_lut[g_rt_plaid[y & 63][x & 63]];
                else if (x == v->room_x0 - 1 || x == v->room_x1)
                    d[x] = s_lut[0];
                else
                    d[x] = s_lut[s[sx] & 0x7FFFu];
            }
        }
    }
}

static void zoom_ui(u16 *dst, int pitch)
{
    int x0 = RT_GBA_W, x1 = 0, y0 = RT_GBA_H, y1 = 0, x, y;
    if (!g_rt_view.ui_mask) return;
    for (y = 0; y < RT_GBA_H; y++) {
        const u16 *s = g_rt_ui[y];
        int a = 0, b = RT_GBA_W - 1;
        while (a < RT_GBA_W && s[a] == RT_UI_CLEAR) a++;
        if (a == RT_GBA_W) continue;
        while (s[b] == RT_UI_CLEAR) b--;
        if (a < x0) x0 = a;
        if (b + 1 > x1) x1 = b + 1;
        if (y < y0) y0 = y;
        y1 = y + 1;
    }
    if (x1 <= x0) return;
    if (x1 - x0 <= RT_PANEL_W) {
        /* 1:1, kept to its side and edge of the screen */
        int cx = (x0 + x1) / 2, ox, oy;
        if (cx < 104) ox = 0;
        else if (cx > 136) ox = RT_PANEL_W - RT_GBA_W;
        else ox = (RT_PANEL_W - RT_GBA_W) / 2;
        if (x1 + ox > RT_PANEL_W) ox = RT_PANEL_W - x1;
        if (x0 + ox < 0) ox = -x0;
        oy = (y0 + y1) / 2 < RT_GBA_H / 2 ? 0 : RT_PANEL_H - RT_GBA_H;
        for (y = y0; y < y1; y++) {
            const u16 *s = g_rt_ui[y];
            u16 *d = dst + (y + oy) * pitch + ox;
            for (x = x0; x < x1; x++)
                if (s[x] != RT_UI_CLEAR) d[x] = s_lut[s[x] & 0x7FFFu];
        }
        return;
    }
    {
        /* too wide: scaled like the letterbox picture, kept to its edge */
        int pic_h = (160 * RT_PANEL_W + 120) / 240;   /* 117 */
        int base = (y0 + y1) / 2 >= RT_GBA_H / 2 ? RT_PANEL_H - pic_h : 0;
        int py;
        for (py = base; py < base + pic_h; py++) {
            int sy32 = ((2 * (py - base) + 1) * RT_GBA_H * 32) / (2 * pic_h) - 16;
            int r0, rw, r1;
            u16 *d = dst + py * pitch;
            if (sy32 < 0) sy32 = 0;
            r0 = sy32 >> 5;
            rw = sy32 & 31;
            if (r0 >= RT_GBA_H) continue;
            r1 = r0 + 1 < RT_GBA_H ? r0 + 1 : r0;
            for (x = 0; x < RT_PANEL_W; x++) {
                int c0 = s_col0[x], cw = s_colw[x], c1 = c0 + 1 < RT_GBA_W ? c0 + 1 : c0;
                u32 px[4], wt[4], sum = 0, acc = 0, k;
                px[0] = g_rt_ui[r0][c0]; wt[0] = (u32)((32 - cw) * (32 - rw));
                px[1] = g_rt_ui[r0][c1]; wt[1] = (u32)(cw * (32 - rw));
                px[2] = g_rt_ui[r1][c0]; wt[2] = (u32)((32 - cw) * rw);
                px[3] = g_rt_ui[r1][c1]; wt[3] = (u32)(cw * rw);
                for (k = 0; k < 4; k++) {
                    if (px[k] == RT_UI_CLEAR || !wt[k]) continue;
                    sum += wt[k];
                }
                if (sum * 2 < 1024u) continue;   /* mostly transparent here */
                {
                    u32 r = 0, g = 0, b = 0;
                    for (k = 0; k < 4; k++) {
                        u32 c;
                        if (px[k] == RT_UI_CLEAR || !wt[k]) continue;
                        c = px[k];
                        r += (c & 31u) * wt[k];
                        g += ((c >> 5) & 31u) * wt[k];
                        b += ((c >> 10) & 31u) * wt[k];
                    }
                    acc = (r / sum) | ((g / sum) << 5) | ((b / sum) << 10);
                    d[x] = s_lut[acc];
                }
            }
        }
    }
}

/* --- portrait layouts (rt_view.c) ------------------------------------------- */

/* foreground rect scaled to the panel width, transparent where it is clear */
static void blit_fit(u16 *dst, int pitch, const rt_layout_rect *r)
{
    int out_w = r->dw ? r->dw : RT_PANEL_W;
    int out_h = (r->h * out_w + r->w / 2) / r->w, py, x;
    for (py = 0; py < out_h; py++) {
        int y = r->dy + py, sy32, r0, r1, rw;
        u16 *d;
        if (y < 0 || y >= RT_PANEL_H) continue;
        d = dst + y * pitch;
        sy32 = ((2 * py + 1) * r->h * 32) / (2 * out_h) - 16;
        if (sy32 < 0) sy32 = 0;
        r0 = r->sy + (sy32 >> 5);
        rw = sy32 & 31;
        r1 = r0 + 1 < r->sy + r->h ? r0 + 1 : r0;
        for (x = 0; x < out_w; x++) {
            int sx32 = ((2 * x + 1) * r->w * 32) / (2 * out_w) - 16, c0, c1, cw, k;
            u32 px[4], wt[4], sum = 0, rr = 0, gg = 0, bb = 0;
            if (sx32 < 0) sx32 = 0;
            c0 = r->sx + (sx32 >> 5);
            cw = sx32 & 31;
            c1 = c0 + 1 < r->sx + r->w ? c0 + 1 : c0;
            px[0] = g_rt_ui[r0][c0]; wt[0] = (u32)((32 - cw) * (32 - rw));
            px[1] = g_rt_ui[r0][c1]; wt[1] = (u32)(cw * (32 - rw));
            px[2] = g_rt_ui[r1][c0]; wt[2] = (u32)((32 - cw) * rw);
            px[3] = g_rt_ui[r1][c1]; wt[3] = (u32)(cw * rw);
            for (k = 0; k < 4; k++) {
                u32 c = px[k];
                if (c == RT_UI_CLEAR || !wt[k]) continue;
                sum += wt[k];
                rr += (c & 31u) * wt[k];
                gg += ((c >> 5) & 31u) * wt[k];
                bb += ((c >> 10) & 31u) * wt[k];
            }
            if (sum * 2 < 1024u || r->dx + x >= RT_PANEL_W) continue;
            d[r->dx + x] = s_lut[(rr / sum) | ((gg / sum) << 5) | ((bb / sum) << 10)];
        }
    }
}

static void layout_frame(u16 *dst, int pitch)
{
    const rt_layout *L = g_rt_view.layout;
    u16 backdrop = s_lut[*(const u16 *)g_rt_pal & 0x7FFFu];
    int x, y, i;
    for (y = 0; y < RT_PANEL_H; y++) {
        const u16 *s = g_rt_frame[y] + 32;
        u16 *d = dst + y * pitch;
        for (x = 0; x < RT_PANEL_W; x++) d[x] = s[x] == RT_UI_CLEAR ? backdrop : s_lut[s[x] & 0x7FFFu];
    }
    for (y = 0; y < RT_PANEL_H; y++) {
        const u16 *s = g_rt_layout_acc[y];
        u16 *d = dst + y * pitch;
        for (x = 0; x < RT_PANEL_W; x++)
            if (s[x] != RT_UI_CLEAR) d[x] = s_lut[s[x] & 0x7FFFu];
    }
    for (i = 0; i < L->nrects; i++)
        if (L->rects[i].fit) blit_fit(dst, pitch, &L->rects[i]);
}

/* --- fixed screens on a plain background (logos, the copyright notice,
 * fades) ------------------------------------------------------------------- */

/* bilinear sample of g_rt_frame at (sx32, sy32) in 1/32 pixels */
static u16 sample_frame(int sx32, int sy32)
{
    int c0, c1, r0, r1, cw, rw;
    u32 a, b, c, d, top, bot;
    if (sx32 < 0) sx32 = 0;
    if (sy32 < 0) sy32 = 0;
    c0 = sx32 >> 5; cw = sx32 & 31; c1 = c0 + 1 < RT_GBA_W ? c0 + 1 : c0;
    r0 = sy32 >> 5; rw = sy32 & 31; r1 = r0 + 1 < RT_GBA_H ? r0 + 1 : r0;
    if (c0 >= RT_GBA_W) c0 = c1 = RT_GBA_W - 1;
    if (r0 >= RT_GBA_H) r0 = r1 = RT_GBA_H - 1;
    a = SPREAD(g_rt_frame[r0][c0] & 0x7FFFu); b = SPREAD(g_rt_frame[r0][c1] & 0x7FFFu);
    c = SPREAD(g_rt_frame[r1][c0] & 0x7FFFu); d = SPREAD(g_rt_frame[r1][c1] & 0x7FFFu);
    top = ((a * (32u - (u32)cw) + b * (u32)cw) >> 5) & 0x03E07C1Fu;
    bot = ((c * (32u - (u32)cw) + d * (u32)cw) >> 5) & 0x03E07C1Fu;
    return PACK(((top * (32u - (u32)rw) + bot * (u32)rw) >> 5) & 0x03E07C1Fu);
}

/* A screen whose edges are all one colour (the Nintendo logo, the copyright
 * notice, a fade) is fitted to the panel: its contents as large as fit
 * (never above 1:1), on that colour instead of bars. */
static int fit_plain_screen(u16 *dst, int pitch)
{
    u16 c = (u16)(g_rt_frame[0][0] & 0x7FFFu), fill;
    int x, y, x0 = RT_GBA_W, x1 = 0, y0 = RT_GBA_H, y1 = 0, w, h, ow, oh, ox, oy, scale;
    for (x = 0; x < RT_GBA_W; x++)
        if ((g_rt_frame[0][x] & 0x7FFFu) != c || (g_rt_frame[RT_GBA_H - 1][x] & 0x7FFFu) != c) return 0;
    for (y = 0; y < RT_GBA_H; y++)
        if ((g_rt_frame[y][0] & 0x7FFFu) != c || (g_rt_frame[y][RT_GBA_W - 1] & 0x7FFFu) != c) return 0;
    for (y = 0; y < RT_GBA_H; y++)
        for (x = 0; x < RT_GBA_W; x++)
            if ((g_rt_frame[y][x] & 0x7FFFu) != c) {
                if (x < x0) x0 = x;
                if (x >= x1) x1 = x + 1;
                if (y < y0) y0 = y;
                y1 = y + 1;
            }
    fill = s_lut[c];
    for (y = 0; y < RT_PANEL_H; y++)
        for (x = 0; x < RT_PANEL_W; x++) dst[y * pitch + x] = fill;
    if (x1 <= x0) return 1;
    /* a little margin keeps outlines whole */
    x0 = x0 > 2 ? x0 - 2 : 0; x1 = x1 + 2 < RT_GBA_W ? x1 + 2 : RT_GBA_W;
    y0 = y0 > 2 ? y0 - 2 : 0; y1 = y1 + 2 < RT_GBA_H ? y1 + 2 : RT_GBA_H;
    w = x1 - x0;
    h = y1 - y0;
    scale = 256;                                            /* panel px per GBA px, 1/256 */
    if (w * 256 > RT_PANEL_W * scale) scale = RT_PANEL_W * 256 / w;
    if (h * scale > RT_PANEL_H * 256) scale = RT_PANEL_H * 256 / h;
    ow = w * scale / 256;
    oh = h * scale / 256;
    ox = (RT_PANEL_W - ow) / 2;
    oy = (RT_PANEL_H - oh) / 2;
    for (y = 0; y < oh; y++) {
        u16 *d = dst + (oy + y) * pitch + ox;
        if (scale == 256) {
            const u16 *s = g_rt_frame[y0 + y] + x0;
            for (x = 0; x < ow; x++) d[x] = s_lut[s[x] & 0x7FFFu];
        } else {
            int sy32 = y0 * 32 + ((2 * y + 1) * 32 * 256) / (2 * scale) - 16;
            for (x = 0; x < ow; x++)
                d[x] = s_lut[sample_frame(x0 * 32 + ((2 * x + 1) * 32 * 256) / (2 * scale) - 16, sy32)];
        }
    }
    return 1;
}

void rt_scale_frame(u16 *dst, int pitch_pixels)
{
    static u32 la[RT_PANEL_W], lb[RT_PANEL_W];
    static int la_row = -1, lb_row = -1;
    int x, y;
    if (s_ready_mode != 0) prepare();
    if (g_rt_view.layout) {
        layout_frame(dst, pitch_pixels);
        rt_mods_overlay(dst, pitch_pixels);
        return;
    }
    if (g_rt_view.zoom) {
        zoom_world(dst, pitch_pixels);
        zoom_ui(dst, pitch_pixels);
        rt_mods_overlay(dst, pitch_pixels);
        return;
    }
    if (fit_plain_screen(dst, pitch_pixels)) {
        rt_mods_overlay(dst, pitch_pixels);
        return;
    }
    la_row = lb_row = -1;
    for (y = 0; y < RT_PANEL_H; y++) {
        u16 *d = dst + y * pitch_pixels;
        if (!s_row_valid[y]) {
            /* plaid bars with a black line along the picture, as in SonicN */
            if ((y + 2 < RT_PANEL_H && s_row_valid[y + 2]) || (y >= 2 && s_row_valid[y - 2]))
                for (x = 0; x < RT_PANEL_W; x++) d[x] = s_lut[0];
            else
                bar_row(d, y);
            continue;
        }
        if (!g_rt_scale_filter) {
            const u16 *s = g_rt_frame[s_row0[y] + (s_roww[y] >= 16)];
            for (x = 0; x < RT_PANEL_W; x++) d[x] = s_lut[s[(s_col0[x] + (s_colw[x] >= 16)) % 240] & 0x7FFFu];
            continue;
        }
        {
            int r0 = s_row0[y], r1 = r0 + 1;
            u32 w = s_roww[y];
            if (r1 >= RT_GBA_H) r1 = r0;
            if (la_row != r0) {
                if (lb_row == r0) {
                    u32 t[RT_PANEL_W];
                    for (x = 0; x < RT_PANEL_W; x++) t[x] = lb[x];
                    for (x = 0; x < RT_PANEL_W; x++) la[x] = t[x];
                } else {
                    hline(g_rt_frame[r0], la);
                }
                la_row = r0;
            }
            if (!w) {
                for (x = 0; x < RT_PANEL_W; x++) d[x] = s_lut[PACK(la[x])];
                continue;
            }
            if (lb_row != r1) {
                hline(g_rt_frame[r1], lb);
                lb_row = r1;
            }
            for (x = 0; x < RT_PANEL_W; x++) {
                u32 v = ((la[x] * (32u - w) + lb[x] * w) >> 5) & 0x03E07C1Fu;
                d[x] = s_lut[PACK(v)];
            }
        }
    }
    rt_mods_overlay(dst, pitch_pixels);
}
