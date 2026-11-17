/* rt_view.c - the two N-Gage views: letterbox and zoom.
 *
 * Letterbox: the 240x160 GBA picture scaled to 176x117 in the middle of
 * the panel, the bars above and below filled with the game's own plaid
 * wallpaper (captured from the title screen's background layer).
 *
 * Zoom: the world at 1:1.  tools/view_patch.py makes the game's camera
 * work with a 176x208 screen (g_rt_cam_w/h): it centres Hamtaro on that
 * screen and stops at the room edges, so lines 0..207 / columns 0..175
 * are exactly the panel.  Only layers that scroll with the camera (the
 * game marks them with a room-bounds flag) and sprites are drawn that
 * way.  The fixed UI layers (dialog boxes, menus) are drawn separately in
 * GBA screen space into g_rt_ui, and rt_scale fits them onto the panel.
 * Fixed screens with a portrait layout (title, language, naming; see
 * s_layouts) are rebuilt from pieces: the wallpaper layer at 1:1 over the
 * whole panel, then rectangles of the foreground moved into place.  Other
 * fixed screens use the letterbox picture: they are made for 240x160 and
 * nothing else exists.
 */
#include <string.h>

#include "rt.h"
#include "rt_mem.h"

#define BG_BOUNDS 0x030034B0u   /* gBackgroundBounds[4]: left right top bottom (s16), flags (u8) */
#define IO16(o) (*(const u16 *)(g_rt_io + (o)))

u32 g_rt_cam_w = RT_GBA_W, g_rt_cam_h = RT_GBA_H;
u32 g_rt_cam_used;
static u32 s_cam_idle = 1000;  /* frames since the field camera last ran */
u16 g_rt_ui[RT_GBA_H][RT_GBA_W];
rt_view_state g_rt_view;
u16 g_rt_plaid[64][64];
u16 g_rt_layout_acc[RT_VIEW_H][RT_VIEW_W];
static u8 s_owner[128];        /* layout rect + 1 that owns each OBJ, 0 none */
static const rt_layout *s_last_layout;   /* kept through fades while the screen stays */
static u32 s_last_sig, s_reject_sig;     /* screen signature; layout refused for it */
static int s_ui_full;          /* last frames: the UI layer covered the screen */
/* A layer scrolls with the camera if the game gave it room bounds (flag 1)
 * and its tile map can hold that room in at least one direction.  Cutscenes
 * reuse BG0/BG1 for full-screen pictures (256x256 maps) without clearing the
 * bounds of the room before. */
static int is_world_layer(int bg)
{
    u32 b = BG_BOUNDS + 12u * (u32)bg, size = (u32)IO16(0x08u + 2u * (u32)bg) >> 14;
    int w = (s16)LD16(b + 2u) - (s16)LD16(b), h = (s16)LD16(b + 6u) - (s16)LD16(b + 4u);
    int mw = (size & 1u) ? 512 : 256, mh = (size & 2u) ? 512 : 256;
    if (!(LD8(b + 8u) & 1u)) return 0;
    return mw >= w || mh >= h;
}
static u8 s_filter[128];
int g_rt_plaid_ready;

/* Until the title's plaid has been seen (a finished save shows an
 * illustrated title instead), the bars use a plain pastel tartan of our own. */
static void default_plaid(void)
{
    int x, y;
    for (y = 0; y < 64; y++)
        for (x = 0; x < 64; x++) {
            int sx = (x + 4) & 31, sy = (y + 4) & 31, diag = ((x + y) & 3) < 2;
            u32 r = 31, g = 29, b = 23;                       /* cream */
            if (sx < 6 && diag) { r = 21; g = 29; b = 24; }   /* mint, hatched */
            if (sy < 6 && diag) { r = 29; g = 19; b = 28; }   /* pink, hatched */
            if (sx < 6 && sy < 6 && diag) { r = 24; g = 22; b = 28; }
            g_rt_plaid[y][x] = (u16)(r | (g << 5) | (b << 10));
        }
}

