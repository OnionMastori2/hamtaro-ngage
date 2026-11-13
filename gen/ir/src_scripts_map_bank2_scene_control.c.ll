; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @UnreferencedMapBank2ReturnZero(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckScenePressedKeys(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  store i16 0, ptr @gScriptResult, align 2
  %2 = tail call arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef null) #3
  %3 = load i16, ptr @gAnimationClassValues, align 2
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  store i16 1, ptr @gScriptResult, align 2
  br label %6

6:                                                ; preds = %5, %1
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateSceneSlotMotion(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  switch i8 %2, label %32 [
    i8 0, label %3
    i8 20, label %34
  ]

3:                                                ; preds = %1, %26
  %4 = phi i32 [ %27, %26 ], [ 0, %1 ]
  %5 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 3) #3
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = mul nuw nsw i32 %4, 104
  %8 = getelementptr i8, ptr %6, i32 %7
  %9 = getelementptr i8, ptr %8, i32 2384
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %26, label %12

12:                                               ; preds = %3
  %13 = zext i16 %5 to i32
  %14 = shl nuw nsw i32 %4, 2
  %15 = and i32 %14, 4
  %16 = xor i32 %15, 4
  %17 = add nuw nsw i32 %16, %13
  %18 = shl nuw nsw i32 %17, 1
  %19 = and i32 %18, 510
  %20 = getelementptr i32, ptr inttoptr (i32 140460692 to ptr), i32 %19
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr i8, ptr %8, i32 2328
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i32, ptr inttoptr (i32 140460696 to ptr), i32 %19
  %24 = load i32, ptr %23, align 8
  %25 = getelementptr i8, ptr %8, i32 2340
  store i32 %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %12, %3
  %27 = add nuw nsw i32 %4, 1
  %28 = icmp eq i32 %27, 13
  br i1 %28, label %29, label %3

29:                                               ; preds = %26
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %31 = add i8 %30, 1
  br label %34

32:                                               ; preds = %1
  %33 = add i8 %2, 1
  br label %34

34:                                               ; preds = %1, %32, %29
  %35 = phi i8 [ %33, %32 ], [ %31, %29 ], [ 0, %1 ]
  store i8 %35, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %36 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %37 = and i16 %36, 31
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %34, %70
  %40 = phi i32 [ %71, %70 ], [ 0, %34 ]
  %41 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 31) #3
  %42 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull inttoptr (i32 140460756 to ptr)) #4, !srcloc !4
  %43 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull inttoptr (i32 140460769 to ptr)) #4, !srcloc !5
  %44 = load ptr, ptr @gRenderSlots, align 4
  %45 = mul nuw nsw i32 %40, 104
  %46 = getelementptr i8, ptr %44, i32 %45
  %47 = getelementptr i8, ptr %46, i32 2384
  %48 = load i8, ptr %47, align 4
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %39
  %51 = ptrtoint ptr %43 to i32
  %52 = add i32 %40, %51
  %53 = inttoptr i32 %52 to ptr
  %54 = load i8, ptr %53, align 1
  %55 = ptrtoint ptr %42 to i32
  %56 = add i32 %40, %55
  %57 = inttoptr i32 %56 to ptr
  %58 = load i8, ptr %57, align 1
  %59 = trunc i16 %41 to i8
  %60 = and i8 %58, %59
  %61 = add i8 %60, %54
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 1
  %64 = getelementptr i32, ptr inttoptr (i32 140460436 to ptr), i32 %63
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr i8, ptr %46, i32 2324
  store i32 %65, ptr %66, align 4
  %67 = getelementptr i32, ptr inttoptr (i32 140460440 to ptr), i32 %63
  %68 = load i32, ptr %67, align 8
  %69 = getelementptr i8, ptr %46, i32 2336
  store i32 %68, ptr %69, align 4
  br label %70

70:                                               ; preds = %50, %39
  %71 = add nuw nsw i32 %40, 1
  %72 = icmp eq i32 %71, 13
  br i1 %72, label %73, label %39

73:                                               ; preds = %70, %34
  br label %74

