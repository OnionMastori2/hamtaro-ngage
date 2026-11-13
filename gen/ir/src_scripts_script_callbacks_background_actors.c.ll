; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gBackgroundActorSlots = external dso_local local_unnamed_addr constant [0 x [6 x i8]], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gBackgroundActorDirections = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gBackgroundActorAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gBackgroundActorVectors = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gBackgroundActorAlternatingBank = external dso_local local_unnamed_addr global i8, align 1
@gBackgroundActorCountdowns = external dso_local local_unnamed_addr global [0 x [5 x i8]], align 1
@gBackgroundActorOffsets = external dso_local local_unnamed_addr global [0 x i8], align 1
@gBackgroundActorInitialTimers = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gBackgroundActorChildAnimation = external dso_local constant [0 x i8], align 1
@gBackgroundActorXPositions = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gAffineUsage = external dso_local local_unnamed_addr global [32 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gBackgroundScrollPositions = external dso_local local_unnamed_addr global [0 x i16], align 2
@gBackgroundScrollPositionCount = external dso_local local_unnamed_addr global i8, align 1
@gBackgroundActorThresholds = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSpawnDirectionalBackgroundActor(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gBackgroundActorSlots, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 23
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 1), align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %2, i32 %10, i32 23
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 2), align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %16, i32 23
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 3), align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.RenderSlot, ptr %2, i32 %22, i32 23
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 4), align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr %struct.RenderSlot, ptr %2, i32 %28, i32 23
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %52

32:                                               ; preds = %26, %20, %14, %8, %1
  %33 = phi i32 [ %28, %26 ], [ %22, %20 ], [ %16, %14 ], [ %10, %8 ], [ %4, %1 ]
  %34 = phi i32 [ 4, %26 ], [ 3, %20 ], [ 2, %14 ], [ 1, %8 ], [ 0, %1 ]
  %35 = phi i8 [ %27, %26 ], [ %21, %20 ], [ %15, %14 ], [ %9, %8 ], [ %3, %1 ]
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr [0 x i8], ptr @gBackgroundActorDirections, i32 0, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = getelementptr [0 x ptr], ptr @gBackgroundActorAnimations, i32 0, i32 %34
  %41 = load ptr, ptr %40, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %35, i8 noundef zeroext %39, i8 noundef zeroext 114, i32 noundef 104, i32 noundef 73, i32 noundef -1, ptr noundef %41) #5
  %42 = zext i8 %39 to i32
  %43 = shl nuw nsw i32 %42, 1
  %44 = add nsw i32 %43, -2
  %45 = getelementptr [0 x i32], ptr @gBackgroundActorVectors, i32 0, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %43, -1
  %48 = getelementptr [0 x i32], ptr @gBackgroundActorVectors, i32 0, i32 %47
  %49 = load i32, ptr %48, align 4
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %33, i32 noundef %46, i32 noundef %49, i32 noundef 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %35, i8 noundef zeroext 3) #5
  %50 = load i8, ptr @gBackgroundActorAlternatingBank, align 1
  %51 = xor i8 %50, 1
  store i8 %51, ptr @gBackgroundActorAlternatingBank, align 1
  br label %52

