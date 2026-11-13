"""A small LLVM IR (text) reader covering what clang -O2 emits for the decomp.

It understands types, constants (including nested constant expressions),
globals, function declarations and definitions, basic blocks and the
instructions listed in Parser.parse_instruction.  Anything else raises,
so the translator never silently miscompiles an unknown construct.
"""
import re

# ----------------------------------------------------------------- types

class Ty:
    pass


class IntTy(Ty):
    def __init__(self, bits):
        self.bits = bits

    def __repr__(self):
        return 'i%d' % self.bits


class PtrTy(Ty):
    def __repr__(self):
        return 'ptr'


class VoidTy(Ty):
    def __repr__(self):
        return 'void'


class FloatTy(Ty):
    def __init__(self, bits):
        self.bits = bits

    def __repr__(self):
        return 'float' if self.bits == 32 else 'double'


class ArrTy(Ty):
    def __init__(self, n, elem):
        self.n, self.elem = n, elem

    def __repr__(self):
        return '[%d x %r]' % (self.n, self.elem)


class StructTy(Ty):
    def __init__(self, fields, packed, name=None):
        self.fields, self.packed, self.name = fields, packed, name

    def __repr__(self):
        return self.name or ('<{...}>' if self.packed else '{...}')


class FnTy(Ty):
    def __init__(self, ret, params, vararg):
        self.ret, self.params, self.vararg = ret, params, vararg


class LabelTy(Ty):
    pass


class MetaTy(Ty):
    pass


I1, I8, I16, I32, I64 = IntTy(1), IntTy(8), IntTy(16), IntTy(32), IntTy(64)
PTR = PtrTy()
VOID = VoidTy()


# Layout for "e-p:32:32-i64:32:64-f64:32:64-a:0:32" (old APCS, like agbcc)

def ty_align(t):
    if isinstance(t, IntTy):
        if t.bits <= 8:
            return 1
        if t.bits <= 16:
            return 2
        return 4
    if isinstance(t, PtrTy):
        return 4
    if isinstance(t, FloatTy):
        return 4
    if isinstance(t, ArrTy):
        return ty_align(t.elem)
    if isinstance(t, StructTy):
        if t.packed:
            return 1
        return max([ty_align(f) for f in t.fields] or [1])
    raise ValueError('align of %r' % t)


def ty_size(t):
    """Allocation size (store size rounded to alignment)."""
    if isinstance(t, IntTy):
        b = (t.bits + 7) // 8
        if b == 3:
            b = 4
        if b > 4 and b < 8:
            b = 8
        a = ty_align(t)
        return (b + a - 1) // a * a
    if isinstance(t, PtrTy):
        return 4
    if isinstance(t, FloatTy):
        return t.bits // 8
    if isinstance(t, ArrTy):
        return t.n * ty_size(t.elem)
    if isinstance(t, StructTy):
        off = 0
        for f in t.fields:
            if not t.packed:
                a = ty_align(f)
                off = (off + a - 1) // a * a
            off += ty_size(f)
        if not t.packed:
            a = ty_align(t)
            off = (off + a - 1) // a * a
        return off
    raise ValueError('size of %r' % t)


def struct_offsets(t):
    offs = []
    off = 0
    for f in t.fields:
        if not t.packed:
            a = ty_align(f)
            off = (off + a - 1) // a * a
        offs.append(off)
        off += ty_size(f)
    return offs


# ----------------------------------------------------------------- values

class V:
    """An operand.  kind is one of:
       'local' (name), 'global' (name), 'int' (value), 'float' (value),
       'null', 'undef', 'zero', 'array' (elems), 'struct' (elems),
       'string' (bytes), 'cexpr' (op, args, ty2, extra)."""

    def __init__(self, kind, ty, **kw):
        self.kind, self.ty = kind, ty
        self.__dict__.update(kw)

    def __repr__(self):
        return 'V(%s,%r,%s)' % (self.kind, self.ty, {k: v for k, v in self.__dict__.items() if k not in ('kind', 'ty')})


class Inst:
    def __init__(self, op, res=None, ty=None, **kw):
        self.op, self.res, self.ty = op, res, ty
        self.__dict__.update(kw)

    def __repr__(self):
        return 'Inst(%s %s)' % (self.op, self.res)


class Block:
    def __init__(self, label):
        self.label = label
        self.insts = []


