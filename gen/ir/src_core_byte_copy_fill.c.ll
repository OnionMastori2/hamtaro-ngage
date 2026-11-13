; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @CopyBytes16(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = zext i16 %2 to i32
  %5 = icmp eq i16 %2, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %13, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %10, %6 ], [ %0, %3 ]
  %9 = phi ptr [ %12, %6 ], [ %1, %3 ]
  %10 = getelementptr i8, ptr %8, i32 1
  %11 = load i8, ptr %8, align 1
  %12 = getelementptr i8, ptr %9, i32 1
  store i8 %11, ptr %9, align 1
  %13 = add nuw nsw i32 %7, 1
  %14 = icmp eq i32 %13, %4
  br i1 %14, label %15, label %6

15:                                               ; preds = %6, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define dso_local arm_apcscc void @FillBytes16(ptr nocapture noundef writeonly %0, i8 noundef zeroext %1, i16 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = zext i16 %2 to i32
  %5 = icmp eq i16 %2, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3, %6
  %7 = phi i32 [ %10, %6 ], [ 0, %3 ]
  %8 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %9 = getelementptr i8, ptr %8, i32 1
  store i8 %1, ptr %8, align 1
  %10 = add nuw nsw i32 %7, 1
  %11 = icmp eq i32 %10, %4
  br i1 %11, label %12, label %6

12:                                               ; preds = %6, %3
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