74:                                               ; preds = %73, %90
  %75 = phi i32 [ %91, %90 ], [ 0, %73 ]
  %76 = load ptr, ptr @gRenderSlots, align 4
  %77 = mul nuw nsw i32 %75, 104
  %78 = getelementptr i8, ptr %76, i32 %77
  %79 = getelementptr i8, ptr %78, i32 2384
  %80 = load i8, ptr %79, align 4
  %81 = icmp eq i8 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %74
  %83 = getelementptr i8, ptr %78, i32 2324
  %84 = load i32, ptr %83, align 4
  %85 = icmp sgt i32 %84, 262143
  br i1 %85, label %88, label %86

86:                                               ; preds = %82
  %87 = icmp slt i32 %84, -262143
  br i1 %87, label %88, label %90

88:                                               ; preds = %86, %82
  %89 = phi i32 [ 16384, %82 ], [ -16384, %86 ]
  store i32 %89, ptr %83, align 4
  br label %90

90:                                               ; preds = %88, %86, %74
  %91 = add nuw nsw i32 %75, 1
  %92 = icmp eq i32 %91, 13
  br i1 %92, label %93, label %74

93:                                               ; preds = %90
  %94 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %95 = add i16 %94, 1
  store i16 %95, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSceneActorMotion(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  %3 = icmp eq i8 %2, 0
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = select i1 %3, ptr @gRenderClassSlots0, ptr @gRenderClassSlots1
  %6 = select i1 %3, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35)
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %4, i32 %8, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = lshr i32 %10, 16
  %12 = trunc i32 %11 to i16
  store i16 %12, ptr %6, align 2
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ugt i32 %11, %14
  %16 = load i8, ptr %0, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %15, label %44, label %18

18:                                               ; preds = %1
  %19 = load i8, ptr inttoptr (i32 33572225 to ptr), align 1
  %20 = zext i8 %19 to i32
  %21 = sub nsw i32 %11, %20
  %22 = and i32 %21, 65535
  %23 = load i8, ptr inttoptr (i32 33572227 to ptr), align 1
  %24 = zext i8 %23 to i32
  %25 = sub nsw i32 %14, %24
  %26 = mul nsw i32 %25, %22
  %27 = sub nsw i32 %14, %20
  %28 = sdiv i32 %26, %27
  %29 = add nsw i32 %28, %24
  br i1 %17, label %41, label %30

30:                                               ; preds = %18
  %31 = shl i32 %29, 16
  store i32 %31, ptr %9, align 4
  %32 = tail call ptr asm "", "={r2},{r2}"(ptr nonnull inttoptr (i32 33572227 to ptr)) #4, !srcloc !6
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, ptr inttoptr (i32 33572225 to ptr), align 1
  %36 = zext i8 %35 to i32
  %37 = add nsw i32 %28, %34
  %38 = sub nsw i32 %21, %37
  %39 = add nsw i32 %38, %36
  tail call void asm sideeffect "", "{r5}"(i32 %22) #5, !srcloc !7
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  br label %62

41:                                               ; preds = %18
  %42 = sub nsw i32 %29, %11
  tail call void asm sideeffect "", "{r5}"(i32 %22) #5, !srcloc !8
  %43 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  br label %62

44:                                               ; preds = %1
  %45 = sub nsw i32 %11, %14
  %46 = and i32 %45, 65535
  %47 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %48, %14
  %50 = mul nsw i32 %49, %46
  %51 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %52, %14
  %54 = sdiv i32 %50, %53
  br i1 %17, label %60, label %55

55:                                               ; preds = %44
  %56 = add nsw i32 %54, %14
  %57 = shl i32 %56, 16
  store i32 %57, ptr %9, align 4
  %58 = sub nsw i32 %45, %54
  %59 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  br label %62

60:                                               ; preds = %44
  %61 = sub nsw i32 %54, %45
  br label %62

