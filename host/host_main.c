/* host_main.c - headless test harness for the port runtime (Linux/Windows).
 *
 *   hamtaro_host <rom.gba> [options]
 *     --frames N         stop after N frames (default 600)
 *     --dump F1,F2,...   write frames F as BMP (GBA frame and panel view)
 *     --every N          also dump every Nth frame
 *     --out DIR          output directory (default .)
 *     --keys SPEC        key script: frame:keys[:len],...  keys from
 *                        A B s(select) S(start) R L U D r(R) l(L)
 *     --zoom             zoom view (default letterbox); key Z toggles it
 *     --cache N          cartridge pages kept in RAM (default 64)
 *     --save PATH        save RAM file
 *     --link-host PORT / --link-join HOST:PORT   serial link over TCP
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#include "rt.h"
#include "rt_mem.h"
#include "rt_scale.h"
#include "rt_coro.h"

static u32 s_max_frames = 600;
static u32 s_dump[64];
static int s_ndump;
static u32 s_every;
static const char *s_out = ".";

typedef struct { u32 frame, len, keys; } KeyEv;
static KeyEv s_keys[4096];
static int s_nkeys;
static clock_t s_t0;
static int s_coro;
extern u32 g_rt_rom_faults;

int rt_link_host_setup(const char *spec, int listen);

static void write_bmp(const char *path, const u16 *px, int w, int h, int stride, int fmt565)
{
    FILE *f = fopen(path, "wb");
    int row_bytes = (w * 3 + 3) & ~3;
    u32 size = 54u + (u32)(row_bytes * h);
    unsigned char hdr[54];
    int y, x;
    if (!f) return;
    memset(hdr, 0, sizeof hdr);
    hdr[0] = 'B'; hdr[1] = 'M';
    hdr[2] = (unsigned char)size; hdr[3] = (unsigned char)(size >> 8); hdr[4] = (unsigned char)(size >> 16);
    hdr[10] = 54; hdr[14] = 40;
    hdr[18] = (unsigned char)w; hdr[19] = (unsigned char)(w >> 8);
    hdr[22] = (unsigned char)h; hdr[23] = (unsigned char)(h >> 8);
    hdr[26] = 1; hdr[28] = 24;
    fwrite(hdr, 1, 54, f);
    for (y = h - 1; y >= 0; y--) {
        unsigned char row[1024];
        memset(row, 0, sizeof row);
        for (x = 0; x < w; x++) {
            u32 c = px[y * stride + x], r, g, b;
            if (fmt565) {
                r = (c >> 11) & 31u; g = (c >> 5) & 63u; b = c & 31u;
                row[x * 3 + 2] = (unsigned char)(r << 3 | r >> 2);
                row[x * 3 + 1] = (unsigned char)(g << 2 | g >> 4);
                row[x * 3 + 0] = (unsigned char)(b << 3 | b >> 2);
            } else {
                r = c & 31u; g = (c >> 5) & 31u; b = (c >> 10) & 31u;
                row[x * 3 + 2] = (unsigned char)(r << 3 | r >> 2);
                row[x * 3 + 1] = (unsigned char)(g << 3 | g >> 2);
                row[x * 3 + 0] = (unsigned char)(b << 3 | b >> 2);
            }
        }
        fwrite(row, 1, (size_t)row_bytes, f);
    }
    fclose(f);
}

static void dump_regs(u32 frame)
{
    u32 i, vram_nz = 0, pal_nz = 0, oam_nz = 0;
    for (i = 0; i < sizeof g_rt_vram; i++) vram_nz += g_rt_vram[i] != 0;
    for (i = 0; i < sizeof g_rt_pal; i++) pal_nz += g_rt_pal[i] != 0;
    for (i = 0; i < sizeof g_rt_oam; i++) oam_nz += g_rt_oam[i] != 0;
    printf("frame %u: DISPCNT=%04X BG0-3CNT=%04X %04X %04X %04X BLDCNT=%04X BLDALPHA=%04X BLDY=%04X "
           "IE=%04X IME=%u  nonzero vram=%u pal=%u oam=%u\n", frame,
           RT_IO16(0), RT_IO16(8), RT_IO16(10), RT_IO16(12), RT_IO16(14), RT_IO16(0x50), RT_IO16(0x52),
           RT_IO16(0x54), RT_IO16(0x200), RT_IO16(0x208), vram_nz, pal_nz, oam_nz);
}

static void dump(u32 frame)
{
    char path[512];
    dump_regs(frame);
    {
        FILE *f;
        sprintf(path, "%s/mem_%05u.bin", s_out, frame);
        f = fopen(path, "wb");
        if (f) {
            fwrite(g_rt_vram, 1, sizeof g_rt_vram, f);
            fwrite(g_rt_pal, 1, sizeof g_rt_pal, f);
            fwrite(g_rt_oam, 1, sizeof g_rt_oam, f);
            fwrite(g_rt_io, 1, sizeof g_rt_io, f);
            fwrite(g_rt_ewram, 1, sizeof g_rt_ewram, f);
            fwrite(g_rt_iwram, 1, sizeof g_rt_iwram, f);
            fclose(f);
        }
    }
    static u16 panel[RT_PANEL_W * RT_PANEL_H];
    int lines = g_rt_view.zoom ? RT_FRAME_LINES : 160;
    sprintf(path, "%s/gba_%05u.bmp", s_out, frame);
    write_bmp(path, &g_rt_frame[0][0], 240, lines, 240, 0);
    if (g_rt_view.zoom) {
        static u16 ui[RT_GBA_H * RT_GBA_W];
        int i;
        for (i = 0; i < RT_GBA_H * RT_GBA_W; i++) {
            u16 c = (&g_rt_ui[0][0])[i];
            ui[i] = c == RT_UI_CLEAR ? 0x7C1Fu : c;   /* clear = magenta */
        }
        sprintf(path, "%s/ui_%05u.bmp", s_out, frame);
        write_bmp(path, ui, 240, 160, 240, 0);
    }
    rt_scale_frame(panel, RT_PANEL_W);
    sprintf(path, "%s/ngage_%05u.bmp", s_out, frame);
    write_bmp(path, panel, RT_PANEL_W, RT_PANEL_H, RT_PANEL_W, 1);
}

