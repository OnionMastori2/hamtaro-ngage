; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsEnableMosaic(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14), align 4
  %8 = or i16 %7, 64
  store i16 %8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14), align 4
  br label %9

9:                                                ; preds = %6, %2
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 1) #2
  %10 = load i8, ptr %1, align 1
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1), align 4
  %15 = or i16 %14, 64
  store i16 %15, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1), align 4
  br label %16

16:                                               ; preds = %13, %9
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 2) #2
  %17 = load i8, ptr %1, align 1
  %18 = and i8 %17, 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2), align 4
  %22 = or i16 %21, 64
  store i16 %22, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2), align 4
  br label %23

23:                                               ; preds = %20, %16
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 4) #2
  %24 = load i8, ptr %1, align 1
  %25 = and i8 %24, 8
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3), align 4
  %29 = or i16 %28, 64
  store i16 %29, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3), align 4
  br label %30

30:                                               ; preds = %27, %23
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 8) #2
  %31 = load i8, ptr %1, align 1
  %32 = and i8 %31, 96
  %33 = icmp ne i8 %32, 0
  %34 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %35 = icmp ne i8 %34, 0
  %36 = select i1 %33, i1 %35, i1 false
  br i1 %36, label %37, label %64

37:                                               ; preds = %30
  %38 = load ptr, ptr @gRenderSlots, align 4
  br label %39

39:                                               ; preds = %37, %56
  %40 = phi ptr [ %38, %37 ], [ %57, %56 ]
  %41 = phi i8 [ %34, %37 ], [ %58, %56 ]
  %42 = phi i32 [ 0, %37 ], [ %59, %56 ]
  %43 = load i8, ptr %1, align 1
  %44 = and i8 %43, 64
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = getelementptr %struct.RenderSlot, ptr %40, i32 %42, i32 23
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46, %39
  %51 = getelementptr %struct.RenderSlot, ptr %40, i32 %42, i32 23, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = or i8 %52, 16
  store i8 %53, ptr %51, align 1
  %54 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %55 = load ptr, ptr @gRenderSlots, align 4
  br label %56

56:                                               ; preds = %46, %50
  %57 = phi ptr [ %40, %46 ], [ %55, %50 ]
  %58 = phi i8 [ %41, %46 ], [ %54, %50 ]
  %59 = add nuw nsw i32 %42, 1
  %60 = zext i8 %58 to i32
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %39, label %62

62:                                               ; preds = %56
  %63 = load i8, ptr %1, align 1
  br label %64

64:                                               ; preds = %62, %30
  %65 = phi i8 [ %63, %62 ], [ %31, %30 ]
  store i8 %65, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 2), align 1
  %66 = getelementptr i8, ptr %1, i32 1
  %67 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %66, ptr %67, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
