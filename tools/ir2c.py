#!/usr/bin/env python3
"""Translate the decomp's LLVM IR into portable C that keeps GBA addresses.

Every pointer in the generated code is a 32-bit GBA address (u32).  Memory
is touched only through LD8/LD16/LD32/LD64 and ST8/ST16/ST32/ST64, which the
runtime maps onto its own buffers (RAM, VRAM, the I/O shadow, cartridge
pages loaded on demand).  Globals become their cartridge/RAM addresses,
functions used as values become their cartridge addresses, and indirect
calls go through rt_fn(), which maps a cartridge address back to the
translated function.

The output needs only a C89 compiler with 'long long' plus <stdint.h>-style
types from rt_types.h, so it builds with GCC 4.6 (ngage-toolchain), MSVC and
host GCC/Clang alike.

usage: ir2c.py <gen-dir> <out-dir>
   reads <gen-dir>/ir/*.ll and <gen-dir>/addresses.json
"""
import glob
import json
import os
import re
import sys

sys.path.insert(0, os.path.dirname(__file__))
import ir  # noqa: E402

NATIVE_DATA_BASE = 0x0A000000   # globals that only exist in translated units
SYNTH_FN_BASE = 0x0B000001      # functions with no known cartridge address


class TranslateError(Exception):
    pass


def san(name):
    return re.sub(r'[^A-Za-z0-9_]', lambda m: '_%02X' % ord(m.group()), name)


def cty(t):
    if isinstance(t, ir.IntTy):
        if t.bits <= 8:
            return 'u8'
        if t.bits <= 16:
            return 'u16'
        if t.bits <= 32:
            return 'u32'
        if t.bits <= 64:
            return 'u64'
    if isinstance(t, ir.PtrTy):
        return 'u32'
    if isinstance(t, ir.FloatTy):
        return 'float' if t.bits == 32 else 'double'
    if isinstance(t, ir.VoidTy):
        return 'void'
    raise TranslateError('no C type for %r' % t)


def bits(t):
    if isinstance(t, ir.IntTy):
        return t.bits
    if isinstance(t, ir.PtrTy):
        return 32
    raise TranslateError('bits of %r' % t)


def cbits(t):
    return {'u8': 8, 'u16': 16, 'u32': 32, 'u64': 64}[cty(t)]


def lit(val, t):
    b = bits(t)
    val &= (1 << b) - 1
    if b > 32:
        return '0x%XULL' % val
    return '0x%Xu' % val


def mask_expr(expr, t):
    """Mask to the IR width when it is narrower than its C type."""
    b = bits(t)
    if b == cbits(t):
        return expr
    return '(%s)((%s) & 0x%Xu)' % (cty(t), expr, (1 << b) - 1)


def sx(expr, t):
    """Sign-extend an unsigned representation of width bits(t) to s32/s64."""
    b = bits(t)
    if b == 64:
        return '((s64)(%s))' % expr
    if b > 32:
        return '((s64)((u64)(%s) << %d) >> %d)' % (expr, 64 - b, 64 - b)
    if b == 32:
        return '((s32)(%s))' % expr
    if b == 16:
        return '((s32)(s16)(%s))' % expr
    if b == 8:
        return '((s32)(s8)(%s))' % expr
    if b == 1:
        return '(-(s32)((%s) & 1))' % expr
    return '((s32)((u32)(%s) << %d) >> %d)' % (expr, 32 - b, 32 - b)


def wide(t):
    return 'u64' if bits(t) > 32 else 'u32'