62:                                               ; preds = %55, %60, %30, %41
  %63 = phi i8 [ %59, %55 ], [ %2, %60 ], [ %40, %30 ], [ %43, %41 ]
  %64 = phi i32 [ %58, %55 ], [ %61, %60 ], [ %39, %30 ], [ %42, %41 ]
  %65 = shl i32 %64, 16
  %66 = getelementptr %struct.RenderSlot, ptr %4, i32 %8, i32 6
  %67 = zext i8 %63 to i32
  %68 = mul nuw nsw i32 %67, 24
  %69 = add nuw nsw i32 %68, 32
  %70 = sdiv i32 %65, %69
  store i32 %70, ptr %66, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreSceneActorPositions(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %6 = zext i16 %5 to i32
  %7 = shl nuw i32 %6, 16
  %8 = or disjoint i32 %7, 32768
  %9 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 3
  store i32 %8, ptr %9, align 4
  %10 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = load i8, ptr @gRenderClassSlots1, align 1
  %15 = zext i8 %14 to i32
  %16 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %17 = zext i16 %16 to i32
  %18 = shl nuw i32 %17, 16
  %19 = or disjoint i32 %18, 32768
  %20 = getelementptr %struct.RenderSlot, ptr %13, i32 %15, i32 3
  store i32 %19, ptr %20, align 4
  br label %21

21:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearSceneRenderSlots17And18() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderField60(i32 noundef 17, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 18, i32 noundef 0) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D368() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143295337 to ptr)) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143324684 to ptr)) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 21, i32 noundef 1) #3
  tail call arm_apcscc void @SetRenderField62(i32 noundef 21, i32 noundef 176) #3
  tail call arm_apcscc void @SetRenderField65(i32 noundef 21, i32 noundef 13) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 21, ptr noundef nonnull inttoptr (i32 143529999 to ptr)) #3
  store i8 13, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143295337, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField62(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField65(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D3C0() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143354630 to ptr)) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143324741 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D3E0() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143404770 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D3F4() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143404818 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D408() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143404839 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D41C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143373724 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143373752 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D458() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143373658 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143373711 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D494() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143373443 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143373588 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143373623 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143373443, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D50C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143374193 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143374221 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143374229 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D570() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143374193 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143374221 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D5AC() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143385598 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143385651 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143385682 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D610() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderField60(i32 noundef 17, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 18, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143384592 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531323 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531361 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  store i8 19, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143384592, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D68C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderField60(i32 noundef 15, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 17, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 18, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143373326 to ptr)) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143384478 to ptr)) #3
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143373326, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D6CC() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143385888 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143385946 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D708() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderField60(i32 noundef 14, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 15, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143374094 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D72C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143373760 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143373788 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D768() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 28, ptr noundef nonnull inttoptr (i32 143546136 to ptr)) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D77C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 28, ptr noundef nonnull inttoptr (i32 143546149 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D790() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 28, ptr noundef nonnull inttoptr (i32 143546159 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D7A4() local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 56, i32 noundef 0, i32 noundef 32, ptr noundef nonnull inttoptr (i32 143546047 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D7CC() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 29, i8 noundef zeroext 0, ptr noundef null) #3
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 31, i8 noundef zeroext 0, ptr noundef null) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D7E8() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 28, ptr noundef nonnull inttoptr (i32 143546187 to ptr)) #3
  store i8 28, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143546187, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneControlPreset2D810() local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 80, i32 noundef 0, i32 noundef 16, ptr noundef nonnull inttoptr (i32 143546070 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureScenePanelSlots(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = load i8, ptr %2, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %0, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  %11 = getelementptr i8, ptr %0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i16
  %14 = getelementptr i8, ptr %0, i32 4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  %18 = or disjoint i16 %17, %13
  %19 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 422), align 2
  switch i16 %19, label %79 [
    i16 0, label %20
    i16 1, label %34
    i16 2, label %50
    i16 3, label %64
  ]

20:                                               ; preds = %1
  %21 = add i16 %10, -16
  %22 = sext i16 %21 to i32
  %23 = sext i16 %18 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %22, i32 noundef -160, i32 noundef %23, ptr noundef nonnull inttoptr (i32 143546601 to ptr)) #3
  %24 = add i8 %3, 1
  %25 = sext i16 %10 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %25, i32 noundef -160, i32 noundef %23, ptr noundef nonnull inttoptr (i32 143546862 to ptr)) #3
  %26 = add i8 %3, 2
  %27 = add i16 %10, 96
  %28 = sext i16 %27 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %28, i32 noundef -160, i32 noundef %23, ptr noundef nonnull inttoptr (i32 143547211 to ptr)) #3
  %29 = add i8 %3, 3
  %30 = add i16 %10, 72
  %31 = sext i16 %30 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %29, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %31, i32 noundef -160, i32 noundef %23, ptr noundef nonnull inttoptr (i32 143546699 to ptr)) #3
  %32 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 422), align 2
  %33 = add i16 %32, 1
  br label %77

