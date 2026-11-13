; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gAffineUsage = external dso_local local_unnamed_addr global [32 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AssignRenderAffineMatrices() local_unnamed_addr #0 {
  store i8 -1, ptr @gAffineUsage, align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 1), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 2), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 3), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 4), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 5), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 6), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 7), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 8), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 9), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 10), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 11), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 12), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 13), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 14), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 15), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 16), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 17), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 18), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 19), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 20), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 21), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 22), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 23), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 24), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 25), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 26), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 27), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 28), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 29), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 30), align 1
  store i8 -1, ptr getelementptr inbounds ([32 x i8], ptr @gAffineUsage, i32 0, i32 31), align 1
  %1 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %57, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @gRenderSlots, align 4
  br label %5

5:                                                ; preds = %3, %50
  %6 = phi i32 [ %53, %50 ], [ 0, %3 ]
  %7 = phi i32 [ %51, %50 ], [ 0, %3 ]
  %8 = phi ptr [ %52, %50 ], [ %4, %3 ]
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 23
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %5
  %13 = getelementptr %struct.RenderSlot, ptr %8, i32 0, i32 23, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = icmp eq i8 %14, -1
  br i1 %15, label %50, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = icmp eq ptr %8, %17
  br i1 %18, label %45, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 8
  %21 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 10
  br label %22

22:                                               ; preds = %19, %42
  %23 = phi ptr [ %17, %19 ], [ %43, %42 ]
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %23, i32 0, i32 23
  %25 = load i8, ptr %24, align 4
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %22
  %28 = getelementptr %struct.RenderSlot, ptr %23, i32 0, i32 23, i32 4
  %29 = load i8, ptr %28, align 4
  %30 = icmp eq i8 %29, -1
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %20, align 4
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %23, i32 0, i32 8
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i16, ptr %21, align 4
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %23, i32 0, i32 10
  %39 = load i16, ptr %38, align 4
  %40 = icmp eq i16 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i8 %29, ptr %13, align 4
  br label %50

42:                                               ; preds = %36, %31, %27, %22
  %43 = getelementptr %struct.RenderSlot, ptr %23, i32 1
  %44 = icmp eq ptr %8, %43
  br i1 %44, label %45, label %22

45:                                               ; preds = %42, %16
  %46 = trunc i32 %7 to i8
  store i8 %46, ptr %13, align 4
  %47 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %7
  store i8 1, ptr %47, align 1
  %48 = add i32 %7, 1
  %49 = and i32 %48, 255
  br label %50

50:                                               ; preds = %45, %41, %12, %5
  %51 = phi i32 [ %7, %12 ], [ %7, %5 ], [ %7, %41 ], [ %49, %45 ]
  %52 = getelementptr %struct.RenderSlot, ptr %8, i32 1
  %53 = add nuw nsw i32 %6, 1
  %54 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %55 = zext i8 %54 to i32
  %56 = icmp ult i32 %53, %55
  br i1 %56, label %5, label %57

57:                                               ; preds = %50, %0
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
