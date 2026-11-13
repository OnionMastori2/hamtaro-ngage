#!/usr/bin/env python3
"""Merge every source of addresses into gen/addresses.json.

Globals:  config/symbols.json, data-segment symbols, resolve_data placements.
Functions (priority order):
  1. addresses read from tables in the cartridge (resolve_data),
  2. single-function partitions (address = partition start),
  3. partitions whose entry evidence count equals the function count
     (find_functions), but only when consistent with 1,
  4. a function name ending in its own hex offset (e.g. ...Preset2DB30)
     when the offset lies inside the function's partition.
Also reports which functions are used as values (address taken) in the
code IR but still have no address.

usage: merge_addresses.py <decomp-root> <gen-dir>
"""
import glob
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(__file__))
import ir  # noqa: E402

ROM_BASE = 0x08000000

# Data the decomp declares but defines only in assembly that no table points
# at, so resolve_data cannot place it.  Checked against the cartridge.
EXTRA_GLOBALS = {
    'gAudioSongRecordsAE34': 0x086EAE34,    # m4a song table {header, ms, me}
}


def main():
    root, gen = sys.argv[1:3]
    segs = json.load(open(os.path.join(root, 'config/segments.json')))
    syms = json.load(open(os.path.join(root, 'config/symbols.json')))
    syms = {k: (int(v, 0) if isinstance(v, str) else v) for k, v in syms.items()}
    for s in segs:
        if s['kind'] == 'data' and s.get('symbol'):
            syms.setdefault(s['symbol'], ROM_BASE + s['start'])
    dsym = json.load(open(os.path.join(gen, 'data_symbols.json')))
    for k, v in dsym['symbols'].items():
        syms.setdefault(k, v)
    for k, v in EXTRA_GLOBALS.items():
        syms.setdefault(k, v)

    fn_seg = {}
    for s in segs:
        if s['kind'] in ('c', 'asm'):
            for f in s.get('functions') or []:
                fn_seg[f] = s
    fns = {}
    src = {}
    for k, v in dsym['functions'].items():
        fns[k] = v
        src[k] = 'table'
    for s in segs:
        if s['kind'] in ('c', 'asm') and len(s.get('functions') or []) == 1:
            f = s['functions'][0]
            if f not in fns:
                fns[f] = ROM_BASE + s['start'] + 1
                src[f] = 'partition'
    heur = json.load(open(os.path.join(gen, 'functions.json')))
    unresolved = {u[0] for u in heur['unresolved']}
    for s in segs:
        if s['kind'] != 'c' or s['name'] in unresolved or len(s.get('functions') or []) < 2:
            continue
        ok = all(heur['functions'].get(f) == fns[f] for f in s['functions'] if f in fns)
        if ok:
            for f in s['functions']:
                if f not in fns and f in heur['functions']:
                    fns[f] = heur['functions'][f]
                    src[f] = 'evidence'
    for f, s in fn_seg.items():
        if f in fns:
            continue
        m = re.search(r'([0-9A-F]{5,6})(?:Asm)?$', f)
        if m:
            off = int(m.group(1), 16)
            if s['start'] <= off < s['end']:
                fns[f] = ROM_BASE + off + 1
                src[f] = 'name'

    # ARM routine in asm/startup.s, right after _start and its two literals
    fns['irq_dispatch'] = 0x080000FC
    src['irq_dispatch'] = 'startup.s'

    # functions used as values in the code IR
    taken = set()
    defined = set()
    for path in glob.glob(os.path.join(gen, 'ir', '*.ll')):
        text = open(path).read()
        for m in re.finditer(r'^define [^@]*@([\w.$]+)\(', text, re.M):
            defined.add(m.group(1))
        for line in text.split('\n'):
            line_s = line.strip()
            for m in re.finditer(r'@([\w.$]+)', line_s):
                name = m.group(1)
                if name.startswith('llvm.'):
                    continue
                # a call's callee is "call ... @name(" — anything else is a use as a value
                before = line_s[:m.start()]
                after = line_s[m.end():m.end() + 1]
                if re.search(r'\bcall\b', before) and after == '(' and before.rstrip().split()[-1:] != [','] \
                        and not re.search(r'\(\s*$|,\s*$', before):
                    continue
                if line_s.startswith('declare') or line_s.startswith('define'):
                    continue
                taken.add(name)
    fn_names = set(fn_seg) | defined
    taken_fns = sorted(n for n in taken if n in fn_names)
    missing = [n for n in taken_fns if n not in fns]
    out = {'globals': syms, 'functions': fns, 'function_source': src,
           'address_taken': taken_fns, 'address_taken_missing': missing}
    json.dump(out, open(os.path.join(gen, 'addresses.json'), 'w'), indent=1, sort_keys=True)
    total = len(fn_seg)
    print('globals: %d' % len(syms))
    print('functions with addresses: %d of %d' % (len(fns), total))
    print('address-taken functions in code: %d, without address: %d' % (len(taken_fns), len(missing)))
    print('  ', missing[:40])


if __name__ == '__main__':
    main()