class Function:
    def __init__(self, name, ret, params, vararg, linkage, defined):
        self.name, self.ret, self.params, self.vararg = name, ret, params, vararg
        self.linkage, self.defined = linkage, defined
        self.blocks = []


class Global:
    def __init__(self, name, ty, init, linkage, constant, external, align):
        self.name, self.ty, self.init = name, ty, init
        self.linkage, self.constant, self.external, self.align = linkage, constant, external, align


class Module:
    def __init__(self, path):
        self.path = path
        self.types = {}
        self.globals = []
        self.functions = []


# ----------------------------------------------------------------- lexer

TOKEN_RE = re.compile(r'''
    (?P<ws>\s+)
  | (?P<comment>;[^\n]*)
  | (?P<cstr>c"(?:[^"\\]|\\.)*")
  | (?P<str>"(?:[^"\\]|\\.)*")
  | (?P<gname>@(?:"(?:[^"\\]|\\.)*"|[-a-zA-Z$._0-9]+))
  | (?P<lname>%(?:"(?:[^"\\]|\\.)*"|[-a-zA-Z$._0-9]+))
  | (?P<meta>![-a-zA-Z$._0-9]*)
  | (?P<attr>\#[0-9]+)
  | (?P<hex>0x[0-9A-Fa-fKLMHR]+)
  | (?P<num>-?[0-9]+(?:\.[0-9]+(?:[eE][-+]?[0-9]+)?)?)
  | (?P<label>[-a-zA-Z$._0-9]+:)
  | (?P<word>[a-zA-Z_][a-zA-Z_0-9.]*)
  | (?P<punct>\.\.\.|[()\[\]{}<>,=*:])
''', re.X)


def tokenize(text):
    toks = []
    pos = 0
    n = len(text)
    while pos < n:
        m = TOKEN_RE.match(text, pos)
        if not m:
            raise SyntaxError('cannot lex at: %r' % text[pos:pos + 60])
        k = m.lastgroup
        if k not in ('ws', 'comment'):
            toks.append((k, m.group()))
        pos = m.end()
    return toks


def unquote_name(s):
    s = s[1:]
    if s.startswith('"'):
        s = s[1:-1]
    return s


def decode_cstr(s):
    body = s[2:-1]
    out = bytearray()
    i = 0
    while i < len(body):
        c = body[i]
        if c == '\\':
            if body[i + 1] == '\\':
                out.append(0x5C)
                i += 2
            else:
                out.append(int(body[i + 1:i + 3], 16))
                i += 3
        else:
            out.append(ord(c))
            i += 1
    return bytes(out)


IGNORED_WORDS = {
    'noundef', 'nonnull', 'zeroext', 'signext', 'inreg', 'noalias', 'nocapture', 'readonly',
    'writeonly', 'readnone', 'returned', 'immarg', 'dso_local', 'local_unnamed_addr',
    'unnamed_addr', 'arm_apcscc', 'arm_aapcscc', 'tail', 'musttail', 'notail', 'fastcc',
    'nsw', 'nuw', 'exact', 'inbounds', 'disjoint', 'nneg', 'volatile', 'ccc', 'internal',
    'private', 'hidden', 'dso_preemptable', 'noinline', 'nounwind', 'align', 'dereferenceable',
    'dereferenceable_or_null', 'nofree', 'nonlazybind', 'range', 'samesign', 'nnan', 'ninf',
    'nsz', 'arcp', 'contract', 'afn', 'reassoc', 'fast', 'noalias.addrspace',
}


