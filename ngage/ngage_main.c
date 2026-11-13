/* ngage_main.c - Nokia N-Gage front end (SDL3, 176x208).
 *
 *   Nokia boot screen -> the game (translated decomp on the port runtime)
 *
 * The game runs as a coroutine (runtime/rt_coro.c): every SDL_AppIterate
 * resumes it for exactly one GBA frame, then the picture is scaled to the
 * panel and control returns to Symbian.
 *
 * Files on the memory card (first match wins):
 *   E:\hamtaro\hamtaro.gba   your own cartridge dump (European AH3P,
 *                            SHA-1 b016328e4880f0413b9335c95758ba9c09e53710)
 *   E:\hamtaro\hamtaro.sav   save file (created by the game)
 *   E:\hamtaro\hamtaro.ini   optional settings, one per line:
 *       zoom=1        start in the zoom view (0 = letterbox)
 *       volume=3      sound volume: 0 off, 1 low, 2 medium, 3 high
 *       filter=1      smooth scaling (0 = sharp)
 *       frameskip=1   draw 1 of N+1 frames (game logic always runs at 60)
 *       cache=18      cartridge pages kept in RAM (32 KiB each)
 *       prompts=1     show N-Gage keys instead of GBA buttons
 *       link=host | link=join     Bluetooth link cable (see README)
 *       link_channel=9
 * C:\hamtaro\ is searched too.
 *
 * Keys:  d-pad or 2/4/6/8   directions      5  A        7  B
 *        left soft key  START               *  SELECT    1  L     3 / #  R
 *        right soft key zoom / letterbox    0  volume: off / low / medium / high
 *        Exit on the title menu saves and returns to the N-Gage menu.
 */
#define SDL_MAIN_USE_CALLBACKS 1

#include <SDL3/SDL.h>
#include <SDL3/SDL_main.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "rt.h"
#include "rt_coro.h"
#include "rt_scale.h"
#include "rt_link.h"
#include "rt_ngage.h"
#ifdef HAVE_SPLASH
#include "splash_data.h"
#endif

#define SPLASH_TOTAL_MS 3200u
#define SPLASH_FADE_MS   600u
#define SPLASH_SKIP_MS   400u

static SDL_Window *s_window;
static SDL_Renderer *s_renderer;
static SDL_Texture *s_texture;
static u16 s_panel[RT_PANEL_H * RT_PANEL_W];
static u32 s_keys;
static u32 s_splash_start;
static int s_state;            /* 0 splash, 1 game, 2 error */
static int s_quit;
static int s_sound_on = 1;
static int s_volume = 3;        /* 0 off, 1 low, 2 medium, 3 high (key 0 cycles) */
static SDL_AudioStream *s_audio;

/* --- sound ---------------------------------------------------------------------
 * The game's mixer runs at its own rate (10512 Hz, stereo); the N-Gage plays
 * 8000 Hz mono.  feed_audio converts in fixed point here, so SDL gets data
 * already in the device format and does no (floating point) conversion. */
#define OUT_RATE 8000u
static u32 s_rs_pos;          /* 16.16 position between s_rs_prev and the next sample */
static int s_rs_prev;

static void log_line(const char *msg);

/* sound diagnostics in hamtaro.log: the first few seconds of play */
static u32 s_diag_frames, s_diag_in, s_diag_out, s_diag_reports;
static int s_diag_peak;

static void audio_diag(void)
{
    char m[160];
    if (s_diag_reports >= 6u || ++s_diag_frames < 300u) return;
    sprintf(m, "[audio] in %u out %u peak %d queued %d rate %u snd %04X/%04X on %d",
            (unsigned)s_diag_in, (unsigned)s_diag_out, s_diag_peak,
            s_audio ? SDL_GetAudioStreamQueued(s_audio) : -1, (unsigned)rt_audio_rate(),
            (unsigned)RT_IO16(0x84), (unsigned)RT_IO16(0x82), s_sound_on);
    log_line(m);
    if (s_audio) {
        SDL_AudioSpec dev;
        int frames = 0;
        SDL_AudioDeviceID id = SDL_GetAudioStreamDevice(s_audio);
        if (SDL_GetAudioDeviceFormat(id, &dev, &frames)) {
            sprintf(m, "        device %u: %d Hz, %d ch, fmt %X, %d frames, paused %d",
                    (unsigned)id, dev.freq, dev.channels, (unsigned)dev.format, frames,
                    (int)SDL_AudioDevicePaused(id));
            log_line(m);
        } else {
            log_line(SDL_GetError());
        }
    }
    s_diag_frames = 0;
    s_diag_in = s_diag_out = 0;
    s_diag_peak = 0;
    s_diag_reports++;
}