/* The game's camera works with g_rt_cam_w x g_rt_cam_h.  A room no bigger
 * than the GBA screen is shown whole (letterbox), so its camera must be the
 * GBA's 240x160: with the 176x208 one the game scrolls the room for a screen
 * that is not there and only streams the tiles that screen would show. */
static void set_cam(u32 w, u32 h)
{
    if (g_rt_cam_w == w && g_rt_cam_h == h) return;
    g_rt_cam_w = w;
    g_rt_cam_h = h;
    /* the camera origin is set when a map loads: move it now as well */
    ST16(0x03002DBCu, RT_CAM_ORIGIN_X);
    ST16(0x03002DBEu, RT_CAM_ORIGIN_Y);
}

void rt_view_set_zoom(int on)
{
    static int plaid_init;
    if (!plaid_init && !g_rt_plaid_ready) default_plaid();
    plaid_init = 1;
    g_rt_cfg.zoom = on ? 1 : 0;
    set_cam(on ? RT_VIEW_W : RT_GBA_W, on ? RT_VIEW_H : RT_GBA_H);
}

static int wrap9(int v)   /* 9-bit scroll difference as a signed value */
{
    v &= 511;
    return v >= 256 ? v - 512 : v;
}

/* panel span [a0, a1) for a room span of `len` starting at screen `pos` */
static void fit_axis(int pos, int len, int view, int *shift, int *a0, int *a1)
{
    if (len < view) {
        *shift = (view - len) / 2 - pos;
        *a0 = (view - len) / 2;
        *a1 = *a0 + len;
    } else {
        *shift = 0;
        *a0 = 0;
        *a1 = view;
    }
}

static void pass_all(void);

/* --- portrait layouts (from the mockups) ----------------------------------- */

#define SCRIPT_CURSOR 0x03002C60u
#define WALL_DX 32            /* panel x = GBA x - 32 for the wallpaper */
#define WALL_DY 24            /* panel y = GBA y + 24 */

static const rt_layout_rect s_title_rects[] = {
    {  32,   0, 176, 72,   0,   2, 0, 0 },   /* logo */
    {   0,  96, 112, 64,   4,  70, 0, 0 },   /* menu; Exit is drawn below Language */
    { 112,  92, 128, 68,  24, 144, 0, 0 },   /* Hamtaro and Bijou */
};
static const rt_layout_rect s_language_rects[] = {
    {   8,   4, 144, 42,  16,  16, 0, 0 },   /* "Select your Language." */
    {   8,  52, 144, 90,  16,  66, 0, 0 },   /* the list */
    {  92, 142,  48, 16,  64, 176, 0, 0 },   /* 5..OK */
};
static const rt_layout_rect s_naming_rects[] = {
    {   0,   0, 240,  30,   0,   0, 1, 0 },   /* banner, scaled to fit */
    {   4,  32,  58,  48,   0,  26, 0, 0 },   /* player portrait (OBJ 64x64) */
    {  62,  44, 124,  36,  54,  38, 0, 0 },   /* "Player" + name box */
    {  44,  80,  64,  64,   0,  96, 0, 0 },   /* partner portrait */
    { 108,  92, 118,  36,  60, 108, 0, 0 },   /* "Partner" + name box */
    { 100, 130, 140,  30,  18, 174, 0, 0 },   /* OK / Yep-P No-P */
};
/* Ham-Chat dictionary: the book and its letter tabs at 1:1 (the left page's
 * edge trimmed), the two side boxes shrunk into the band above it. */
