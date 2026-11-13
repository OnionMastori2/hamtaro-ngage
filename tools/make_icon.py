#!/usr/bin/env python3
"""Menu icon for the N-Gage: a picture with transparency -> hamtaro.mbm.

The .aif (genaif) takes its icons from a Symbian multi-bitmap file: for each
size a colour bitmap followed by its mask.  Laid out like the N-Gage games'
own icons (SonicN, Rayman 3, Super Monkey Ball): 44x44 first, then 42x29;
colour in 12 bits, mask 1 bit with black = shown, white = transparent.  The
picture is fitted into each, centred.  Bitmaps are written uncompressed.

usage: make_icon.py icon.png out.mbm
"""
import struct
import sys

from PIL import Image


def fit(im, W, H):
    w, h = im.size
    s = min(W / w, H / h)
    nw, nh = max(1, round(w * s)), max(1, round(h * s))
    r = im.resize((nw, nh), Image.LANCZOS)
    c = Image.new('RGBA', (W, H), (0, 0, 0, 0))
    c.paste(r, ((W - nw) // 2, (H - nh) // 2), r)
    return c


def bitmap(w, h, bpp, colour, rows):
    bits = 16 if bpp == 12 else bpp          # 12-bit pixels are stored in 16
    stride = ((w * bits + 31) // 32) * 4
    data = b''.join(r.ljust(stride, b'\0') for r in rows)
    hdr = struct.pack('<10I', 40 + len(data), 40, w, h, 0, 0, bpp, colour, 0, 0)
    return hdr + data


def colour_rows(img):
    w, h = img.size
    px = img.load()
    rows = []
    for y in range(h):
        r = bytearray()
        for x in range(w):
            R, G, B, A = px[x, y]
            if A < 128:
                R = G = B = 0
            v = ((R >> 4) << 8) | ((G >> 4) << 4) | (B >> 4)
            r += struct.pack('<H', v)
        rows.append(bytes(r))
    return rows


def mask_rows(img):
    """1 bit per pixel, first pixel in the low bit; set = transparent."""
    w, h = img.size
    px = img.load()
    rows = []
    for y in range(h):
        r = bytearray((w + 7) // 8)
        for x in range(w):
            if px[x, y][3] < 128:
                r[x // 8] |= 1 << (x % 8)
        rows.append(bytes(r))
    return rows


def main():
    src, out = sys.argv[1:3]
    im = Image.open(src).convert('RGBA')
    im = im.crop(im.getbbox())
    bitmaps = []
    for W, H in ((44, 44), (42, 29)):
        c = fit(im, W, H)
        bitmaps.append(bitmap(W, H, 12, 1, colour_rows(c)))
        bitmaps.append(bitmap(W, H, 1, 0, mask_rows(c)))
    body = b''
    offsets = []
    pos = 20
    for b in bitmaps:
        offsets.append(pos)
        body += b
        pos += len(b)
    trailer = struct.pack('<I', len(bitmaps)) + b''.join(struct.pack('<I', o) for o in offsets)
    head = struct.pack('<4I', 0x10000037, 0x10000042, 0, 0x47396439) + struct.pack('<I', pos)
    open(out, 'wb').write(head + body + trailer)


if __name__ == '__main__':
    main()