static void feed_audio(void)
{
    static s16 in[512 * 2];
    static s16 out[512];
    u32 step, n, i, k;
    audio_diag();
    if (!s_audio) return;
    if (!s_sound_on) {
        rt_audio_clear();
        return;
    }
    step = (rt_audio_rate() << 16) / OUT_RATE;
    /* keep the queue short (about 1/4 s) so the sound stays in step */
    if (SDL_GetAudioStreamQueued(s_audio) > (int)(OUT_RATE / 4u * 2u)) {
        rt_audio_clear();
        return;
    }
    while ((n = rt_audio_read(in, 512)) != 0) {
        k = 0;
        for (i = 0; i < n; i++) {
            int x = ((in[2 * i] + in[2 * i + 1]) >> 1) >> (3 - s_volume);
            if (x > s_diag_peak) s_diag_peak = x;
            else if (-x > s_diag_peak) s_diag_peak = -x;
            while (s_rs_pos < 0x10000u) {
                out[k++] = (s16)(s_rs_prev + (((x - s_rs_prev) * (int)(s_rs_pos >> 2)) >> 14));
                s_rs_pos += step;
                if (k == 512u) {
                    SDL_PutAudioStreamData(s_audio, out, (int)(k * 2u));
                    k = 0;
                }
            }
            s_rs_pos -= 0x10000u;
            s_rs_prev = x;
        }
        s_diag_in += n;
        s_diag_out += k;
        if (k) SDL_PutAudioStreamData(s_audio, out, (int)(k * 2u));
    }
}

/* Volume (key 0, like most N-Gage games): off, low, medium, high. */
static void set_volume(int v)
{
    int on = v > 0;
    if (v < 0) v = 0;
    if (v > 3) v = 3;
    s_volume = v;
    s_sound_on = on;
    g_rt_audio_on = s_sound_on;
    if (s_audio) {
        if (s_sound_on) {
            if (!SDL_ResumeAudioStreamDevice(s_audio)) {
                log_line("audio resume failed:");
                log_line(SDL_GetError());
            }
        } else {
            SDL_ClearAudioStream(s_audio);
            SDL_PauseAudioStreamDevice(s_audio);
        }
    }
}
static char s_error[200];
static char s_dir[64];
static char s_rom[96], s_sav[96], s_ini[96];
static u32 s_next_frame_ms;
static char s_link_mode[8];
static int s_link_channel = 9;

/* --- runtime callbacks (called on the game stack) --------------------------- */

void rt_platform_frame(void)
{
    if (rt_frame_rendered()) rt_scale_frame(s_panel, RT_PANEL_W);
    rt_coro_yield();
}

u32 rt_platform_keys(void) { return s_keys; }

/* Startup/diagnostic log: E:\hamtaro\hamtaro.log (also C:\ if E: is missing).
 * Each line is flushed at once so the last line survives a panic. */
static FILE *s_log;
static int s_log_tried;

static void log_line(const char *msg)
{
    if (!s_log && !s_log_tried) {
        s_log_tried = 1;
        s_log = fopen("E:\\hamtaro\\hamtaro.log", "w");
        if (!s_log) s_log = fopen("C:\\hamtaro.log", "w");
    }
    if (s_log) {
        fprintf(s_log, "%s\n", msg);
        fflush(s_log);
    }
    SDL_Log("%s", msg);
}

void rt_platform_log(const char *msg) { log_line(msg); }

void rt_platform_fatal(const char *msg)
{
    log_line("FATAL:");
    log_line(msg);
    SDL_strlcpy(s_error, msg, sizeof s_error);
    s_state = 2;
    rt_coro_yield();
    for (;;) rt_coro_yield();     /* never resume the game after a fatal error */
}

void rt_ngage_request_exit(void) { s_quit = 1; }

/* --- input ------------------------------------------------------------------- */