static const rt_layout_rect s_dict_cover_rects[] = {
    {  10,   0, 176, 160,   0,  48, 0, 0 },       /* tabs + book */
    { 192,  56,  48,  64,   2,   0, 1, 36 },   /* START Back / SELECT Sort */
    { 192,   0,  48,  56, 133,   0, 1, 41 },   /* Ham-Chat Learned */
};
static const rt_layout_rect s_dict_page_rects[] = {
    {  10,   0, 176, 160,   0,  48, 0, 0 },
    { 192,  96,  48,  64,   2,   0, 1, 36 },   /* the lower half of the key box */
    { 192,   0,  48,  56, 133,   0, 1, 41 },
};
static const rt_layout s_layouts[] = {
    { "dictionary", 0x080D3A00u, 0x080D3B80u, s_dict_cover_rects, 3, 0, 0 },
    { "dictionary pages", 0x080D3B80u, 0x080D3CC0u, s_dict_page_rects, 3, 0, 0 },
    { "dictionary pages", 0x080D4300u, 0x080D4900u, s_dict_page_rects, 3, 0, 0 },
    { "title",    0x080D2460u, 0x080D2640u, s_title_rects, 3, 30, 128 },
    { "language", 0x080D27A0u, 0x080D2880u, s_language_rects, 3, 0, 0 },
    { "naming",   0x080D2C98u, 0x080D3600u, s_naming_rects, 6, 0, 0 },
};

static int backmost_bg(u32 dispcnt)
{
    int bg, best = -1, bp = -1;
    for (bg = 0; bg < 4; bg++) {
        int p = (int)(IO16(0x08u + 2u * (u32)bg) & 3u);
        if (!((dispcnt >> (8 + bg)) & 1u)) continue;
        if (p > bp || (p == bp && bg > best)) { bp = p; best = bg; }
    }
    return best;
}

static const rt_layout *find_layout(u32 dispcnt)
{
    u32 c = LD32(SCRIPT_CURSOR);
    unsigned i;
    if ((dispcnt & 7u) != 0 || (dispcnt & 0x80u)) return 0;
    for (i = 0; i < sizeof s_layouts / sizeof s_layouts[0]; i++)
        if (c >= s_layouts[i].script_lo && c < s_layouts[i].script_hi) return &s_layouts[i];
    return 0;
}

static void wall_line(int gba_line)
{
    g_rt_ppu_bgmask = 1u << g_rt_view.wall_bg;
    g_rt_ppu_objs = 0;
    g_rt_ppu_ui = 1;       /* no affine stepping; nothing here is affine */
    g_rt_ppu_screen_h = RT_GBA_H;
    rt_ppu_line(gba_line, g_rt_frame[gba_line + WALL_DY]);
}

static const u16 s_obj_dims[3][4][2] = {
    { { 8, 8 }, { 16, 16 }, { 32, 32 }, { 64, 64 } },
    { { 16, 8 }, { 32, 8 }, { 32, 16 }, { 64, 32 } },
    { { 8, 16 }, { 8, 32 }, { 16, 32 }, { 32, 64 } },
};

static void layout_begin(const rt_layout *L)
{
    int i, r;
    u16 *acc = &g_rt_layout_acc[0][0];
    for (i = 0; i < RT_VIEW_W * RT_VIEW_H; i++) acc[i] = RT_UI_CLEAR;
    for (i = 0; i < 128; i++) {
        u32 a0 = LD16(0x07000000u + (u32)i * 8u), a1 = LD16(0x07000002u + (u32)i * 8u);
        u32 shape = (a0 >> 14) & 3u, sz = (a1 >> 14) & 3u;
        int x, y, cx, cy;
        s_owner[i] = 0;
        if (shape == 3u || (!(a0 & 0x100u) && (a0 & 0x200u))) continue;
        x = (int)(a1 & 0x1FFu); if (x >= 240) x -= 512;
        y = (int)(a0 & 0xFFu); if (y >= 160) y -= 256;
        cx = x + s_obj_dims[shape][sz][0] / 2;
        cy = y + s_obj_dims[shape][sz][1] / 2;
        for (r = 0; r < L->nrects; r++) {
            const rt_layout_rect *q = &L->rects[r];
            if (cx >= q->sx && cx < q->sx + q->w && cy >= q->sy && cy < q->sy + q->h) {
                s_owner[i] = (u8)(r + 1);
                break;
            }
        }
    }
}

