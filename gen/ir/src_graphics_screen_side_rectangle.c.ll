; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local arm_apcscc void @GetScreenSideRectangle(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #0 {
  switch i8 %0, label %29 [
    i8 0, label %8
    i8 1, label %13
    i8 2, label %17
    i8 3, label %22
  ]

8:                                                ; preds = %7
  %9 = add i16 %1, -35
  store i16 %9, ptr %3, align 2
  %10 = add i16 %1, 35
  store i16 %10, ptr %4, align 2
  %11 = add i16 %2, -24
  store i16 %11, ptr %5, align 2
  %12 = add i16 %2, 24
  br label %27

13:                                               ; preds = %7
  %14 = add i16 %1, -35
  store i16 %14, ptr %3, align 2
  %15 = add i16 %1, 35
  store i16 %15, ptr %4, align 2
  %16 = add i16 %2, 24
  store i16 %16, ptr %5, align 2
  br label %27

17:                                               ; preds = %7
  %18 = add i16 %1, -36
  store i16 %18, ptr %3, align 2
  %19 = add i16 %1, 36
  store i16 %19, ptr %4, align 2
  %20 = add i16 %2, -23
  store i16 %20, ptr %5, align 2
  %21 = add i16 %2, 23
  br label %27

22:                                               ; preds = %7
  %23 = add i16 %1, -36
  store i16 %23, ptr %3, align 2
  %24 = add i16 %1, 36
  store i16 %24, ptr %4, align 2
  %25 = add i16 %2, -23
  store i16 %25, ptr %5, align 2
  %26 = add i16 %2, 23
  br label %27

27:                                               ; preds = %8, %13, %17, %22
  %28 = phi i16 [ %26, %22 ], [ %21, %17 ], [ %16, %13 ], [ %12, %8 ]
  store i16 %28, ptr %6, align 2
  br label %29

29:                                               ; preds = %27, %7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
