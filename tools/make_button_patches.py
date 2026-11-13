#!/usr/bin/env python3
"""make_button_patches.py - redraw the GBA button glyphs as N-Gage keys.

Input: a list of captures (harness memory dumps, hamtaro_host --dump) with
the screen rectangle of one button each and which button it is.  For every
capture the button's pixels are rebuilt from VRAM (one BG layer or the OBJs
there), the letter inside the ring is found (pixels in the ring's stroke
colour at least 3 pixels in from the outside), erased with the button's fill
colour, and the N-Gage key is drawn in its place, centred on the letter.

Output: runtime/rt_buttons_data.c - pairs of 8x8 4bpp tiles: the cartridge's
tile and its replacement.  The runtime swaps any decompressed or cartridge
tile equal to the first for the second (rt_mods.c), so every copy of a
button in every tileset is covered, also ones never captured.

usage: make_button_patches.py <captures.json> <out.c> [preview.png]

captures.json: [{"mem": "...bin", "layer": "bg1" | "obj", "rect": [x, y, w, h],
                 "button": "A" | "B"}, ...]
"""
import json
import struct
import sys

# N-Gage keys, drawn into the letter's box (a 5x6 or 6x7 design is scaled
# to the letter's height by row repetition when needed)
DIGITS = {   # by letter height; taller letters repeat the middle rows
    5: {'A': ["#####", "#....", "####.", "....#", "####."], 'B': ["#####", "....#", "...#.", "..#..", "..#.."]},
    6: {'A': ["#####", "#....", "####.", "....#", "#...#", ".###."],     # 5
        'B': ["#####", "....#", "...#.", "..#..", "..#..", "..#.."]},    # 7
}

DIMS = [[(8, 8), (16, 16), (32, 32), (64, 64)], [(16, 8), (32, 8), (32, 16), (64, 32)],
        [(8, 16), (8, 32), (16, 32), (32, 64)]]