static void place_line(const rt_layout_rect *q, int line, const u16 *src, int x0, int x1)
{
    int py = line - q->sy + q->dy, x;
    u16 *d;
    if (py < 0 || py >= RT_VIEW_H) return;
    d = g_rt_layout_acc[py];
    for (x = x0; x < x1; x++) {
        int px = x - q->sx + q->dx;
        if (src[x] != RT_UI_CLEAR && px >= 0 && px < RT_VIEW_W) d[px] = src[x];
    }
}

static void layout_line(int line)
{
    static u16 both[RT_GBA_W], objs[RT_GBA_W];
    const rt_layout *L = g_rt_view.layout;
    u32 fg = 15u & ~(1u << g_rt_view.wall_bg);
    int r, i, x, in_fit = 0;
    wall_line(line);
    g_rt_ppu_ui = 1;
    g_rt_ppu_screen_h = RT_GBA_H;
    for (r = 0; r < L->nrects; r++) {
        const rt_layout_rect *q = &L->rects[r];
        int inside = line >= q->sy && line < q->sy + q->h, any = 0;
        if (q->fit) { in_fit |= inside; continue; }
        for (i = 0; i < 128; i++) {
            s_filter[i] = (u8)(s_owner[i] == r + 1);
            any |= s_filter[i];
        }
        if (!inside && !any) continue;
        g_rt_ppu_objfilter = s_filter;
        g_rt_ppu_objs = any;
        if (inside) {
            /* the rect's backgrounds and its sprites, in the game's priority order */
            g_rt_ppu_bgmask = fg;
            rt_ppu_line(line, both);
            place_line(q, line, both, q->sx, q->sx + q->w);
        }
        if (any) {
            /* the parts of its sprites that reach outside the rect */
            g_rt_ppu_bgmask = 0;
            rt_ppu_line(line, objs);
            for (x = 0; x < RT_GBA_W; x++)
                if (inside && x >= q->sx && x < q->sx + q->w) objs[x] = RT_UI_CLEAR;
            place_line(q, line, objs, 0, RT_GBA_W);
        }
    }
    g_rt_ppu_objfilter = 0;
    /* scaled rects take everything inside them */
    if (in_fit) {
        g_rt_ppu_bgmask = fg;
        g_rt_ppu_objs = 1;
        rt_ppu_line(line, g_rt_ui[line]);
    }
    pass_all();
}

static u32 screen_sig(u32 dispcnt)
{
    return ((dispcnt >> 8) & 0x1Fu) ^ ((u32)IO16(0x08) << 5) ^ ((u32)IO16(0x0A) << 11)
           ^ ((u32)IO16(0x0C) << 17) ^ ((u32)IO16(0x0E) << 23);
}

int rt_view_exit_pos(int *x, int *y)
{
    if (!g_rt_view.layout || !g_rt_view.layout->exit_x) return 0;
    *x = g_rt_view.layout->exit_x;
    *y = g_rt_view.layout->exit_y;
    return 1;
}