52:                                               ; preds = %26, %32
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderVector24(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackInitializeBackgroundActorTimers(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x [5 x i8]], ptr @gBackgroundActorCountdowns, i32 0, i32 %5
  %7 = getelementptr i8, ptr @gBackgroundActorOffsets, i32 %5
  %8 = load i8, ptr @gBackgroundActorInitialTimers, align 1
  %9 = getelementptr i8, ptr %6, i32 1
  store i8 %8, ptr %6, align 1
  %10 = getelementptr i8, ptr %7, i32 1
  store i8 0, ptr %7, align 1
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gBackgroundActorInitialTimers, i32 0, i32 1), align 1
  %12 = getelementptr i8, ptr %6, i32 2
  store i8 %11, ptr %9, align 1
  %13 = getelementptr i8, ptr %7, i32 2
  store i8 0, ptr %10, align 1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gBackgroundActorInitialTimers, i32 0, i32 2), align 1
  %15 = getelementptr i8, ptr %6, i32 3
  store i8 %14, ptr %12, align 1
  %16 = getelementptr i8, ptr %7, i32 3
  store i8 0, ptr %13, align 1
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gBackgroundActorInitialTimers, i32 0, i32 3), align 1
  %18 = getelementptr i8, ptr %6, i32 4
  store i8 %17, ptr %15, align 1
  %19 = getelementptr i8, ptr %7, i32 4
  store i8 0, ptr %16, align 1
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gBackgroundActorInitialTimers, i32 0, i32 4), align 1
  store i8 %20, ptr %18, align 1
  store i8 0, ptr %19, align 1
  store i32 0, ptr %2, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateDirectionalBackgroundActors(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x [5 x i8]], ptr @gBackgroundActorCountdowns, i32 0, i32 %5
  %7 = getelementptr i8, ptr @gBackgroundActorOffsets, i32 %5
  %8 = getelementptr [0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 %5, i32 1
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  br label %12

12:                                               ; preds = %3, %82
  %13 = phi ptr [ %6, %3 ], [ %84, %82 ]
  %14 = phi ptr [ %8, %3 ], [ %83, %82 ]
  %15 = phi i8 [ 0, %3 ], [ %85, %82 ]
  %16 = load i8, ptr %13, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %80

18:                                               ; preds = %12
  store i8 32, ptr %13, align 1
  %19 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 3) #5
  %20 = shl i16 %19, 2
  %21 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 3) #5
  %22 = shl i16 %21, 2
  %23 = load i32, ptr %9, align 4
  %24 = lshr i32 %23, 16
  %25 = load i32, ptr %10, align 4
  %26 = lshr i32 %25, 16
  %27 = load i8, ptr %11, align 4
  switch i8 %27, label %69 [
    i8 1, label %28
    i8 3, label %35
    i8 5, label %41
    i8 2, label %47
    i8 6, label %47
    i8 7, label %54
    i8 4, label %61
    i8 8, label %61
  ]

28:                                               ; preds = %18
  %29 = zext i16 %20 to i32
  %30 = load i8, ptr %7, align 1
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %24, %29
  %33 = add nuw nsw i32 %32, %31
  %34 = add nuw nsw i32 %26, 24
  br label %69

35:                                               ; preds = %18
  %36 = zext i16 %22 to i32
  %37 = load i8, ptr %7, align 1
  %38 = zext i8 %37 to i32
  %39 = add nuw nsw i32 %26, %36
  %40 = add nuw nsw i32 %39, %38
  br label %69

41:                                               ; preds = %18
  %42 = zext i16 %20 to i32
  %43 = load i8, ptr %7, align 1
  %44 = zext i8 %43 to i32
  %45 = add nuw nsw i32 %24, %42
  %46 = add nuw nsw i32 %45, %44
  br label %69

47:                                               ; preds = %18, %18
  %48 = zext i16 %20 to i32
  %49 = load i8, ptr %7, align 1
  %50 = zext i8 %49 to i32
  %51 = add nuw nsw i32 %50, %48
  %52 = add nuw nsw i32 %51, %24
  %53 = add nuw nsw i32 %51, %26
  br label %69

54:                                               ; preds = %18
  %55 = add nuw nsw i32 %24, 24
  %56 = zext i16 %22 to i32
  %57 = load i8, ptr %7, align 1
  %58 = zext i8 %57 to i32
  %59 = add nuw nsw i32 %26, %56
  %60 = add nuw nsw i32 %59, %58
  br label %69

61:                                               ; preds = %18, %18
  %62 = zext i16 %20 to i32
  %63 = load i8, ptr %7, align 1
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, %62
  %66 = add nuw nsw i32 %65, %24
  %67 = add nsw i32 %26, -65516
  %68 = sub nsw i32 %67, %65
  br label %69