static FILE *s_wav;
static u32 s_wav_frames;

static void wav_finish(void)
{
    unsigned char h[44] = { 'R','I','F','F',0,0,0,0,'W','A','V','E','f','m','t',' ',16,0,0,0,1,0,2,0 };
    u32 rate = rt_audio_rate(), d = s_wav_frames * 4u, v[5];
    int i, k;
    if (!s_wav) return;
    v[0] = d + 36u; v[1] = rate; v[2] = rate * 4u; v[3] = 4u | (16u << 16); v[4] = d;
    for (i = 0; i < 4; i++) h[4 + i] = (unsigned char)(v[0] >> (8 * i));
    for (k = 1; k < 4; k++) for (i = 0; i < 4; i++) h[20 + 4 * k + i] = (unsigned char)(v[k] >> (8 * i));
    memcpy(h + 36, "data", 4);
    for (i = 0; i < 4; i++) h[40 + i] = (unsigned char)(v[4] >> (8 * i));
    fseek(s_wav, 0, SEEK_SET);
    fwrite(h, 1, 44, s_wav);
    fclose(s_wav);
    s_wav = 0;
}

void rt_platform_frame(void)
{
    u32 f = rt_frame_count();
    int i, want = 0;
    if (s_wav) {
        static s16 buf[4096 * 2];
        u32 n;
        while ((n = rt_audio_read(buf, 4096)) != 0) {
            fwrite(buf, 4, n, s_wav);
            s_wav_frames += n;
        }
    }
    for (i = 0; i < s_ndump; i++)
        if (s_dump[i] == f) want = 1;
    if (s_every && f % s_every == 0) want = 1;
    if (want && rt_frame_rendered()) dump(f);
    {
        /* HOST_TRACE=addr: print a word of GBA memory whenever it changes */
        static u32 last = 0xFFFFFFFFu, addr;
        static int init;
        if (!init) {
            const char *e = getenv("HOST_TRACE");
            init = 1;
            addr = e ? (u32)strtoul(e, 0, 0) : 0;
        }
        if (addr && LD32(addr) != last) {
            last = LD32(addr);
            printf("trace %u %08X DISPCNT=%04X\n", f, last, RT_IO16(0));
        }
    }
    for (i = 0; i < s_nkeys; i++)
        if (s_keys[i].frame == f && (s_keys[i].keys & (1u << 16))) rt_view_set_zoom(!g_rt_cfg.zoom);
    if (s_coro) rt_coro_yield();
    if (f >= s_max_frames) {
        double secs = (double)(clock() - s_t0) / CLOCKS_PER_SEC;
        printf("ran %u frames in %.2f s (%.1f fps host), cartridge page loads: %u, sample fetches: %u\n",
               f, secs, secs > 0 ? f / secs : 0.0, g_rt_rom_faults, g_rt_rom_fetches);
        if (g_rt_sram_dirty) rt_sram_flush();
        wav_finish();
        exit(0);
    }
}

u32 rt_platform_keys(void)
{
    u32 f = rt_frame_count();
    u32 k = 0;
    int i;
    for (i = 0; i < s_nkeys; i++)
        if (f >= s_keys[i].frame && f < s_keys[i].frame + s_keys[i].len) k |= s_keys[i].keys & 0x3FFu;
    return k;
}