class Parser:
    def __init__(self, toks, module):
        self.t = toks
        self.i = 0
        self.m = module

    # -- token helpers
    def peek(self, k=0):
        j = self.i + k
        return self.t[j] if j < len(self.t) else (None, None)

    def next(self):
        tok = self.t[self.i]
        self.i += 1
        return tok

    def accept(self, val):
        if self.i < len(self.t) and self.t[self.i][1] == val:
            self.i += 1
            return True
        return False

    def expect(self, val):
        k, v = self.next()
        if v != val:
            raise SyntaxError('expected %r got %r at %r' % (val, v, self.t[self.i - 5:self.i + 5]))

    def at_end(self):
        return self.i >= len(self.t)

    def skip_attrs(self):
        while not self.at_end():
            k, v = self.peek()
            if k == 'word' and v in ('align', 'dereferenceable', 'dereferenceable_or_null'):
                self.next()
                if self.peek()[1] == '(':
                    self.next(); self.next(); self.expect(')')
                else:
                    self.next()
            elif k == 'word' and v in ('elementtype', 'byval', 'sret', 'preallocated', 'inalloca'):
                self.next()
                if self.peek()[1] == '(':
                    self.next(); self.parse_type(); self.expect(')')
            elif k == 'word' and v == 'range':
                self.next(); self.expect('(')
                depth = 1
                while depth:
                    v2 = self.next()[1]
                    depth += {'(': 1, ')': -1}.get(v2, 0)
            elif k == 'word' and v in IGNORED_WORDS:
                self.next()
            elif k == 'attr':
                self.next()
            else:
                break

    # -- types
    def parse_type(self):
        k, v = self.next()
        if k == 'word':
            if v == 'ptr':
                t = PTR
            elif v == 'void':
                t = VOID
            elif v == 'float':
                t = FloatTy(32)
            elif v == 'double':
                t = FloatTy(64)
            elif v == 'label':
                t = LabelTy()
            elif v == 'metadata':
                t = MetaTy()
            elif re.fullmatch(r'i\d+', v):
                t = IntTy(int(v[1:]))
            else:
                raise SyntaxError('type word %r' % v)
        elif k == 'lname':
            nm = unquote_name(v)
            if nm not in self.m.types:
                self.m.types[nm] = StructTy([], False, nm)
            t = self.m.types[nm]
        elif v == '[':
            n = int(self.next()[1])
            self.expect('x')
            e = self.parse_type()
            self.expect(']')
            t = ArrTy(n, e)
        elif v == '{':
            t = self.parse_struct_body(False)
        elif v == '<':
            if self.accept('{'):
                t = self.parse_struct_body(True)
                self.expect('>')
            else:
                raise SyntaxError('vector types unsupported')
        else:
            raise SyntaxError('type %r' % v)
        # function type suffix
        while self.peek()[1] == '(' and not isinstance(t, (LabelTy,)):
            # only in contexts where a function type is expected (call)
            break
        return t

    def parse_struct_body(self, packed):
        fields = []
        if self.accept('}'):
            return StructTy(fields, packed)
        while True:
            fields.append(self.parse_type())
            if self.accept('}'):
                break
            self.expect(',')
        return StructTy(fields, packed)

    def parse_fn_params_types(self):
        """after '(' of a function type"""
        params = []
        vararg = False
        if self.accept(')'):
            return params, vararg
        while True:
            if self.accept('...'):
                vararg = True
            else:
                params.append(self.parse_type())
                self.skip_attrs()
            if self.accept(')'):
                break
            self.expect(',')
        return params, vararg

    # -- values
    def parse_typed_value(self):
        self.skip_attrs()
        t = self.parse_type()
        self.skip_attrs()
        return self.parse_value(t)

    def parse_value(self, t):
        k, v = self.next()
        if k == 'num':
            if '.' in v:
                return V('float', t, value=float(v))
            return V('int', t, value=int(v))
        if k == 'hex':
            if isinstance(t, FloatTy):
                return V('float', t, hexval=v)
            return V('int', t, value=int(v, 16))
        if k == 'lname':
            return V('local', t, name=unquote_name(v))
        if k == 'gname':
            return V('global', t, name=unquote_name(v))
        if k == 'cstr':
            return V('string', t, data=decode_cstr(v))
        if k == 'word':
            if v == 'true':
                return V('int', t, value=1)
            if v == 'false':
                return V('int', t, value=0)
            if v == 'null':
                return V('null', t)
            if v in ('undef', 'poison'):
                return V('undef', t)
            if v == 'zeroinitializer':
                return V('zero', t)
            if v in ('inttoptr', 'ptrtoint', 'bitcast', 'trunc', 'zext', 'sext', 'addrspacecast'):
                self.expect('(')
                a = self.parse_typed_value()
                self.expect('to')
                t2 = self.parse_type()
                self.expect(')')
                return V('cexpr', t, op=v, args=[a], ty2=t2)
            if v == 'getelementptr':
                self.skip_attrs()
                self.expect('(')
                src = self.parse_type()
                self.expect(',')
                args = [self.parse_typed_value()]
                while self.accept(','):
                    self.skip_attrs()
                    args.append(self.parse_typed_value())
                self.expect(')')
                return V('cexpr', t, op='gep', args=args, ty2=src)
            if v in ('add', 'sub', 'mul', 'and', 'or', 'xor', 'shl', 'lshr', 'ashr', 'sdiv', 'udiv'):
                self.skip_attrs()
                self.expect('(')
                a = self.parse_typed_value()
                self.expect(',')
                b = self.parse_typed_value()
                self.expect(')')
                return V('cexpr', t, op=v, args=[a, b], ty2=None)
            if v == 'icmp':
                pred = self.next()[1]
                self.expect('(')
                a = self.parse_typed_value()
                self.expect(',')
                b = self.parse_typed_value()
                self.expect(')')
                return V('cexpr', t, op='icmp', args=[a, b], ty2=None, pred=pred)
            if v == 'select':
                self.expect('(')
                c = self.parse_typed_value(); self.expect(',')
                a = self.parse_typed_value(); self.expect(',')
                b = self.parse_typed_value(); self.expect(')')
                return V('cexpr', t, op='select', args=[c, a, b], ty2=None)
            if v == 'asm':
                side = False
                while self.peek()[1] in ('sideeffect', 'alignstack', 'inteldialect', 'unwind'):
                    side = True
                    self.next()
                code = self.next()[1]
                self.expect(',')
                cons = self.next()[1]
                return V('asm', t, code=code[1:-1], constraints=cons[1:-1])
        if v == '[':
            elems = []
            if not self.accept(']'):
                while True:
                    elems.append(self.parse_typed_value())
                    if self.accept(']'):
                        break
                    self.expect(',')
            return V('array', t, elems=elems)
        if v == '{':
            elems = []
            if not self.accept('}'):
                while True:
                    elems.append(self.parse_typed_value())
                    if self.accept('}'):
                        break
                    self.expect(',')
            return V('struct', t, elems=elems)
        if v == '<':
            self.expect('{')
            elems = []
            if not self.accept('}'):
                while True:
                    elems.append(self.parse_typed_value())
                    if self.accept('}'):
                        break
                    self.expect(',')
            self.expect('>')
            return V('struct', t, elems=elems)
        raise SyntaxError('value %r %r near %r' % (k, v, self.t[max(0, self.i - 6):self.i + 4]))

    # -- instructions
    def parse_instruction(self):
        res = None
        if self.peek()[0] == 'lname' and self.peek(1)[1] == '=':
            res = unquote_name(self.next()[1])
            self.next()
        k, op = self.next()
        if op in ('tail', 'musttail', 'notail'):
            op = self.next()[1]
        if op in ('add', 'sub', 'mul', 'and', 'or', 'xor', 'shl', 'lshr', 'ashr',
                  'udiv', 'sdiv', 'urem', 'srem', 'fadd', 'fsub', 'fmul', 'fdiv'):
            self.skip_attrs()
            t = self.parse_type()
            a = self.parse_value(t)
            self.expect(',')
            b = self.parse_value(t)
            return Inst('bin', res, t, bop=op, a=a, b=b)
        if op in ('icmp', 'fcmp'):
            self.skip_attrs()
            pred = self.next()[1]
            t = self.parse_type()
            a = self.parse_value(t)
            self.expect(',')
            b = self.parse_value(t)
            return Inst('icmp' if op == 'icmp' else 'fcmp', res, I1, pred=pred, a=a, b=b)
        if op in ('zext', 'sext', 'trunc', 'inttoptr', 'ptrtoint', 'bitcast', 'uitofp', 'sitofp',
                  'fptosi', 'fptoui', 'fpext', 'fptrunc'):
            self.skip_attrs()
            a = self.parse_typed_value()
            self.expect('to')
            t2 = self.parse_type()
            return Inst('cast', res, t2, cop=op, a=a)
        if op == 'freeze':
            a = self.parse_typed_value()
            return Inst('cast', res, a.ty, cop='freeze', a=a)
        if op == 'select':
            c = self.parse_typed_value(); self.expect(',')
            a = self.parse_typed_value(); self.expect(',')
            b = self.parse_typed_value()
            return Inst('select', res, a.ty, c=c, a=a, b=b)
        if op == 'getelementptr':
            self.skip_attrs()
            src = self.parse_type()
            self.expect(',')
            args = [self.parse_typed_value()]
            while self.accept(','):
                self.skip_attrs()
                if self.peek()[0] == 'word' and self.peek()[1] == 'align':
                    break
                args.append(self.parse_typed_value())
            return Inst('gep', res, PTR, src=src, args=args)
        if op == 'load':
            vol = self.accept('volatile')
            t = self.parse_type()
            self.expect(',')
            p = self.parse_typed_value()
            self.rest()
            return Inst('load', res, t, p=p, volatile=vol)
        if op == 'store':
            vol = self.accept('volatile')
            v = self.parse_typed_value()
            self.expect(',')
            p = self.parse_typed_value()
            self.rest()
            return Inst('store', None, None, v=v, p=p, volatile=vol)
        if op == 'alloca':
            t = self.parse_type()
            n = None
            if self.accept(','):
                if self.peek()[1] != 'align':
                    n = self.parse_typed_value()
            self.rest()
            return Inst('alloca', res, PTR, aty=t, n=n)
        if op == 'call':
            self.skip_attrs()
            rt = self.parse_type()
            fnty = None
            if self.peek()[1] == '(' and self.peek(1)[0] != 'lname' and not (self.peek(1)[1] == ')' and False):
                # explicit function type: "i32 (i32, ...) @f(...)"
                save = self.i
                self.next()
                try:
                    params, vararg = self.parse_fn_params_types()
                    fnty = FnTy(rt, params, vararg)
                except SyntaxError:
                    self.i = save
            self.skip_attrs()
            callee = self.parse_value(PTR)
            self.expect('(')
            args = []
            if not self.accept(')'):
                while True:
                    self.skip_attrs()
                    t = self.parse_type()
                    self.skip_attrs()
                    if isinstance(t, MetaTy):
                        # metadata argument (llvm.assume bundles etc.)
                        depth = 0
                        while True:
                            kk, vv = self.peek()
                            if depth == 0 and vv in (',', ')'):
                                break
                            depth += {'(': 1, ')': -1, '{': 1, '}': -1}.get(vv, 0)
                            self.next()
                        args.append(V('undef', t))
                    else:
                        args.append(self.parse_value(t))
                    if self.accept(')'):
                        break
                    self.expect(',')
            self.rest()
            return Inst('call', res, rt, callee=callee, args=args, fnty=fnty)
        if op == 'ret':
            if self.accept('void'):
                return Inst('ret', None, VOID, v=None)
            return Inst('ret', None, None, v=self.parse_typed_value())
        if op == 'br':
            if self.accept('label'):
                return Inst('br', None, None, dest=unquote_name(self.next()[1]))
            c = self.parse_typed_value()
            self.expect(',')
            self.expect('label')
            a = unquote_name(self.next()[1])
            self.expect(',')
            self.expect('label')
            b = unquote_name(self.next()[1])
            return Inst('condbr', None, None, c=c, a=a, b=b)
        if op == 'switch':
            v = self.parse_typed_value()
            self.expect(',')
            self.expect('label')
            dflt = unquote_name(self.next()[1])
            self.expect('[')
            cases = []
            while not self.accept(']'):
                cv = self.parse_typed_value()
                self.expect(',')
                self.expect('label')
                cases.append((cv, unquote_name(self.next()[1])))
            return Inst('switch', None, None, v=v, dflt=dflt, cases=cases)
        if op == 'phi':
            t = self.parse_type()
            inc = []
            while True:
                self.expect('[')
                v = self.parse_value(t)
                self.expect(',')
                lbl = unquote_name(self.next()[1])
                self.expect(']')
                inc.append((v, lbl))
                if not self.accept(','):
                    break
                if self.peek()[0] == 'meta':
                    break
            return Inst('phi', res, t, inc=inc)
        if op == 'extractvalue':
            a = self.parse_typed_value()
            idx = []
            while self.accept(','):
                idx.append(int(self.next()[1]))
            agg = a.ty
            for j in idx:
                agg = agg.fields[j] if isinstance(agg, StructTy) else agg.elem
            return Inst('extractvalue', res, agg, a=a, idx=idx)
        if op == 'unreachable':
            return Inst('unreachable')
        raise SyntaxError('unsupported instruction %r' % op)

    def rest(self):
        # trailing ", align N" / metadata
        while not self.at_end():
            self.next()


