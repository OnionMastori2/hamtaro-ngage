; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderPriority = type { i32, i8, i8, i16 }

@gRenderOrder = external dso_local local_unnamed_addr global ptr, align 4
@gRenderPriority = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @RepositionRenderOrder(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = trunc i32 %0 to i8
  %5 = load ptr, ptr @gRenderOrder, align 4
  %6 = load ptr, ptr @gRenderPriority, align 4
  %7 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %15, %3
  %10 = phi i32 [ 0, %3 ], [ %25, %15 ]
  %11 = trunc i32 %1 to i8
  %12 = getelementptr inbounds %struct.RenderPriority, ptr %6, i32 0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = icmp eq i8 %13, %11
  br i1 %14, label %42, label %27

15:                                               ; preds = %3, %15
  %16 = phi ptr [ %19, %15 ], [ %5, %3 ]
  %17 = phi ptr [ %22, %15 ], [ %6, %3 ]
  %18 = phi i32 [ %23, %15 ], [ 0, %3 ]
  %19 = getelementptr i8, ptr %16, i32 1
  %20 = load i8, ptr %16, align 1
  %21 = getelementptr inbounds %struct.RenderPriority, ptr %17, i32 0, i32 2
  store i8 %20, ptr %21, align 1
  %22 = getelementptr %struct.RenderPriority, ptr %17, i32 1
  %23 = add nuw nsw i32 %18, 1
  %24 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %25 = zext i8 %24 to i32
  %26 = icmp ult i32 %23, %25
  br i1 %26, label %15, label %9

27:                                               ; preds = %9, %35
  %28 = phi i8 [ %40, %35 ], [ %13, %9 ]
  %29 = phi ptr [ %36, %35 ], [ %5, %9 ]
  %30 = phi ptr [ %37, %35 ], [ %6, %9 ]
  %31 = phi i32 [ %38, %35 ], [ %10, %9 ]
  %32 = icmp eq i8 %28, %4
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %29, i32 1
  store i8 %28, ptr %29, align 1
  br label %35

35:                                               ; preds = %33, %27
  %36 = phi ptr [ %34, %33 ], [ %29, %27 ]
  %37 = getelementptr %struct.RenderPriority, ptr %30, i32 1
  %38 = add i32 %31, -1
  %39 = getelementptr %struct.RenderPriority, ptr %30, i32 1, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, %11
  br i1 %41, label %42, label %27

42:                                               ; preds = %35, %9
  %43 = phi i32 [ %10, %9 ], [ %38, %35 ]
  %44 = phi ptr [ %6, %9 ], [ %37, %35 ]
  %45 = phi ptr [ %5, %9 ], [ %36, %35 ]
  %46 = trunc i32 %2 to i8
  switch i8 %46, label %55 [
    i8 1, label %47
    i8 0, label %50
  ]

47:                                               ; preds = %42
  %48 = getelementptr i8, ptr %45, i32 1
  store i8 %11, ptr %45, align 1
  %49 = getelementptr %struct.RenderPriority, ptr %44, i32 1
  br label %50

50:                                               ; preds = %42, %47
  %51 = phi ptr [ %44, %42 ], [ %49, %47 ]
  %52 = phi ptr [ %45, %42 ], [ %48, %47 ]
  %53 = getelementptr i8, ptr %52, i32 1
  store i8 %4, ptr %52, align 1
  %54 = add i32 %43, -1
  br label %55

55:                                               ; preds = %42, %50
  %56 = phi i32 [ %43, %42 ], [ %54, %50 ]
  %57 = phi ptr [ %44, %42 ], [ %51, %50 ]
  %58 = phi ptr [ %45, %42 ], [ %53, %50 ]
  %59 = icmp eq i32 %56, 0
  br i1 %59, label %74, label %60

60:                                               ; preds = %55, %69
  %61 = phi ptr [ %70, %69 ], [ %58, %55 ]
  %62 = phi ptr [ %71, %69 ], [ %57, %55 ]
  %63 = phi i32 [ %72, %69 ], [ %56, %55 ]
  %64 = getelementptr inbounds %struct.RenderPriority, ptr %62, i32 0, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, %4
  br i1 %66, label %69, label %67

67:                                               ; preds = %60
  %68 = getelementptr i8, ptr %61, i32 1
  store i8 %65, ptr %61, align 1
  br label %69

69:                                               ; preds = %67, %60
  %70 = phi ptr [ %68, %67 ], [ %61, %60 ]
  %71 = getelementptr %struct.RenderPriority, ptr %62, i32 1
  %72 = add i32 %63, -1
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %60

74:                                               ; preds = %69, %55
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
