; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationReturn(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  %4 = load i16, ptr %3, align 2
  %5 = icmp sgt i16 %4, -1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = icmp sgt i16 %8, -1
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = icmp sgt i16 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  %16 = load i16, ptr %15, align 2
  %17 = icmp sgt i16 %16, -1
  br i1 %17, label %52, label %18

18:                                               ; preds = %14, %10, %6, %2
  %19 = phi i32 [ 3, %2 ], [ 2, %6 ], [ 1, %10 ], [ 0, %14 ]
  %20 = phi ptr [ %3, %2 ], [ %7, %6 ], [ %11, %10 ], [ %15, %14 ]
  %21 = phi i16 [ %4, %2 ], [ %8, %6 ], [ %12, %10 ], [ %16, %14 ]
  %22 = and i16 %21, 32767
  %23 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  store i16 %22, ptr %23, align 4
  store i16 0, ptr %20, align 2
  %24 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %19
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = inttoptr i32 %26 to ptr
  store ptr %27, ptr %1, align 4
  %28 = load i16, ptr %3, align 2
  %29 = icmp sgt i16 %28, -1
  br i1 %29, label %30, label %42

30:                                               ; preds = %18
  %31 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = icmp sgt i16 %32, -1
  br i1 %33, label %34, label %42

34:                                               ; preds = %30
  %35 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %36 = load i16, ptr %35, align 2
  %37 = icmp sgt i16 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  %40 = load i16, ptr %39, align 2
  %41 = icmp sgt i16 %40, -1
  br i1 %41, label %47, label %42

42:                                               ; preds = %38, %34, %30, %18
  %43 = phi i32 [ 3, %18 ], [ 2, %30 ], [ 1, %34 ], [ 0, %38 ]
  %44 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = inttoptr i32 %45 to ptr
  store ptr %46, ptr %1, align 4
  br label %47

47:                                               ; preds = %38, %42
  %48 = phi ptr [ %46, %42 ], [ %27, %38 ]
  %49 = load i16, ptr %23, align 4
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %48, i32 %50
  store ptr %51, ptr %1, align 4
  br label %54

52:                                               ; preds = %14
  %53 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  store i8 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ 0, %47 ], [ 1, %52 ]
  ret i32 %55
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