# ----------------------------------------------------------------- module

def parse_module(path):
    m = Module(path)
    lines = open(path).read().split('\n')
    i = 0
    n = len(lines)
    cur = None
    block = None
    while i < n:
        line = lines[i]
        i += 1
        s = line.strip()
        if not s or s.startswith(';') or s.startswith('source_filename') or s.startswith('target ') \
                or s.startswith('attributes ') or s.startswith('!') or s.startswith('module asm'):
            if cur is not None and s == '}':
                pass
            continue
        if cur is not None:
            if s == '}':
                cur = None
                block = None
                continue
            if re.match(r'^[-a-zA-Z$._0-9]+:', s) or re.match(r'^"[^"]+":', s):
                lbl = s.split(':')[0].strip('"')
                block = Block(lbl)
                cur.blocks.append(block)
                continue
            if block is None:
                block = Block(str(len(cur.params)))
                cur.blocks.append(block)
            if re.match(r'^(%[-\w.$"]+ = )?switch ', s) and not s.rstrip().endswith(']'):
                while not lines[i].strip().startswith(']'):
                    s += ' ' + lines[i].strip()
                    i += 1
                s += ' ]'
                i += 1
            toks = tokenize(s)
            # strip trailing metadata attachments ", !foo !N"
            cut = len(toks)
            for j in range(len(toks) - 1):
                if toks[j][1] == ',' and toks[j + 1][0] == 'meta':
                    cut = j
                    break
            toks = toks[:cut]
            block.insts.append(Parser(toks, m).parse_instruction())
            continue
        if s.startswith('%') and ' = type ' in s:
            name, body = s.split(' = type ', 1)
            p = Parser(tokenize(body), m)
            nm = unquote_name(name)
            t = m.types.get(nm) or StructTy([], False, nm)
            m.types[nm] = t
            if body.strip() != 'opaque':
                packed = body.strip().startswith('<')
                p.next()
                if packed:
                    p.next()
                body_t = p.parse_struct_body(packed)
                t.fields, t.packed = body_t.fields, packed
            continue
        if s.startswith('@'):
            m.globals.append(parse_global(s, m))
            continue
        if s.startswith('declare') or s.startswith('define'):
            f = parse_fn_header(s, m)
            m.functions.append(f)
            if f.defined:
                cur = f
                block = None
            continue
        raise SyntaxError('%s: unhandled line %r' % (path, s[:120]))
    return m


