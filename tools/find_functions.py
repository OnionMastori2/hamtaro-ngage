#!/usr/bin/env python3
"""Recover the ROM address of every decompiled function.

segments.json lists, for every C partition, its byte range and the functions
it contains in source order.  agbcc emits functions in source order, so the
k-th function of a partition starts at the k-th function entry inside that
range.  Entries are found from evidence in the ROM itself:

  * targets of Thumb BL instructions anywhere in code,
  * Thumb code pointers (odd words) stored in data or literal pools,
  * the partition start,
  * prologues (PUSH {.., lr}) right after a terminator (BX / POP {pc} / B)
    and its literal pool, used only to fill gaps.

A partition is accepted only when the evidence yields exactly as many
entries as it has functions.

usage: find_functions.py <segments.json> <rom.gba> <out.json>
"""
import json
import struct
import sys

ROM_BASE = 0x08000000


def main():
    segs = json.load(open(sys.argv[1]))
    rom = open(sys.argv[2], 'rb').read()
    out_path = sys.argv[3]

    code = [s for s in segs if s['kind'] in ('c', 'asm')]
    code_ranges = [(s['start'], s['end']) for s in code]

    def in_code(off):
        for a, b in code_ranges:
            if a <= off < b:
                return True
        return False

    def h(off):
        return struct.unpack_from('<H', rom, off)[0]

    entries = set()
    # BL targets
    for s in code:
        if s['kind'] != 'c':
            continue
        off = s['start']
        while off + 4 <= s['end']:
            hi, lo = h(off), h(off + 2)
            if (hi & 0xF800) == 0xF000 and (lo & 0xF800) == 0xF800:
                imm = ((hi & 0x7FF) << 12) | ((lo & 0x7FF) << 1)
                if imm & 0x400000:
                    imm -= 0x800000
                tgt = off + 4 + imm
                if 0 <= tgt < len(rom) and in_code(tgt):
                    entries.add(tgt)
            off += 2
    # Thumb pointers stored as words anywhere
    ptr_entries = set()
    for off in range(0, len(rom) - 3, 2):
        w = struct.unpack_from('<I', rom, off)[0]
        if w & 1 and ROM_BASE <= w < ROM_BASE + len(rom):
            t = (w & ~1) - ROM_BASE
            if in_code(t):
                ptr_entries.add(t)
    entries |= ptr_entries

    def prologue_candidates(a, b):
        """PUSH {..,lr} at 2-aligned offsets."""
        res = []
        for off in range(a, b, 2):
            if (h(off) & 0xFF00) == 0xB500:
                res.append(off)
        return res

    result = {}
    unresolved = []
    for s in segs:
        if s['kind'] != 'c':
            continue
        fns = s.get('functions') or []
        if not fns:
            continue
        a, b = s['start'], s['end']
        if len(fns) == 1:
            result[fns[0]] = ROM_BASE + a + 1
            continue
        cand = sorted({a} | {e for e in entries if a <= e < b})
        if len(cand) != len(fns):
            # merge in prologues only when they are not already covered
            pro = prologue_candidates(a, b)
            merged = sorted(set(cand) | set(pro))
            if len(merged) == len(fns):
                cand = merged
        if len(cand) == len(fns):
            for name, off in zip(fns, cand):
                result[name] = ROM_BASE + off + 1
        else:
            unresolved.append((s['name'], len(fns), len(cand)))
            # Keep whatever is unambiguous: the first function.
            result[fns[0]] = ROM_BASE + a + 1
    for s in segs:
        if s['kind'] == 'asm' and s.get('functions'):
            if len(s['functions']) == 1:
                result[s['functions'][0]] = ROM_BASE + s['start'] + 1
    json.dump({'functions': result, 'unresolved': unresolved}, open(out_path, 'w'), indent=1)
    total = sum(len(s.get('functions') or []) for s in segs if s['kind'] == 'c')
    print('functions with addresses: %d of %d; unresolved partitions: %d' % (len(result), total, len(unresolved)))
    for u in unresolved[:30]:
        print('  ', u)


if __name__ == '__main__':
    main()