static u32 read_keys(void)
{
    const bool *k = SDL_GetKeyboardState(NULL);
    u32 keys = 0;
    /* d-pad, or the keypad: 2 up, 8 down, 4 left, 6 right */
    if (k[SDL_SCANCODE_UP] || k[SDL_SCANCODE_2] || k[SDL_SCANCODE_KP_2]) keys |= 1u << 6;
    if (k[SDL_SCANCODE_DOWN] || k[SDL_SCANCODE_8] || k[SDL_SCANCODE_KP_8]) keys |= 1u << 7;
    if (k[SDL_SCANCODE_LEFT] || k[SDL_SCANCODE_4] || k[SDL_SCANCODE_KP_4]) keys |= 1u << 5;
    if (k[SDL_SCANCODE_RIGHT] || k[SDL_SCANCODE_6] || k[SDL_SCANCODE_KP_6]) keys |= 1u << 4;
    /* 5 (or the d-pad centre) = A, 7 = B, left soft key = START, * = SELECT, 1 = L, 3 / # = R */
    if (k[SDL_SCANCODE_5] || k[SDL_SCANCODE_KP_5] || k[SDL_SCANCODE_RETURN] || k[SDL_SCANCODE_SELECT]) keys |= 1u << 0;
    if (k[SDL_SCANCODE_7] || k[SDL_SCANCODE_KP_7]) keys |= 1u << 1;
    if (k[SDL_SCANCODE_SOFTLEFT]) keys |= 1u << 3;
    if (k[SDL_SCANCODE_KP_MULTIPLY]) keys |= 1u << 2;
    if (k[SDL_SCANCODE_1] || k[SDL_SCANCODE_KP_1]) keys |= 1u << 9;
    if (k[SDL_SCANCODE_3] || k[SDL_SCANCODE_KP_3] || k[SDL_SCANCODE_NONUSHASH] || k[SDL_SCANCODE_KP_HASH]) keys |= 1u << 8;
    return keys;
}

/* --- files ----------------------------------------------------------------- */

static int file_exists(const char *p)
{
    FILE *f = fopen(p, "rb");
    if (f) fclose(f);
    return f != NULL;
}

static void read_ini(rt_config *cfg)
{
    FILE *f = fopen(s_ini, "r");
    char line[96];
    if (!f) return;
    while (fgets(line, sizeof line, f)) {
        char *eq = strchr(line, '=');
        int v;
        if (!eq) continue;
        *eq = 0;
        v = atoi(eq + 1);
        if (!strcmp(line, "zoom") || !strcmp(line, "extended")) cfg->zoom = v;
        if (!strcmp(line, "sound") && v == 0) s_volume = 0;
        if (!strcmp(line, "volume")) s_volume = v < 0 ? 0 : v > 3 ? 3 : v;
        else if (!strcmp(line, "frameskip")) cfg->frameskip = v;
        else if (!strcmp(line, "cache")) cfg->rom_cache_pages = v;
        else if (!strcmp(line, "filter")) g_rt_scale_filter = v;
        else if (!strcmp(line, "prompts")) g_rt_ngage_prompts = v;
        else if (!strcmp(line, "link_channel")) s_link_channel = v;
        else if (!strcmp(line, "link")) {
            char *val = eq + 1;
            val[strcspn(val, "\r\n ")] = 0;
            SDL_strlcpy(s_link_mode, val, sizeof s_link_mode);
        }
    }
    fclose(f);
}

static int find_files(void)
{
    static const char *dirs[] = { "E:\\hamtaro\\", "C:\\hamtaro\\", "E:\\System\\Apps\\hamtaro\\",
                                  "C:\\System\\Apps\\hamtaro\\", "E:\\", 0 };
    int i;
    for (i = 0; dirs[i]; i++) {
        sprintf(s_rom, "%shamtaro.gba", dirs[i]);
        if (file_exists(s_rom)) {
            SDL_strlcpy(s_dir, dirs[i], sizeof s_dir);
            sprintf(s_sav, "%shamtaro.sav", dirs[i]);
            sprintf(s_ini, "%shamtaro.ini", dirs[i]);
            return 0;
        }
    }
    return -1;
}

/* --- drawing ------------------------------------------------------------------ */

/* Nokia boot screen: fades in from black, holds, then fades to white, where
 * the game's own start (the Nintendo logo on white) takes over. */
static void draw_splash(u32 now)
{
#ifndef HAVE_SPLASH
    (void)now;
    memset(s_panel, 0xFF, sizeof s_panel);
#else
    u32 t = now - s_splash_start;
    int i, lv = 256, wh = 0;     /* lv: towards black, wh: towards white */
    if (t < SPLASH_FADE_MS) lv = (int)(t * 256u / SPLASH_FADE_MS);
    else if (t > SPLASH_TOTAL_MS - SPLASH_FADE_MS) {
        u32 r = t >= SPLASH_TOTAL_MS ? 0u : SPLASH_TOTAL_MS - t;
        wh = 256 - (int)(r * 256u / SPLASH_FADE_MS);
    }
    for (i = 0; i < SPLASH_W * SPLASH_H; i++) {
        u16 c = (&g_splash_pixels[0][0])[i];
        int r = (int)((c >> 11) & 31u), g = (int)((c >> 5) & 63u), b = (int)(c & 31u);
        r = (r * lv) >> 8; g = (g * lv) >> 8; b = (b * lv) >> 8;
        r += ((31 - r) * wh) >> 8; g += ((63 - g) * wh) >> 8; b += ((31 - b) * wh) >> 8;
        s_panel[i] = (u16)((r << 11) | (g << 5) | b);
    }
#endif
}

