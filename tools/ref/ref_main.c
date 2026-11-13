/* ref_main.c - run the cartridge in mGBA (reference) and dump state in the
 * same layout as the port harness: vram, pal, oam, io, ewram, iwram.
 *   ref <rom> <frames> <outdir> [--dump a,b,...] [--keys f:keys[:len],...] */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <mgba/core/core.h>
#include <mgba/core/config.h>
#include <mgba/gba/core.h>
#include <mgba/internal/gba/gba.h>
#include <mgba-util/vfs.h>
#include <mgba/core/blip_buf.h>


static unsigned dumps[256]; static int ndump;
typedef struct { unsigned frame, len, keys; } KeyEv;
static KeyEv kev[4096]; static int nkev;

static unsigned parse_keys(const char *s) {
    unsigned k = 0;
    for (; *s && *s != ':' && *s != ','; s++) switch (*s) {
        case 'A': k |= 1; break; case 'B': k |= 2; break; case 's': k |= 4; break; case 'S': k |= 8; break;
        case 'R': k |= 16; break; case 'L': k |= 32; break; case 'U': k |= 64; break; case 'D': k |= 128; break;
        case 'r': k |= 256; break; case 'l': k |= 512; break; }
    return k;
}

static void bmp(const char *path, const uint32_t *px) {
    FILE *f = fopen(path, "wb"); unsigned char h[54] = {'B','M'}; int y, x;
    unsigned size = 54 + 240 * 3 * 160;
    h[2] = size; h[3] = size >> 8; h[4] = size >> 16; h[10] = 54; h[14] = 40; h[18] = 240; h[22] = 160; h[26] = 1; h[28] = 24;
    fwrite(h, 1, 54, f);
    for (y = 159; y >= 0; y--) for (x = 0; x < 240; x++) {
        uint32_t c = px[y * 240 + x]; unsigned char b[3] = { (c >> 16) & 255, (c >> 8) & 255, c & 255 };
        fwrite(b, 1, 3, f);
    }
    fclose(f);
}

int main(int argc, char **argv) {
    struct mCore *core = GBACoreCreate();
    static uint32_t buf[240 * 160];
    unsigned frames = atoi(argv[2]), f; const char *out = argv[3]; int i; FILE *wav = 0; unsigned wavn = 0;
    for (i = 4; i < argc; i++) {
        if (!strcmp(argv[i], "--dump")) { char *s = argv[++i]; while (*s) { dumps[ndump++] = strtoul(s, &s, 10); if (*s == ',') s++; } }
        else if (!strcmp(argv[i], "--wav")) { wav = fopen(argv[++i], "wb"); fseek(wav, 44, SEEK_SET); }
        else if (!strcmp(argv[i], "--keys")) { char *s = argv[++i]; while (*s && nkev < 4096) { KeyEv *e = &kev[nkev++]; e->frame = strtoul(s, &s, 10); e->len = 4;
            if (*s == ':') s++; e->keys = parse_keys(s); while (*s && *s != ':' && *s != ',') s++;
            if (*s == ':') e->len = strtoul(s + 1, &s, 10); if (*s == ',') s++; } }
    }
    core->init(core);
    mCoreInitConfig(core, NULL);
    core->setVideoBuffer(core, (color_t *)buf, 240);
    if (!mCoreLoadFile(core, argv[1])) { fprintf(stderr, "load failed\n"); return 1; }
    mCoreAutoloadSave(core);
    core->reset(core);
    core->setAudioBufferSize(core, 4096);
    blip_set_rates(core->getAudioChannel(core, 0), core->frequency(core), 32768);
    blip_set_rates(core->getAudioChannel(core, 1), core->frequency(core), 32768);
    for (f = 1; f <= frames; f++) {
        unsigned k = 0; int j;
        for (j = 0; j < nkev; j++) if (f >= kev[j].frame && f < kev[j].frame + kev[j].len) k |= kev[j].keys;
        core->setKeys(core, k);
        core->runFrame(core);
        if (wav) {
            static short l[8192], r[8192], lr[16384]; int n = blip_samples_avail(core->getAudioChannel(core, 0)), k;
            if (n > 8192) n = 8192;
            blip_read_samples(core->getAudioChannel(core, 0), l, n, 0);
            blip_read_samples(core->getAudioChannel(core, 1), r, n, 0);
            for (k = 0; k < n; k++) { lr[2 * k] = l[k]; lr[2 * k + 1] = r[k]; }
            fwrite(lr, 4, n, wav); wavn += n;
        }
        for (j = 0; j < ndump; j++) if (dumps[j] == f) {
            struct GBA *gba = core->board; char p[512]; FILE *o;
            sprintf(p, "%s/ref_%05u.bmp", out, f); bmp(p, buf);
            sprintf(p, "%s/refmem_%05u.bin", out, f); o = fopen(p, "wb");
            fwrite(gba->video.vram, 1, 0x18000, o);
            fwrite(gba->video.palette, 1, 0x400, o);
            fwrite(gba->video.oam.raw, 1, 0x400, o);
            fwrite(gba->memory.io, 1, 0x400, o);
            fwrite(gba->memory.wram, 1, 0x40000, o);
            fwrite(gba->memory.iwram, 1, 0x8000, o);
            fclose(o);
        }
    }
    if (wav) {
        unsigned char h[44] = {'R','I','F','F',0,0,0,0,'W','A','V','E','f','m','t',' ',16,0,0,0,1,0,2,0, 0,0x80,0,0, 0,0,2,0, 4,0,16,0,'d','a','t','a'};
        unsigned d = wavn * 4, rs = 32768 * 4; h[4] = (d + 36); h[5] = (d + 36) >> 8; h[6] = (d + 36) >> 16; h[7] = (d + 36) >> 24;
        h[28] = rs; h[29] = rs >> 8; h[30] = rs >> 16; h[40] = d; h[41] = d >> 8; h[42] = d >> 16; h[43] = d >> 24;
        fseek(wav, 0, SEEK_SET); fwrite(h, 1, 40, wav); fwrite(h + 40, 1, 4, wav); fclose(wav);
    }
    return 0;
}