class Program:
    """Whole-program view: names, signatures, addresses."""

    def __init__(self, gen):
        self.addr = json.load(open(os.path.join(gen, 'addresses.json')))
        self.gaddr = self.addr['globals']
        self.faddr = dict(self.addr['functions'])
        self.modules = []
        skip = ('runtime_double', 'runtime_float')  # soft-float library: native C floats replace it
        for path in sorted(glob.glob(os.path.join(gen, 'ir', '*.ll'))):
            if any(k in path for k in skip):
                continue
            self.modules.append(ir.parse_module(path))
        self.defined = {}      # external name -> (module, Function)
        self.internal = {}     # (module path, name) -> mangled
        self.declared = {}     # name -> Function (first non-vararg decl preferred)
        self.unit_of = {}
        for m in self.modules:
            unit = san(os.path.basename(m.path)[:-3].replace('.c', ''))
            self.unit_of[m.path] = unit
            for f in m.functions:
                if f.name.startswith('llvm.'):
                    continue
                if f.defined:
                    if f.linkage in ('internal', 'private'):
                        self.internal[(m.path, f.name)] = 'F_%s__%s' % (unit, san(f.name))
                    else:
                        if f.name in self.defined:
                            raise TranslateError('duplicate definition of %s' % f.name)
                        self.defined[f.name] = (m, f)
                else:
                    prev = self.declared.get(f.name)
                    if prev is None or (prev.vararg and not f.vararg):
                        self.declared[f.name] = f
        self.runtime = sorted(n for n in self.declared if n not in self.defined)
        # synthetic addresses for functions without a cartridge address
        self.synth = {}
        k = 0
        for name in sorted(self.defined):
            if name not in self.faddr:
                self.faddr[name] = SYNTH_FN_BASE + 4 * k
                self.synth[name] = self.faddr[name]
                k += 1
        # module-local globals -> native data region
        self.native = []       # (address, bytes, relocs)
        self.local_gaddr = {}  # (module path, name) -> address
        cur = NATIVE_DATA_BASE
        for m in self.modules:
            for g in m.globals:
                if g.external:
                    continue
                if g.linkage not in ('private', 'internal') and g.name in self.gaddr:
                    continue
                a = max(4, g.align)
                cur = (cur + a - 1) // a * a
                self.local_gaddr[(m.path, g.name)] = cur
                cur += max(1, ir.ty_size(g.ty))
        self.native_end = cur
        self.missing_globals = set()
        self.untied_asm = []
        self.native_blob = bytearray(cur - NATIVE_DATA_BASE)
        for m in self.modules:
            for g in m.globals:
                key = (m.path, g.name)
                if key in self.local_gaddr:
                    out = bytearray()
                    self.serialize(m, g.init, g.ty, out)
                    o = self.local_gaddr[key] - NATIVE_DATA_BASE
                    self.native_blob[o:o + len(out)] = out

    def fn_cname(self, m, name):
        if (m.path, name) in self.internal:
            return self.internal[(m.path, name)]
        return 'F_' + san(name)

    def global_value(self, m, name):
        """Numeric value of @name used as a constant."""
        if (m.path, name) in self.local_gaddr:
            return self.local_gaddr[(m.path, name)]
        is_fn = any(f.name == name for f in m.functions)
        if is_fn:
            if name in self.faddr:
                return self.faddr[name]
            if (m.path, name) in self.internal:
                # internal function used as a value: give it a synthetic address
                key = self.internal[(m.path, name)]
                if key not in self.synth:
                    self.synth[key] = SYNTH_FN_BASE + 4 * (len(self.synth) + 100000)
                return self.synth[key]
            # runtime-provided function used as a value (e.g. irq_dispatch)
            key = 'F_' + san(name)
            if key not in self.synth:
                self.synth[key] = SYNTH_FN_BASE + 4 * (len(self.synth) + 200000)
            return self.synth[key]
        if name in self.gaddr:
            return self.gaddr[name]
        self.missing_globals.add(name)
        return 0

    def const(self, m, v):
        """Fold a constant operand to an integer."""
        k = v.kind
        if k == 'int':
            return v.value
        if k in ('null', 'zero', 'undef'):
            return 0
        if k == 'global':
            return self.global_value(m, v.name)
        if k == 'cexpr':
            op = v.op
            if op in ('inttoptr', 'ptrtoint', 'bitcast', 'zext', 'addrspacecast'):
                return self.const(m, v.args[0]) & 0xFFFFFFFFFFFFFFFF
            if op == 'trunc':
                return self.const(m, v.args[0]) & ((1 << bits(v.ty2)) - 1)
            if op == 'sext':
                a = v.args[0]
                b = bits(a.ty)
                x = self.const(m, a) & ((1 << b) - 1)
                if x >> (b - 1):
                    x -= 1 << b
                return x
            if op == 'gep':
                base = self.const(m, v.args[0])
                return (base + gep_const(v.ty2, [self.const(m, a) for a in v.args[1:]])) & 0xFFFFFFFF
            a = self.const(m, v.args[0])
            if op == 'icmp':
                b = self.const(m, v.args[1])
                w = bits(v.args[0].ty)
                ua, ub = a & ((1 << w) - 1), b & ((1 << w) - 1)
                sa = ua - (1 << w) if ua >> (w - 1) else ua
                sb = ub - (1 << w) if ub >> (w - 1) else ub
                return int({'eq': ua == ub, 'ne': ua != ub, 'ugt': ua > ub, 'uge': ua >= ub,
                            'ult': ua < ub, 'ule': ua <= ub, 'sgt': sa > sb, 'sge': sa >= sb,
                            'slt': sa < sb, 'sle': sa <= sb}[v.pred])
            if op == 'select':
                return self.const(m, v.args[1]) if a else self.const(m, v.args[2])
            b = self.const(m, v.args[1])
            w = bits(v.ty)
            mask = (1 << w) - 1
            if op == 'add':
                return (a + b) & mask
            if op == 'sub':
                return (a - b) & mask
            if op == 'mul':
                return (a * b) & mask
            if op == 'and':
                return a & b
            if op == 'or':
                return a | b
            if op == 'xor':
                return a ^ b
            if op == 'shl':
                return (a << b) & mask
            if op == 'lshr':
                return (a & mask) >> b
            if op in ('sdiv', 'ashr'):
                sa = a & mask
                if sa >> (w - 1):
                    sa -= 1 << w
                if op == 'ashr':
                    return (sa >> b) & mask
                sb = b & mask
                if sb >> (w - 1):
                    sb -= 1 << w
                q = abs(sa) // abs(sb)
                if (sa < 0) != (sb < 0):
                    q = -q
                return q & mask
            if op == 'udiv':
                return (a // b) & mask
        raise TranslateError('constant %r' % v)

    def serialize(self, m, v, t, out):
        size = ir.ty_size(t)
        start = len(out)
        k = v.kind
        if k in ('zero', 'null', 'undef'):
            out.extend(b'\0' * size)
        elif k == 'string':
            out.extend(v.data)
        elif k == 'array':
            for e in v.elems:
                self.serialize(m, e, t.elem, out)
        elif k == 'struct':
            offs = ir.struct_offsets(t)
            for e, ft, fo in zip(v.elems, t.fields, offs):
                while len(out) - start < fo:
                    out.append(0)
                self.serialize(m, e, ft, out)
        else:
            val = self.const(m, v)
            out.extend((val & ((1 << (8 * size)) - 1)).to_bytes(size, 'little'))
        while len(out) - start < size:
            out.append(0)


def gep_const(src, idx):
    def s32(x):
        x &= 0xFFFFFFFF
        return x - (1 << 32) if x >> 31 else x
    off = s32(idx[0]) * ir.ty_size(src)
    t = src
    for j in idx[1:]:
        if isinstance(t, ir.StructTy):
            off += ir.struct_offsets(t)[j]
            t = t.fields[j]
        else:
            off += s32(j) * ir.ty_size(t.elem)
            t = t.elem
    return off


def fn_proto(name, ret, params):
    ps = ', '.join('%s p%d' % (cty(t), i) for i, (t, _) in enumerate(params)) or 'void'
    return '%s %s(%s)' % (cty(ret), name, ps)


class FnEmitter:
    def __init__(self, prog, m, f):
        self.p, self.m, self.f = prog, m, f
        self.vars = {}       # local name -> C type
        self.lines = []
        self.asm_parts = {}  # result name -> list of per-output expressions

    def v(self, val):
        k = val.kind
        if k == 'local':
            if val.name in self.asm_parts:
                raise TranslateError('aggregate asm result used directly')
            return 'v_' + san(val.name)
        if k == 'float':
            if getattr(val, 'hexval', None):
                import struct as st
                d = st.unpack('<d', int(val.hexval, 16).to_bytes(8, 'little'))[0]
                return repr(d)
            return repr(val.value)
        if k == 'asm':
            raise TranslateError('asm as value')
        return lit(self.p.const(self.m, val), val.ty)

    def emit(self, s):
        self.lines.append('    ' + s)

    def declare(self, name, t):
        self.vars[name] = cty(t)

    def run(self):
        f = self.f
        params = ', '.join('%s v_%s' % (cty(t), san(n)) for t, n in f.params) or 'void'
        cname = self.p.fn_cname(self.m, f.name)
        static = ''  # internal functions keep unique mangled names and stay linkable
        header = '%s%s %s(%s)' % (static, cty(f.ret), cname, params)

        # allocas -> emulated stack frame
        frame = 0
        alloca_off = {}
        for b in f.blocks:
            for ins in b.insts:
                if ins.op == 'alloca':
                    if b is not f.blocks[0]:
                        raise TranslateError('alloca outside entry block')
                    n = 1
                    if ins.n is not None:
                        if ins.n.kind != 'int':
                            raise TranslateError('dynamic alloca')
                        n = ins.n.value
                    sz = ir.ty_size(ins.aty) * n
                    al = max(4, ir.ty_align(ins.aty))
                    frame = (frame + al - 1) // al * al
                    alloca_off[ins.res] = frame
                    frame += max(sz, 1)
        frame = (frame + 7) // 8 * 8
        self.has_frame = frame > 0

        # phi bookkeeping: for each block, phis grouped by predecessor
        self.phis = {}
        for b in f.blocks:
            for ins in b.insts:
                if ins.op == 'phi':
                    self.declare(ins.res, ins.ty)
                    for val, pred in ins.inc:
                        self.phis.setdefault((pred, b.label), []).append((ins.res, ins.ty, val))

        body = []
        self.lines = body
        if self.has_frame:
            self.emit('u32 rt_saved_sp = g_rt_sp;')
            self.emit('u32 rt_fp = g_rt_sp = (g_rt_sp - %d) & ~7u;' % frame)
        for i, b in enumerate(f.blocks):
            body.append('L_%s:;' % san(b.label))
            for ins in b.insts:
                self.inst(ins, b, alloca_off)
        decls = ['    %s v_%s;' % (t, san(n)) for n, t in sorted(self.vars.items())]
        return header, ['%s {' % header] + decls + body + ['}']

    def ret_restore(self):
        return 'g_rt_sp = rt_saved_sp; ' if self.has_frame else ''

    def edge(self, src, dst):
        moves = self.phis.get((src.label, dst), [])
        if not moves:
            return 'goto L_%s;' % san(dst)
        if len(moves) == 1:
            n, t, val = moves[0]
            return 'v_%s = %s; goto L_%s;' % (san(n), self.v(val), san(dst))
        tmps = ' '.join('%s t%d = %s;' % (cty(t), j, self.v(val)) for j, (n, t, val) in enumerate(moves))
        sets = ' '.join('v_%s = t%d;' % (san(n), j) for j, (n, t, val) in enumerate(moves))
        return '{ %s %s } goto L_%s;' % (tmps, sets, san(dst))

    def assign(self, ins, expr):
        self.declare(ins.res, ins.ty)
        self.emit('v_%s = %s;' % (san(ins.res), expr))

    def inst(self, ins, b, alloca_off):
        op = ins.op
        if op == 'bin':
            self.binop(ins)
        elif op == 'icmp':
            t = ins.a.ty
            a, c = self.v(ins.a), self.v(ins.b)
            pred = ins.pred
            cmp = {'eq': '==', 'ne': '!=', 'ugt': '>', 'uge': '>=', 'ult': '<', 'ule': '<=',
                   'sgt': '>', 'sge': '>=', 'slt': '<', 'sle': '<='}[pred]
            if pred[0] == 's':
                self.assign(ins, '(%s %s %s)' % (sx(a, t), cmp, sx(c, t)))
            else:
                self.assign(ins, '((%s)%s %s (%s)%s)' % (cty(t), a, cmp, cty(t), c))
        elif op == 'fcmp':
            cmp = {'oeq': '==', 'one': '!=', 'ogt': '>', 'oge': '>=', 'olt': '<', 'ole': '<=',
                   'ueq': '==', 'une': '!=', 'ugt': '>', 'uge': '>=', 'ult': '<', 'ule': '<='}[ins.pred]
            self.assign(ins, '(%s %s %s)' % (self.v(ins.a), cmp, self.v(ins.b)))
        elif op == 'cast':
            self.cast(ins)
        elif op == 'select':
            self.assign(ins, '(%s ? %s : %s)' % (self.v(ins.c), self.v(ins.a), self.v(ins.b)))
        elif op == 'gep':
            self.assign(ins, self.gep(ins.src, ins.args))
        elif op == 'load':
            t = ins.ty
            if isinstance(t, ir.FloatTy):
                fn = 'LDF32' if t.bits == 32 else 'LDF64'
            elif isinstance(t, (ir.IntTy, ir.PtrTy)):
                fn = 'LD%d' % cbits(t)
            else:
                raise TranslateError('aggregate load %r' % t)
            self.assign(ins, mask_expr('%s(%s)' % (fn, self.v(ins.p)), t) if isinstance(t, ir.IntTy) else
                        '%s(%s)' % (fn, self.v(ins.p)))
        elif op == 'store':
            t = ins.v.ty
            if isinstance(t, ir.FloatTy):
                fn = 'STF32' if t.bits == 32 else 'STF64'
            elif isinstance(t, (ir.IntTy, ir.PtrTy)):
                fn = 'ST%d' % cbits(t)
            else:
                raise TranslateError('aggregate store %r' % t)
            self.emit('%s(%s, %s);' % (fn, self.v(ins.p), self.v(ins.v)))
        elif op == 'alloca':
            self.assign(ins, '(u32)(rt_fp + %d)' % alloca_off[ins.res])
        elif op == 'call':
            self.call(ins)
        elif op == 'extractvalue':
            parts = self.asm_parts.get(ins.a.name) if ins.a.kind == 'local' else None
            if parts is None or len(ins.idx) != 1:
                raise TranslateError('extractvalue of non-asm aggregate')
            self.assign(ins, parts[ins.idx[0]])
        elif op == 'ret':
            if ins.v is None:
                self.emit('%sreturn;' % self.ret_restore())
            else:
                self.emit('%sreturn %s;' % (self.ret_restore(), self.v(ins.v)))
        elif op == 'br':
            self.emit(self.edge(b, ins.dest))
        elif op == 'condbr':
            self.emit('if (%s) { %s } else { %s }' % (self.v(ins.c), self.edge(b, ins.a), self.edge(b, ins.b)))
        elif op == 'switch':
            t = ins.v.ty
            self.emit('switch ((%s)%s) {' % (cty(t), self.v(ins.v)))
            for cv, lbl in ins.cases:
                self.emit('case %s: %s' % (lit(cv.value, t), self.edge(b, lbl)))
            self.emit('default: %s' % self.edge(b, ins.dflt))
            self.emit('}')
        elif op == 'phi':
            pass
        elif op == 'unreachable':
            self.emit('rt_unreachable(%s);' % json.dumps(self.f.name))
        else:
            raise TranslateError('instruction %s' % op)

    def binop(self, ins):
        t = ins.ty
        a, c = self.v(ins.a), self.v(ins.b)
        o = ins.bop
        if isinstance(t, ir.FloatTy):
            sym = {'fadd': '+', 'fsub': '-', 'fmul': '*', 'fdiv': '/'}[o]
            self.assign(ins, '(%s %s %s)' % (a, sym, c))
            return
        T, W = cty(t), wide(t)
        sh = 63 if W == 'u64' else 31
        if o in ('add', 'sub', 'mul', 'and', 'or', 'xor'):
            sym = {'add': '+', 'sub': '-', 'mul': '*', 'and': '&', 'or': '|', 'xor': '^'}[o]
            e = '(%s)((%s)%s %s (%s)%s)' % (T, W, a, sym, W, c)
        elif o == 'shl':
            e = '(%s)((%s)%s << ((%s) & %d))' % (T, W, a, c, sh)
        elif o == 'lshr':
            e = '(%s)((%s)%s >> ((%s) & %d))' % (T, W, a, c, sh)
        elif o == 'ashr':
            e = '(%s)(%s >> ((%s) & %d))' % (T, sx(a, t), c, sh)
        elif o in ('udiv', 'urem'):
            e = '(%s)RT_%s((%s)%s, (%s)%s)' % (T, 'UDIV' if o == 'udiv' else 'UREM', W, a, W, c)
            if W == 'u64':
                e = e.replace('RT_UDIV(', 'RT_UDIV64(').replace('RT_UREM(', 'RT_UREM64(')
        elif o in ('sdiv', 'srem'):
            fn = 'RT_SDIV' if o == 'sdiv' else 'RT_SREM'
            if W == 'u64':
                fn += '64'
            e = '(%s)%s(%s, %s)' % (T, fn, sx(a, t), sx(c, t))
        else:
            raise TranslateError('binop %s' % o)
        self.assign(ins, mask_expr(e, t))

    def cast(self, ins):
        c = ins.cop
        a = ins.a
        t = ins.ty
        av = self.v(a)
        if c in ('zext', 'inttoptr', 'ptrtoint', 'freeze', 'bitcast'):
            if c == 'bitcast' and isinstance(t, ir.FloatTy) != isinstance(a.ty, ir.FloatTy):
                raise TranslateError('int/float bitcast')
            if isinstance(t, ir.FloatTy):
                self.assign(ins, av)
            else:
                self.assign(ins, mask_expr('(%s)%s' % (cty(t), av), t))
        elif c == 'sext':
            self.assign(ins, mask_expr('(%s)%s' % (cty(t), sx(av, a.ty)), t))
        elif c == 'trunc':
            self.assign(ins, mask_expr('(%s)%s' % (cty(t), av), t))
        # Conversions use only the signed 32-bit helpers every target has
        # (Symbian's euser.lib exports __floatsidf/__fixdfsi but not the
        # unsigned or 64-bit ones, which would drag in a clashing libgcc).
        elif c == 'uitofp':
            if bits(a.ty) <= 31:
                self.assign(ins, '(%s)(s32)%s' % (cty(t), av))
            else:
                self.assign(ins, '(%s)RT_U32_TO_F(%s)' % (cty(t), av))
        elif c == 'sitofp':
            if bits(a.ty) > 32:
                raise TranslateError('64-bit int to float')
            self.assign(ins, '(%s)(s32)%s' % (cty(t), sx(av, a.ty)))
        elif c == 'fptosi':
            self.assign(ins, mask_expr('(%s)(s32)%s' % (cty(t), av), t))
        elif c == 'fptoui':
            self.assign(ins, mask_expr('(%s)RT_F_TO_U32(%s)' % (cty(t), av), t))
        elif c in ('fpext', 'fptrunc'):
            self.assign(ins, '(%s)%s' % (cty(t), av))
        else:
            raise TranslateError('cast %s' % c)

    def gep(self, src, args):
        terms = [self.v(args[0])]
        t = src
        first = args[1] if len(args) > 1 else None
        const_off = 0

        def index_term(val, size):
            if val.kind != 'local':
                return None, gep_const(ir.ArrTy(1, ir.I8), [0]) + self.p.const(self.m, val) * size \
                    if False else sext_const(self.p.const(self.m, val), val.ty) * size
            return '(u32)%s * %du' % (sx(self.v(val), val.ty) if bits(val.ty) < 64 else '(u32)' + self.v(val), size), 0

        if first is not None:
            term, off = index_term(first, ir.ty_size(src))
            if term:
                terms.append(term)
            const_off += off
        for val in args[2:]:
            if isinstance(t, ir.StructTy):
                j = self.p.const(self.m, val)
                const_off += ir.struct_offsets(t)[j]
                t = t.fields[j]
            elif isinstance(t, ir.ArrTy):
                term, off = index_term(val, ir.ty_size(t.elem))
                if term:
                    terms.append(term)
                const_off += off
                t = t.elem
            else:
                raise TranslateError('gep into %r' % t)
        if const_off:
            terms.append('0x%Xu' % (const_off & 0xFFFFFFFF))
        return '(u32)(' + ' + '.join('(u32)(%s)' % x for x in terms) + ')'

    def call(self, ins):
        callee = ins.callee
        args = ins.args
        rt = ins.ty
        if callee.kind == 'asm':
            self.inline_asm(ins)
            return
        if callee.kind == 'global' and callee.name.startswith('llvm.'):
            self.intrinsic(ins, callee.name)
            return
        argv = [self.v(a) for a in args]
        if callee.kind == 'global' and any(fn.name == callee.name for fn in self.m.functions):
            name = callee.name
            if name in self.p.defined:
                params = self.p.defined[name][1].params
                ret = self.p.defined[name][1].ret
            elif (self.m.path, name) in self.p.internal:
                fn = next(x for x in self.m.functions if x.name == name and x.defined)
                params, ret = fn.params, fn.ret
            else:
                d = self.p.declared[name]
                params, ret = d.params, d.ret
            argv = argv[:len(params)] + ['0'] * (len(params) - len(argv))
            call = '%s(%s)' % (self.p.fn_cname(self.m, name), ', '.join(argv))
        else:
            # indirect call through a GBA address
            target = self.v(callee)
            ptys = [cty(a.ty) for a in args]
            sig = '%s (*)(%s)' % (cty(rt), ', '.join(ptys) or 'void')
            call = '((%s)rt_fn(%s))(%s)' % (sig, target, ', '.join(argv))
            ret = rt
        if isinstance(rt, ir.VoidTy) or ins.res is None:
            self.emit(call + ';')
            return
        if isinstance(ret, ir.VoidTy):
            self.emit(call + ';')
            self.assign(ins, '0')
        else:
            self.assign(ins, mask_expr('(%s)%s' % (cty(rt), call), rt) if isinstance(rt, ir.IntTy) else
                        '(%s)%s' % (cty(rt), call))

    def inline_asm(self, ins):
        a = ins.callee
        if a.code.strip():
            raise TranslateError('non-empty inline asm %r' % a.code)
        cons = [c for c in a.constraints.split(',') if not c.startswith('~')]
        outputs = [i for i, c in enumerate(cons) if c.startswith('=') and '*' not in c]
        operand_cons = [c for i, c in enumerate(cons) if i not in outputs]
        argv = [self.v(x) for x in ins.args]
        vals = []
        for oi in outputs:
            tied = None
            reg = cons[oi].lstrip('=&')
            for c, av in zip(operand_cons, argv):
                if c == str(oi) or (reg.startswith('{') and c == reg):
                    tied = av
            if tied is None:
                # clang folds a "0" tie on a register variable into an explicit
                # register on the input: take the first register-pinned input
                for c, av in zip(operand_cons, argv):
                    if c.startswith('{r'):
                        tied = av
                        break
            if tied is None:
                self.p.untied_asm.append('%s: %s' % (self.f.name, a.constraints))
            vals.append(tied if tied is not None else '0')
        rt = ins.ty
        if ins.res is None or isinstance(rt, ir.VoidTy):
            return
        if isinstance(rt, ir.StructTy):
            names = []
            for j, (ft, val) in enumerate(zip(rt.fields, vals)):
                nm = '%s_asm%d' % (ins.res, j)
                self.vars[nm] = cty(ft)
                self.emit('v_%s = (%s)%s;' % (san(nm), cty(ft), val))
                names.append('v_' + san(nm))
            self.asm_parts[ins.res] = names
        else:
            self.assign(ins, '(%s)%s' % (cty(rt), vals[0] if vals else '0'))

    def intrinsic(self, ins, name):
        base = name.split('.')[1]
        args = ins.args
        if base in ('lifetime', 'assume', 'dbg', 'experimental'):
            return
        if base in ('memcpy', 'memmove', 'memset'):
            self.emit('rt_%s(%s, %s, (u32)%s);' % (base, self.v(args[0]), self.v(args[1]), self.v(args[2])))
            return
        t = ins.ty
        T = cty(t)
        if base == 'abs':
            x = sx(self.v(args[0]), t)
            self.assign(ins, mask_expr('(%s)(%s < 0 ? -%s : %s)' % (T, x, x, x), t))
        elif base in ('smax', 'smin'):
            x, y = sx(self.v(args[0]), t), sx(self.v(args[1]), t)
            o = '>' if base == 'smax' else '<'
            self.assign(ins, mask_expr('(%s)(%s %s %s ? %s : %s)' % (T, x, o, y, x, y), t))
        elif base in ('umax', 'umin'):
            x, y = self.v(args[0]), self.v(args[1])
            o = '>' if base == 'umax' else '<'
            self.assign(ins, '(%s)(%s %s %s ? %s : %s)' % (T, x, o, y, x, y))
        elif base == 'usub':
            x, y = self.v(args[0]), self.v(args[1])
            self.assign(ins, '(%s)(%s > %s ? %s - %s : 0)' % (T, x, y, x, y))
        elif base == 'fshl':
            x, y, z = self.v(args[0]), self.v(args[1]), self.v(args[2])
            w = bits(t)
            self.assign(ins, '(%s)RT_FSHL%d(%s, %s, %s)' % (T, w, x, y, z))
        else:
            raise TranslateError('intrinsic %s' % name)


def sext_const(x, t):
    b = bits(t)
    x &= (1 << b) - 1
    if x >> (b - 1):
        x -= 1 << b
    return x


def main():
    gen, outdir = sys.argv[1:3]
    os.makedirs(outdir, exist_ok=True)
    prog = Program(gen)
    errors = []
    protos = []
    for name in sorted(prog.defined):
        m, f = prog.defined[name]
        protos.append(fn_proto('F_' + san(name), f.ret, f.params) + ';')
    for m in prog.modules:
        for f in m.functions:
            if f.defined and (m.path, f.name) in prog.internal:
                protos.append(fn_proto(prog.internal[(m.path, f.name)], f.ret, f.params) + ';')
    rt_protos = []
    for name in prog.runtime:
        d = prog.declared[name]
        rt_protos.append(fn_proto('F_' + san(name), d.ret, d.params) + ';')
    nfn = 0
    for m in prog.modules:
        unit = prog.unit_of[m.path]
        out = ['/* generated by ir2c.py from %s; do not edit */' % os.path.basename(m.path),
               '#include "decomp_gen.h"', '']
        statics = []
        bodies = []
        for f in m.functions:
            if not f.defined:
                continue
            try:
                header, lines = FnEmitter(prog, m, f).run()
            except (TranslateError, KeyError, ValueError, AttributeError, IndexError) as e:
                errors.append('%s: %s: %r' % (unit, f.name, e))
                continue
            nfn += 1
            if header.startswith('static '):
                statics.append(header + ';')
            bodies.extend(lines)
            bodies.append('')
        open(os.path.join(outdir, unit + '.c'), 'w').write('\n'.join(out + statics + [''] + bodies))
    # header
    hdr = ['/* generated by ir2c.py; do not edit */', '#ifndef DECOMP_GEN_H', '#define DECOMP_GEN_H',
           '#include "rt_mem.h"', '', '/* translated decomp functions */'] + protos + \
          ['', '/* provided by the port runtime */'] + rt_protos + ['', '#endif', '']
    open(os.path.join(outdir, 'decomp_gen.h'), 'w').write('\n'.join(hdr))
    # function table: cartridge address -> translated function
    entries = []
    for name in sorted(prog.defined):
        entries.append((prog.faddr[name], 'F_' + san(name)))
    for name in prog.runtime:
        if name in prog.faddr:
            entries.append((prog.faddr[name], 'F_' + san(name)))
    entries = [(a | 1, n) for a, n in entries]
    for key, a in prog.synth.items():
        if key.startswith('F_'):
            entries.append((a, key))
    entries.sort()
    seen = set()
    tab = ['/* generated by ir2c.py; do not edit */', '#include "decomp_gen.h"', '']
    tab.append('const rt_fn_entry g_rt_fn_table[] = {')
    for a, n in entries:
        if a in seen:
            continue
        seen.add(a)
        tab.append('    { 0x%08Xu, (rt_fnptr)%s },' % (a, n))
    tab.append('};')
    tab.append('const u32 g_rt_fn_count = %d;' % len(seen))
    blob = prog.native_blob
    tab.append('const u32 g_rt_native_data_base = 0x%08Xu;' % NATIVE_DATA_BASE)
    tab.append('const u32 g_rt_native_data_size = %d;' % len(blob))
    tab.append('const u8 g_rt_native_data[%d] = {' % max(1, len(blob)))
    for i in range(0, len(blob), 24):
        tab.append('    ' + ','.join(str(x) for x in blob[i:i + 24]) + ',')
    if not blob:
        tab.append('    0')
    tab.append('};')
    open(os.path.join(outdir, 'rt_tables.c'), 'w').write('\n'.join(tab) + '\n')
    json.dump({'runtime_functions': prog.runtime, 'missing_globals': sorted(prog.missing_globals),
               'errors': errors, 'synthetic_functions': len(prog.synth)},
              open(os.path.join(outdir, 'ir2c_report.json'), 'w'), indent=1)
    print('translated functions: %d, errors: %d' % (nfn, len(errors)))
    for e in errors[:25]:
        print('  ', e)
    print('runtime functions needed: %d' % len(prog.runtime))
    print('asm outputs with no tied input: %d %s' % (len(prog.untied_asm), prog.untied_asm[:10]))
    print('unresolved globals: %d %s' % (len(prog.missing_globals), sorted(prog.missing_globals)[:20]))


if __name__ == '__main__':
    main()
