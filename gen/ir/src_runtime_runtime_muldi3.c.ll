; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".text"
module asm ".align 2, 0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc i64 @__muldi3(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i64 %0 to i32
  %4 = trunc i64 %1 to i32
  %5 = and i32 %3, 65535
  %6 = lshr i32 %3, 16
  %7 = and i32 %4, 65535
  %8 = lshr i32 %4, 16
  %9 = mul nuw i32 %7, %5
  %10 = mul nuw i32 %8, %5
  %11 = mul nuw i32 %7, %6
  %12 = mul nuw i32 %8, %6
  %13 = lshr i32 %9, 16
  %14 = add i32 %11, %10
  %15 = add i32 %14, %13
  %16 = icmp ult i32 %15, %11
  %17 = add nuw i32 %12, 65536
  %18 = select i1 %16, i32 %17, i32 %12
  %19 = lshr i64 %1, 32
  %20 = trunc i64 %19 to i32
  %21 = lshr i64 %0, 32
  %22 = trunc i64 %21 to i32
  %23 = lshr i32 %15, 16
  %24 = shl i32 %15, 16
  %25 = and i32 %9, 65535
  %26 = or disjoint i32 %24, %25
  %27 = mul i32 %20, %3
  %28 = mul i32 %22, %4
  %29 = add i32 %27, %28
  %30 = add i32 %29, %23
  %31 = add i32 %30, %18
  %32 = zext i32 %31 to i64
  %33 = shl nuw i64 %32, 32
  %34 = zext i32 %26 to i64
  %35 = or disjoint i64 %33, %34
  ret i64 %35
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
