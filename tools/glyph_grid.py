#!/usr/bin/env python3
"""glyph_grid.py - print the palette indices of the BG or OBJ pixels in a
screen rectangle of a harness memory dump, with the tiles they come from.

usage: glyph_grid.py <mem.bin> bg|obj <layer-or-oam-index> x y w h
"""
import struct
import sys


def bg_pixel(vram, io16, bg, x, y):
    cnt = io16(8 + 2 * bg)
    hofs, vofs = io16(0x10 + 4 * bg) & 0x1FF, io16(0x12 + 4 * bg) & 0x1FF
    cb, sb, size = ((cnt >> 2) & 3) * 0x4000, ((cnt >> 8) & 31) * 0x800, cnt >> 14
    wm = 511 if size & 1 else 255
    hm = 511 if size & 2 else 255
    tx, ty = (x + hofs) & wm, (y + vofs) & hm
    blk = (tx >> 8) + (ty >> 8) * (2 if size & 1 else 1)
    ea = sb + blk * 0x800 + ((ty >> 3) & 31) * 64 + ((tx >> 3) & 31) * 2
    e = struct.unpack_from('<H', vram, ea)[0]
    px, py = tx & 7, ty & 7
    if e & 0x400: px = 7 - px
    if e & 0x800: py = 7 - py
    t = e & 0x3FF
    o = cb + t * 32 + py * 4 + px // 2
    v = vram[o]
    return (v >> 4 if px & 1 else v & 15), e


def main():
    m = open(sys.argv[1], 'rb').read()
    kind, which = sys.argv[2], int(sys.argv[3])
    x0, y0, w, h = map(int, sys.argv[4:8])
    vram, io = m[:0x18000], m[0x18800:0x18C00]
    io16 = lambda o: struct.unpack_from('<H', io, o)[0]
    entries = set()
    for y in range(y0, y0 + h):
        row = ''
        for x in range(x0, x0 + w):
            v, e = bg_pixel(vram, io16, which, x, y)
            entries.add(e)
            row += '.' if v == 0 else '%x' % v
        print(row)
    print('map entries:', ' '.join('%04X' % e for e in sorted(entries)))


if __name__ == '__main__':
    main()