34:                                               ; preds = %1
  %35 = add i8 %3, 4
  %36 = add i16 %10, -24
  %37 = sext i16 %36 to i32
  %38 = sext i16 %18 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %35, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %37, i32 noundef -160, i32 noundef %38, ptr noundef nonnull inttoptr (i32 143547123 to ptr)) #3
  %39 = add i8 %3, 5
  %40 = add i16 %10, -8
  %41 = sext i16 %40 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %41, i32 noundef -160, i32 noundef %38, ptr noundef nonnull inttoptr (i32 143546699 to ptr)) #3
  %42 = add i8 %3, 6
  %43 = add i16 %10, 40
  %44 = sext i16 %43 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %42, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %44, i32 noundef -160, i32 noundef %38, ptr noundef nonnull inttoptr (i32 143546862 to ptr)) #3
  %45 = add i8 %3, 7
  %46 = add i16 %10, 48
  %47 = sext i16 %46 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %45, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %47, i32 noundef -160, i32 noundef %38, ptr noundef nonnull inttoptr (i32 143546596 to ptr)) #3
  %48 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 422), align 2
  %49 = add i16 %48, 1
  br label %77

50:                                               ; preds = %1
  %51 = add i16 %10, -16
  %52 = sext i16 %51 to i32
  %53 = sext i16 %18 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %52, i32 noundef -160, i32 noundef %53, ptr noundef nonnull inttoptr (i32 143546862 to ptr)) #3
  %54 = add i8 %3, 1
  %55 = sext i16 %10 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %54, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %55, i32 noundef -160, i32 noundef %53, ptr noundef nonnull inttoptr (i32 143546601 to ptr)) #3
  %56 = add i8 %3, 2
  %57 = add i16 %10, 96
  %58 = sext i16 %57 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %56, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %58, i32 noundef -160, i32 noundef %53, ptr noundef nonnull inttoptr (i32 143546699 to ptr)) #3
  %59 = add i8 %3, 3
  %60 = add i16 %10, 72
  %61 = sext i16 %60 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %59, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %61, i32 noundef -160, i32 noundef %53, ptr noundef nonnull inttoptr (i32 143547211 to ptr)) #3
  %62 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 422), align 2
  %63 = add i16 %62, 1
  br label %77

64:                                               ; preds = %1
  %65 = add i8 %3, 4
  %66 = add i16 %10, -8
  %67 = sext i16 %66 to i32
  %68 = sext i16 %18 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %65, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %67, i32 noundef -160, i32 noundef %68, ptr noundef nonnull inttoptr (i32 143546955 to ptr)) #3
  %69 = add i8 %3, 5
  %70 = sext i16 %10 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %69, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %70, i32 noundef -160, i32 noundef %68, ptr noundef nonnull inttoptr (i32 143546596 to ptr)) #3
  %71 = add i8 %3, 6
  %72 = add i16 %10, 56
  %73 = sext i16 %72 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %71, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %73, i32 noundef -160, i32 noundef %68, ptr noundef nonnull inttoptr (i32 143546699 to ptr)) #3
  %74 = add i8 %3, 7
  %75 = add i16 %10, 88
  %76 = sext i16 %75 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %74, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %76, i32 noundef -160, i32 noundef %68, ptr noundef nonnull inttoptr (i32 143547118 to ptr)) #3
  br label %77

77:                                               ; preds = %20, %34, %50, %64
  %78 = phi i16 [ 0, %64 ], [ %63, %50 ], [ %49, %34 ], [ %33, %20 ]
  store i16 %78, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 422), align 2
  br label %79

79:                                               ; preds = %77, %1
  ret i32 5
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2439}
!5 = !{i64 2653}
!6 = !{i64 5720}
!7 = !{i64 5999}
!8 = !{i64 6252}
