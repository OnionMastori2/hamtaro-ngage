#!/usr/bin/env python3
"""trace_tiles.py - which cartridge graphics are on screen at a spot?

For a rectangle of the GBA screen in a harness memory dump (hamtaro_host
--dump), list the BG and OBJ tiles drawn there and find each tile's bytes in
the cartridge: in a decompressed LZ10 tileset (source address + offset) or as
raw data.  Used to locate the button graphics to redraw as N-Gage keys.

usage: trace_tiles.py <decomp-root> <rom.gba> <mem.bin> x y w h
"""
import json
import os
import pickle
import struct
import sys

sys.path.insert(0, os.path.dirname(__file__))
from find_prompts import lz10  # noqa: E402

ROM = 0x08000000
CACHE = '/tmp/lz10_tilesets.pickle'


def tilesets(root, rom):
    if os.path.exists(CACHE):
        return pickle.load(open(CACHE, 'rb'))
    segs = json.load(open(os.path.join(root, 'config/segments.json')))
    out = []
    for s in segs:
        if s.get('resource_generator') in ('gba-4bpp-lz10', 'gba-8bpp-lz10'):
            d = lz10(rom, s['start'])
            if d:
                out.append((ROM + s['start'], s['name'], d))
    pickle.dump(out, open(CACHE, 'wb'))
    return out


def main():
    root, rompath, mempath = sys.argv[1:4]
    x0, y0, w, h = map(int, sys.argv[4:8])
    rom = open(rompath, 'rb').read()
    m = open(mempath, 'rb').read()
    vram, oam, io = m[:0x18000], m[0x18400:0x18800], m[0x18800:0x18C00]
    io16 = lambda o: struct.unpack_from('<H', io, o)[0]
    dispcnt = io16(0)
    tiles = {}   # bytes -> description
    for bg in range(4):
        if not (dispcnt >> (8 + bg)) & 1:
            continue
        cnt = io16(8 + 2 * bg)
        hofs, vofs = io16(0x10 + 4 * bg) & 0x1FF, io16(0x12 + 4 * bg) & 0x1FF
        cb, sb, size = ((cnt >> 2) & 3) * 0x4000, ((cnt >> 8) & 31) * 0x800, cnt >> 14
        wm = 511 if size & 1 else 255
        hm = 511 if size & 2 else 255
        for y in range(y0, y0 + h, 8):
            for x in range(x0, x0 + w, 8):
                tx, ty = (x + hofs) & wm, (y + vofs) & hm
                blk = (tx >> 8) + (ty >> 8) * (2 if size & 1 else 1)
                e = struct.unpack_from('<H', vram, sb + blk * 0x800 + ((ty >> 3) & 31) * 64 + ((tx >> 3) & 31) * 2)[0]
                t = e & 0x3FF
                data = vram[cb + t * 32: cb + t * 32 + 32]
                if any(data):
                    tiles.setdefault(data, 'BG%d tile %d (map entry %04X) at %d,%d' % (bg, t, e, x, y))
    dims = [[(8, 8), (16, 16), (32, 32), (64, 64)], [(16, 8), (32, 8), (32, 16), (64, 32)],
            [(8, 16), (8, 32), (16, 32), (32, 64)]]
    map1d = dispcnt & 0x40
    for i in range(128):
        a0, a1, a2 = struct.unpack_from('<HHH', oam, i * 8)
        sh, sz = a0 >> 14, a1 >> 14
        if sh == 3 or (not (a0 & 0x100) and (a0 & 0x200)):
            continue
        ow, oh = dims[sh][sz]
        ox, oy = a1 & 0x1FF, a0 & 0xFF
        if ox >= 240: ox -= 512
        if oy >= 160: oy -= 256
        if ox + ow <= x0 or ox >= x0 + w or oy + oh <= y0 or oy >= y0 + h:
            continue
        base = a2 & 0x3FF
        for ty in range(oh // 8):
            for tx in range(ow // 8):
                t = base + ty * ((ow // 8) if map1d else 32) + tx
                data = vram[0x10000 + t * 32: 0x10000 + t * 32 + 32]
                if any(data):
                    tiles.setdefault(data, 'OBJ %d tile %d (+%d,+%d) pal %d at %d,%d' % (i, t, tx * 8, ty * 8, a2 >> 12, ox, oy))
    sets = tilesets(root, rom)
    for data, desc in tiles.items():
        where = []
        for src, name, d in sets:
            o = d.find(data)
            while o >= 0 and len(where) < 4:
                if o % 4 == 0:
                    where.append('lz %08X+%d (%s)' % (src, o, name))
                o = d.find(data, o + 1)
        o = rom.find(data)
        while o >= 0 and len(where) < 6:
            if o % 4 == 0:
                where.append('raw %08X' % (ROM + o))
            o = rom.find(data, o + 1)
        print(desc, '->', '; '.join(where) if where else 'NOT FOUND')


if __name__ == '__main__':
    main()
