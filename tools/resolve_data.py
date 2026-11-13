#!/usr/bin/env python3
"""Place the globals defined by the decomp's data .c units at their ROM
addresses and read function addresses out of the tables they contain.

For every data unit the globals are serialized to byte patterns.  Words that
hold a relocation (a pointer to a function or another symbol) are wildcards.
Each global is placed at the first position at or after the running cursor,
inside the unit's partitions, where the pattern matches the cartridge byte
for byte.  The cartridge word under a function-pointer wildcard is that
function's address.

usage: resolve_data.py <decomp-root> <irdata-dir> <rom.gba> <out.json>
"""
import glob
import json
import os
import struct
import sys

sys.path.insert(0, os.path.dirname(__file__))
import ir  # noqa: E402

ROM_BASE = 0x08000000


def serialize(v, t, out, relocs, base):
    """Append bytes of constant v (type t) to out; record (offset, name, addend, kind)."""
    size = ir.ty_size(t)
    start = len(out)
    k = v.kind
    if k in ('zero', 'null', 'undef'):
        out.extend(b'\0' * size)
    elif k == 'int':
        val = v.value & ((1 << (8 * size)) - 1) if size else 0
        out.extend(val.to_bytes(size, 'little'))
    elif k == 'float':
        if getattr(v, 'hexval', None):
            hv = int(v.hexval, 16)
            out.extend(struct.pack('<d', struct.unpack('<d', hv.to_bytes(8, 'little'))[0]) if size == 8 else
                       struct.pack('<f', struct.unpack('<d', hv.to_bytes(8, 'little'))[0]))
        else:
            out.extend(struct.pack('<f' if size == 4 else '<d', v.value))
    elif k == 'string':
        out.extend(v.data)
    elif k == 'array':
        for e in v.elems:
            serialize(e, t.elem, out, relocs, base)
    elif k == 'struct':
        offs = ir.struct_offsets(t)
        for e, ft, fo in zip(v.elems, t.fields, offs):
            while len(out) - start < fo:
                out.append(0)
            serialize(e, ft, out, relocs, base)
    elif k == 'global':
        relocs.append((len(out), v.name, 0))
        out.extend(b'\0\0\0\0')
    elif k == 'cexpr':
        name, addend = const_symbol(v)
        if name is None:
            out.extend((addend & ((1 << (8 * size)) - 1)).to_bytes(size, 'little'))
        else:
            relocs.append((len(out), name, addend))
            out.extend(b'\0' * size)
    else:
        raise ValueError('cannot serialize %r' % v)
    while len(out) - start < size:
        out.append(0)


def const_symbol(v):
    """Reduce a constant expression to (symbol, addend); symbol may be None."""
    if v.kind == 'global':
        return v.name, 0
    if v.kind == 'int':
        return None, v.value
    if v.kind in ('null', 'zero'):
        return None, 0
    if v.kind == 'cexpr':
        if v.op in ('inttoptr', 'ptrtoint', 'bitcast', 'trunc', 'zext', 'sext'):
            return const_symbol(v.args[0])
        if v.op == 'gep':
            name, add = const_symbol(v.args[0])
            add += gep_offset(v.ty2, [a.value for a in v.args[1:]])
            return name, add
        if v.op in ('add', 'sub'):
            n1, a1 = const_symbol(v.args[0])
            n2, a2 = const_symbol(v.args[1])
            if v.op == 'add' and n2 is None:
                return n1, a1 + a2
            if v.op == 'sub' and n2 is None:
                return n1, a1 - a2
    raise ValueError('unsupported constant %r' % v)


def gep_offset(src, idx):
    off = idx[0] * ir.ty_size(src)
    t = src
    for j in idx[1:]:
        if isinstance(t, ir.StructTy):
            off += ir.struct_offsets(t)[j]
            t = t.fields[j]
        else:
            off += j * ir.ty_size(t.elem)
            t = t.elem
    return off


