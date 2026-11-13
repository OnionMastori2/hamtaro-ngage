/* rt.h - the port runtime: GBA hardware for the translated decomp.
 *
 * Front ends (Linux harness, N-Gage app) call rt_init() once and then
 * rt_run(), which enters the game's own game_main() and never returns.
 * Each emulated frame ends in rt_platform_frame(), where the front end
 * presents the picture, reads input and may sleep.
 */
#ifndef RT_H
#define RT_H

#include "rt_types.h"

/* GBA memory regions owned by the runtime */
extern u8 g_rt_ewram[0x40000];
extern u8 g_rt_iwram[0x8000];
extern u8 g_rt_io[0x400];
extern u8 g_rt_pal[0x400];
extern u8 g_rt_vram[0x18000];
extern u8 g_rt_oam[0x400];
extern u8 g_rt_sram[0x10000];

#define RT_IO16(off) (*(u16 *)(g_rt_io + (off)))
#define RT_IO32(off) (*(u32 *)(g_rt_io + (off)))

/* Region placement for things that do not exist on a GBA */
#define RT_NATIVE_DATA_ADDR 0x0A000000u   /* globals private to translated units */
#define RT_STACK_ADDR       0x0C000000u   /* emulated stack for address-taken locals */
#define RT_STACK_SIZE       0x00010000u

/* --- screen ------------------------------------------------------------ */
#define RT_GBA_W 240
#define RT_GBA_H 160
#define RT_VIEW_W 176        /* the N-Gage screen, portrait */
#define RT_VIEW_H 208
#define RT_FRAME_LINES RT_VIEW_H

/* The main picture, BGR555, 240 wide.  Letterbox view: lines 0..159 are
 * the GBA screen.  Zoom view (rt_view.c): the game's camera works on a
 * 176x208 screen, so lines 0..207 / columns 0..175 are the panel at 1:1. */
extern u16 g_rt_frame[RT_FRAME_LINES][RT_GBA_W];

/* Zoom view: the UI layers (dialog boxes, menus) in GBA screen space,
 * RT_UI_CLEAR where nothing is drawn.  rt_scale fits them onto the panel. */
#define RT_UI_CLEAR 0xFFFFu
extern u16 g_rt_ui[RT_GBA_H][RT_GBA_W];

/* A portrait layout for a fixed 240x160 screen (zoom view): the screen's
 * backmost layer (its wallpaper) fills the panel at 1:1, and rectangles of
 * everything in front of it are placed on the panel.  A rectangle takes the
 * background pixels inside it and, whole, every sprite whose centre is
 * inside it; sprites outside all rectangles are left out. */
typedef struct {
    s16 sx, sy, w, h;    /* GBA screen rect */
    s16 dx, dy;          /* panel position */
    u8 fit;              /* scaled to dw pixels wide (0: the panel width), aspect kept */
    s16 dw;
} rt_layout_rect;

typedef struct {
    const char *name;
    u32 script_lo, script_hi;     /* main script cursor range showing this screen */
    const rt_layout_rect *rects;
    int nrects;
    int exit_x, exit_y;           /* title Exit label, panel position (0 = default) */
} rt_layout;

typedef struct {
    int zoom;            /* this frame uses the zoom view */
    const rt_layout *layout;   /* ...as a portrait layout of a fixed screen */
    int wall_bg;         /* layout: the wallpaper layer */
    int ui_probe;        /* fixed screen; the UI pass still runs to measure it */
    u32 world_mask;      /* BG layers that scroll with the camera */
    u32 ui_mask;         /* BG layers drawn in the UI pass */
    u32 scenery_mask;    /* fixed layers drawn with the world, centred */
    int shift_x, shift_y;      /* rooms smaller than the panel are centred */
    int room_x0, room_x1, room_y0, room_y1;   /* panel rect showing the room */
} rt_view_state;
extern rt_view_state g_rt_view;

/* layouts: the foreground pieces already placed on the panel */
extern u16 g_rt_layout_acc[RT_VIEW_H][RT_VIEW_W];

/* wallpaper for the letterbox bars, captured from the title screen */
extern u16 g_rt_plaid[64][64];
extern int g_rt_plaid_ready;

void rt_view_set_zoom(int on);         /* the player's view choice */
void rt_view_frame_begin(void);
void rt_view_line(int line);           /* GBA line 0..159 */
void rt_view_frame_end(void);

typedef struct {
    int zoom;            /* zoom view (1:1 world) instead of letterbox */
    int frameskip;       /* render 1 of (frameskip+1) frames */
    int rom_cache_pages; /* 32 KiB cartridge pages kept in RAM */
    const char *rom_path;
    const char *save_path;
} rt_config;

extern rt_config g_rt_cfg;

/* --- runtime API --------------------------------------------------------- */
int  rt_init(const rt_config *cfg);    /* 0 on success */
void rt_run(void);                     /* enters game_main(); does not return */
const char *rt_error(void);
u32  rt_frame_count(void);
int  rt_frame_rendered(void);          /* last frame produced a picture */

/* hardware model (rt_hw.c) */
void rt_hw_reset(void);
u32  rt_io_read16(u32 off);
void rt_io_write16(u32 off, u32 v);
void rt_io_write8(u32 off, u32 v);
void rt_raise_irq(u32 bits);

/* rt_audio.c: the M4A engine's output, stereo s16 at rt_audio_rate() Hz.
 * Each GBA frame adds about rt_audio_rate()/60 frames to a ring buffer;
 * the front end drains it with rt_audio_read. */
extern int g_rt_audio_on;              /* 0: write silence */
void rt_audio_io_write(u32 off, u32 v);
u32 rt_audio_rate(void);
u32 rt_audio_available(void);
u32 rt_audio_read(s16 *out, u32 frames);
void rt_audio_clear(void);
void rt_frame(void);                   /* one GBA frame of video timing */
extern u32 g_rt_line;                  /* current VCOUNT */

/* ppu (rt_ppu.c) */
void rt_ppu_frame_start(void);
void rt_ppu_line(int line, u16 *out);  /* line 0 .. RT_VIEW_H-1 */
extern u32 g_rt_ppu_bgmask;
extern int g_rt_ppu_objs, g_rt_ppu_ui, g_rt_ppu_screen_h;
extern const u8 *g_rt_ppu_objfilter;
void rt_ppu_affine_reload(int bg);

/* cartridge (rt_rom.c) */
int  rt_rom_open(const char *path, int cache_pages);
u8  *rt_rom_page(u32 page);            /* page index within the cartridge; loads it */
u32  rt_rom_size(void);
void rt_rom_read(u32 off, void *dst, u32 n);
void rt_rom_fetch(u32 off, void *dst, u32 n);  /* bypasses the page cache */
extern u32 g_rt_rom_fetches;

/* save RAM */
void rt_sram_load(void);
void rt_sram_flush(void);
extern int g_rt_sram_dirty;

/* --- implemented by the front end ---------------------------------------- */
void rt_platform_frame(void);          /* present g_rt_frame if rendered, pump input */
u32  rt_platform_keys(void);           /* GBA key bits, 1 = pressed (A=0 .. L=9) */
void rt_platform_log(const char *msg);
void rt_platform_fatal(const char *msg);


void rt_log(const char *fmt, ...);
void rt_fatal(const char *fmt, ...);

#endif
