#!/usr/bin/env python3
"""Find the GBA button glyphs (circled A/B, ...) in the cartridge's tilesets
and build the patch table that redraws them as N-Gage keys.

Every 4bpp LZ10 tileset of the cartridge is decompressed and laid out as an
atlas (tiles n, n+1 side by side; row width tried 16..32).  The circled
button glyph has a fixed outline: a 9x10 ring of one colour around a filled
interior.  Each match is classified by its letter and redrawn with the key
the N-Gage uses (A->5, B->7, START->0, SELECT->*); only interior letter
pixels change, so outline, shading and neighbouring art stay as they are.

Output: runtime/rt_prompts_data.c - for each compressed source address, the
byte offsets in its decompressed output and the new nibble values.

usage: find_prompts.py <decomp-root> <rom.gba> <out.c>
"""
import json
import os
import struct
import sys

ROM = 0x08000000

# the circle as found on the language screen (1 = outline, . = interior)
RING = [
    "  11111  ",
    " 1.....1 ",
    "1.......1",
    "1.......1",
    "1.......1",
    "1.......1",
    "1.......1",
    "1.......1",
    " 1.....1 ",
    "  11111  ",
]
W, H = 9, 10
# letters drawn in the 5x6 box at columns 2..6, rows 2..7
LETTERS = {
    'A': [" ### ", "#   #", "#   #", "#####", "#   #", "#   #"],
    'B': ["#### ", "#   #", "#### ", "#   #", "#   #", "#### "],
}
KEYS = {
    'A': ["#####", "#    ", "#### ", "    #", "    #", "#### "],   # 5
    'B': ["#####", "    #", "   # ", "  #  ", "  #  ", "  #  "],   # 7
}


def lz10(rom, off):
    if rom[off] != 0x10:
        return None
    size = rom[off + 1] | (rom[off + 2] << 8) | (rom[off + 3] << 16)
    out = bytearray()
    i = off + 4
    while len(out) < size:
        flags = rom[i]
        i += 1
        for bit in range(8):
            if len(out) >= size:
                break
            if flags & (0x80 >> bit):
                b1, b2 = rom[i], rom[i + 1]
                i += 2
                n = (b1 >> 4) + 3
                disp = ((b1 & 15) << 8 | b2) + 1
                for _ in range(n):
                    out.append(out[-disp])
            else:
                out.append(rom[i])
                i += 1
    return bytes(out[:size])


def pixel(data, tiles_w, x, y):
    t = (y // 8) * tiles_w + (x // 8)
    o = t * 32 + (y % 8) * 4 + (x % 8) // 2
    if o >= len(data):
        return None, None
    v = data[o]
    return (v >> 4 if x & 1 else v & 15), o


def scan(data):
    """yield (tiles_w, x, y, outline, letter) for circled glyphs"""
    ntiles = len(data) // 32
    found = []
    for tiles_w in (2, 4, 8, 16, 20, 32):
        rows = (ntiles + tiles_w - 1) // tiles_w
        for y in range(rows * 8 - H + 1):
            for x in range(tiles_w * 8 - W + 1):
                c0, _ = pixel(data, tiles_w, x + 2, y)
                if not c0:
                    continue
                ok = True
                interior = set()
                for ry in range(H):
                    for rx in range(W):
                        want = RING[ry][rx]
                        c, _ = pixel(data, tiles_w, x + rx, y + ry)
                        if c is None:
                            ok = False
                            break
                        if want == '1' and c != c0:
                            ok = False
                            break
                        if want == '.':
                            if c == c0 or c == 0:
                                ok = False
                                break
                            interior.add(c)
                    if not ok:
                        break
                if not ok or len(interior) < 2:
                    continue
                # letter strokes: the interior colour whose pixels in the 5x6 box
                # best match one of the known letters
                best = (99, None, None, None)
                for cand in interior:
                    grid = [''.join('#' if pixel(data, tiles_w, x + rx, y + ry)[0] == cand else ' '
                                    for rx in range(2, 7)) for ry in range(2, 8)]
                    for name, pat in LETTERS.items():
                        diff = sum(a != b for ra, rb in zip(grid, pat) for a, b in zip(ra, rb))
                        if diff < best[0]:
                            best = (diff, name, cand, grid)
                diff, letter, stroke, grid = best
                if diff > 4:
                    letter = None
                found.append((tiles_w, x, y, c0, stroke, letter, grid))
        if found:
            return found
    return found


def main():
    root, rompath, outpath = sys.argv[1:4]
    rom = open(rompath, 'rb').read()
    segs = json.load(open(os.path.join(root, 'config/segments.json')))
    patches = {}
    report = []
    for s in segs:
        if s.get('resource_generator') != 'gba-4bpp-lz10':
            continue
        data = lz10(rom, s['start'])
        if not data:
            continue
        hits = scan(data)
        for tiles_w, x, y, c0, stroke, letter, grid in hits:
            report.append((hex(ROM + s['start']), s['name'], tiles_w, x, y, letter, grid))
            if letter not in KEYS:
                continue
            new = KEYS[letter]
            edits = patches.setdefault(ROM + s['start'], {})
            # fill colour per row: the interior colour that is not the stroke
            for ry in range(6):
                fills = [pixel(data, tiles_w, x + rx, y + ry + 2)[0] for rx in range(1, 8)]
                fills = [c for c in fills if c not in (stroke, c0)]
                fill = max(set(fills), key=fills.count) if fills else stroke
                for rx in range(5):
                    c_old, o = pixel(data, tiles_w, x + rx + 2, y + ry + 2)
                    c_new = stroke if new[ry][rx] == '#' else (fill if c_old == stroke else c_old)
                    if c_new != c_old:
                        hi = (x + rx + 2) & 1
                        edits[(o, hi)] = c_new
    for r in report:
        print(*r[:6])
        for g in r[6]:
            print('      |%s|' % g)
    lines = ['/* generated by tools/find_prompts.py from the cartridge: N-Gage key glyphs',
             ' * replacing the GBA button glyphs.  Each entry: compressed source address,',
             ' * byte offset in the decompressed data, nibble (0 low, 1 high), new value. */',
             '#include "rt_types.h"', '',
             'typedef struct { u32 src; u32 offset; u8 high; u8 value; } rt_prompt_edit;',
             'const rt_prompt_edit g_rt_prompt_edits[] = {']
    n = 0
    for src in sorted(patches):
        for (o, hi), v in sorted(patches[src].items()):
            lines.append('    { 0x%08Xu, %du, %d, %d },' % (src, o, hi, v))
            n += 1
    lines.append('    { 0, 0, 0, 0 }')
    lines.append('};')
    open(outpath, 'w').write('\n'.join(lines) + '\n')
    print('glyphs found: %d, patched sources: %d, pixel edits: %d' % (len(report), len(patches), n))


if __name__ == '__main__':
    main()