void rt_view_frame_begin(void)
{
    u32 dispcnt = IO16(0);
    u32 world = 0, ui = 0, others = 0;
    int bg, first = -1, minprio = 4;
    rt_view_state *v = &g_rt_view;

    if (g_rt_cam_used) s_cam_idle = 0;
    else if (s_cam_idle < 1000u) s_cam_idle++;
    g_rt_cam_used = 0;
    v->zoom = 0;
    v->layout = 0;
    v->world_mask = 0;
    v->ui_mask = 0;
    v->scenery_mask = 0;
    v->ui_probe = 0;
    if (g_rt_cfg.zoom) {
        u32 sig = screen_sig(dispcnt);
        const rt_layout *L = find_layout(dispcnt);
        if (!L && s_last_layout && sig == s_last_sig && (dispcnt & 7u) == 0) L = s_last_layout;   /* fading */
        if (L && sig == s_reject_sig) L = 0;   /* not the screen the layout is for */
        s_last_layout = L;
        s_last_sig = sig;
        v->layout = L;
    }
    if (v->layout) {
        v->wall_bg = backmost_bg(dispcnt);
        if (v->wall_bg < 0) { v->layout = 0; return; }
        v->zoom = 1;
        layout_begin(v->layout);
        return;
    }
    if (g_rt_cfg.zoom && (dispcnt & 7u) == 0 && !(dispcnt & 0x80u)) {
        for (bg = 0; bg < 4; bg++) {
            if (!((dispcnt >> (8 + bg)) & 1u)) continue;
            if (is_world_layer(bg)) {
                int p = (int)(IO16(0x08u + 2u * (u32)bg) & 3u);
                world |= 1u << bg;
                if (first < 0) first = bg;
                if (p < minprio) minprio = p;
            } else {
                others |= 1u << bg;
            }
        }
    }
    if (!world) return;
    /* the field camera follows Hamtaro every frame in a room; a scene that
     * moves on its own (the tunnel slides) still carries the last room's
     * bounds, but only its 240x160 screen is drawn: show it as it is */
    if (s_cam_idle > 2u) return;
    {
        /* a room no bigger than the GBA screen (the boutique, dress-up) is
         * shown whole: zooming would only crop it */
        u32 b = BG_BOUNDS + 12u * (u32)first;
        int w = (s16)LD16(b + 2u) - (s16)LD16(b), h = (s16)LD16(b + 6u) - (s16)LD16(b + 4u);
        if (w <= RT_GBA_W && h <= RT_GBA_H) {
            set_cam(RT_GBA_W, RT_GBA_H);
            return;
        }
        set_cam(RT_VIEW_W, RT_VIEW_H);
    }
    /* fixed layers in front of the world are UI; behind it, scenery.  A layer
     * blended over the world (a vignette, a tint) stays with the world, where
     * the blend can be done. */
    {
        u32 bldcnt = IO16(0x50);
        for (bg = 0; bg < 4; bg++)
            if (((others >> bg) & 1u) && (int)(IO16(0x08u + 2u * (u32)bg) & 3u) < minprio
                && !(((bldcnt >> 6) & 3u) == 1u && (bldcnt & (1u << bg))))
                ui |= 1u << bg;
    }
    if (s_ui_full && ui) {
        /* a full-screen picture in front of the world (a dream, a still):
         * show the screen as it is; keep measuring the UI layer */
        v->ui_probe = 1;
        v->ui_mask = ui;
        return;
    }
    v->zoom = 1;
    v->world_mask = 15u & ~ui;
    v->ui_mask = ui;
    /* fixed scenery (a vignette, a frame) sits at scroll 0,0; layers that
     * scroll are part of the world even without the game's room flag */
    v->scenery_mask = 0;
    for (bg = 0; bg < 4; bg++)
        if (((others & ~ui) >> bg) & 1u && IO16(0x10u + 4u * (u32)bg) == 0 && IO16(0x12u + 4u * (u32)bg) == 0)
            v->scenery_mask |= 1u << bg;
    {
        u32 b = BG_BOUNDS + 12u * (u32)first;
        int left = (s16)LD16(b), right = (s16)LD16(b + 2u);
        int top = (s16)LD16(b + 4u), bottom = (s16)LD16(b + 6u);
        int hofs = IO16(0x10u + 4u * (u32)first), vofs = IO16(0x12u + 4u * (u32)first);
        fit_axis(wrap9(left - hofs), right - left, RT_VIEW_W, &v->shift_x, &v->room_x0, &v->room_x1);
        fit_axis(wrap9(top - vofs), bottom - top, RT_VIEW_H, &v->shift_y, &v->room_y0, &v->room_y1);
    }
}

/* Fixed scenery drawn with the world (a vignette, a backdrop) is made for
 * the 240x160 screen: centre it on the panel by moving its scroll for the
 * world pass. */