69:                                               ; preds = %18, %61, %54, %47, %41, %35, %28
  %70 = phi i32 [ %24, %18 ], [ %66, %61 ], [ %55, %54 ], [ %52, %47 ], [ %46, %41 ], [ %24, %35 ], [ %33, %28 ]
  %71 = phi i32 [ %26, %18 ], [ %68, %61 ], [ %60, %54 ], [ %53, %47 ], [ %26, %41 ], [ %40, %35 ], [ %34, %28 ]
  %72 = load i8, ptr %14, align 1
  %73 = shl i32 %70, 16
  %74 = ashr exact i32 %73, 16
  %75 = shl i32 %71, 16
  %76 = add i32 %75, 65536
  %77 = ashr exact i32 %76, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %72, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %74, i32 noundef %77, i32 noundef -1, ptr noundef nonnull @gBackgroundActorChildAnimation) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %72, i8 noundef zeroext 3) #5
  %78 = load i8, ptr %7, align 1
  %79 = xor i8 %78, 12
  store i8 %79, ptr %7, align 1
  br label %82

80:                                               ; preds = %12
  %81 = add i8 %16, -1
  store i8 %81, ptr %13, align 1
  br label %82

82:                                               ; preds = %80, %69
  %83 = getelementptr i8, ptr %14, i32 1
  %84 = getelementptr i8, ptr %13, i32 1
  %85 = add nuw nsw i8 %15, 1
  %86 = icmp ult i8 %15, 4
  br i1 %86, label %12, label %87

87:                                               ; preds = %82
  store i32 0, ptr %2, align 4
  ret i32 1
}

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSpawnBackgroundActorRight(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gBackgroundActorSlots, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 23
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 1), align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %2, i32 %10, i32 23
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 2), align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %16, i32 23
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 3), align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.RenderSlot, ptr %2, i32 %22, i32 23
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 4), align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr %struct.RenderSlot, ptr %2, i32 %28, i32 23
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26, %20, %14, %8, %1
  %33 = phi i32 [ %28, %26 ], [ %22, %20 ], [ %16, %14 ], [ %10, %8 ], [ %4, %1 ]
  %34 = phi i8 [ %27, %26 ], [ %21, %20 ], [ %15, %14 ], [ %9, %8 ], [ %3, %1 ]
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.RenderSlot, ptr %2, i32 19, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = shl nuw nsw i32 %36, 18
  %40 = and i32 %39, 262144
  %41 = add i32 %38, 1310720
  %42 = add i32 %41, %40
  %43 = ashr i32 %42, 16
  %44 = getelementptr %struct.RenderSlot, ptr %2, i32 19, i32 4
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %45, 983040
  %47 = ashr i32 %46, 16
  %48 = urem i8 %35, 5
  %49 = shl nuw nsw i8 %48, 1
  %50 = or disjoint i8 %49, 1
  %51 = zext nneg i8 %50 to i32
  %52 = getelementptr ptr, ptr getelementptr ([0 x ptr], ptr @gBackgroundActorAnimations, i32 0, i32 9), i32 %51
  %53 = load ptr, ptr %52, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %34, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %43, i32 noundef %47, i32 noundef -1, ptr noundef %53) #5
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %33, i32 noundef 45056, i32 noundef 131072, i32 noundef 0) #5
  br label %54