/* short notice after the view or sound keys, like SonicN's */
static char s_toast[24];
static u32 s_toast_until;

static void toast(const char *msg)
{
    SDL_strlcpy(s_toast, msg, sizeof s_toast);
    s_toast_until = (u32)SDL_GetTicks() + 1200u;
}

static void present(void)
{
    SDL_UpdateTexture(s_texture, NULL, s_panel, RT_PANEL_W * (int)sizeof(u16));
    SDL_RenderClear(s_renderer);
    SDL_RenderTexture(s_renderer, s_texture, NULL, NULL);
    if (s_state == 2) {
        SDL_SetRenderDrawColor(s_renderer, 255, 255, 255, 255);
        SDL_RenderDebugText(s_renderer, 4, 80, "Hamtaro port");
        SDL_RenderDebugText(s_renderer, 4, 96, s_error);
        SDL_RenderDebugText(s_renderer, 4, 190, "soft key: quit");
        SDL_SetRenderDrawColor(s_renderer, 0, 0, 0, 255);
    }
    if (s_toast[0] && (s32)(s_toast_until - (u32)SDL_GetTicks()) > 0) {
        SDL_FRect r;
        r.x = 0; r.y = 0; r.w = (float)(8 * SDL_strlen(s_toast) + 8); r.h = 14;
        SDL_SetRenderDrawColor(s_renderer, 0, 0, 0, 255);
        SDL_RenderFillRect(s_renderer, &r);
        SDL_SetRenderDrawColor(s_renderer, 255, 255, 255, 255);
        SDL_RenderDebugText(s_renderer, 4, 3, s_toast);
        SDL_SetRenderDrawColor(s_renderer, 0, 0, 0, 255);
    }
    SDL_RenderPresent(s_renderer);
}

/* --- SDL callbacks --------------------------------------------------------------- */

SDL_AppResult SDL_AppInit(void **appstate, int argc, char *argv[])
{
    rt_config cfg;
    (void)appstate; (void)argc; (void)argv;

    log_line("[1] SDL_AppInit entered");
    SDL_SetAppMetadata("Hamtaro: Ham-Ham Heartbreak", "1.0", "org.ngage.hamtaro");
    if (!SDL_Init(SDL_INIT_VIDEO | SDL_INIT_AUDIO)) {
        log_line("SDL_Init failed:");
        log_line(SDL_GetError());
        return SDL_APP_FAILURE;
    }
    log_line("[2] SDL_Init ok");
    if (!SDL_CreateWindowAndRenderer("Hamtaro", RT_PANEL_W, RT_PANEL_H, 0, &s_window, &s_renderer))
        return SDL_APP_FAILURE;
    s_texture = SDL_CreateTexture(s_renderer, SDL_PIXELFORMAT_RGB565, SDL_TEXTUREACCESS_STREAMING,
                                  RT_PANEL_W, RT_PANEL_H);
    if (!s_texture) return SDL_APP_FAILURE;
    log_line("[3] window, renderer, texture ok");
    rt_scale_set_format(RT_FMT_RGB565);
    {
        /* The device plays 8000 Hz mono 16-bit; the stream is given exactly
         * that (see feed_audio).  The toolchain recommends always opening
         * the audio device so the backend shuts down cleanly. */
        SDL_AudioSpec spec;
        spec.channels = 1;
        spec.format = SDL_AUDIO_S16;
        spec.freq = (int)OUT_RATE;
        s_audio = SDL_OpenAudioDeviceStream(SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK, &spec, NULL, NULL);
    }
    log_line(s_audio ? "[4] audio device opened" : "[4] no audio device");

    memset(&cfg, 0, sizeof cfg);
    cfg.zoom = 1;
    cfg.frameskip = 1;
    cfg.rom_cache_pages = 18;   /* 16 for the game, 2 for the music engine and songs */
    if (find_files() != 0) {
        SDL_strlcpy(s_error, "Put your hamtaro.gba in E:\\hamtaro\\", sizeof s_error);
        s_state = 2;
        return SDL_APP_CONTINUE;
    }
    log_line("[5] cartridge found:");
    log_line(s_rom);
    read_ini(&cfg);
    cfg.rom_path = s_rom;
    cfg.save_path = s_sav;
    log_line("[6] runtime init...");
    if (rt_init(&cfg) != 0) {
        SDL_strlcpy(s_error, "Not enough memory for the game", sizeof s_error);
        s_state = 2;
        return SDL_APP_CONTINUE;
    }
    set_volume(s_volume);
    log_line("[7] runtime ok; game stack...");
    if (rt_coro_init(160 * 1024) != 0) {
        SDL_strlcpy(s_error, "Not enough memory for the game stack", sizeof s_error);
        s_state = 2;
        return SDL_APP_CONTINUE;
    }
    if (!strcmp(s_link_mode, "host")) rt_ngage_bt_start(1, s_link_channel);
    else if (!strcmp(s_link_mode, "join")) rt_ngage_bt_start(0, s_link_channel);
    log_line("[8] init done, showing splash");
    s_splash_start = (u32)SDL_GetTicks();
    s_state = 0;
    return SDL_APP_CONTINUE;
}

