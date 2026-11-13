#!/bin/bash
# Compile decomp C units to LLVM IR (armv4t, old APCS ABI to match agbcc layouts).
# Dead-store elimination is held off (-dse-memoryssa-scanlimit=0): the game
# points DMA at locals ("zero = 0; DMA3->source = &zero;"), a read the
# optimiser cannot see, and it would drop the store to the local.
# usage: build_ir.sh <decomp-root> <list-file> <out-dir>
set -u
ROOT=$1; LIST=$2; OUT=$3
mkdir -p "$OUT"
FLAGS="--target=armv4t-none-eabi -mabi=apcs-gnu -mfloat-abi=soft -std=gnu89 -O2 -mllvm -dse-memoryssa-scanlimit=0 -fno-builtin -ffreestanding -fno-strict-aliasing -fwrapv -fno-short-enums -w"
fail=0
while read -r f; do
  o="$OUT/$(echo "$f" | tr / _).ll"
  [ -f "$o" ] && [ "$o" -nt "$ROOT/$f" ] && continue
  # port-compat patches: clang rejects the Thumb-only "h" constraint and a tied-output clobber
  sed -e 's/"h"(/"r"(/g' -e 's/: "=r"(maskCopy) : "0"(mask) : "r1")/: "=r"(maskCopy) : "0"(mask))/' "$ROOT/$f" > "$OUT/.tmp.c"
  clang $FLAGS -I"$ROOT/include" -I"$ROOT/$(dirname "$f")" -S -emit-llvm "$OUT/.tmp.c" -o "$o" 2>>"$OUT/errors.txt" || { echo "FAIL $f"; fail=$((fail+1)); rm -f "$o"; }
done < "$LIST"
rm -f "$OUT/.tmp.c"
echo "failures: $fail"
