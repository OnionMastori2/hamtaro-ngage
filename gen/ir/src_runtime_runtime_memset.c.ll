; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

; Function Attrs: nofree norecurse nosync nounwind memory(write, inaccessiblemem: none)
define dso_local arm_apcscc noundef ptr @memset(ptr noundef returned %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ugt i32 %2, 3
  %5 = ptrtoint ptr %0 to i32
  %6 = and i32 %5, 3
  %7 = icmp eq i32 %6, 0
  %8 = and i1 %4, %7
  br i1 %8, label %9, label %33

9:                                                ; preds = %3
  %10 = and i32 %1, 255
  %11 = mul nuw i32 %10, 16843009
  %12 = icmp ugt i32 %2, 15
  br i1 %12, label %18, label %15

13:                                               ; preds = %18
  %14 = icmp ugt i32 %25, 3
  br i1 %14, label %15, label %33

15:                                               ; preds = %9, %13
  %16 = phi ptr [ %0, %9 ], [ %24, %13 ]
  %17 = phi i32 [ %2, %9 ], [ %25, %13 ]
  br label %27

18:                                               ; preds = %9, %18
  %19 = phi ptr [ %24, %18 ], [ %0, %9 ]
  %20 = phi i32 [ %25, %18 ], [ %2, %9 ]
  %21 = getelementptr i32, ptr %19, i32 1
  store i32 %11, ptr %19, align 4
  %22 = getelementptr i32, ptr %19, i32 2
  store i32 %11, ptr %21, align 4
  %23 = getelementptr i32, ptr %19, i32 3
  store i32 %11, ptr %22, align 4
  %24 = getelementptr i32, ptr %19, i32 4
  store i32 %11, ptr %23, align 4
  %25 = add i32 %20, -16
  %26 = icmp ugt i32 %25, 15
  br i1 %26, label %18, label %13

27:                                               ; preds = %15, %27
  %28 = phi ptr [ %30, %27 ], [ %16, %15 ]
  %29 = phi i32 [ %31, %27 ], [ %17, %15 ]
  %30 = getelementptr i32, ptr %28, i32 1
  store i32 %11, ptr %28, align 4
  %31 = add nsw i32 %29, -4
  %32 = icmp ugt i32 %31, 3
  br i1 %32, label %27, label %33

33:                                               ; preds = %27, %13, %3
  %34 = phi ptr [ %0, %3 ], [ %24, %13 ], [ %30, %27 ]
  %35 = phi i32 [ %2, %3 ], [ %25, %13 ], [ %31, %27 ]
  %36 = phi i32 [ %1, %3 ], [ %10, %13 ], [ %10, %27 ]
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = trunc i32 %36 to i8
  br label %40

40:                                               ; preds = %38, %40
  %41 = phi i32 [ %35, %38 ], [ %43, %40 ]
  %42 = phi ptr [ %34, %38 ], [ %44, %40 ]
  %43 = add i32 %41, -1
  %44 = getelementptr i8, ptr %42, i32 1
  store i8 %39, ptr %42, align 1
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %40

46:                                               ; preds = %40, %33
  ret ptr %0
}

attributes #0 = { nofree norecurse nosync nounwind memory(write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