SDL_AppResult SDL_AppEvent(void *appstate, SDL_Event *event)
{
    (void)appstate;
    if (event->type == SDL_EVENT_QUIT) return SDL_APP_SUCCESS;
    if (event->type == SDL_EVENT_KEY_DOWN && !event->key.repeat) {
        if (s_state == 2) {
            if (event->key.scancode == SDL_SCANCODE_SOFTLEFT || event->key.scancode == SDL_SCANCODE_SOFTRIGHT) s_quit = 1;
        } else if (event->key.scancode == SDL_SCANCODE_SOFTRIGHT) {
            rt_view_set_zoom(!g_rt_cfg.zoom);
            toast(g_rt_cfg.zoom ? "Zoom" : "Letterbox");
        } else if (event->key.scancode == SDL_SCANCODE_0 || event->key.scancode == SDL_SCANCODE_KP_0) {
            static const char *const names[4] = { "Sound off", "Volume: low", "Volume: medium", "Volume: high" };
            set_volume((s_volume + 1) & 3);
            toast(names[s_volume]);
        }
    }
    return SDL_APP_CONTINUE;
}

SDL_AppResult SDL_AppIterate(void *appstate)
{
    u32 now = (u32)SDL_GetTicks();
    (void)appstate;
    if (s_quit) return SDL_APP_SUCCESS;
    s_keys = read_keys();
    if (s_state == 0) {
        u32 t = now - s_splash_start;
#ifndef HAVE_SPLASH
        t = SPLASH_TOTAL_MS;
#endif
        if (s_keys && t >= SPLASH_SKIP_MS && t < SPLASH_TOTAL_MS - SPLASH_FADE_MS) {
            /* a key skips ahead to the fade to white */
            s_splash_start = now - (SPLASH_TOTAL_MS - SPLASH_FADE_MS);
            t = SPLASH_TOTAL_MS - SPLASH_FADE_MS;
        }
        if (t >= SPLASH_TOTAL_MS) {
            s_state = 1;
            s_next_frame_ms = now;
        } else {
            draw_splash(now);
        }
    }
    if (s_state == 1) {
        /* run as many GBA frames as real time asks for (at most 2), draw once */
        int n = 0;
        while (n < 2 && (s32)(now - s_next_frame_ms) >= 0) {
            static int s_logged_frames;
            if (s_logged_frames < 3) {
                char m[48];
                sprintf(m, "[9] running game frame %d", s_logged_frames);
                log_line(m);
            }
            if (!rt_coro_frame()) break;
            if (s_logged_frames < 3) {
                log_line("    frame returned");
                s_logged_frames++;
            }
            s_next_frame_ms += (n & 1) ? 17u : 16u;   /* ~59.7 Hz */
            n++;
            if (s_state != 1) break;
        }
        if ((s32)(now - s_next_frame_ms) > 100) s_next_frame_ms = now;   /* fell behind: drop time */
        feed_audio();
        if (n == 0) SDL_Delay(1);
    }
    present();
    return s_quit ? SDL_APP_SUCCESS : SDL_APP_CONTINUE;
}

void SDL_AppQuit(void *appstate, SDL_AppResult result)
{
    (void)appstate; (void)result;
    if (g_rt_sram_dirty) rt_sram_flush();
    rt_ngage_bt_stop();
    if (s_audio) SDL_DestroyAudioStream(s_audio);
    if (s_texture) SDL_DestroyTexture(s_texture);
    if (s_renderer) SDL_DestroyRenderer(s_renderer);
    if (s_window) SDL_DestroyWindow(s_window);
}