54:                                               ; preds = %26, %32
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSpawnBackgroundActorLeft(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gBackgroundActorSlots, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 23
  %6 = load i8, ptr %5, align 4
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 1), align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %2, i32 %10, i32 23
  %12 = load i8, ptr %11, align 4
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %8
  %15 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 2), align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %16, i32 23
  %18 = load i8, ptr %17, align 4
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 3), align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr %struct.RenderSlot, ptr %2, i32 %22, i32 23
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i8, ptr getelementptr ([0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 4), align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr %struct.RenderSlot, ptr %2, i32 %28, i32 23
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %54

32:                                               ; preds = %26, %20, %14, %8, %1
  %33 = phi i32 [ %28, %26 ], [ %22, %20 ], [ %16, %14 ], [ %10, %8 ], [ %4, %1 ]
  %34 = phi i8 [ %27, %26 ], [ %21, %20 ], [ %15, %14 ], [ %9, %8 ], [ %3, %1 ]
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr %struct.RenderSlot, ptr %2, i32 19, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = shl nuw nsw i32 %36, 2
  %40 = and i32 %39, 4
  %41 = tail call i32 asm "", "=r,0"(i32 %40) #6, !srcloc !4
  %42 = shl i32 %41, 16
  %43 = add i32 %38, -1048576
  %44 = add i32 %43, %42
  %45 = ashr i32 %44, 16
  %46 = getelementptr %struct.RenderSlot, ptr %2, i32 19, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 983040
  %49 = ashr i32 %48, 16
  %50 = urem i8 %35, 5
  %51 = zext nneg i8 %50 to i32
  %52 = getelementptr ptr, ptr getelementptr ([0 x ptr], ptr @gBackgroundActorAnimations, i32 0, i32 19), i32 %51
  %53 = load ptr, ptr %52, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %34, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %45, i32 noundef %49, i32 noundef -1, ptr noundef %53) #5
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %33, i32 noundef -81920, i32 noundef 131072, i32 noundef 0) #5
  br label %54

54:                                               ; preds = %26, %32
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackInitializeBackgroundActorTimers4(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #2 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x [5 x i8]], ptr @gBackgroundActorCountdowns, i32 0, i32 %5
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gBackgroundActorInitialTimers, i32 0, i32 5), align 1
  %8 = getelementptr i8, ptr %6, i32 1
  store i8 %7, ptr %6, align 1
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gBackgroundActorInitialTimers, i32 0, i32 6), align 1
  %10 = getelementptr i8, ptr %6, i32 2
  store i8 %9, ptr %8, align 1
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gBackgroundActorInitialTimers, i32 0, i32 7), align 1
  %12 = getelementptr i8, ptr %6, i32 3
  store i8 %11, ptr %10, align 1
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gBackgroundActorInitialTimers, i32 0, i32 8), align 1
  store i8 %13, ptr %12, align 1
  store i32 0, ptr %2, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateBackgroundActors4(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x [5 x i8]], ptr @gBackgroundActorCountdowns, i32 0, i32 %5
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %6, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %3
  %12 = getelementptr [0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 %5, i32 1
  store i8 18, ptr %6, align 1
  %13 = load i8, ptr %12, align 1
  %14 = load i32, ptr %7, align 4
  %15 = ashr i32 %14, 16
  %16 = load i32, ptr %8, align 4
  %17 = add i32 %16, 65536
  %18 = ashr i32 %17, 16
  %19 = load ptr, ptr getelementptr ([0 x ptr], ptr @gBackgroundActorAnimations, i32 0, i32 5), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %13, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %15, i32 noundef %18, i32 noundef -1, ptr noundef %19) #5
  br label %22

20:                                               ; preds = %3
  %21 = add i8 %9, -1
  store i8 %21, ptr %6, align 1
  br label %22

22:                                               ; preds = %20, %11
  %23 = getelementptr i8, ptr %6, i32 1
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = add i8 %24, -1
  store i8 %27, ptr %23, align 1
  br label %37

28:                                               ; preds = %22
  %29 = getelementptr [0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 %5, i32 2
  store i8 18, ptr %23, align 1
  %30 = load i8, ptr %29, align 1
  %31 = load i32, ptr %7, align 4
  %32 = ashr i32 %31, 16
  %33 = load i32, ptr %8, align 4
  %34 = add i32 %33, 65536
  %35 = ashr i32 %34, 16
  %36 = load ptr, ptr getelementptr ([0 x ptr], ptr @gBackgroundActorAnimations, i32 0, i32 6), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %30, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %32, i32 noundef %35, i32 noundef -1, ptr noundef %36) #5
  br label %37

37:                                               ; preds = %28, %26
  %38 = getelementptr i8, ptr %6, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = add i8 %39, -1
  store i8 %42, ptr %38, align 1
  br label %52

