#!/usr/bin/env python3
"""view_patch.py - let the game's camera work with the N-Gage view size.

The field camera centres the tracked render slot (Hamtaro) on an origin
set per map in map_descriptor (0x69, 0x41 = 105, 65 for a 240x160 screen)
and clamps world layers to the room with the screen size written as
0xF0 / 0xA0.  This rewrites those constants to the runtime's
g_rt_cam_w / g_rt_cam_h (RT_CAM_W / RT_CAM_H, which also note that the
camera ran this frame) so the zoom view (176x208) gets a camera that
centres on Hamtaro and stops at the room edges exactly like the original
does on a GBA.  Idempotent; run after ir2c.py.

    python3 tools/view_patch.py gen/c
"""
import os
import sys

PATCHES = {
    "src_graphics_background_clamp.c": [
        ("(u32)0xA0u - ", "(u32)RT_CAM_H - "),
        ("(u32)0xF0u - ", "(u32)RT_CAM_W - "),
    ],
    "src_graphics_background_offset.c": [
        ("(u32)0xF0u - ", "(u32)RT_CAM_W - "),
        ("(u32)0xA0u - ", "(u32)RT_CAM_H - "),
    ],
    "src_actors_map_descriptor.c": [
        ("ST16(0x3002DBCu, 0x69u);", "ST16(0x3002DBCu, RT_CAM_ORIGIN_X);"),
        ("ST16(0x3002DBEu, 0x41u);", "ST16(0x3002DBEu, RT_CAM_ORIGIN_Y);"),
    ],
}


def main():
    gen = sys.argv[1] if len(sys.argv) > 1 else "gen/c"
    for name, subs in PATCHES.items():
        path = os.path.join(gen, name)
        src = open(path).read()
        for old, new in subs:
            if new in src and old not in src:
                continue
            if old not in src:
                sys.exit("%s: pattern not found: %s" % (name, old))
            src = src.replace(old, new)
        open(path, "w").write(src)
        print("patched", name)


if __name__ == "__main__":
    main()
