; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".text"
module asm ".align 2, 0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc i64 @__lshrdi3(i64 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %25, label %4

4:                                                ; preds = %2
  %5 = lshr i64 %0, 32
  %6 = trunc i64 %5 to i32
  %7 = sub i32 32, %1
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = add i32 %1, -32
  %11 = lshr i32 %6, %10
  br label %18

12:                                               ; preds = %4
  %13 = trunc i64 %0 to i32
  %14 = shl i32 %6, %7
  %15 = lshr i32 %6, %1
  %16 = lshr i32 %13, %1
  %17 = or i32 %14, %16
  br label %18

18:                                               ; preds = %12, %9
  %19 = phi i32 [ %11, %9 ], [ %17, %12 ]
  %20 = phi i32 [ 0, %9 ], [ %15, %12 ]
  %21 = zext nneg i32 %20 to i64
  %22 = shl nuw nsw i64 %21, 32
  %23 = zext i32 %19 to i64
  %24 = or disjoint i64 %22, %23
  br label %25

25:                                               ; preds = %2, %18
  %26 = phi i64 [ %24, %18 ], [ %0, %2 ]
  ret i64 %26
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
