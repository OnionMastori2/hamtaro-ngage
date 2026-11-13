; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i16 @CalculateChecksum(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp ugt i32 %1, 1
  br i1 %3, label %4, label %14

4:                                                ; preds = %2, %4
  %5 = phi i32 [ %11, %4 ], [ 0, %2 ]
  %6 = phi ptr [ %8, %4 ], [ %0, %2 ]
  %7 = phi i32 [ %12, %4 ], [ %1, %2 ]
  %8 = getelementptr i16, ptr %6, i32 1
  %9 = load i16, ptr %6, align 2
  %10 = zext i16 %9 to i32
  %11 = add i32 %5, %10
  %12 = add i32 %7, -2
  %13 = icmp ugt i32 %12, 1
  br i1 %13, label %4, label %14

14:                                               ; preds = %4, %2
  %15 = phi i32 [ %1, %2 ], [ %12, %4 ]
  %16 = phi ptr [ %0, %2 ], [ %8, %4 ]
  %17 = phi i32 [ 0, %2 ], [ %11, %4 ]
  %18 = icmp eq i32 %15, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i8, ptr %16, align 1
  %21 = zext i8 %20 to i32
  %22 = add i32 %17, %21
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i32 [ %22, %19 ], [ %17, %14 ]
  %25 = and i32 %24, 65535
  %26 = lshr i32 %24, 16
  %27 = add nuw nsw i32 %25, %26
  %28 = lshr i32 %27, 16
  %29 = add nuw nsw i32 %28, %27
  %30 = trunc i32 %29 to i16
  %31 = xor i16 %30, -1
  ret i16 %31
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
