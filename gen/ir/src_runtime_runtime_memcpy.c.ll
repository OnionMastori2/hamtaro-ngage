; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef ptr @memcpy(ptr noundef returned %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = icmp ult i32 %2, 16
  br i1 %4, label %40, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %1 to i32
  %7 = ptrtoint ptr %0 to i32
  %8 = or i32 %6, %7
  %9 = and i32 %8, 3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %13, label %45

11:                                               ; preds = %13
  %12 = icmp ugt i32 %29, 3
  br i1 %12, label %31, label %40

13:                                               ; preds = %5, %13
  %14 = phi i32 [ %29, %13 ], [ %2, %5 ]
  %15 = phi ptr [ %26, %13 ], [ %1, %5 ]
  %16 = phi ptr [ %28, %13 ], [ %0, %5 ]
  %17 = getelementptr i32, ptr %15, i32 1
  %18 = load i32, ptr %15, align 4
  %19 = getelementptr i32, ptr %16, i32 1
  store i32 %18, ptr %16, align 4
  %20 = getelementptr i32, ptr %15, i32 2
  %21 = load i32, ptr %17, align 4
  %22 = getelementptr i32, ptr %16, i32 2
  store i32 %21, ptr %19, align 4
  %23 = getelementptr i32, ptr %15, i32 3
  %24 = load i32, ptr %20, align 4
  %25 = getelementptr i32, ptr %16, i32 3
  store i32 %24, ptr %22, align 4
  %26 = getelementptr i32, ptr %15, i32 4
  %27 = load i32, ptr %23, align 4
  %28 = getelementptr i32, ptr %16, i32 4
  store i32 %27, ptr %25, align 4
  %29 = add i32 %14, -16
  %30 = icmp ugt i32 %29, 15
  br i1 %30, label %13, label %11

31:                                               ; preds = %11, %31
  %32 = phi i32 [ %38, %31 ], [ %29, %11 ]
  %33 = phi ptr [ %35, %31 ], [ %26, %11 ]
  %34 = phi ptr [ %37, %31 ], [ %28, %11 ]
  %35 = getelementptr i32, ptr %33, i32 1
  %36 = load i32, ptr %33, align 4
  %37 = getelementptr i32, ptr %34, i32 1
  store i32 %36, ptr %34, align 4
  %38 = add nsw i32 %32, -4
  %39 = icmp ugt i32 %38, 3
  br i1 %39, label %31, label %40

40:                                               ; preds = %31, %11, %3
  %41 = phi ptr [ %0, %3 ], [ %28, %11 ], [ %37, %31 ]
  %42 = phi ptr [ %1, %3 ], [ %26, %11 ], [ %35, %31 ]
  %43 = phi i32 [ %2, %3 ], [ %29, %11 ], [ %38, %31 ]
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %58, label %45

45:                                               ; preds = %5, %40
  %46 = phi i32 [ %2, %5 ], [ %43, %40 ]
  %47 = phi ptr [ %1, %5 ], [ %42, %40 ]
  %48 = phi ptr [ %0, %5 ], [ %41, %40 ]
  br label %49

49:                                               ; preds = %45, %49
  %50 = phi i32 [ %53, %49 ], [ %46, %45 ]
  %51 = phi ptr [ %54, %49 ], [ %47, %45 ]
  %52 = phi ptr [ %56, %49 ], [ %48, %45 ]
  %53 = add i32 %50, -1
  %54 = getelementptr i8, ptr %51, i32 1
  %55 = load i8, ptr %51, align 1
  %56 = getelementptr i8, ptr %52, i32 1
  store i8 %55, ptr %52, align 1
  %57 = icmp eq i32 %53, 0
  br i1 %57, label %58, label %49

58:                                               ; preds = %49, %40
  ret ptr %0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
