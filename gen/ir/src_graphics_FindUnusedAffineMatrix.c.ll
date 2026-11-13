; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAffineUsage = external dso_local local_unnamed_addr global [32 x i8], align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @FindUnusedAffineMatrix() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %6
  %2 = phi i32 [ 0, %0 ], [ %7, %6 ]
  %3 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %2
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, -1
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  %7 = add nuw nsw i32 %2, 1
  %8 = icmp eq i32 %7, 32
  br i1 %8, label %9, label %1

9:                                                ; preds = %6, %1
  %10 = phi i32 [ 32, %6 ], [ %2, %1 ]
  %11 = trunc i32 %10 to i8
  ret i8 %11
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