static u16 s_saved_scroll[4][2];

static void scenery_centre(int on, int line)
{
    int bg;
    /* lines above and below the GBA screen repeat its first / last line */
    int src = line - (RT_VIEW_H - RT_GBA_H) / 2;
    if (src < 0) src = 0;
    if (src >= RT_GBA_H) src = RT_GBA_H - 1;
    for (bg = 0; bg < 4; bg++) {
        u16 *h = (u16 *)(g_rt_io + 0x10u + 4u * (u32)bg);
        if (!((g_rt_view.scenery_mask >> bg) & 1u)) continue;
        if (on) {
            s_saved_scroll[bg][0] = h[0];
            s_saved_scroll[bg][1] = h[1];
            h[0] = (u16)((h[0] + (RT_GBA_W - RT_VIEW_W) / 2) & 0x1FFu);
            h[1] = (u16)((h[1] + src - line) & 0x1FFu);
        } else {
            h[0] = s_saved_scroll[bg][0];
            h[1] = s_saved_scroll[bg][1];
        }
    }
}

static void pass_world(void)
{
    int x0 = -g_rt_view.shift_x, x1 = RT_VIEW_W - g_rt_view.shift_x;
    g_rt_ppu_bgmask = g_rt_view.world_mask;
    g_rt_ppu_objs = 1;
    g_rt_ppu_ui = 0;
    g_rt_ppu_screen_h = RT_VIEW_H;
    /* the zoom view shows RT_VIEW_W of the 240 columns: draw only those */
    g_rt_ppu_x0 = x0 < 0 ? 0 : x0 > RT_GBA_W ? RT_GBA_W : x0;
    g_rt_ppu_x1 = x1 < 0 ? 0 : x1 > RT_GBA_W ? RT_GBA_W : x1;
}

static void pass_all(void)
{
    g_rt_ppu_bgmask = 15u;
    g_rt_ppu_objs = 1;
    g_rt_ppu_ui = 0;
    g_rt_ppu_screen_h = RT_GBA_H;
    g_rt_ppu_x0 = 0;
    g_rt_ppu_x1 = RT_GBA_W;
}

void rt_view_line(int line)
{
    if (g_rt_view.layout) {
        layout_line(line);
        return;
    }
    if (!g_rt_view.zoom) {
        pass_all();
        rt_ppu_line(line, g_rt_frame[line]);
        if (g_rt_view.ui_probe) {
            g_rt_ppu_bgmask = g_rt_view.ui_mask;
            g_rt_ppu_objs = 0;
            g_rt_ppu_ui = 1;
            rt_ppu_line(line, g_rt_ui[line]);
            pass_all();
        }
        return;
    }
    pass_world();
    scenery_centre(1, line);
    rt_ppu_line(line, g_rt_frame[line]);
    scenery_centre(0, line);
    if (g_rt_view.ui_mask) {
        g_rt_ppu_bgmask = g_rt_view.ui_mask;
        g_rt_ppu_objs = 0;
        g_rt_ppu_ui = 1;
        rt_ppu_line(line, g_rt_ui[line]);
    }
    pass_all();
}

/* The title screen's backmost layer is the plaid wallpaper (64x64 period):
 * keep a copy for the letterbox bars. */