def parse_global(s, m):
    toks = tokenize(s)
    p = Parser(toks, m)
    name = unquote_name(p.next()[1])
    p.expect('=')
    linkage = 'external'
    external = False
    constant = False
    while True:
        k, v = p.peek()
        if v in ('external', 'extern_weak'):
            external = True
            p.next()
        elif v in ('private', 'internal', 'common', 'weak', 'linkonce', 'linkonce_odr', 'weak_odr',
                   'available_externally'):
            linkage = v
            p.next()
        elif v in ('dso_local', 'local_unnamed_addr', 'unnamed_addr', 'hidden', 'thread_local'):
            p.next()
        elif v == 'constant':
            constant = True
            p.next()
            break
        elif v == 'global':
            p.next()
            break
        else:
            raise SyntaxError('global %r: %r' % (name, v))
    t = p.parse_type()
    init = None
    if not external:
        init = p.parse_value(t)
    align = 1
    while not p.at_end():
        k, v = p.next()
        if v == 'align':
            align = int(p.next()[1])
    return Global(name, t, init, linkage, constant, external, align)


def parse_fn_header(s, m):
    defined = s.startswith('define')
    toks = tokenize(s.rstrip('{').strip())
    p = Parser(toks, m)
    p.next()
    linkage = 'external'
    while True:
        k, v = p.peek()
        if v in ('internal', 'private', 'linkonce_odr', 'weak', 'available_externally'):
            linkage = v
            p.next()
        elif k == 'word' and v in IGNORED_WORDS or v in ('noalias', 'zeroext', 'signext', 'noundef', 'inreg'):
            p.next()
        else:
            break
    ret = p.parse_type()
    p.skip_attrs()
    name = unquote_name(p.next()[1])
    p.expect('(')
    params = []
    vararg = False
    if not p.accept(')'):
        while True:
            if p.accept('...'):
                vararg = True
            else:
                t = p.parse_type()
                p.skip_attrs()
                pname = None
                if p.peek()[0] == 'lname':
                    pname = unquote_name(p.next()[1])
                params.append((t, pname))
            if p.accept(')'):
                break
            p.expect(',')
    f = Function(name, ret, params, vararg, linkage, defined)
    # numbered params get implicit names %0, %1 ...
    for j, (t, pn) in enumerate(f.params):
        if pn is None:
            f.params[j] = (t, str(j))
    return f