void rt_ngage_request_exit(void)
{
    printf("[rt %5u] exit requested from the title menu\n", rt_frame_count());
    if (g_rt_sram_dirty) rt_sram_flush();
    exit(0);
}

void rt_platform_log(const char *msg)
{
    printf("[rt %5u] %s\n", rt_frame_count(), msg);
    fflush(stdout);
}

void rt_platform_fatal(const char *msg)
{
    printf("[rt %5u] FATAL: %s\n", rt_frame_count(), msg);
    dump(rt_frame_count());
    exit(2);
}

static u32 parse_keys(const char *s)
{
    u32 k = 0;
    for (; *s && *s != ':' && *s != ','; s++) {
        switch (*s) {
        case 'A': k |= 1u; break;
        case 'B': k |= 2u; break;
        case 's': k |= 4u; break;
        case 'S': k |= 8u; break;
        case 'R': k |= 16u; break;
        case 'L': k |= 32u; break;
        case 'U': k |= 64u; break;
        case 'D': k |= 128u; break;
        case 'r': k |= 256u; break;
        case 'l': k |= 512u; break;
        case 'Z': k |= 1u << 16; break;   /* toggle the view (not a GBA key) */
        }
    }
    return k;
}

int main(int argc, char **argv)
{
    rt_config cfg;
    int i;
    memset(&cfg, 0, sizeof cfg);
    if (argc < 2) {
        fprintf(stderr, "usage: %s rom.gba [--frames N] [--dump a,b] [--every N] [--out DIR] "
                        "[--keys f:keys[:len],...] [--zoom] [--cache N] [--save PATH] [--wav FILE]\n", argv[0]);
        return 1;
    }
    cfg.rom_path = argv[1];
    cfg.rom_cache_pages = 64;
    for (i = 2; i < argc; i++) {
        if (!strcmp(argv[i], "--frames") && i + 1 < argc) s_max_frames = (u32)atoi(argv[++i]);
        else if (!strcmp(argv[i], "--every") && i + 1 < argc) s_every = (u32)atoi(argv[++i]);
        else if (!strcmp(argv[i], "--out") && i + 1 < argc) s_out = argv[++i];
        else if (!strcmp(argv[i], "--zoom") || !strcmp(argv[i], "--extended")) cfg.zoom = 1;
        else if (!strcmp(argv[i], "--coro")) s_coro = 1;
        else if (!strcmp(argv[i], "--trace-bios")) { extern int g_rt_trace_bios; g_rt_trace_bios = 1; }
        else if (!strcmp(argv[i], "--frameskip") && i + 1 < argc) cfg.frameskip = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--cache") && i + 1 < argc) cfg.rom_cache_pages = atoi(argv[++i]);
        else if (!strcmp(argv[i], "--save") && i + 1 < argc) cfg.save_path = argv[++i];
        else if (!strcmp(argv[i], "--wav") && i + 1 < argc) {
            s_wav = fopen(argv[++i], "wb");
            if (s_wav) fseek(s_wav, 44, SEEK_SET);
        }
        else if (!strcmp(argv[i], "--link-host") && i + 1 < argc) rt_link_host_setup(argv[++i], 1);
        else if (!strcmp(argv[i], "--link-join") && i + 1 < argc) rt_link_host_setup(argv[++i], 0);
        else if (!strcmp(argv[i], "--dump") && i + 1 < argc) {
            char *s = argv[++i];
            while (*s && s_ndump < 64) {
                s_dump[s_ndump++] = (u32)strtoul(s, &s, 10);
                if (*s == ',') s++;
            }
        } else if (!strcmp(argv[i], "--keys") && i + 1 < argc) {
            char *s = argv[++i];
            while (*s && s_nkeys < 4096) {
                KeyEv *e = &s_keys[s_nkeys++];
                e->frame = (u32)strtoul(s, &s, 10);
                e->len = 4;
                if (*s == ':') s++;
                e->keys = parse_keys(s);
                while (*s && *s != ':' && *s != ',') s++;
                if (*s == ':') e->len = (u32)strtoul(s + 1, &s, 10);
                if (*s == ',') s++;
            }
        }
    }
    rt_scale_set_format(RT_FMT_RGB565);
    if (getenv("HOST_WATCH")) g_rt_watch = (u32)strtoul(getenv("HOST_WATCH"), 0, 0);
    if (rt_init(&cfg) != 0) {
        fprintf(stderr, "init failed\n");
        return 1;
    }
    s_t0 = clock();
    if (s_coro) {
        rt_coro_init(256 * 1024);
        for (;;) rt_coro_frame();      /* one frame per call, like SDL_AppIterate */
    }
    rt_run();
    return 0;
}
