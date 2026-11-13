; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapParticleEffect = type { i8, i8, [2 x i8], ptr }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gSceneBackgroundOffset1158 = external dso_local local_unnamed_addr global i16, align 2
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gMapParticleEffect = external dso_local local_unnamed_addr global %struct.MapParticleEffect, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSceneControlResource088F4BC9 = external dso_local constant [0 x i8], align 1
@gSceneControlResource088F4BF0 = external dso_local constant [0 x i8], align 1
@gSceneControlResource088F4BD6 = external dso_local constant [0 x i8], align 1
@gSceneCloneSlotPairs = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2
@gSceneControlResource088F4BE3 = external dso_local constant [0 x i8], align 1
@gSceneControlResource088976AC = external dso_local constant [0 x i8], align 1
@gSceneControlResource088976B4 = external dso_local constant [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSceneControlResource088F4D77 = external dso_local constant [0 x i8], align 1
@gWordChoiceState = external dso_local local_unnamed_addr global i16, align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetSceneBackgroundOffset(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i16 -31, ptr @gSceneBackgroundOffset1158, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSceneSlotVelocity(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr i8, ptr %0, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or disjoint i32 %12, %16
  %18 = getelementptr i8, ptr %0, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = or disjoint i32 %17, %21
  %23 = getelementptr i8, ptr %0, i32 1
  %24 = load i8, ptr %23, align 1
  switch i8 %24, label %33 [
    i8 0, label %25
    i8 1, label %27
    i8 2, label %29
  ]

25:                                               ; preds = %1
  %26 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  br label %31

27:                                               ; preds = %1
  %28 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 1
  br label %31

29:                                               ; preds = %1
  %30 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 2
  br label %31

31:                                               ; preds = %25, %27, %29
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ], [ %26, %25 ]
  store i32 %22, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %1
  ret i32 6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSceneSlotPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %0, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 8
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr i8, ptr %0, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 16
  %17 = or disjoint i32 %12, %16
  %18 = getelementptr i8, ptr %0, i32 5
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = or disjoint i32 %17, %21
  %23 = getelementptr i8, ptr %0, i32 1
  %24 = load i8, ptr %23, align 1
  switch i8 %24, label %33 [
    i8 0, label %25
    i8 1, label %27
    i8 2, label %29
  ]

25:                                               ; preds = %1
  %26 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  br label %31

27:                                               ; preds = %1
  %28 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 4
  br label %31

29:                                               ; preds = %1
  %30 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  br label %31

31:                                               ; preds = %25, %27, %29
  %32 = phi ptr [ %30, %29 ], [ %28, %27 ], [ %26, %25 ]
  store i32 %22, ptr %32, align 4
  br label %33

33:                                               ; preds = %31, %1
  ret i32 6
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackAlignSceneSlot30X(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = tail call arm_apcscc ptr @GetVideoState() #8
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = getelementptr %struct.VideoState, ptr %4, i32 0, i32 14, i32 1, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = load i16, ptr @gSceneBackgroundOffset1158, align 2
  %9 = sub i16 %7, %8
  %10 = getelementptr inbounds %struct.VideoState, ptr %4, i32 0, i32 14, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = add i16 %11, -73
  %13 = zext i16 %9 to i32
  %14 = zext i16 %12 to i32
  %15 = sub nsw i32 %14, %13
  %16 = getelementptr %struct.RenderSlot, ptr %5, i32 30, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %15, 16
  %19 = add i32 %18, %17
  store i32 %19, ptr %16, align 4
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackAlignSceneSlot30XZ(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = tail call arm_apcscc ptr @GetVideoState() #8
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = getelementptr %struct.VideoState, ptr %4, i32 0, i32 14, i32 1, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = load i16, ptr @gSceneBackgroundOffset1158, align 2
  %9 = sub i16 %7, %8
  %10 = getelementptr inbounds %struct.VideoState, ptr %4, i32 0, i32 14, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = add i16 %11, -73
  %13 = zext i16 %9 to i32
  %14 = zext i16 %12 to i32
  %15 = sub nsw i32 %14, %13
  %16 = getelementptr %struct.RenderSlot, ptr %5, i32 30, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = shl i32 %15, 16
  %19 = add i32 %18, %17
  store i32 %19, ptr %16, align 4
  %20 = getelementptr %struct.VideoState, ptr %4, i32 0, i32 14, i32 1, i32 2
  %21 = load i16, ptr %20, align 4
  %22 = add i16 %21, 56
  %23 = getelementptr inbounds %struct.VideoState, ptr %4, i32 0, i32 14, i32 0, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = add i16 %24, 3
  %26 = zext i16 %22 to i32
  %27 = zext i16 %25 to i32
  %28 = sub nsw i32 %27, %26
  %29 = getelementptr %struct.RenderSlot, ptr %5, i32 30, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = shl i32 %28, 16
  %32 = getelementptr %struct.RenderSlot, ptr %5, i32 30, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %30, -3178496
  %35 = add i32 %34, %33
  %36 = add i32 %35, %31
  store i32 %36, ptr %29, align 4
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSceneSlotRectangle(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #8
  store i8 0, ptr @gMapParticleEffect, align 4
  %3 = load i8, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr i8, ptr %0, i32 4
  %7 = load i8, ptr %6, align 1
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = zext i8 %3 to i32
  %10 = mul nuw nsw i32 %9, 104
  %11 = ptrtoint ptr %8 to i32
  %12 = add i32 %10, %11
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 16
  %17 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 2
  %18 = load i16, ptr %17, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %8, i32 30, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = trunc i32 %16 to i16
  %23 = add i16 %18, %22
  %24 = getelementptr %struct.RenderSlot, ptr %8, i32 30, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 16
  %27 = trunc i32 %21 to i16
  %28 = add i16 %23, %27
  %29 = trunc i32 %26 to i16
  %30 = add i16 %28, %29
  %31 = getelementptr %struct.RenderSlot, ptr %8, i32 12, i32 5
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 23
  %34 = load i8, ptr %33, align 4
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %80, label %36

36:                                               ; preds = %1
  %37 = getelementptr i8, ptr %0, i32 3
  %38 = load i8, ptr %37, align 1
  %39 = getelementptr %struct.RenderSlot, ptr %8, i32 12, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = load i16, ptr @gSceneBackgroundOffset1158, align 2
  %42 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = lshr i32 %45, 16
  %47 = trunc i32 %46 to i16
  %48 = getelementptr %struct.RenderSlot, ptr %8, i32 30, i32 3
  %49 = load i32, ptr %48, align 4
  %50 = lshr i32 %49, 16
  %51 = trunc i32 %50 to i16
  %52 = sub i16 %43, %41
  %53 = add i16 %52, -31
  %54 = add i16 %53, %47
  %55 = add i16 %54, %51
  %56 = getelementptr i8, ptr %0, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = add i32 %40, 1048576
  %59 = ashr i32 %58, 16
  %60 = sext i16 %55 to i32
  %61 = sext i8 %57 to i32
  %62 = add nsw i32 %60, %61
  %63 = icmp sgt i32 %59, %62
  %64 = sext i8 %38 to i32
  %65 = add nsw i32 %60, %64
  %66 = icmp slt i32 %59, %65
  %67 = select i1 %63, i1 %66, i1 false
  br i1 %67, label %68, label %80

68:                                               ; preds = %36
  %69 = add i32 %32, 1048576
  %70 = ashr i32 %69, 16
  %71 = sext i16 %30 to i32
  %72 = sext i8 %5 to i32
  %73 = add nsw i32 %71, %72
  %74 = icmp sgt i32 %70, %73
  %75 = sext i8 %7 to i32
  %76 = add nsw i32 %71, %75
  %77 = icmp slt i32 %70, %76
  %78 = select i1 %74, i1 %77, i1 false
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i8 1, ptr @gMapParticleEffect, align 4
  br label %80

80:                                               ; preds = %79, %68, %36, %1
  ret i32 5
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAimSceneSlot26(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #8
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 10, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 13, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = sub i32 %5, %7
  %9 = getelementptr %struct.RenderSlot, ptr %3, i32 10, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.RenderSlot, ptr %3, i32 13, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = getelementptr %struct.RenderSlot, ptr %3, i32 24, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %3, i32 30, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, %15
  %19 = lshr i32 %18, 16
  %20 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 1
  %21 = load i16, ptr %20, align 2
  %22 = trunc i32 %19 to i16
  %23 = load i16, ptr @gSceneBackgroundOffset1158, align 2
  %24 = add i16 %21, -51
  %25 = sub i16 %24, %23
  %26 = add i16 %25, %22
  %27 = getelementptr %struct.RenderSlot, ptr %3, i32 24, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr %struct.RenderSlot, ptr %3, i32 30, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, %28
  %32 = getelementptr %struct.RenderSlot, ptr %3, i32 30, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = add i32 %31, %33
  %35 = lshr i32 %34, 16
  %36 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = trunc i32 %35 to i16
  %39 = add i16 %37, 40
  %40 = add i16 %39, %38
  %41 = ashr i32 %8, 1
  %42 = and i32 %41, -65536
  %43 = add i32 %42, %7
  %44 = ashr i32 %43, 16
  %45 = sext i16 %26 to i32
  %46 = icmp sgt i32 %44, %45
  %47 = sub nsw i32 %44, %45
  %48 = tail call i32 @llvm.abs.i32(i32 %47, i1 true)
  %49 = select i1 %46, i32 1, i32 65535
  %50 = ashr i32 %13, 1
  %51 = and i32 %50, -65536
  %52 = add i32 %51, %12
  %53 = ashr i32 %52, 16
  %54 = sext i16 %40 to i32
  tail call void asm sideeffect "", "r,r"(i32 %53, i32 %54) #9, !srcloc !4
  %55 = sub nsw i32 %53, %54
  %56 = shl nuw i32 %48, 16
  %57 = shl i32 %55, 16
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %1
  %60 = shl i32 %55, 23
  %61 = ashr exact i32 %60, 16
  %62 = shl i32 %48, 23
  %63 = ashr exact i32 %62, 16
  %64 = tail call arm_apcscc i32 @DivideFixed8(i32 noundef %61, i32 noundef %63) #8
  %65 = trunc i32 %49 to i16
  %66 = shl i16 %65, 8
  %67 = shl i32 %64, 16
  %68 = ashr exact i32 %67, 8
  br label %77

69:                                               ; preds = %1
  %70 = shl i32 %48, 23
  %71 = ashr exact i32 %70, 16
  %72 = shl i32 %55, 23
  %73 = ashr exact i32 %72, 16
  %74 = tail call arm_apcscc i32 @DivideFixed8(i32 noundef %71, i32 noundef %73) #8
  %75 = mul i32 %74, %49
  %76 = trunc i32 %75 to i16
  br label %77

77:                                               ; preds = %69, %59
  %78 = phi i32 [ %68, %59 ], [ 65536, %69 ]
  %79 = phi i16 [ %66, %59 ], [ %76, %69 ]
  %80 = zext i16 %40 to i32
  %81 = shl nuw i32 %80, 16
  %82 = zext i16 %26 to i32
  %83 = sext i16 %79 to i32
  %84 = shl nsw i32 %83, 8
  %85 = getelementptr %struct.RenderSlot, ptr %3, i32 26, i32 6
  store i32 %84, ptr %85, align 4
  %86 = getelementptr %struct.RenderSlot, ptr %3, i32 26, i32 6, i32 2
  store i32 %78, ptr %86, align 4
  %87 = shl nuw i32 %82, 16
  %88 = getelementptr %struct.RenderSlot, ptr %3, i32 26, i32 3
  store i32 %87, ptr %88, align 4
  %89 = getelementptr %struct.RenderSlot, ptr %3, i32 26, i32 5
  store i32 %81, ptr %89, align 4
  %90 = shl nsw i32 %83, 1
  %91 = getelementptr %struct.RenderSlot, ptr %3, i32 26, i32 7
  store i32 %90, ptr %91, align 4
  %92 = ashr i32 %78, 7
  %93 = getelementptr %struct.RenderSlot, ptr %3, i32 26, i32 7, i32 2
  store i32 %92, ptr %93, align 4
  ret i32 0
}

declare dso_local arm_apcscc i32 @DivideFixed8(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSceneActorRectangles(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr @gRenderClassSlots1, align 1
  %6 = zext i8 %5 to i32
  store i8 0, ptr @gMapParticleEffect, align 4
  %7 = getelementptr i8, ptr %2, i32 2738
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %9) #9, !srcloc !5
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 3
  %11 = getelementptr i16, ptr %10, i32 1
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  tail call void asm sideeffect "", "r"(i32 %13) #9, !srcloc !6
  %14 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 5
  %15 = getelementptr i16, ptr %14, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  tail call void asm sideeffect "", "r,r,{r9}"(i32 %9, i32 %13, i32 %17) #9, !srcloc !7
  %18 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %19 = getelementptr i16, ptr %18, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %21) #9, !srcloc !8
  %22 = load i32, ptr %18, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %24 = getelementptr i16, ptr %23, i32 1
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = load i32, ptr %23, align 4
  %28 = and i32 %27, -65536
  %29 = add i32 %28, -524288
  %30 = add i32 %27, 524288
  %31 = add i32 %22, -1835008
  %32 = ashr i32 %31, 16
  %33 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 3
  %34 = getelementptr i8, ptr %2, i32 2730
  %35 = load i16, ptr %34, align 2
  %36 = zext i16 %35 to i32
  tail call void asm sideeffect "", "r"(i32 %36) #9, !srcloc !9
  %37 = load i32, ptr %33, align 4
  %38 = ashr i32 %37, 16
  %39 = icmp slt i32 %32, %38
  %40 = add i32 %22, 1048576
  %41 = ashr i32 %40, 16
  %42 = icmp sgt i32 %41, %38
  %43 = select i1 %39, i1 %42, i1 false
  %44 = shl nuw i32 %9, 16
  %45 = icmp slt i32 %29, %44
  %46 = select i1 %43, i1 %45, i1 false
  %47 = sext i16 %8 to i32
  %48 = ashr i32 %30, 16
  %49 = icmp sgt i32 %48, %47
  %50 = select i1 %46, i1 %49, i1 false
  br i1 %50, label %51, label %52

51:                                               ; preds = %1
  store i8 1, ptr @gMapParticleEffect, align 4
  br label %52

52:                                               ; preds = %51, %1
  tail call void asm sideeffect "", "{r0}"(i32 %13) #9, !srcloc !10
  %53 = shl nuw i32 %13, 16
  tail call void asm sideeffect "", "{r3}"(i32 %17) #9, !srcloc !11
  %54 = shl nuw i32 %17, 16
  tail call void asm sideeffect "", "r"(i32 -524288) #9, !srcloc !12
  %55 = add i32 %54, -524288
  tail call void asm sideeffect "", "{r3}"(i32 1048576) #9, !srcloc !13
  tail call void asm sideeffect "", "r"(i32 524288) #9, !srcloc !14
  %56 = add i32 %54, 524288
  tail call void asm sideeffect "", "{r0}"(i32 -1835008) #9, !srcloc !15
  %57 = add i32 %53, -1835008
  %58 = shl nuw i32 %36, 16
  %59 = sext i16 %35 to i32
  %60 = icmp slt i32 %57, %58
  %61 = add i32 %53, 1048576
  %62 = ashr exact i32 %61, 16
  %63 = icmp sgt i32 %62, %59
  %64 = select i1 %60, i1 %63, i1 false
  %65 = icmp slt i32 %55, %44
  %66 = select i1 %64, i1 %65, i1 false
  %67 = ashr exact i32 %56, 16
  %68 = icmp sgt i32 %67, %47
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %73

70:                                               ; preds = %52
  %71 = load i8, ptr @gMapParticleEffect, align 4
  %72 = or i8 %71, 2
  store i8 %72, ptr @gMapParticleEffect, align 4
  br label %73

73:                                               ; preds = %70, %52
  tail call void asm sideeffect "", "r"(i32 %21) #9, !srcloc !16
  %74 = sext i16 %20 to i32
  %75 = sext i16 %12 to i32
  %76 = icmp sgt i16 %20, %12
  %77 = sub nsw i32 %75, %74
  %78 = sub nsw i32 %74, %75
  %79 = select i1 %76, i32 %78, i32 %77
  %80 = tail call i16 @llvm.smin.i16(i16 %20, i16 %12)
  %81 = zext i16 %80 to i32
  %82 = sdiv i32 %79, 2
  %83 = add nsw i32 %82, %81
  tail call void asm sideeffect "", "r"(i32 %26) #9, !srcloc !17
  %84 = shl i32 %83, 16
  tail call void asm sideeffect "", "r"(i32 -1835008) #9, !srcloc !18
  %85 = add i32 %84, -1835008
  tail call void asm sideeffect "", "{r3}"(i32 2883584) #9, !srcloc !19
  tail call void asm sideeffect "", "r"(i32 -524288) #9, !srcloc !20
  tail call void asm sideeffect "", "r"(i32 1048576) #9, !srcloc !21
  %86 = icmp slt i32 %85, %58
  %87 = add i32 %84, 1048576
  %88 = ashr exact i32 %87, 16
  %89 = icmp sgt i32 %88, %59
  %90 = select i1 %86, i1 %89, i1 false
  br i1 %90, label %91, label %113

91:                                               ; preds = %73
  %92 = icmp sgt i16 %25, %16
  %93 = sext i16 %25 to i32
  %94 = sext i16 %16 to i32
  %95 = sub nsw i32 %93, %94
  %96 = sub nsw i32 %94, %93
  %97 = select i1 %92, i32 %95, i32 %96
  %98 = sdiv i32 %97, 2
  %99 = tail call i16 @llvm.smin.i16(i16 %25, i16 %16)
  %100 = zext i16 %99 to i32
  %101 = add nsw i32 %98, %100
  %102 = shl i32 %101, 16
  %103 = add i32 %102, 524288
  %104 = add i32 %102, -524288
  %105 = ashr exact i32 %104, 16
  %106 = icmp slt i32 %105, %47
  %107 = ashr exact i32 %103, 16
  %108 = icmp sgt i32 %107, %47
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %110, label %113

110:                                              ; preds = %91
  %111 = load i8, ptr @gMapParticleEffect, align 4
  %112 = or i8 %111, 3
  store i8 %112, ptr @gMapParticleEffect, align 4
  br label %113

113:                                              ; preds = %91, %110, %73
  tail call void asm sideeffect "", "{r3}"(i32 %44) #9, !srcloc !22
  %114 = icmp sgt i16 %8, 216
  br i1 %114, label %118, label %115

115:                                              ; preds = %113
  tail call void asm sideeffect "", "r"(i32 %58) #9, !srcloc !23
  %116 = add i16 %35, 48
  %117 = icmp ult i16 %116, 369
  br i1 %117, label %121, label %118

118:                                              ; preds = %115, %113
  %119 = load i8, ptr @gMapParticleEffect, align 4
  %120 = or i8 %119, 4
  store i8 %120, ptr @gMapParticleEffect, align 4
  br label %121

121:                                              ; preds = %115, %118
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSceneCloneSources(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #8
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 24, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 30, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = lshr i32 %8, 16
  %10 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = load i16, ptr @gSceneBackgroundOffset1158, align 2
  %13 = trunc i32 %9 to i16
  %14 = add i16 %11, -31
  %15 = sub i16 %14, %12
  %16 = add i16 %15, %13
  %17 = getelementptr %struct.RenderSlot, ptr %3, i32 24, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %3, i32 30, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = getelementptr %struct.RenderSlot, ptr %3, i32 30, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %21, %23
  %25 = lshr i32 %24, 16
  %26 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 2
  %27 = load i16, ptr %26, align 4
  %28 = trunc i32 %25 to i16
  %29 = add i16 %27, %28
  %30 = add i16 %16, -32
  %31 = add i16 %29, 42
  %32 = sext i16 %30 to i32
  %33 = sext i16 %31 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %32, i32 noundef 0, i32 noundef %33, ptr noundef nonnull @gSceneControlResource088F4BC9) #8
  %34 = add i16 %29, 58
  %35 = sext i16 %34 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %32, i32 noundef 0, i32 noundef %35, ptr noundef nonnull @gSceneControlResource088F4BF0) #8
  %36 = add i16 %16, 4
  %37 = sext i16 %36 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %37, i32 noundef 0, i32 noundef %33, ptr noundef nonnull @gSceneControlResource088F4BD6) #8
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %37, i32 noundef 0, i32 noundef %35, ptr noundef nonnull @gSceneControlResource088F4BF0) #8
  store i8 0, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  store i8 1, ptr getelementptr (i8, ptr @gMapParticleEffect, i32 5), align 1
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCopySceneClonePair(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 26
  %4 = getelementptr %struct.RenderSlot, ptr %2, i32 28
  %5 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  %6 = icmp ult i8 %5, 7
  br i1 %6, label %7, label %41

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr (i8, ptr @gMapParticleEffect, i32 5), align 1
  %9 = add i8 %8, -1
  store i8 %9, ptr getelementptr (i8, ptr @gMapParticleEffect, i32 5), align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %7
  %12 = shl nuw nsw i8 %5, 1
  %13 = zext nneg i8 %12 to i32
  %14 = getelementptr i16, ptr @gSceneCloneSlotPairs, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %16
  %18 = or disjoint i32 %13, 1
  %19 = getelementptr i16, ptr @gSceneCloneSlotPairs, i32 %18
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr %struct.RenderSlot, ptr %2, i32 %21
  store i8 1, ptr getelementptr (i8, ptr @gMapParticleEffect, i32 5), align 1
  %23 = tail call arm_apcscc ptr @memcpy(ptr noundef %17, ptr noundef %3, i32 noundef 104) #8
  %24 = tail call arm_apcscc ptr @memcpy(ptr noundef %22, ptr noundef %4, i32 noundef 104) #8
  %25 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1048576
  store i32 %27, ptr %25, align 4
  %28 = getelementptr %struct.RenderSlot, ptr %2, i32 28, i32 4
  %29 = load i32, ptr %28, align 4
  %30 = add i32 %29, 1048576
  store i32 %30, ptr %28, align 4
  %31 = getelementptr %struct.RenderSlot, ptr %2, i32 %16, i32 1
  store i32 ptrtoint (ptr @gSceneControlResource088F4BE3 to i32), ptr %31, align 4
  %32 = getelementptr %struct.RenderSlot, ptr %2, i32 %21, i32 1
  store i32 ptrtoint (ptr @gSceneControlResource088F4BE3 to i32), ptr %32, align 4
  %33 = getelementptr %struct.RenderSlot, ptr %2, i32 %16, i32 16
  %34 = load i16, ptr %33, align 4
  %35 = icmp eq i16 %34, 5
  br i1 %35, label %36, label %37

36:                                               ; preds = %11
  tail call void asm sideeffect "", "r"(i32 ptrtoint (ptr @gSceneControlResource088976AC to i32)) #9, !srcloc !24
  br label %37

37:                                               ; preds = %11, %36
  %38 = phi i32 [ ptrtoint (ptr @gSceneControlResource088976AC to i32), %36 ], [ ptrtoint (ptr @gSceneControlResource088976B4 to i32), %11 ]
  store i32 %38, ptr %17, align 4
  store i32 %38, ptr %22, align 4
  %39 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  %40 = add i8 %39, 1
  store i8 %40, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  br label %41

41:                                               ; preds = %37, %7, %1
  ret i32 0
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSceneCorridor(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr @gRenderClassSlots1, align 1
  %6 = zext i8 %5 to i32
  store i8 0, ptr @gMapParticleEffect, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 23, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 23, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 23, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = add nuw nsw i32 %14, %11
  %16 = getelementptr %struct.RenderSlot, ptr %2, i32 28, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %2, i32 28, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = lshr i32 %19, 16
  %21 = getelementptr %struct.RenderSlot, ptr %2, i32 28, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = add nuw nsw i32 %23, %20
  %25 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = ashr i32 %26, 16
  %28 = add i32 %8, -2097152
  %29 = ashr i32 %28, 16
  %30 = icmp sgt i32 %27, %29
  %31 = add i32 %17, 1572864
  %32 = ashr i32 %31, 16
  %33 = icmp slt i32 %27, %32
  %34 = select i1 %30, i1 %33, i1 false
  br i1 %34, label %35, label %47

35:                                               ; preds = %1
  %36 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = ashr i32 %37, 16
  %39 = shl i32 %15, 16
  %40 = ashr exact i32 %39, 16
  %41 = icmp sgt i32 %38, %40
  %42 = shl i32 %24, 16
  %43 = ashr exact i32 %42, 16
  %44 = icmp slt i32 %38, %43
  %45 = select i1 %41, i1 %44, i1 false
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  store i8 1, ptr @gMapParticleEffect, align 4
  br label %47

47:                                               ; preds = %46, %35, %1
  %48 = phi i8 [ 3, %46 ], [ 2, %35 ], [ 2, %1 ]
  %49 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = ashr i32 %50, 16
  %52 = icmp sgt i32 %51, %29
  %53 = icmp slt i32 %51, %32
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 5
  %57 = load i32, ptr %56, align 4
  %58 = ashr i32 %57, 16
  %59 = shl i32 %15, 16
  %60 = ashr exact i32 %59, 16
  %61 = icmp sgt i32 %58, %60
  %62 = shl i32 %24, 16
  %63 = ashr exact i32 %62, 16
  %64 = icmp slt i32 %58, %63
  %65 = select i1 %61, i1 %64, i1 false
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  store i8 %48, ptr @gMapParticleEffect, align 4
  br label %67

67:                                               ; preds = %66, %55, %47
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSceneRandomDelay(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 4) #8
  %3 = mul i16 %2, 60
  %4 = add i16 %3, 60
  store i16 %4, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSceneSignedSaveValue(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i8, ptr %0, align 1
  %3 = sext i8 %2 to i16
  tail call arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext %3) #8
  ret i32 1
}

declare dso_local arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSceneBackgroundSide(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #8
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 24, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 30, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = lshr i32 %8, 16
  %10 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = trunc i32 %9 to i16
  %13 = add i16 %11, %12
  %14 = sext i16 %13 to i32
  %15 = getelementptr %struct.RenderSlot, ptr %3, i32 10, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = ashr i32 %16, 16
  %18 = icmp sgt i32 %17, %14
  %19 = zext i1 %18 to i8
  store i8 %19, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 2), align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackOscillateSceneBackgroundOffset(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 2), align 2
  %3 = icmp eq i8 %2, 0
  %4 = load i16, ptr @gSceneBackgroundOffset1158, align 2
  %5 = select i1 %3, i16 2, i16 -2
  %6 = add i16 %5, %4
  store i16 %6, ptr @gSceneBackgroundOffset1158, align 2
  %7 = icmp sgt i16 %6, 64
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = icmp slt i16 %6, -118
  br i1 %9, label %10, label %12

10:                                               ; preds = %8, %1
  %11 = phi i8 [ 1, %1 ], [ 0, %8 ]
  store i8 %11, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 2), align 2
  br label %12

12:                                               ; preds = %10, %8
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackApproachSceneBackgroundOffset(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  store i8 0, ptr @gMapParticleEffect, align 4
  %2 = load i16, ptr @gSceneBackgroundOffset1158, align 2
  %3 = add i16 %2, 32767
  %4 = icmp ult i16 %3, 32736
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add nuw nsw i16 %2, 1
  store i16 %6, ptr @gSceneBackgroundOffset1158, align 2
  br label %15

7:                                                ; preds = %1
  %8 = zext i16 %2 to i32
  %9 = shl nuw i32 %8, 16
  %10 = tail call i32 asm sideeffect "", "={r1},{r1}"(i32 %9) #9, !srcloc !25
  %11 = icmp eq i32 %10, -2031616
  br i1 %11, label %14, label %12

12:                                               ; preds = %7
  %13 = add i16 %2, -1
  store i16 %13, ptr @gSceneBackgroundOffset1158, align 2
  br label %15

14:                                               ; preds = %7
  store i8 1, ptr @gMapParticleEffect, align 4
  br label %15

15:                                               ; preds = %12, %14, %5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSceneBackgroundOffsetBytes(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i8, ptr %0, align 1
  %3 = sext i8 %2 to i16
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = shl nuw i16 %6, 8
  %8 = or i16 %7, %3
  store i16 %8, ptr @gSceneBackgroundOffset1158, align 2
  ret i32 2
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreSceneBackgroundDistance(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #8
  %3 = getelementptr %struct.VideoState, ptr %2, i32 0, i32 14, i32 1, i32 1
  %4 = load i16, ptr %3, align 2
  %5 = sub i16 104, %4
  store i16 %5, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEnsureSceneSlot37(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 37, i32 23
  %4 = load i8, ptr %3, align 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 37, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, ptrtoint (ptr @gSceneControlResource088F4D77 to i32)
  br i1 %9, label %11, label %10

10:                                               ; preds = %6, %1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 37, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gSceneControlResource088F4D77) #8
  br label %11

11:                                               ; preds = %10, %6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCaptureWordChoiceState(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i16, ptr @gWordChoiceState, align 2
  %3 = trunc i16 %2 to i8
  store i8 %3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 431), align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-builtins" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 6257}
!5 = !{i64 8732}
!6 = !{i64 8842}
!7 = !{i64 8956}
!8 = !{i64 9061}
!9 = !{i64 9588}
!10 = !{i64 10214}
!11 = !{i64 10321}
!12 = !{i64 10458}
!13 = !{i64 10609}
!14 = !{i64 10760}
!15 = !{i64 10931}
!16 = !{i64 11853}
!17 = !{i64 12313}
!18 = !{i64 12877}
!19 = !{i64 13005}
!20 = !{i64 13205}
!21 = !{i64 13353}
!22 = !{i64 14114}
!23 = !{i64 14280}
!24 = !{i64 16913}
!25 = !{i64 19452}