43:                                               ; preds = %37
  %44 = getelementptr [0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 %5, i32 3
  store i8 18, ptr %38, align 1
  %45 = load i8, ptr %44, align 1
  %46 = load i32, ptr %7, align 4
  %47 = ashr i32 %46, 16
  %48 = load i32, ptr %8, align 4
  %49 = add i32 %48, 65536
  %50 = ashr i32 %49, 16
  %51 = load ptr, ptr getelementptr ([0 x ptr], ptr @gBackgroundActorAnimations, i32 0, i32 7), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %45, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %47, i32 noundef %50, i32 noundef -1, ptr noundef %51) #5
  br label %52

52:                                               ; preds = %43, %41
  %53 = getelementptr i8, ptr %6, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = add i8 %54, -1
  store i8 %57, ptr %53, align 1
  br label %67

58:                                               ; preds = %52
  %59 = getelementptr [0 x [6 x i8]], ptr @gBackgroundActorSlots, i32 0, i32 %5, i32 4
  store i8 18, ptr %53, align 1
  %60 = load i8, ptr %59, align 1
  %61 = load i32, ptr %7, align 4
  %62 = ashr i32 %61, 16
  %63 = load i32, ptr %8, align 4
  %64 = add i32 %63, 65536
  %65 = ashr i32 %64, 16
  %66 = load ptr, ptr getelementptr ([0 x ptr], ptr @gBackgroundActorAnimations, i32 0, i32 8), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %60, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %62, i32 noundef %65, i32 noundef -1, ptr noundef %66) #5
  br label %67

67:                                               ; preds = %58, %56
  store i32 0, ptr %2, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSpawnBackgroundActorAtTableX(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %3 = zext i8 %2 to i32
  %4 = add i8 %2, 26
  %5 = getelementptr [0 x i16], ptr @gBackgroundActorXPositions, i32 0, i32 %3
  %6 = load i16, ptr %5, align 2
  %7 = sext i16 %6 to i32
  %8 = urem i8 %2, 5
  %9 = zext nneg i8 %8 to i32
  %10 = getelementptr ptr, ptr getelementptr ([0 x ptr], ptr @gBackgroundActorAnimations, i32 0, i32 24), i32 %9
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %7, i32 noundef 128, i32 noundef 0, ptr noundef %11) #5
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %13 = zext i8 %12 to i32
  %14 = add nuw nsw i32 %13, 26
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %14, i32 noundef 0, i32 noundef -32768, i32 noundef 0) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackWriteRenderAccelerationY(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = zext i8 %2 to i32
  %6 = mul nuw nsw i32 %5, 104
  %7 = add i32 %6, %4
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr i8, ptr %0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %0, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr i8, ptr %0, i32 3
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = or disjoint i32 %16, %20
  %22 = getelementptr i8, ptr %0, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw i32 %24, 24
  %26 = or disjoint i32 %21, %25
  %27 = getelementptr %struct.RenderSlot, ptr %8, i32 0, i32 7, i32 1
  store i32 %26, ptr %27, align 4
  ret i32 5
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetBackgroundActorsMotionAndAffine(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 7, i32 1
  store i32 -1024, ptr %3, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 6
  store i32 0, ptr %4, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 6, i32 1
  store i32 0, ptr %5, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 6, i32 2
  store i32 0, ptr %6, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 6
  %8 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 6, i32 1
  store i32 45056, ptr %8, align 4
  store i32 -24576, ptr %7, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 12
  store i16 2, ptr %9, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 13
  store i16 2, ptr %10, align 2
  %11 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #5
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 23, i32 4
  store i8 %11, ptr %12, align 4
  %13 = zext i8 %11 to i32
  %14 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %13
  store i8 1, ptr %14, align 1
  %15 = load ptr, ptr @gRenderSlots, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %15, i32 13, i32 6
  %17 = getelementptr %struct.RenderSlot, ptr %15, i32 13, i32 6, i32 1
  store i32 45056, ptr %17, align 4
  store i32 6144, ptr %16, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %15, i32 13, i32 12
  store i16 2, ptr %18, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %15, i32 13, i32 13
  store i16 2, ptr %19, align 2
  %20 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #5
  %21 = getelementptr %struct.RenderSlot, ptr %15, i32 13, i32 23, i32 4
  store i8 %20, ptr %21, align 4
  %22 = zext i8 %20 to i32
  %23 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %22
  store i8 1, ptr %23, align 1
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindUnusedAffineMatrix() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @RecordBackgroundScrollPosition() local_unnamed_addr #4 {
  %1 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %2 = load i8, ptr @gBackgroundScrollPositionCount, align 1
  %3 = add i8 %2, 1
  store i8 %3, ptr @gBackgroundScrollPositionCount, align 1
  %4 = zext i8 %2 to i32
  %5 = getelementptr [0 x i16], ptr @gBackgroundScrollPositions, i32 0, i32 %4
  store i16 %1, ptr %5, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectBackgroundScrollThreshold(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %3 = load i16, ptr @gBackgroundActorThresholds, align 2
  %4 = icmp ult i16 %2, %3
  br i1 %4, label %60, label %5

5:                                                ; preds = %1
  %6 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 1), align 2
  %7 = icmp ult i16 %2, %6
  br i1 %7, label %60, label %8

8:                                                ; preds = %5
  %9 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 2), align 2
  %10 = icmp ult i16 %2, %9
  br i1 %10, label %60, label %11

11:                                               ; preds = %8
  %12 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 3), align 2
  %13 = icmp ult i16 %2, %12
  br i1 %13, label %60, label %14