def main():
    root, irdir, rompath, outpath = sys.argv[1:5]
    segs = json.load(open(os.path.join(root, 'config/segments.json')))
    rom = open(rompath, 'rb').read()
    by_src = {}
    for s in segs:
        if s['kind'] == 'data' and s['source'].endswith('.c'):
            by_src.setdefault(s['source'], []).append((s['start'], s['end']))
    known = json.load(open(os.path.join(root, 'config/symbols.json')))
    known = {k: (int(v, 0) if isinstance(v, str) else v) for k, v in known.items()}
    for sg in segs:
        if sg['kind'] == 'data' and sg.get('symbol'):
            known.setdefault(sg['symbol'], ROM_BASE + sg['start'])
    code_ranges = [(sg['start'], sg['end']) for sg in segs if sg['kind'] in ('c', 'asm')]

    def is_code_ptr(val):
        if not (val & 1) or not (ROM_BASE <= val < ROM_BASE + len(rom)):
            return False
        o = (val & ~1) - ROM_BASE
        return any(a <= o < b for a, b in code_ranges)

    symbols = {}
    fnaddr = {}
    fnvotes = {}
    conflicts = []
    problems = []
    for src, ranges in sorted(by_src.items()):
        path = os.path.join(irdir, src.replace('/', '_') + '.ll')
        m = ir.parse_module(path)
        ranges.sort()
        defs = [g for g in m.globals if not g.external]
        ri = 0
        cur = ranges[0][0]
        for g in defs:
            pat = bytearray()
            relocs = []
            serialize(g.init, g.ty, pat, relocs, 0)
            mask = bytearray(b'\xff' * len(pat))
            for off, name, add in relocs:
                if name is not None:
                    for q in range(4):
                        mask[off + q] = 0
            def matches(pos):
                seg = rom[pos:pos + len(pat)]
                return len(seg) == len(pat) and all((seg[q] & mask[q]) == (pat[q] & mask[q]) for q in range(len(pat)))
            found = None
            if g.name in known and known[g.name] >= ROM_BASE:
                kp = known[g.name] - ROM_BASE
                if matches(kp):
                    rj = next((j for j, (a, b) in enumerate(ranges) if a <= kp < b), ri)
                    found = (kp, rj)
                else:
                    problems.append((src, g.name, 'known address does not match'))
            al = max(1, ir.ty_align(g.ty))
            # search forward from cursor, across this unit's partitions
            for rj in range(ri, len(ranges)):
                a, b = ranges[rj]
                if found:
                    break
                pos = max(cur, a) if rj == ri else a
                pos = (pos + al - 1) // al * al
                while pos + len(pat) <= b:
                    if matches(pos):
                        found = (pos, rj)
                        break
                    pos += al
                if found:
                    break
            if not found:
                problems.append((src, g.name, len(pat)))
                continue
            pos, ri = found
            cur = pos + len(pat)
            addr = ROM_BASE + pos
            if g.name in symbols and symbols[g.name] != addr:
                conflicts.append((g.name, hex(symbols[g.name]), hex(addr)))
            symbols[g.name] = addr
            for off, name, add in relocs:
                if name is None:
                    continue
                word = struct.unpack_from('<I', rom, pos + off)[0]
                val = (word - add) & 0xFFFFFFFF
                tgt = m_function_or_global(m, name)
                if tgt == 'function':
                    if add == 0 and is_code_ptr(val):
                        fnvotes.setdefault(name, {}).setdefault(val, 0)
                        fnvotes[name][val] += 1
                else:
                    if name in symbols and symbols[name] != val:
                        conflicts.append(('ref ' + name, hex(symbols[name]), hex(val)))
                    symbols.setdefault(name, val)
    for name, votes in fnvotes.items():
        best = max(votes.items(), key=lambda kv: kv[1])[0]
        if len(votes) > 1:
            conflicts.append(('fn ' + name, {hex(k): v for k, v in votes.items()}))
        fnaddr[name] = best
    json.dump({'symbols': symbols, 'functions': fnaddr}, open(outpath, 'w'), indent=1, sort_keys=True)
    print('data symbols placed: %d, function addresses from tables: %d' % (len(symbols), len(fnaddr)))
    print('unplaced globals: %d, conflicts: %d' % (len(problems), len(conflicts)))
    for p in problems[:15]:
        print('  unplaced', p)
    for c in conflicts[:15]:
        print('  conflict', c)


def m_function_or_global(m, name):
    for f in m.functions:
        if f.name == name:
            return 'function'
    return 'global'


if __name__ == '__main__':
    main()