static void capture_plaid(void)
{
    extern int rt_mods_title_menu(void);
    static u16 line[RT_GBA_W];
    u32 dispcnt = IO16(0);
    int bg, best = -1, bp = -1, y, x;
    const rt_layout *L;
    if (g_rt_plaid_ready || (dispcnt & 7u) != 0) return;
    if (((IO16(0x50) >> 6) & 3u) >= 2u && (IO16(0x54) & 31u)) return;   /* mid-fade */
    L = find_layout(dispcnt);
    if (!rt_mods_title_menu() && !(L && (L->rects == s_language_rects || L->rects == s_title_rects))) return;   /* title or language */
    for (bg = 0; bg < 4; bg++) {
        int p = (int)(IO16(0x08u + 2u * (u32)bg) & 3u);
        if (!((dispcnt >> (8 + bg)) & 1u)) continue;
        if (p > bp || (p == bp && bg > best)) { bp = p; best = bg; }
    }
    if (best < 0) return;
    g_rt_ppu_bgmask = 1u << best;
    g_rt_ppu_objs = 0;
    g_rt_ppu_ui = 1;
    for (y = 0; y < 64; y++) {
        rt_ppu_line(y, line);
        for (x = 0; x < 64; x++) {
            if (line[x] == RT_UI_CLEAR || line[x] != line[x + 64]) {   /* not a full repeating layer */
                pass_all();
                return;
            }
            g_rt_plaid[y][x] = (u16)(line[x] & 0x7FFFu);
        }
    }
    pass_all();
    for (y = 1; y < 64 * 64; y++)
        if ((&g_rt_plaid[0][0])[y] != g_rt_plaid[0][0]) break;
    if (y < 64 * 64) g_rt_plaid_ready = 1;   /* a pattern, not a plain fill */
}

/* the wallpaper rows (panel rows 24..183 hold GBA lines 0..159) repeat
 * every 64 lines, as the plaid does */
static int wall_repeats(void)
{
    int y, x;
    for (y = WALL_DY; y < WALL_DY + RT_GBA_H - 64; y += 7)
        for (x = 32; x < 32 + RT_VIEW_W; x += 3)
            if (g_rt_frame[y][x] != g_rt_frame[y + 64][x]) return 0;
    return 1;
}

void rt_view_frame_end(void)
{
    int line;
    if (g_rt_view.layout) {
        int y;
        /* wallpaper maps usually stop at the screen edge: the rows above and
         * below repeat the pattern (64-line period) from inside the screen */
        if (!wall_repeats()) {
            /* not a repeating wallpaper (e.g. the illustrated title after the
             * game is completed): the layout would cut the picture apart, so
             * show this screen whole */
            s_reject_sig = s_last_sig;
            s_last_layout = 0;
            g_rt_view.layout = 0;
            g_rt_view.zoom = 0;
            pass_all();
            for (line = 0; line < RT_GBA_H; line++) rt_ppu_line(line, g_rt_frame[line]);
            capture_plaid();
            return;
        }
        for (y = 0; y < WALL_DY; y++) memcpy(g_rt_frame[y], g_rt_frame[y + 64], sizeof g_rt_frame[0]);
        for (y = WALL_DY + RT_GBA_H; y < RT_VIEW_H; y++) memcpy(g_rt_frame[y], g_rt_frame[y - 64], sizeof g_rt_frame[0]);
    } else if (g_rt_view.zoom) {
        pass_world();
        for (line = RT_GBA_H; line < RT_VIEW_H; line++) {
            scenery_centre(1, line);
            rt_ppu_line(line, g_rt_frame[line]);
            scenery_centre(0, line);
        }
        pass_all();
    }
    if (g_rt_view.ui_mask && (g_rt_view.zoom || g_rt_view.ui_probe)) {
        /* how much of the screen the UI layer covers */
        u32 n = 0;
        const u16 *u = &g_rt_ui[0][0];
        int i;
        for (i = 0; i < RT_GBA_W * RT_GBA_H; i += 2) n += u[i] != RT_UI_CLEAR;
        {
            int was = s_ui_full;
            if (n * 100u > (u32)(RT_GBA_W * RT_GBA_H / 2) * 85u) s_ui_full = 1;
            else if (n * 100u < (u32)(RT_GBA_W * RT_GBA_H / 2) * 60u) s_ui_full = 0;
            if (was != s_ui_full) rt_log("view: UI layer %s the screen (%u of %u)", s_ui_full ? "fills" : "no longer fills", n, (u32)(RT_GBA_W * RT_GBA_H / 2));
        }
    } else if (!g_rt_view.ui_mask) {
        s_ui_full = 0;
    }
    capture_plaid();
}