14:                                               ; preds = %11
  %15 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 4), align 2
  %16 = icmp ult i16 %2, %15
  br i1 %16, label %60, label %17

17:                                               ; preds = %14
  %18 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 5), align 2
  %19 = icmp ult i16 %2, %18
  br i1 %19, label %60, label %20

20:                                               ; preds = %17
  %21 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 6), align 2
  %22 = icmp ult i16 %2, %21
  br i1 %22, label %60, label %23

23:                                               ; preds = %20
  %24 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 7), align 2
  %25 = icmp ult i16 %2, %24
  br i1 %25, label %60, label %26

26:                                               ; preds = %23
  %27 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 8), align 2
  %28 = icmp ult i16 %2, %27
  br i1 %28, label %60, label %29

29:                                               ; preds = %26
  %30 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 9), align 2
  %31 = icmp ult i16 %2, %30
  br i1 %31, label %60, label %32

32:                                               ; preds = %29
  %33 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 10), align 2
  %34 = icmp ult i16 %2, %33
  br i1 %34, label %60, label %35

35:                                               ; preds = %32
  %36 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 11), align 2
  %37 = icmp ult i16 %2, %36
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 12), align 2
  %40 = icmp ult i16 %2, %39
  br i1 %40, label %60, label %41

41:                                               ; preds = %38
  %42 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 13), align 2
  %43 = icmp ult i16 %2, %42
  br i1 %43, label %60, label %44

44:                                               ; preds = %41
  %45 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 14), align 2
  %46 = icmp ult i16 %2, %45
  br i1 %46, label %60, label %47

47:                                               ; preds = %44
  %48 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 15), align 2
  %49 = icmp ult i16 %2, %48
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 16), align 2
  %52 = icmp ult i16 %2, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 17), align 2
  %55 = icmp ult i16 %2, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i16, ptr getelementptr ([0 x i16], ptr @gBackgroundActorThresholds, i32 0, i32 18), align 2
  %58 = icmp ult i16 %2, %57
  %59 = select i1 %58, i8 18, i8 19
  br label %60

60:                                               ; preds = %56, %5, %8, %11, %14, %17, %20, %23, %26, %29, %32, %35, %38, %41, %44, %47, %50, %53, %1
  %61 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 2, %8 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ 6, %20 ], [ 7, %23 ], [ 8, %26 ], [ 9, %29 ], [ 10, %32 ], [ 11, %35 ], [ 12, %38 ], [ 13, %41 ], [ 14, %44 ], [ 15, %47 ], [ 16, %50 ], [ 17, %53 ], [ %59, %56 ]
  store i8 %61, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 5520}
