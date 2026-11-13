/* rt_rom.c - the cartridge, read from the user's own .gba on demand.
 *
 * The 16 MiB image never has to fit in RAM.  It is cut into 32 KiB pages;
 * a fixed number of page slots are kept, and a page is loaded on first
 * access and evicted (clock order) when a slot is needed.  Eviction is
 * always safe: translated code holds GBA addresses, never pointers into a
 * page, so the next access simply faults the page back in.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "rt.h"
#include "rt_mem.h"

static FILE *s_file;
static u32 s_size;
static int s_slots;
static u8 *s_buf;
static s32 *s_slot_page;    /* page held by each slot, -1 if free */
static u8 *s_slot_ref;
static s32 s_page_slot[512];
static int s_hand;
u32 g_rt_rom_faults;
u32 g_rt_rom_fetches;

u32 rt_rom_size(void) { return s_size; }

int rt_rom_open(const char *path, int cache_pages)
{
    int i;
    s_file = fopen(path, "rb");
    if (!s_file) {
        rt_log("cannot open cartridge image %s", path);
        return -1;
    }
    fseek(s_file, 0, SEEK_END);
    s_size = (u32)ftell(s_file);
    if (s_size > 0x2000000u) s_size = 0x2000000u;
    if (cache_pages > (int)((s_size + RT_PAGE_MASK) >> RT_PAGE_SHIFT))
        cache_pages = (int)((s_size + RT_PAGE_MASK) >> RT_PAGE_SHIFT);
    s_slots = cache_pages;
    s_buf = (u8 *)malloc((size_t)s_slots * RT_PAGE_SIZE);
    s_slot_page = (s32 *)malloc(sizeof(s32) * (size_t)s_slots);
    s_slot_ref = (u8 *)calloc((size_t)s_slots, 1);
    if (!s_buf || !s_slot_page || !s_slot_ref) {
        rt_log("cannot allocate %d cartridge pages", s_slots);
        return -1;
    }
    for (i = 0; i < s_slots; i++) s_slot_page[i] = -1;
    for (i = 0; i < 512; i++) s_page_slot[i] = -1;
    rt_log("cartridge: %u bytes, %d x 32 KiB pages cached", s_size, s_slots);
    return 0;
}

static void set_mapping(u32 page, u8 *p)
{
    /* the cartridge appears at 0x08000000 and 0x09000000 (wait state 0) */
    u32 base0 = (0x08000000u >> RT_PAGE_SHIFT) + page;
    g_rt_rd[base0] = p;
    if (page < 0x200u) g_rt_rd[base0 + 0x200u] = 0;   /* 0x09xxxxxx: only for 32 MiB carts */
}

u8 *rt_rom_page(u32 page)
{
    s32 slot;
    if (page >= 512u || (page << RT_PAGE_SHIFT) >= s_size) return 0;
    slot = s_page_slot[page];
    if (slot >= 0) {
        s_slot_ref[slot] = 1;
        return s_buf + (size_t)slot * RT_PAGE_SIZE;
    }
    /* clock eviction */
    for (;;) {
        if (s_slot_page[s_hand] < 0 || !s_slot_ref[s_hand]) break;
        s_slot_ref[s_hand] = 0;
        s_hand = (s_hand + 1) % s_slots;
    }
    slot = s_hand;
    s_hand = (s_hand + 1) % s_slots;
    if (s_slot_page[slot] >= 0) {
        s_page_slot[s_slot_page[slot]] = -1;
        set_mapping((u32)s_slot_page[slot], 0);
    }
    {
        u8 *p = s_buf + (size_t)slot * RT_PAGE_SIZE;
        u32 off = page << RT_PAGE_SHIFT;
        u32 n = s_size - off < RT_PAGE_SIZE ? s_size - off : RT_PAGE_SIZE;
        fseek(s_file, (long)off, SEEK_SET);
        if (fread(p, 1, n, s_file) != n) rt_log("short read at %08X", off);
        if (n < RT_PAGE_SIZE) memset(p + n, 0, RT_PAGE_SIZE - n);
        s_slot_page[slot] = (s32)page;
        s_page_slot[page] = slot;
        s_slot_ref[slot] = 1;
        set_mapping(page, p);
        g_rt_rom_faults++;
        return p;
    }
}

void rt_rom_read(u32 off, void *dst, u32 n)
{
    u8 *d = (u8 *)dst;
    while (n) {
        u32 in = off & RT_PAGE_MASK;
        u32 c = RT_PAGE_SIZE - in;
        u8 *p = rt_rom_page(off >> RT_PAGE_SHIFT);
        if (c > n) c = n;
        if (p) memcpy(d, p + in, c);
        else memset(d, 0, c);
        d += c;
        off += c;
        n -= c;
    }
}

/* Copy n bytes (within one 32 KiB page) without disturbing the page cache:
 * from the cached page if it is there, else straight from the file.  The
 * sound mixer streams its samples through this, so a song does not push
 * the game's code and graphics pages out. */
void rt_rom_fetch(u32 off, void *dst, u32 n)
{
    u32 page = off >> RT_PAGE_SHIFT;
    s32 slot = page < 512u ? s_page_slot[page] : -1;
    if (off >= s_size) {
        memset(dst, 0, n);
        return;
    }
    if (n > s_size - off) {
        memset((u8 *)dst + (s_size - off), 0, n - (s_size - off));
        n = s_size - off;
    }
    if (slot >= 0) {
        memcpy(dst, s_buf + (size_t)slot * RT_PAGE_SIZE + (off & RT_PAGE_MASK), n);
        return;
    }
    fseek(s_file, (long)off, SEEK_SET);
    if (fread(dst, 1, n, s_file) != n) rt_log("short read at %08X", off);
    g_rt_rom_fetches++;
}

/* --- save RAM ------------------------------------------------------------------ */

void rt_sram_load(void)
{
    FILE *f;
    memset(g_rt_sram, 0xFF, sizeof g_rt_sram);
    if (!g_rt_cfg.save_path) return;
    f = fopen(g_rt_cfg.save_path, "rb");
    if (f) {
        size_t n = fread(g_rt_sram, 1, sizeof g_rt_sram, f);
        fclose(f);
        rt_log("save: loaded %u bytes from %s", (u32)n, g_rt_cfg.save_path);
    }
    g_rt_sram_dirty = 0;
}

void rt_sram_flush(void)
{
    FILE *f;
    if (!g_rt_cfg.save_path) {
        g_rt_sram_dirty = 0;
        return;
    }
    f = fopen(g_rt_cfg.save_path, "wb");
    if (f) {
        fwrite(g_rt_sram, 1, sizeof g_rt_sram, f);
        fclose(f);
    }
    g_rt_sram_dirty = 0;
}