class Screen:
    def __init__(self, path):
        m = open(path, 'rb').read()
        self.vram = bytearray(m[:0x18000])
        self.oam = m[0x18400:0x18800]
        self.io = m[0x18800:0x18C00]

    def io16(self, o):
        return struct.unpack_from('<H', self.io, o)[0]

    def bg_loc(self, bg, x, y):
        """(tile byte offset in VRAM, x in tile, y in tile) for a screen pixel"""
        cnt = self.io16(8 + 2 * bg)
        hofs, vofs = self.io16(0x10 + 4 * bg) & 0x1FF, self.io16(0x12 + 4 * bg) & 0x1FF
        cb, sb, size = ((cnt >> 2) & 3) * 0x4000, ((cnt >> 8) & 31) * 0x800, cnt >> 14
        tx, ty = (x + hofs) & (511 if size & 1 else 255), (y + vofs) & (511 if size & 2 else 255)
        blk = (tx >> 8) + (ty >> 8) * (2 if size & 1 else 1)
        e = struct.unpack_from('<H', self.vram, sb + blk * 0x800 + ((ty >> 3) & 31) * 64 + ((tx >> 3) & 31) * 2)[0]
        px, py = tx & 7, ty & 7
        if e & 0x400: px = 7 - px
        if e & 0x800: py = 7 - py
        return cb + (e & 0x3FF) * 32, px, py

    def obj_loc(self, x, y):
        map1d = self.io16(0) & 0x40
        for i in range(128):
            a0, a1, a2 = struct.unpack_from('<HHH', self.oam, i * 8)
            sh, sz = a0 >> 14, a1 >> 14
            if sh == 3 or (a0 & 0x300) == 0x200 or (a0 & 0x100):
                continue
            w, h = DIMS[sh][sz]
            ox, oy = a1 & 0x1FF, a0 & 0xFF
            if ox >= 240: ox -= 512
            if oy >= 160: oy -= 256
            if not (ox <= x < ox + w and oy <= y < oy + h):
                continue
            sx, sy = x - ox, y - oy
            if a1 & 0x1000: sx = w - 1 - sx
            if a1 & 0x2000: sy = h - 1 - sy
            t = (a2 & 0x3FF) + (sy // 8) * ((w // 8) if map1d else 32) + sx // 8
            off = 0x10000 + t * 32
            v = self.vram[off + (sy & 7) * 4 + (sx & 7) // 2]
            if (v >> 4 if sx & 1 else v & 15):
                return off, sx & 7, sy & 7
        return None

    def objs_in(self, x0, y0, w, h):
        """OAM entries overlapping a rect: (index, x, y, w, h, hflip, base tile)"""
        out = []
        for i in range(128):
            a0, a1, a2 = struct.unpack_from('<HHH', self.oam, i * 8)
            sh, sz = a0 >> 14, a1 >> 14
            if sh == 3 or (a0 & 0x300) == 0x200 or (a0 & 0x100):
                continue
            ow, oh = DIMS[sh][sz]
            ox, oy = a1 & 0x1FF, a0 & 0xFF
            if ox >= 240: ox -= 512
            if oy >= 160: oy -= 256
            if ox + ow <= x0 or ox >= x0 + w or oy + oh <= y0 or oy >= y0 + h:
                continue
            out.append((i, ox, oy, ow, oh, bool(a1 & 0x1000), a2 & 0x3FF))
        return out

    def get(self, loc):
        off, px, py = loc
        v = self.vram[off + py * 4 + px // 2]
        return v >> 4 if px & 1 else v & 15

    def put(self, loc, c):
        off, px, py = loc
        o = off + py * 4 + px // 2
        v = self.vram[o]
        self.vram[o] = (v & 0x0F) | (c << 4) if px & 1 else (v & 0xF0) | c


def redraw(scr, cap):
    x0, y0, w, h = cap['rect']
    layer = cap['layer']
    locs = {}
    for y in range(y0, y0 + h):
        for x in range(x0, x0 + w):
            loc = scr.obj_loc(x, y) if layer == 'obj' else scr.bg_loc(int(layer[2:]), x, y)
            if loc:
                locs[(x, y)] = loc
    grid = {(x, y): (scr.get(locs[(x, y)]) if (x, y) in locs else 0)
            for y in range(y0, y0 + h) for x in range(x0, x0 + w)}
    # distance from the transparent outside (8-neighbourhood); "outside" lists
    # colours that count as outside when the button sits on a panel
    outside = set(cap.get('outside', [0]))
    dist = {p: 0 for p, c in grid.items() if c in outside}
    for x in range(x0 - 1, x0 + w + 1):
        dist[(x, y0 - 1)] = dist[(x, y0 + h)] = 0
    for y in range(y0 - 1, y0 + h + 1):
        dist[(x0 - 1, y)] = dist[(x0 + w, y)] = 0
    frontier = list(dist)
    d = 0
    while frontier:
        d += 1
        nxt = []
        for (x, y) in frontier:
            for dx in (-1, 0, 1):
                for dy in (-1, 0, 1):
                    q = (x + dx, y + dy)
                    if q in grid and q not in dist:
                        dist[q] = d
                        nxt.append(q)
        frontier = nxt
    ring = [grid[p] for p in grid if dist.get(p) == 1]
    stroke = cap['stroke'] if 'stroke' in cap else max(set(ring), key=ring.count)
    strokes = cap.get('strokes', [stroke])   # letter colours (stroke + anti-aliasing)
    inner = [p for p in grid if dist.get(p, 0) >= cap.get('depth', 3)]
    letter = [p for p in inner if grid[p] in strokes]
    if 'letter_box' in cap:      # [x0, y0, x1, y1] inclusive: where the letter is
        bx0, by0, bx1, by1 = cap['letter_box']
        letter = [p for p in letter if bx0 <= p[0] <= bx1 and by0 <= p[1] <= by1]
    lx0, lx1 = min(p[0] for p in letter), max(p[0] for p in letter)
    ly0, ly1 = min(p[1] for p in letter), max(p[1] for p in letter)
    # erase: each letter pixel takes the colour most of its non-letter
    # neighbours have (keeps the button's shading)
    letter_set = set(letter)
    for p in letter:
        near = [grid[(p[0] + dx, p[1] + dy)] for dx in (-1, 0, 1) for dy in (-1, 0, 1)
                if (p[0] + dx, p[1] + dy) in grid and (p[0] + dx, p[1] + dy) not in letter_set
                and dist.get((p[0] + dx, p[1] + dy), 0) >= 2 and grid[(p[0] + dx, p[1] + dy)] not in strokes]
        fills = near or [grid[q] for q in inner if q not in letter_set]
        scr.put(locs[p], max(set(fills), key=fills.count))
    lh = max(ly1 - ly0 + 1, 5)     # tiny letters: the digit takes one row more
    digit = DIGITS[min(lh, 6)][cap['button']]
    dh, dw = len(digit), len(digit[0])
    # rows: repeat the middle rows if the letter is taller than the design
    rows = list(range(dh))
    while len(rows) < lh:
        rows.insert(len(rows) // 2, rows[len(rows) // 2])
    bx = (lx0 + lx1 + 1) // 2 - dw // 2
    for ry, r in enumerate(rows[:lh]):
        for rx in range(dw):
            if digit[r][rx] == '#':
                p = (bx + rx, ly0 + ry)
                if p in locs:
                    scr.put(locs[p], stroke)
    return set(l[0] for l in locs.values())


# the bold label font of the dictionary's key plates: 7 rows, 2-pixel strokes
PLATE_FONT = {
    'L': ["66..", "66..", "66..", "66..", "66..", "66..", "6666"],
    '-': ["...", "...", "...", "666", "...", "...", "..."],
    'S': ["7666", "66..", "667.", "7667", ".766", "..66", "6667"],
    'O': [".666.", "66.66", "66.66", "66.66", "66.66", "66.66", ".666."],
    'F': ["6666", "66..", "66..", "666.", "66..", "66..", "66.."],
    'T': ["6666", ".66.", ".66.", ".66.", ".66.", ".66.", ".66."],
    '*': [".....", "6.6.6", ".666.", "66666", ".666.", "6.6.6", "....."],
    ' ': ["..", "..", "..", "..", "..", "..", ".."],
    'K': ["66.66", "66.66", "6666.", "666..", "6666.", "66.66", "66.66"],
    'E': ["6666", "66..", "66..", "6666", "66..", "66..", "6666"],
    'Y': ["66..66", "66..66", ".6666.", "..66..", "..66..", "..66..", "..66.."],
}


def plate_text(scr, cap):
    """replace a word on a plate: letter pixels (cap['erase'] colours) take
    the pattern of the layer behind; the new text is drawn centred on it"""
    x0, y0, w, h = cap['rect']
    bg, behind = int(cap['layer'][2:]), int(cap['behind'][2:])
    erase = cap['erase']
    tiles = set()
    for y in range(y0, y0 + h):
        for x in range(x0, x0 + w):
            loc = scr.bg_loc(bg, x, y)
            tiles.add(loc[0])
            if scr.get(loc) in erase:
                scr.put(loc, scr.get(scr.bg_loc(behind, x, y)))
    text = cap['text']
    glyphs = [PLATE_FONT[c] for c in text]
    tw = sum(len(g[0]) for g in glyphs) + len(glyphs) - 1
    x = x0 + (w - tw) // 2
    for g in glyphs:
        for ry, row in enumerate(g):
            for rx, c in enumerate(row):
                if c != '.':
                    loc = scr.bg_loc(bg, x + rx, y0 + ry)
                    tiles.add(loc[0])
                    scr.put(loc, int(c, 16))
        x += len(g[0]) + 1
    return tiles


def mirrored(scr, cap, before):
    """A button made of an OBJ and its hflipped twin sharing tiles: draw the
    digit over the whole button on a canvas, then split it into the left
    sprite's tiles (patched in place) and the twin's own (unflipped) tiles."""
    x0, y0, w, h = cap['rect']
    objs = scr.objs_in(x0, y0, w, h)
    left = [o for o in objs if not o[5]][0]
    twin = [o for o in objs if o[5] and o[6] == left[6]][0]
    # canvas of the composed button (palette indices)
    canvas = {}
    for o in (left, twin):   # the lower OAM index (left) wins where they overlap
        i, ox, oy, ow, oh, hf, base = o
        for y in range(oh):
            for x in range(ow):
                sx = ow - 1 - x if hf else x
                t = base + (y // 8) * 32 + sx // 8 if not (scr.io16(0) & 0x40) else base + (y // 8) * (ow // 8) + sx // 8
                off = 0x10000 + t * 32
                v = scr.get((off, sx & 7, y & 7))
                if v and (ox + x, oy + y) not in canvas:
                    canvas[(ox + x, oy + y)] = v
    class Canvas:
        pass
    # reuse redraw() on a fake screen backed by the canvas
    fake = Screen.__new__(Screen)
    fake.vram, fake.oam, fake.io = bytearray(0x18000), scr.oam, scr.io
    store = dict(canvas)
    fake.obj_loc = lambda x, y: ((x, y),) if (x, y) in store else None
    fake.get = lambda loc: store[loc[0]]
    def put(loc, c):
        store[loc[0]] = c
    fake.put = put
    redraw(fake, cap)
    # split: left sprite tiles from the canvas, twin tiles likewise (unflipped)
    def tiles_of(o):
        i, ox, oy, ow, oh, hf, base = o
        data = bytearray(ow * oh // 2)
        for y in range(oh):
            for x in range(ow):
                v = store.get((ox + x, oy + y), 0)
                t = (y // 8) * (ow // 8) + x // 8
                b = t * 32 + (y & 7) * 4 + (x & 7) // 2
                data[b] |= v << 4 if x & 1 else v
        return bytes(data)
    lt, rt = tiles_of(left), tiles_of(twin)
    i, ox, oy, ow, oh, hf, base = left
    map1d = scr.io16(0) & 0x40
    for k in range(ow * oh // 64):
        ty, tx = k // (ow // 8), k % (ow // 8)
        t = base + ty * ((ow // 8) if map1d else 32) + tx
        frm = before[0x10000 + t * 32: 0x10000 + t * 32 + 32]
        MIRROR_PAIRS[frm] = lt[k * 32:(k + 1) * 32]
    return (ow // 8, oh // 8, lt, rt, b'')


MIRROR_PAIRS = {}


def main():
    caps = json.load(open(sys.argv[1]))
    pairs = {}
    conflicts = set()
    groups = []
    previews = []
    mirrors = []
    for cap in caps:
        scr = Screen(cap['mem'])
        before = bytes(scr.vram)
        if cap.get('mirrored'):
            mirrors.append(mirrored(scr, cap, before))
            continue
        tiles = plate_text(scr, cap) if 'text' in cap else redraw(scr, cap)
        for off in sorted(tiles):
            old, new = before[off:off + 32], bytes(scr.vram[off:off + 32])
            if old != new:
                if old in pairs and pairs[old] != new:
                    print('tile redrawn two ways (resolved by its group) in', cap['mem'], cap['rect'])
                    conflicts.add(old)
                pairs[old] = new
        if tiles and cap['layer'] == 'obj':
            # a 16x16 sprite: its four tiles in reading order (2D or 1D mapping)
            lo = min(tiles)
            for offs in ((lo, lo + 32, lo + 0x400, lo + 0x420), (lo, lo + 32, lo + 64, lo + 96)):
                if set(tiles) <= set(offs):
                    g = (b''.join(before[o:o + 32] for o in offs), b''.join(bytes(scr.vram[o:o + 32]) for o in offs))
                    if g not in groups:
                        groups.append(g)
                    break
        previews.append((cap, before, bytes(scr.vram)))
    pairs.update(MIRROR_PAIRS)
    for c in conflicts:
        del pairs[c]
    lines = ['/* generated by tools/make_button_patches.py from screen captures: GBA',
             ' * button tiles (circled A/B) and their redraws as N-Gage keys (5/7).',
             ' * Any decompressed or cartridge tile equal to "from" becomes "to". */',
             '#include "rt_types.h"', '',
             'typedef struct { u8 from[32]; u8 to[32]; } rt_button_tile;',
             'const rt_button_tile g_rt_button_tiles[] = {']
    for old, new in sorted(pairs.items()):
        lines.append('    { { %s },' % ', '.join('0x%02X' % b for b in old))
        lines.append('      { %s } },' % ', '.join('0x%02X' % b for b in new))
    lines.append('};')
    lines.append('const u32 g_rt_button_tile_count = %d;' % len(pairs))
    lines += ['',
              '/* 16x16 sprite buttons, tiles in reading order: a tile two buttons share',
              ' * in the cartridge (but not in their redraws) is fixed per sprite. */',
              'typedef struct { u8 ntiles; u8 from[128]; u8 to[128]; } rt_button_group;',
              'const rt_button_group g_rt_button_groups[] = {']
    for old, new in groups:
        lines.append('    { %d, { %s },' % (len(old) // 32, ', '.join('0x%02X' % b for b in old)))
        lines.append('      { %s } },' % ', '.join('0x%02X' % b for b in new))
    lines.append('    { 0, { 0 }, { 0 } }')
    lines.append('};')
    lines += ['',
              '/* Buttons drawn as a sprite and its horizontal mirror (one set of tiles):',
              ' * "left" is the redrawn left half (also in the table above, as the "to" of',
              ' * its tiles); a mirrored OBJ showing it is pointed at spare tiles holding',
              ' * "right", drawn unflipped. */',
              'typedef struct { u8 w, h; u8 left[64]; u8 right[64]; } rt_button_mirror;',
              'const rt_button_mirror g_rt_button_mirrors[] = {']
    for (w8, h8, left, right, frm) in mirrors:
        for k in range(0, len(left), 32):
            pairs_from, pairs_to = frm[k:k + 32], left[k:k + 32]
        lines.append('    { %d, %d, { %s },' % (w8, h8, ', '.join('0x%02X' % b for b in left.ljust(64, b'\0'))))
        lines.append('      { %s } },' % ', '.join('0x%02X' % b for b in right.ljust(64, b'\0')))
    lines.append('    { 0, 0, { 0 }, { 0 } }')
    lines.append('};')
    open(sys.argv[2], 'w').write('\n'.join(lines) + '\n')
    print('tiles:', len(pairs))
    if len(sys.argv) > 3:
        from PIL import Image
        img = Image.new('L', (40 * len(previews), 20), 0)
        for i, (cap, before, after) in enumerate(previews):
            x0, y0, w, h = cap['rect']
            for k, vr in enumerate((before, after)):
                scr = Screen(cap['mem'])
                scr.vram = bytearray(vr)
                for y in range(min(h, 20)):
                    for x in range(min(w, 20)):
                        loc = scr.obj_loc(x0 + x, y0 + y) if cap['layer'] == 'obj' else \
                            scr.bg_loc(int(cap['layer'][2:]), x0 + x, y0 + y)
                        if loc:
                            img.putpixel((i * 40 + k * 20 + x, y), 40 + scr.get(loc) * 13)
        img.resize((img.width * 6, img.height * 6), 0).save(sys.argv[3])


if __name__ == '__main__':
    main()
