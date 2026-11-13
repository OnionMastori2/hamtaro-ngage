; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gSceneChoiceBanks6 = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSceneChoiceInactivePositions = external dso_local local_unnamed_addr constant [6 x [2 x i16]], align 2
@gSceneChoiceSpecialAnimation = external dso_local constant [0 x i8], align 1
@gSceneChoiceNormalAnimation = external dso_local constant [0 x i8], align 1
@gSceneChoicePositions6 = external dso_local local_unnamed_addr constant [6 x [2 x i16]], align 2
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSceneChoiceBanks8 = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSceneChoiceFixed8 = external dso_local local_unnamed_addr constant [8 x i8], align 1
@gSceneChoiceInactivePositions8 = external dso_local local_unnamed_addr constant [8 x [2 x i16]], align 2
@gSceneChoiceFirstAnimation8 = external dso_local constant [0 x i8], align 1
@gSceneChoicePositions8 = external dso_local local_unnamed_addr constant [8 x [2 x i16]], align 2
@gSaveGroup2Block1CB20 = external dso_local global [0 x i8], align 1
@gSaveGroup01Block1CC20 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gActorPresetResource88CC40C = external dso_local constant [0 x i8], align 1
@gSceneMenuOptionCodes = external dso_local local_unnamed_addr constant [4 x [6 x i8]], align 1
@gSceneMenuBackgroundBanks = external dso_local local_unnamed_addr constant [5 x [4 x ptr]], align 4
@gSceneMenuCursorAnimations = external dso_local local_unnamed_addr constant [6 x ptr], align 4
@gSaveGroup3Block3730 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAudioPlayerContext4E90 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSceneMenuStatusBackgrounds = external dso_local local_unnamed_addr constant [25 x ptr], align 4
@gSaveDataReadResults = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gSceneRecordMenuBackgrounds = external dso_local local_unnamed_addr constant [15 x ptr], align 4
@gSceneRecordLabelBackgrounds = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gSceneRecordModeBackgrounds = external dso_local local_unnamed_addr constant [10 x ptr], align 4
@gSceneRecordCursorAnimation = external dso_local constant [0 x i8], align 1
@gSceneRecordLanguageSnapshot = external dso_local local_unnamed_addr global [2 x i8], align 1
@gSceneTextGridBanks = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSceneTextAdvanceGraphics = external dso_local constant [0 x i8], align 1
@gSceneTextRetreatGraphics = external dso_local constant [0 x i8], align 1
@gSceneTextConfirmAnimation = external dso_local constant [0 x i8], align 1
@gSceneTextBank0Animation = external dso_local constant [0 x i8], align 1
@gSceneTextBank1Animation = external dso_local constant [0 x i8], align 1
@gSceneTextBank2Animation = external dso_local constant [0 x i8], align 1
@gSceneTextAdvanceAnimation = external dso_local constant [0 x i8], align 1
@gSceneTextRetreatAnimation = external dso_local constant [0 x i8], align 1
@gSceneTextGridCursorAnimation = external dso_local constant [0 x i8], align 1
@gTaskTextLeadingDigitDefaultAnimation = external dso_local constant [0 x i8], align 1
@gTaskTextAdvanceWidths = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gTaskFlagsFirst = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskFlagsSecond = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSceneTextDefaultFirst = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSceneTextDefaultSecondSpanish = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSceneTextDefaultSecond = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gTaskGlyphBlocks = external dso_local constant [0 x i8], align 1
@gScenePanelShiftLayouts = external dso_local constant [0 x i8], align 1
@gScenePanelPixelOffsets = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gScenePanelAnimations = external dso_local local_unnamed_addr constant [52 x ptr], align 4
@gScenePanelAnimationCodes = external dso_local local_unnamed_addr constant [440 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gScenePanelActivationOrder = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSceneIndicatorPreviousSelection = external dso_local local_unnamed_addr global i8, align 1
@gSceneIndicatorSelectionChanged = external dso_local local_unnamed_addr global i8, align 1
@gSceneIndicatorBackgrounds = external dso_local local_unnamed_addr global [0 x [8 x ptr]], align 4
@gRasterE5RenderPositionWords7098 = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gSceneIndicatorCurrentAnimation = external dso_local constant [0 x i8], align 1
@gSceneIndicatorAlternateAnimation = external dso_local constant [0 x i8], align 1
@gSceneIndicatorCompleteAnimation = external dso_local constant [0 x i8], align 1
@gSceneIndicatorIncompleteAnimation = external dso_local constant [0 x i8], align 1
@gSceneIndicatorDestinationAnimation = external dso_local constant [0 x i8], align 1
@gSceneIndicatorVisibilityMasks = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSceneIndicatorModeNavigationBanks = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSceneIndicatorNavigationBanks = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSceneIndicatorUnlockAnimation = external dso_local constant [0 x i8], align 1
@gSceneIndicatorDestinationInitialAnimation = external dso_local constant [0 x i8], align 1
@switch.table.ScriptCallbackConfigureSceneChoices6.1 = private unnamed_addr constant [8 x ptr] [ptr @gSceneChoiceSpecialAnimation, ptr @gSceneChoiceNormalAnimation, ptr @gSceneChoiceSpecialAnimation, ptr @gSceneChoiceNormalAnimation, ptr @gSceneChoiceNormalAnimation, ptr @gSceneChoiceSpecialAnimation, ptr @gSceneChoiceNormalAnimation, ptr @gSceneChoiceSpecialAnimation], align 4
@switch.table.ScriptCallbackCheckSceneChoiceSpecial = private unnamed_addr constant [8 x i8] c"\01\00\01\00\00\01\00\01", align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackShuffleSceneChoices6() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 127), align 1
  %2 = zext i8 %1 to i32
  %3 = getelementptr [0 x ptr], ptr @gSceneChoiceBanks6, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  br label %5

5:                                                ; preds = %21, %0
  %6 = phi i32 [ 0, %0 ], [ %31, %21 ]
  %7 = phi i32 [ 0, %0 ], [ %28, %21 ]
  %8 = icmp ugt i32 %6, 2
  br i1 %8, label %9, label %15

9:                                                ; preds = %5, %9
  %10 = tail call arm_apcscc i32 @RandomRange(i32 noundef 0, i32 noundef 4) #13
  %11 = and i32 %10, 255
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %21, label %9

15:                                               ; preds = %5, %15
  %16 = tail call arm_apcscc i32 @RandomRange(i32 noundef 4, i32 noundef 8) #13
  %17 = and i32 %16, 255
  %18 = shl nuw i32 1, %17
  %19 = and i32 %18, %7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %15

21:                                               ; preds = %15, %9
  %22 = phi i32 [ %12, %9 ], [ %18, %15 ]
  %23 = phi i32 [ %11, %9 ], [ %17, %15 ]
  %24 = add i32 %6, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 46)
  %25 = inttoptr i32 %24 to ptr
  %26 = or i32 %22, %7
  %27 = tail call i32 asm sideeffect "", "=r,r,0"(i32 1, i32 %26) #14, !srcloc !4
  %28 = and i32 %27, 65535
  %29 = getelementptr i8, ptr %4, i32 %23
  %30 = load i8, ptr %29, align 1
  store i8 %30, ptr %25, align 1
  %31 = add nuw nsw i32 %6, 1
  %32 = icmp eq i32 %31, 6
  br i1 %32, label %33, label %5

33:                                               ; preds = %21
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @RandomRange(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSceneChoices6() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr inbounds ([6 x [2 x i16]], ptr @gSceneChoicePositions6, i32 0, i32 1), align 2
  %2 = add i16 %1, -48
  %3 = sext i16 %2 to i32
  %4 = load i16, ptr getelementptr inbounds ([6 x [2 x i16]], ptr @gSceneChoicePositions6, i32 0, i32 1, i32 1), align 2
  %5 = sext i16 %4 to i32
  br label %6

6:                                                ; preds = %0, %64
  %7 = phi i32 [ 0, %0 ], [ %65, %64 ]
  %8 = add nuw nsw i32 %7, 18
  %9 = add nuw nsw i32 %7, 62
  %10 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %64 [
    i8 0, label %12
    i8 1, label %35
  ]

12:                                               ; preds = %6
  %13 = icmp ult i32 %7, 2
  br i1 %13, label %14, label %64

14:                                               ; preds = %12
  %15 = or disjoint i32 %7, 46
  %16 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = add i8 %17, -20
  %19 = icmp ult i8 %18, 8
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = zext nneg i8 %18 to i32
  %22 = getelementptr inbounds [8 x ptr], ptr @switch.table.ScriptCallbackConfigureSceneChoices6.1, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  br label %24

24:                                               ; preds = %14, %20
  %25 = phi ptr [ %23, %20 ], [ @gSceneChoiceNormalAnimation, %14 ]
  %26 = getelementptr [6 x [2 x i16]], ptr @gSceneChoiceInactivePositions, i32 0, i32 %7
  %27 = load i16, ptr %26, align 2
  %28 = sext i16 %27 to i32
  %29 = getelementptr [6 x [2 x i16]], ptr @gSceneChoiceInactivePositions, i32 0, i32 %7, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = sext i16 %30 to i32
  %32 = trunc i32 %7 to i8
  %33 = or disjoint i8 %32, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %33, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %28, i32 noundef 0, i32 noundef %31, ptr noundef nonnull %25) #13
  %34 = trunc i32 %8 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %34, i8 noundef zeroext 0) #13
  br label %64

35:                                               ; preds = %6
  %36 = icmp ult i32 %7, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = trunc i32 %7 to i8
  %39 = or disjoint i8 %38, 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %39, i8 noundef zeroext 0) #13
  br label %40

40:                                               ; preds = %37, %35
  %41 = add nuw nsw i32 %7, 46
  %42 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = add i8 %43, -20
  %45 = icmp ult i8 %44, 8
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = zext nneg i8 %44 to i32
  %48 = getelementptr inbounds [8 x ptr], ptr @switch.table.ScriptCallbackConfigureSceneChoices6.1, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %40, %46
  %51 = phi ptr [ %49, %46 ], [ @gSceneChoiceNormalAnimation, %40 ]
  %52 = getelementptr [6 x [2 x i16]], ptr @gSceneChoicePositions6, i32 0, i32 %7
  %53 = load i16, ptr %52, align 2
  %54 = sext i16 %53 to i32
  %55 = getelementptr [6 x [2 x i16]], ptr @gSceneChoicePositions6, i32 0, i32 %7, i32 1
  %56 = load i16, ptr %55, align 2
  %57 = sext i16 %56 to i32
  %58 = trunc i32 %8 to i8
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %58, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %54, i32 noundef 0, i32 noundef %57, ptr noundef nonnull %51) #13
  %59 = icmp eq i32 %7, 1
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 491) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 19, i32 noundef %3, i32 noundef 0, i32 noundef %5) #13
  br label %64

64:                                               ; preds = %50, %60, %63, %12, %24, %6
  %65 = add nuw nsw i32 %7, 1
  %66 = icmp eq i32 %65, 6
  br i1 %66, label %67, label %6

67:                                               ; preds = %64
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSceneChoiceSpecial(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = add nuw nsw i32 %3, 46
  %5 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = add i8 %6, -20
  %8 = icmp ult i8 %7, 8
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = zext nneg i8 %7 to i32
  %11 = getelementptr inbounds [8 x i8], ptr @switch.table.ScriptCallbackCheckSceneChoiceSpecial, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  br label %13

13:                                               ; preds = %1, %9
  %14 = phi i8 [ %12, %9 ], [ 0, %1 ]
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackChooseSceneChoiceResult(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 46
  %13 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %16 = tail call arm_apcscc i32 @RandomRange(i32 noundef 0, i32 noundef 100) #13
  %17 = icmp ugt i8 %10, 2
  %18 = and i32 %16, 255
  br i1 %17, label %19, label %34

19:                                               ; preds = %1
  %20 = icmp ult i32 %18, 5
  br i1 %20, label %21, label %24

21:                                               ; preds = %19
  %22 = icmp eq i8 %15, 0
  %23 = select i1 %22, i8 30, i8 46
  br label %49

24:                                               ; preds = %19
  %25 = icmp ult i32 %18, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = icmp eq i8 %15, 0
  %28 = select i1 %27, i8 57, i8 59
  br label %49

29:                                               ; preds = %24
  %30 = icmp ult i32 %18, 20
  br i1 %30, label %31, label %49

31:                                               ; preds = %29
  %32 = icmp eq i8 %15, 0
  %33 = select i1 %32, i8 54, i8 56
  br label %49

34:                                               ; preds = %1
  %35 = icmp ult i32 %18, 2
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = icmp eq i8 %15, 0
  %38 = select i1 %37, i8 30, i8 46
  br label %49

39:                                               ; preds = %34
  %40 = icmp ult i32 %18, 5
  br i1 %40, label %41, label %44

41:                                               ; preds = %39
  %42 = icmp eq i8 %15, 0
  %43 = select i1 %42, i8 57, i8 59
  br label %49

44:                                               ; preds = %39
  %45 = icmp ult i32 %18, 10
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = icmp eq i8 %15, 0
  %48 = select i1 %47, i8 54, i8 56
  br label %49

49:                                               ; preds = %36, %44, %46, %41, %21, %29, %31, %26
  %50 = phi i8 [ %23, %21 ], [ %28, %26 ], [ %33, %31 ], [ %14, %29 ], [ %38, %36 ], [ %43, %41 ], [ %48, %46 ], [ %14, %44 ]
  %51 = zext i8 %50 to i16
  store i16 %51, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @SceneChoiceNoopBFA58() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSceneChoiceNoopBFA5C() local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackShuffleSceneChoices8() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 127), align 1
  %2 = zext i8 %1 to i32
  %3 = getelementptr [0 x ptr], ptr @gSceneChoiceBanks8, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr [8 x i8], ptr @gSceneChoiceFixed8, i32 0, i32 %2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 77), align 1
  br label %7

7:                                                ; preds = %23, %0
  %8 = phi i32 [ 1, %0 ], [ %33, %23 ]
  %9 = phi i32 [ 0, %0 ], [ %30, %23 ]
  %10 = icmp ugt i32 %8, 4
  br i1 %10, label %11, label %17

11:                                               ; preds = %7, %11
  %12 = tail call arm_apcscc i32 @RandomRange(i32 noundef 0, i32 noundef 4) #13
  %13 = and i32 %12, 255
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %9
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %11

17:                                               ; preds = %7, %17
  %18 = tail call arm_apcscc i32 @RandomRange(i32 noundef 4, i32 noundef 8) #13
  %19 = and i32 %18, 255
  %20 = shl nuw i32 1, %19
  %21 = and i32 %20, %9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %17

23:                                               ; preds = %17, %11
  %24 = phi i32 [ %14, %11 ], [ %20, %17 ]
  %25 = phi i32 [ %13, %11 ], [ %19, %17 ]
  %26 = add i32 %8, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 77)
  %27 = inttoptr i32 %26 to ptr
  %28 = or i32 %24, %9
  %29 = tail call i32 asm sideeffect "", "=r,r,0"(i32 1, i32 %28) #14, !srcloc !5
  %30 = and i32 %29, 65535
  %31 = getelementptr i8, ptr %4, i32 %25
  %32 = load i8, ptr %31, align 1
  store i8 %32, ptr %27, align 1
  %33 = add nuw nsw i32 %8, 1
  %34 = icmp eq i32 %33, 8
  br i1 %34, label %35, label %7

35:                                               ; preds = %23
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSceneChoices8() local_unnamed_addr #0 {
  %1 = load i16, ptr @gSceneChoiceInactivePositions8, align 2
  %2 = sext i16 %1 to i32
  %3 = load i16, ptr getelementptr inbounds ([8 x [2 x i16]], ptr @gSceneChoiceInactivePositions8, i32 0, i32 0, i32 1), align 2
  %4 = add i16 %3, 4
  %5 = sext i16 %4 to i32
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 69), align 1
  switch i8 %6, label %14 [
    i8 0, label %13
    i8 1, label %8
    i8 2, label %7
  ]

7:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #13
  br label %14

8:                                                ; preds = %0
  %9 = load i16, ptr getelementptr inbounds ([8 x [2 x i16]], ptr @gSceneChoicePositions8, i32 0, i32 0, i32 1), align 2
  %10 = sext i16 %9 to i32
  %11 = load i16, ptr @gSceneChoicePositions8, align 2
  %12 = sext i16 %11 to i32
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %12, i32 noundef 0, i32 noundef %10, ptr noundef nonnull @gSceneChoiceFirstAnimation8) #13
  br label %14

13:                                               ; preds = %0
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %2, i32 noundef -4, i32 noundef %5, ptr noundef nonnull @gSceneChoiceFirstAnimation8) #13
  br label %14

14:                                               ; preds = %0, %7, %8, %13
  br label %15

15:                                               ; preds = %14, %47
  %16 = phi i32 [ %48, %47 ], [ 1, %14 ]
  %17 = add nuw nsw i32 %16, 23
  %18 = add nuw nsw i32 %16, 69
  %19 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  switch i8 %20, label %47 [
    i8 0, label %21
    i8 1, label %35
    i8 2, label %45
  ]

21:                                               ; preds = %15
  %22 = trunc i32 %17 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %22, i8 noundef zeroext 0) #13
  %23 = trunc i32 %16 to i8
  switch i8 %23, label %25 [
    i8 5, label %47
    i8 0, label %24
  ]

24:                                               ; preds = %21
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %2, i32 noundef -4, i32 noundef %5, ptr noundef nonnull @gSceneChoiceFirstAnimation8) #13
  br label %47

25:                                               ; preds = %21
  %26 = getelementptr [8 x [2 x i16]], ptr @gSceneChoiceInactivePositions8, i32 0, i32 %16
  %27 = load i16, ptr %26, align 2
  %28 = sext i16 %27 to i32
  %29 = getelementptr [8 x [2 x i16]], ptr @gSceneChoiceInactivePositions8, i32 0, i32 %16, i32 1
  %30 = load i16, ptr %29, align 2
  %31 = add i16 %30, 4
  %32 = sext i16 %31 to i32
  %33 = trunc i32 %16 to i8
  %34 = add i8 %33, 15
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %34, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %28, i32 noundef -4, i32 noundef %32, ptr noundef nonnull @gSceneChoiceNormalAnimation) #13
  br label %47

35:                                               ; preds = %15
  %36 = trunc i32 %16 to i8
  %37 = add i8 %36, 15
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %37, i8 noundef zeroext 0) #13
  %38 = getelementptr [8 x [2 x i16]], ptr @gSceneChoicePositions8, i32 0, i32 %16
  %39 = load i16, ptr %38, align 2
  %40 = sext i16 %39 to i32
  %41 = getelementptr [8 x [2 x i16]], ptr @gSceneChoicePositions8, i32 0, i32 %16, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = sext i16 %42 to i32
  %44 = trunc i32 %17 to i8
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %44, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %40, i32 noundef 0, i32 noundef %43, ptr noundef nonnull @gSceneChoiceNormalAnimation) #13
  br label %47

45:                                               ; preds = %15
  %46 = trunc i32 %17 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %46, i8 noundef zeroext 0) #13
  br label %47

47:                                               ; preds = %21, %35, %25, %24, %15, %45
  %48 = add nuw nsw i32 %16, 1
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %15, !llvm.loop !6

50:                                               ; preds = %47
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackChooseSceneChoiceResult8(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 8
  %8 = or disjoint i32 %7, %3
  %9 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = add nuw nsw i32 %11, 77
  %13 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %10, 0
  br i1 %15, label %34, label %16

16:                                               ; preds = %1
  %17 = tail call arm_apcscc i32 @RandomRange(i32 noundef 0, i32 noundef 100) #13
  %18 = icmp ugt i8 %10, 4
  %19 = and i32 %17, 255
  br i1 %18, label %20, label %27

20:                                               ; preds = %16
  %21 = icmp ult i32 %19, 5
  br i1 %21, label %34, label %22

22:                                               ; preds = %20
  %23 = icmp ult i32 %19, 15
  br i1 %23, label %34, label %24

24:                                               ; preds = %22
  %25 = icmp ult i32 %19, 20
  %26 = select i1 %25, i8 54, i8 %14
  br label %34

27:                                               ; preds = %16
  %28 = icmp ult i32 %19, 2
  br i1 %28, label %34, label %29

29:                                               ; preds = %27
  %30 = icmp ult i32 %19, 7
  br i1 %30, label %34, label %31

31:                                               ; preds = %29
  %32 = icmp ult i32 %19, 10
  %33 = select i1 %32, i8 54, i8 %14
  br label %34

34:                                               ; preds = %31, %24, %20, %22, %27, %29, %1
  %35 = phi i8 [ %14, %1 ], [ 30, %20 ], [ 57, %22 ], [ %26, %24 ], [ 30, %27 ], [ 57, %29 ], [ %33, %31 ]
  %36 = zext i8 %35 to i16
  store i16 %36, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  ret i32 2
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSceneChoiceRecord(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i8, ptr %0, align 1
  %3 = load i8, ptr @gSaveGroup2Block1CB20, align 1
  %4 = and i8 %3, 127
  %5 = icmp eq i8 %4, %2
  br i1 %5, label %20, label %6

6:                                                ; preds = %1, %20
  %7 = phi i8 [ %21, %20 ], [ 0, %1 ]
  br label %8

8:                                                ; preds = %6, %12
  %9 = phi i8 [ %10, %12 ], [ %7, %6 ]
  %10 = add i8 %9, 1
  %11 = icmp ugt i8 %10, 63
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = shl nuw i8 %10, 2
  %14 = zext i8 %13 to i32
  %15 = add i32 %14, ptrtoint (ptr @gSaveGroup2Block1CB20 to i32)
  %16 = inttoptr i32 %15 to ptr
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 127
  %19 = icmp eq i8 %18, %2
  br i1 %19, label %20, label %8

20:                                               ; preds = %12, %1
  %21 = phi i8 [ 0, %1 ], [ %10, %12 ]
  %22 = phi ptr [ @gSaveGroup2Block1CB20, %1 ], [ %16, %12 ]
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 3968
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %6, label %26

26:                                               ; preds = %8, %20
  %27 = phi i8 [ 1, %20 ], [ 0, %8 ]
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSceneChoiceCounter(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = add i8 %5, -1
  %7 = icmp ult i8 %6, -2
  %8 = zext i1 %7 to i8
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @SceneChoiceNoopBFD14() local_unnamed_addr #4 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSceneChoiceClass2IndicatorBFD18() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationAndIndicator1596C() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CC40C) #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator1596C() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackMoveSceneMenu() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 27), align 1
  %2 = icmp eq i8 %1, 3
  %3 = zext i1 %2 to i32
  %4 = icmp eq i8 %1, 5
  %5 = select i1 %4, i32 2, i32 %3
  %6 = icmp eq i8 %1, 1
  %7 = select i1 %6, i32 3, i32 %5
  %8 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 192, i8 noundef zeroext 1) #13
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %56, label %10

10:                                               ; preds = %0
  %11 = and i16 %8, 64
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  switch i32 %7, label %51 [
    i32 0, label %14
    i32 1, label %19
    i32 2, label %24
    i32 3, label %29
  ]

14:                                               ; preds = %13
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %16 = icmp ugt i8 %15, 1
  br i1 %16, label %17, label %56

17:                                               ; preds = %14
  %18 = add i8 %15, -1
  br label %52

19:                                               ; preds = %13
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %21 = icmp ugt i8 %20, 3
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = add i8 %20, -1
  br label %52

24:                                               ; preds = %13
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %26 = icmp ugt i8 %25, 3
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = add i8 %25, -1
  br label %52

29:                                               ; preds = %13
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %31 = icmp eq i8 %30, 5
  br i1 %31, label %52, label %56

32:                                               ; preds = %10
  switch i32 %7, label %51 [
    i32 0, label %33
    i32 1, label %38
    i32 2, label %43
    i32 3, label %48
  ]

33:                                               ; preds = %32
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %35 = icmp ult i8 %34, 5
  br i1 %35, label %36, label %56

36:                                               ; preds = %33
  %37 = add nuw nsw i8 %34, 1
  br label %52

38:                                               ; preds = %32
  %39 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %40 = icmp ult i8 %39, 5
  br i1 %40, label %41, label %56

41:                                               ; preds = %38
  %42 = add nuw nsw i8 %39, 1
  br label %52

43:                                               ; preds = %32
  %44 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %45 = icmp ult i8 %44, 5
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = add nuw nsw i8 %44, 1
  br label %52

48:                                               ; preds = %32
  %49 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %50 = icmp eq i8 %49, 3
  br i1 %50, label %52, label %56

51:                                               ; preds = %32, %13
  unreachable

52:                                               ; preds = %48, %29, %36, %41, %46, %17, %22, %27
  %53 = phi i8 [ %28, %27 ], [ %23, %22 ], [ %18, %17 ], [ %47, %46 ], [ %42, %41 ], [ %37, %36 ], [ 3, %29 ], [ 5, %48 ]
  store i8 %53, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 302) #13
  %54 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %55 = zext i8 %54 to i32
  tail call arm_apcscc void @UpdateSceneMenu(i32 noundef %55) #15
  br label %56

56:                                               ; preds = %52, %29, %24, %19, %14, %48, %43, %38, %33, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc i32 @GetSceneMenuKind() local_unnamed_addr #6 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 27), align 1
  %2 = icmp eq i8 %1, 3
  %3 = zext i1 %2 to i32
  %4 = icmp eq i8 %1, 5
  %5 = select i1 %4, i32 2, i32 %3
  %6 = icmp eq i8 %1, 1
  %7 = select i1 %6, i32 3, i32 %5
  ret i32 %7
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateSceneMenu(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 27), align 1
  %3 = icmp eq i8 %2, 3
  %4 = zext i1 %3 to i32
  %5 = icmp eq i8 %2, 5
  %6 = select i1 %5, i32 2, i32 %4
  %7 = icmp eq i8 %2, 1
  %8 = select i1 %7, i32 3, i32 %6
  %9 = and i32 %0, 255
  %10 = getelementptr [4 x [6 x i8]], ptr @gSceneMenuOptionCodes, i32 0, i32 %8, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %13 = zext i8 %2 to i32
  %14 = zext i8 %12 to i32
  %15 = getelementptr [5 x [4 x ptr]], ptr @gSceneMenuBackgroundBanks, i32 0, i32 %14, i32 %8
  %16 = and i32 %13, 1
  %17 = icmp eq i32 %16, 0
  %18 = load ptr, ptr %15, align 4
  br i1 %17, label %25, label %19

19:                                               ; preds = %1
  %20 = icmp eq i8 %11, 1
  %21 = select i1 %20, i32 5, i32 0
  %22 = getelementptr ptr, ptr %18, i32 %21
  %23 = getelementptr ptr, ptr %22, i32 1
  %24 = load ptr, ptr %23, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 130, ptr noundef %24) #13
  br label %25

25:                                               ; preds = %19, %1
  %26 = and i32 %13, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %25
  %29 = icmp eq i8 %11, 2
  %30 = select i1 %29, i32 5, i32 0
  %31 = getelementptr ptr, ptr %18, i32 %30
  %32 = getelementptr ptr, ptr %31, i32 2
  %33 = load ptr, ptr %32, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 1, i32 noundef 130, ptr noundef %33) #13
  br label %34

34:                                               ; preds = %28, %25
  %35 = and i32 %13, 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = icmp eq i8 %11, 3
  %39 = select i1 %38, i32 5, i32 0
  %40 = getelementptr ptr, ptr %18, i32 %39
  %41 = getelementptr ptr, ptr %40, i32 3
  %42 = load ptr, ptr %41, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 2, i32 noundef 130, ptr noundef %42) #13
  br label %43

43:                                               ; preds = %37, %34
  %44 = and i32 %13, 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = icmp eq i8 %11, 4
  %48 = select i1 %47, i32 5, i32 0
  %49 = getelementptr ptr, ptr %18, i32 %48
  %50 = getelementptr ptr, ptr %49, i32 4
  %51 = load ptr, ptr %50, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 3, i32 noundef 130, ptr noundef %51) #13
  br label %52

52:                                               ; preds = %46, %43
  %53 = icmp eq i8 %11, 5
  %54 = select i1 %53, i32 5, i32 0
  %55 = getelementptr ptr, ptr %18, i32 %54
  %56 = getelementptr ptr, ptr %55, i32 5
  %57 = load ptr, ptr %56, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 130, ptr noundef %57) #13
  %58 = icmp eq i32 %9, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %52
  %60 = shl nuw nsw i32 %9, 20
  %61 = add nuw nsw i32 %60, 3670016
  %62 = lshr exact i32 %61, 16
  %63 = getelementptr [6 x ptr], ptr @gSceneMenuCursorAnimations, i32 0, i32 %9
  %64 = load ptr, ptr %63, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 112, i32 noundef 56, i32 noundef %62, i32 noundef 0, ptr noundef %64) #13
  br label %65

65:                                               ; preds = %59, %52
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeSceneMenu() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 71) #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 267) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  store i8 15, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 27), align 1
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %47, label %49

9:                                                ; preds = %3
  store i8 3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 27), align 1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %47, label %49

12:                                               ; preds = %0
  %13 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 320) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %12
  %16 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 321) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %15
  %19 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 322) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %18
  %22 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 323) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 324) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %24
  %28 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 325) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 326) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 327) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 328) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 329) #13
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i8 1, i8 5
  br label %43

43:                                               ; preds = %39, %12, %15, %18, %21, %24, %27, %30, %33, %36
  %44 = phi i8 [ 5, %36 ], [ 5, %33 ], [ 5, %30 ], [ 5, %27 ], [ 5, %24 ], [ 5, %21 ], [ 5, %18 ], [ 5, %15 ], [ 5, %12 ], [ %42, %39 ]
  store i8 %44, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 27), align 1
  %45 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %9, %6
  %48 = phi i8 [ 2, %6 ], [ 4, %9 ], [ 3, %43 ]
  store i8 %48, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  br label %49

49:                                               ; preds = %47, %43, %6, %9
  tail call arm_apcscc void @UpdateSceneMenu(i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshSceneMenu() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @UpdateSceneMenu(i32 noundef %2) #15
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackShowSceneMenuOption() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 27), align 1
  %2 = icmp eq i8 %1, 3
  %3 = zext i1 %2 to i32
  %4 = icmp eq i8 %1, 5
  %5 = select i1 %4, i32 2, i32 %3
  %6 = icmp eq i8 %1, 1
  %7 = select i1 %6, i32 3, i32 %5
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr [4 x [6 x i8]], ptr @gSceneMenuOptionCodes, i32 0, i32 %7, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [5 x [4 x ptr]], ptr @gSceneMenuBackgroundBanks, i32 0, i32 %13, i32 %7
  %15 = load ptr, ptr %14, align 4
  %16 = zext i8 %11 to i32
  %17 = getelementptr ptr, ptr %15, i32 %16
  %18 = getelementptr ptr, ptr %17, i32 10
  %19 = load ptr, ptr %18, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 130, ptr noundef %19) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackChooseSceneSaveRecord() local_unnamed_addr #0 {
  %1 = load i8, ptr @gSaveGroup3Block3730, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %18

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 16), align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %3
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 32), align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %6
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 48), align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 64), align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 80), align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %0, %3, %6, %9, %12, %15
  br label %19

19:                                               ; preds = %18, %19
  %20 = tail call arm_apcscc i32 @RandomRange(i32 noundef 0, i32 noundef 6) #13
  %21 = shl i32 %20, 4
  %22 = and i32 %21, 4080
  %23 = getelementptr [0 x i8], ptr @gSaveGroup3Block3730, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %19, label %26

26:                                               ; preds = %19
  %27 = trunc i32 %20 to i8
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 103), align 1
  br label %28

28:                                               ; preds = %15, %26
  %29 = phi i8 [ %24, %26 ], [ 0, %15 ]
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPollSceneMenuAudio() local_unnamed_addr #7 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 31), align 1
  %2 = icmp eq i8 %1, -1
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load i32, ptr getelementptr ([0 x i8], ptr @gAudioPlayerContext4E90, i32 0, i32 68), align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 31), align 1
  br label %7

7:                                                ; preds = %3, %6, %0
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSceneMenuStatusBackground() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 29), align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %13, label %3

3:                                                ; preds = %0
  %4 = zext i8 %1 to i32
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %6 = icmp ugt i8 %5, 4
  %7 = select i1 %6, i8 0, i8 %5
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 5
  %10 = add nuw nsw i32 %9, %4
  %11 = getelementptr [25 x ptr], ptr @gSceneMenuStatusBackgrounds, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 8, i32 noundef 129, ptr noundef %12) #13
  br label %13

13:                                               ; preds = %3, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadSceneSaveResult(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @gSaveDataReadResults, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 8), align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadSceneMenuSelection() local_unnamed_addr #7 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 25), align 1
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 27), align 1
  %3 = icmp eq i8 %2, 3
  %4 = zext i1 %3 to i32
  %5 = icmp eq i8 %2, 5
  %6 = select i1 %5, i32 2, i32 %4
  %7 = icmp eq i8 %2, 1
  %8 = select i1 %7, i32 3, i32 %6
  %9 = zext i8 %1 to i32
  %10 = getelementptr [4 x [6 x i8]], ptr @gSceneMenuOptionCodes, i32 0, i32 %8, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i16
  store i16 %12, ptr @gScriptResult, align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSceneRecordMenu(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 30), align 1
  %3 = zext i8 %2 to i32
  %4 = icmp eq i8 %2, 0
  %5 = select i1 %4, i32 5, i32 0
  %6 = getelementptr [15 x ptr], ptr @gSceneRecordMenuBackgrounds, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 130, ptr noundef %7) #13
  %8 = icmp eq i8 %2, 1
  %9 = select i1 %8, i32 6, i32 1
  %10 = getelementptr [15 x ptr], ptr @gSceneRecordMenuBackgrounds, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 1, i32 noundef 130, ptr noundef %11) #13
  %12 = icmp eq i8 %2, 2
  %13 = select i1 %12, i32 7, i32 2
  %14 = getelementptr [15 x ptr], ptr @gSceneRecordMenuBackgrounds, i32 0, i32 %13
  %15 = load ptr, ptr %14, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 2, i32 noundef 130, ptr noundef %15) #13
  %16 = icmp eq i8 %2, 3
  %17 = select i1 %16, i32 8, i32 3
  %18 = getelementptr [15 x ptr], ptr @gSceneRecordMenuBackgrounds, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 3, i32 noundef 130, ptr noundef %19) #13
  %20 = icmp eq i8 %2, 4
  %21 = select i1 %20, i32 9, i32 4
  %22 = getelementptr [15 x ptr], ptr @gSceneRecordMenuBackgrounds, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 130, ptr noundef %23) #13
  %24 = getelementptr [5 x ptr], ptr @gSceneRecordLabelBackgrounds, i32 0, i32 %3
  %25 = load ptr, ptr %24, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 130, ptr noundef %25) #13
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 236), align 1
  %27 = icmp eq i8 %26, 0
  %28 = add nuw nsw i32 %3, 5
  %29 = select i1 %27, i32 %28, i32 %3
  %30 = getelementptr [10 x ptr], ptr @gSceneRecordModeBackgrounds, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 6, i32 noundef 130, ptr noundef %31) #13
  %32 = shl nuw nsw i32 %3, 20
  %33 = add nuw nsw i32 %32, 3670016
  %34 = lshr exact i32 %33, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 112, i32 noundef 88, i32 noundef %34, i32 noundef 0, ptr noundef nonnull @gSceneRecordCursorAnimation) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 27, i8 noundef zeroext 0) #13
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackMoveSceneRecordMenu() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 192, i8 noundef zeroext 1) #13
  %2 = icmp eq i16 %1, 0
  br i1 %2, label %15, label %3

3:                                                ; preds = %0
  %4 = and i16 %1, 64
  %5 = icmp eq i16 %4, 0
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 30), align 1
  br i1 %5, label %9, label %7

7:                                                ; preds = %3
  %8 = icmp eq i8 %6, 0
  br i1 %8, label %15, label %11

9:                                                ; preds = %3
  %10 = icmp ult i8 %6, 4
  br i1 %10, label %11, label %15

11:                                               ; preds = %9, %7
  %12 = phi i8 [ -1, %7 ], [ 1, %9 ]
  %13 = add i8 %6, %12
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 30), align 1
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 302) #13
  %14 = tail call arm_apcscc i32 @ScriptCallbackRenderSceneRecordMenu(ptr poison) #15
  br label %15

15:                                               ; preds = %0, %9, %7, %11
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackShowSceneRecordMenuOption() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 30), align 1
  %2 = zext i8 %1 to i32
  %3 = add nuw nsw i32 %2, 10
  %4 = getelementptr [15 x ptr], ptr @gSceneRecordMenuBackgrounds, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 130, ptr noundef %5) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSaveSceneRecordLanguage() local_unnamed_addr #7 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  store i8 %1, ptr @gSceneRecordLanguageSnapshot, align 1
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 236), align 1
  store i8 %2, ptr getelementptr inbounds ([2 x i8], ptr @gSceneRecordLanguageSnapshot, i32 0, i32 1), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreSceneRecordLanguage() local_unnamed_addr #7 {
  %1 = load i8, ptr @gSceneRecordLanguageSnapshot, align 1
  store i8 %1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %2 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @gSceneRecordLanguageSnapshot, i32 0, i32 1), align 1
  store i8 %2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 236), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSceneRecordKeyRepeat() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetKeyRepeatDelays(i16 noundef zeroext 16, i16 noundef zeroext 8) #13
  ret i32 0
}

declare dso_local arm_apcscc void @SetKeyRepeatDelays(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadSceneRecordDialogInput() local_unnamed_addr #0 {
  store i16 0, ptr @gScriptResult, align 2
  %1 = tail call arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef null) #13
  %2 = load i16, ptr @gAnimationClassValues, align 2
  %3 = zext i16 %2 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %0
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  %8 = zext i8 %7 to i16
  %9 = add nuw nsw i16 %8, 2
  br label %41

10:                                               ; preds = %0
  %11 = and i32 %3, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10
  store i8 3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  br label %41

14:                                               ; preds = %10
  %15 = tail call arm_apcscc i32 @ScriptCallbackReadRepeatKeyMask(ptr noundef null) #13
  %16 = load i16, ptr @gAnimationClassValues, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %17, 96
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %14
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  %22 = zext i8 %21 to i32
  %23 = tail call i32 asm "", "=r,0"(i32 %22) #16, !srcloc !8
  %24 = trunc i32 %23 to i8
  store i8 %24, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %25 = and i32 %23, 255
  %26 = icmp eq i32 %25, 0
  %27 = add i8 %24, -1
  %28 = select i1 %26, i8 2, i8 %27
  store i8 %28, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  br label %41

29:                                               ; preds = %14
  %30 = and i32 %17, 144
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  %34 = zext i8 %33 to i32
  %35 = tail call i32 asm "", "=r,0"(i32 %34) #16, !srcloc !9
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %37 = and i32 %35, 254
  %38 = icmp eq i32 %37, 0
  %39 = add nuw nsw i8 %36, 1
  %40 = select i1 %38, i8 %39, i8 0
  store i8 %40, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  br label %41

41:                                               ; preds = %6, %20, %32, %13
  %42 = phi i16 [ 5, %13 ], [ 1, %32 ], [ 1, %20 ], [ %9, %6 ]
  store i16 %42, ptr @gScriptResult, align 2
  br label %43

43:                                               ; preds = %41, %29
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @ScriptCallbackReadRepeatKeyMask(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeSceneTextFirst() local_unnamed_addr #7 {
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  %2 = icmp ult i8 %1, 2
  br i1 %2, label %5, label %3

3:                                                ; preds = %20, %17, %14, %11, %8, %5, %0
  %4 = phi i8 [ 7, %0 ], [ 6, %5 ], [ 5, %8 ], [ 4, %11 ], [ 3, %14 ], [ 2, %17 ], [ 1, %20 ]
  store i8 %4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %23

5:                                                ; preds = %0
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %8, label %3

8:                                                ; preds = %5
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %11, label %3

11:                                               ; preds = %8
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %14, label %3

14:                                               ; preds = %11
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %17, label %3

17:                                               ; preds = %14
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %20, label %3

20:                                               ; preds = %17
  %21 = load i8, ptr @gTaskFlagsFirst, align 1
  %22 = icmp ult i8 %21, 2
  br i1 %22, label %23, label %3

23:                                               ; preds = %20, %3
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc i32 @AccessSceneTextCharacter(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %4 = icmp eq i8 %3, 1
  %5 = and i32 %1, 255
  %6 = icmp eq i32 %5, 255
  %7 = and i32 %0, 255
  %8 = select i1 %4, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  br i1 %6, label %12, label %9

9:                                                ; preds = %2
  %10 = trunc i32 %1 to i8
  %11 = getelementptr [0 x i8], ptr %8, i32 0, i32 %7
  store i8 %10, ptr %11, align 1
  br label %12

12:                                               ; preds = %2, %9
  %13 = getelementptr [0 x i8], ptr %8, i32 0, i32 %7
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeSceneTextSecond() local_unnamed_addr #7 {
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  %2 = icmp ult i8 %1, 2
  br i1 %2, label %5, label %3

3:                                                ; preds = %20, %17, %14, %11, %8, %5, %0
  %4 = phi i8 [ 7, %0 ], [ 6, %5 ], [ 5, %8 ], [ 4, %11 ], [ 3, %14 ], [ 2, %17 ], [ 1, %20 ]
  store i8 %4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %23

5:                                                ; preds = %0
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  %7 = icmp ult i8 %6, 2
  br i1 %7, label %8, label %3

8:                                                ; preds = %5
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  %10 = icmp ult i8 %9, 2
  br i1 %10, label %11, label %3

11:                                               ; preds = %8
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  %13 = icmp ult i8 %12, 2
  br i1 %13, label %14, label %3

14:                                               ; preds = %11
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %17, label %3

17:                                               ; preds = %14
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  %19 = icmp ult i8 %18, 2
  br i1 %19, label %20, label %3

20:                                               ; preds = %17
  %21 = load i8, ptr @gTaskFlagsSecond, align 1
  %22 = icmp ult i8 %21, 2
  br i1 %22, label %23, label %3

23:                                               ; preds = %20, %3
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadSceneTextInput() local_unnamed_addr #0 {
  store i16 0, ptr @gScriptResult, align 2
  %1 = tail call arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef null) #13
  %2 = load i16, ptr @gAnimationClassValues, align 2
  %3 = zext i16 %2 to i32
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %0
  %7 = and i32 %3, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %6
  %10 = and i32 %3, 512
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = and i32 %3, 256
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %12
  %16 = and i32 %3, 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = and i32 %3, 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %18, %15, %12, %9, %6, %0
  %22 = phi i16 [ 2, %0 ], [ 3, %6 ], [ 4, %9 ], [ 5, %12 ], [ 6, %15 ], [ 7, %18 ]
  store i16 %22, ptr @gScriptResult, align 2
  br label %23

23:                                               ; preds = %21, %18
  %24 = tail call arm_apcscc i32 @ScriptCallbackReadRepeatKeyMask(ptr noundef null) #13
  %25 = load i16, ptr @gAnimationClassValues, align 2
  %26 = and i16 %25, 240
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %23
  store i16 1, ptr @gScriptResult, align 2
  br label %29

29:                                               ; preds = %28, %23
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackMoveSceneTextGrid() local_unnamed_addr #0 {
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %1 = load i16, ptr @gAnimationClassValues, align 2
  %2 = and i16 %1, 16
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %28

4:                                                ; preds = %0
  %5 = and i16 %1, 32
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = and i16 %1, 64
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = and i16 %1, 128
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, i8 3, i8 2
  br label %14

14:                                               ; preds = %10, %7, %4
  %15 = phi i8 [ 0, %4 ], [ 1, %7 ], [ %13, %10 ]
  switch i8 %15, label %87 [
    i8 3, label %88
    i8 2, label %16
    i8 0, label %47
    i8 1, label %22
  ]

16:                                               ; preds = %14
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %18 = zext i8 %17 to i32
  %19 = mul nuw nsw i32 %18, 77
  %20 = getelementptr i8, ptr @gSceneTextGridBanks, i32 %19
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  br label %75

22:                                               ; preds = %14
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %24 = zext i8 %23 to i32
  %25 = mul nuw nsw i32 %24, 77
  %26 = getelementptr i8, ptr @gSceneTextGridBanks, i32 %25
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  br label %66

28:                                               ; preds = %0
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %30 = icmp ugt i8 %29, 66
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %33 = zext i8 %32 to i32
  %34 = mul nuw nsw i32 %33, 77
  %35 = getelementptr i8, ptr @gSceneTextGridBanks, i32 %34
  br label %37

36:                                               ; preds = %28
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %88

37:                                               ; preds = %31, %37
  %38 = phi i8 [ %29, %31 ], [ %42, %37 ]
  %39 = urem i8 %38, 11
  %40 = icmp eq i8 %39, 10
  %41 = select i1 %40, i8 -10, i8 1
  %42 = add i8 %41, %38
  %43 = zext i8 %42 to i32
  %44 = getelementptr i8, ptr %35, i32 %43
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, -1
  br i1 %46, label %37, label %84

47:                                               ; preds = %14
  %48 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %49 = icmp ugt i8 %48, 66
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %52 = zext i8 %51 to i32
  %53 = mul nuw nsw i32 %52, 77
  %54 = getelementptr i8, ptr @gSceneTextGridBanks, i32 %53
  br label %56

55:                                               ; preds = %47
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %88

56:                                               ; preds = %50, %56
  %57 = phi i8 [ %48, %50 ], [ %61, %56 ]
  %58 = urem i8 %57, 11
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i8 10, i8 -1
  %61 = add i8 %60, %57
  %62 = zext i8 %61 to i32
  %63 = getelementptr i8, ptr %54, i32 %62
  %64 = load i8, ptr %63, align 1
  %65 = icmp eq i8 %64, -1
  br i1 %65, label %56, label %84

66:                                               ; preds = %22, %66
  %67 = phi i8 [ %27, %22 ], [ %70, %66 ]
  %68 = icmp ult i8 %67, 11
  %69 = select i1 %68, i8 66, i8 -11
  %70 = add i8 %69, %67
  %71 = zext i8 %70 to i32
  %72 = getelementptr i8, ptr %26, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, -1
  br i1 %74, label %66, label %84

75:                                               ; preds = %16, %75
  %76 = phi i8 [ %21, %16 ], [ %79, %75 ]
  %77 = icmp ugt i8 %76, 65
  %78 = select i1 %77, i8 -66, i8 11
  %79 = add i8 %78, %76
  %80 = zext i8 %79 to i32
  %81 = getelementptr i8, ptr %20, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, -1
  br i1 %83, label %75, label %84

84:                                               ; preds = %37, %66, %56, %75
  %85 = phi i8 [ %79, %75 ], [ %61, %56 ], [ %70, %66 ], [ %42, %37 ]
  store i8 %85, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %86 = tail call arm_apcscc i32 @ScriptCallbackRefreshSceneTextGrid(ptr poison) #15
  br label %88

87:                                               ; preds = %14
  unreachable

88:                                               ; preds = %36, %55, %84, %14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshSceneTextGrid(ptr nocapture readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef nonnull @gSceneTextConfirmAnimation) #13
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 31, ptr noundef nonnull @gSceneTextBank0Animation) #13
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull @gSceneTextBank1Animation) #13
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 33, ptr noundef nonnull @gSceneTextBank2Animation) #13
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef nonnull @gSceneTextAdvanceAnimation) #13
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 35, ptr noundef nonnull @gSceneTextRetreatAnimation) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 28, i8 noundef zeroext 2) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 31, i8 noundef zeroext 2) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 32, i8 noundef zeroext 2) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 33, i8 noundef zeroext 2) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 34, i8 noundef zeroext 2) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 35, i8 noundef zeroext 2) #13
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %5 = zext i8 %4 to i32
  %6 = mul nuw nsw i32 %5, 77
  %7 = add nuw nsw i32 %6, %3
  %8 = getelementptr [0 x i8], ptr @gSceneTextGridBanks, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp ult i8 %9, -16
  %11 = add i8 %9, 3
  %12 = icmp ult i8 %11, 2
  %13 = or i1 %10, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 29, ptr noundef nonnull @gSceneTextGridCursorAnimation) #13
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %16 = freeze i8 %15
  %17 = udiv i8 %16, 11
  %18 = mul i8 %17, 11
  %19 = sub i8 %16, %18
  %20 = zext nneg i8 %19 to i32
  %21 = mul nuw nsw i32 %20, 720896
  %22 = zext nneg i8 %17 to i32
  %23 = shl nuw nsw i32 %22, 20
  %24 = add nuw nsw i32 %23, 2097152
  %25 = icmp ugt i8 %19, 4
  %26 = select i1 %25, i32 5177344, i32 4456448
  %27 = add nuw nsw i32 %21, %26
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 29, i32 noundef %27, i32 noundef 0, i32 noundef %24) #13
  br label %35

28:                                               ; preds = %1
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 29, ptr noundef nonnull @gTaskTextLeadingDigitDefaultAnimation) #13
  switch i8 %9, label %35 [
    i8 -16, label %29
    i8 -15, label %30
    i8 -14, label %31
    i8 -13, label %32
    i8 -12, label %33
    i8 -11, label %34
  ]

29:                                               ; preds = %28
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef getelementptr ([0 x i8], ptr @gSceneTextConfirmAnimation, i32 0, i32 9)) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 28, i8 noundef zeroext 0) #13
  br label %35

30:                                               ; preds = %28
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 31, ptr noundef getelementptr ([0 x i8], ptr @gSceneTextBank0Animation, i32 0, i32 9)) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 31, i8 noundef zeroext 0) #13
  br label %35

31:                                               ; preds = %28
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef getelementptr ([0 x i8], ptr @gSceneTextBank1Animation, i32 0, i32 9)) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 32, i8 noundef zeroext 0) #13
  br label %35

32:                                               ; preds = %28
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 33, ptr noundef getelementptr ([0 x i8], ptr @gSceneTextBank2Animation, i32 0, i32 9)) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 33, i8 noundef zeroext 0) #13
  br label %35

33:                                               ; preds = %28
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef getelementptr ([0 x i8], ptr @gSceneTextAdvanceAnimation, i32 0, i32 9)) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 34, i8 noundef zeroext 0) #13
  br label %35

34:                                               ; preds = %28
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 35, ptr noundef getelementptr ([0 x i8], ptr @gSceneTextRetreatAnimation, i32 0, i32 9)) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 35, i8 noundef zeroext 0) #13
  br label %35

35:                                               ; preds = %29, %30, %31, %32, %33, %34, %28, %14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectSceneTextCharacter() local_unnamed_addr #0 {
  store i16 0, ptr @gScriptResult, align 2
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %2 = zext i8 %1 to i32
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 77
  %6 = add nuw nsw i32 %5, %2
  %7 = getelementptr [0 x i8], ptr @gSceneTextGridBanks, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp ugt i8 %8, -17
  br i1 %9, label %10, label %83

10:                                               ; preds = %0
  switch i8 %8, label %187 [
    i8 -16, label %11
    i8 -15, label %13
    i8 -14, label %14
    i8 -13, label %15
    i8 -12, label %16
    i8 -11, label %48
  ]

11:                                               ; preds = %10
  %12 = tail call arm_apcscc i32 @ScriptCallbackConfirmSceneText(ptr poison) #15
  br label %187

13:                                               ; preds = %10
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  store i16 2, ptr @gScriptResult, align 2
  br label %187

14:                                               ; preds = %10
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  store i16 3, ptr @gScriptResult, align 2
  br label %187

15:                                               ; preds = %10
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  store i16 4, ptr @gScriptResult, align 2
  br label %187

16:                                               ; preds = %10
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %18 = icmp ult i8 %17, 7
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = add nuw nsw i8 %17, 1
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %21

21:                                               ; preds = %19, %16
  %22 = phi i8 [ %20, %19 ], [ %17, %16 ]
  %23 = tail call i8 @llvm.umin.i8(i8 %22, i8 6)
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %25 = icmp eq i8 %24, 1
  %26 = select i1 %25, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %27 = zext nneg i8 %23 to i32
  br label %28

28:                                               ; preds = %42, %21
  %29 = phi i32 [ 0, %21 ], [ %44, %42 ]
  %30 = phi i32 [ 4, %21 ], [ %43, %42 ]
  %31 = getelementptr [0 x i8], ptr %26, i32 0, i32 %29
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = zext i8 %32 to i32
  %36 = add nsw i32 %35, -1
  %37 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = add i32 %30, 1
  %41 = add i32 %40, %39
  br label %42

42:                                               ; preds = %34, %28
  %43 = phi i32 [ %41, %34 ], [ %30, %28 ]
  %44 = add nuw nsw i32 %29, 1
  %45 = icmp eq i32 %44, %27
  br i1 %45, label %46, label %28

46:                                               ; preds = %42
  %47 = shl i32 %43, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 30, i32 noundef %47, i32 noundef 0, i32 noundef 3670016) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gSceneTextAdvanceGraphics to i32)) #13
  br label %187

48:                                               ; preds = %10
  %49 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  switch i8 %49, label %51 [
    i8 7, label %50
    i8 0, label %81
  ]

50:                                               ; preds = %48
  store i8 5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %54

51:                                               ; preds = %48
  %52 = add i8 %49, -1
  store i8 %52, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %81, label %54

54:                                               ; preds = %51, %50
  %55 = phi i8 [ 5, %50 ], [ %52, %51 ]
  %56 = tail call i8 @llvm.umin.i8(i8 %55, i8 6)
  %57 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %58 = icmp eq i8 %57, 1
  %59 = select i1 %58, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %60 = zext nneg i8 %56 to i32
  br label %61

61:                                               ; preds = %75, %54
  %62 = phi i32 [ 0, %54 ], [ %77, %75 ]
  %63 = phi i32 [ 4, %54 ], [ %76, %75 ]
  %64 = getelementptr [0 x i8], ptr %59, i32 0, i32 %62
  %65 = load i8, ptr %64, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %75, label %67

67:                                               ; preds = %61
  %68 = zext i8 %65 to i32
  %69 = add nsw i32 %68, -1
  %70 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i32
  %73 = add i32 %63, 1
  %74 = add i32 %73, %72
  br label %75

75:                                               ; preds = %67, %61
  %76 = phi i32 [ %74, %67 ], [ %63, %61 ]
  %77 = add nuw nsw i32 %62, 1
  %78 = icmp eq i32 %77, %60
  br i1 %78, label %79, label %61

79:                                               ; preds = %75
  %80 = shl i32 %76, 16
  br label %81

81:                                               ; preds = %48, %51, %79
  %82 = phi i32 [ 262144, %51 ], [ %80, %79 ], [ 262144, %48 ]
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 30, i32 noundef %82, i32 noundef 0, i32 noundef 3670016) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 6, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gSceneTextRetreatGraphics to i32)) #13
  br label %187

83:                                               ; preds = %0
  %84 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %85 = icmp eq i8 %84, 7
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i8 6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i8 [ 6, %86 ], [ %84, %83 ]
  %89 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %90 = icmp eq i8 %89, 1
  %91 = select i1 %90, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %92 = zext i8 %88 to i32
  %93 = getelementptr [0 x i8], ptr %91, i32 0, i32 %92
  store i8 %8, ptr %93, align 1
  %94 = add i8 %88, 1
  store i8 %94, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %184, label %96

96:                                               ; preds = %87
  %97 = load i8, ptr %91, align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %96
  %100 = zext i8 %97 to i32
  %101 = add nsw i32 %100, -1
  %102 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %101
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = add nuw nsw i32 %104, 5
  br label %106

106:                                              ; preds = %99, %96
  %107 = phi i32 [ %105, %99 ], [ 4, %96 ]
  %108 = icmp eq i8 %88, 0
  br i1 %108, label %181, label %109

109:                                              ; preds = %106
  %110 = select i1 %90, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1)
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %109
  %114 = zext i8 %111 to i32
  %115 = add nsw i32 %114, -1
  %116 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %115
  %117 = load i8, ptr %116, align 1
  %118 = zext i8 %117 to i32
  %119 = add nsw i32 %107, 1
  %120 = add nsw i32 %119, %118
  br label %121

121:                                              ; preds = %113, %109
  %122 = phi i32 [ %120, %113 ], [ %107, %109 ]
  %123 = icmp eq i8 %94, 2
  br i1 %123, label %181, label %124

124:                                              ; preds = %121
  %125 = select i1 %90, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2)
  %126 = load i8, ptr %125, align 1
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %136, label %128

128:                                              ; preds = %124
  %129 = zext i8 %126 to i32
  %130 = add nsw i32 %129, -1
  %131 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %130
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = add nsw i32 %122, 1
  %135 = add i32 %134, %133
  br label %136

136:                                              ; preds = %128, %124
  %137 = phi i32 [ %135, %128 ], [ %122, %124 ]
  %138 = icmp eq i8 %94, 3
  br i1 %138, label %181, label %139

139:                                              ; preds = %136
  %140 = select i1 %90, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3)
  %141 = load i8, ptr %140, align 1
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %151, label %143

143:                                              ; preds = %139
  %144 = zext i8 %141 to i32
  %145 = add nsw i32 %144, -1
  %146 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %145
  %147 = load i8, ptr %146, align 1
  %148 = zext i8 %147 to i32
  %149 = add i32 %137, 1
  %150 = add i32 %149, %148
  br label %151

151:                                              ; preds = %143, %139
  %152 = phi i32 [ %150, %143 ], [ %137, %139 ]
  %153 = icmp eq i8 %94, 4
  br i1 %153, label %181, label %154

154:                                              ; preds = %151
  %155 = select i1 %90, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4)
  %156 = load i8, ptr %155, align 1
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %154
  %159 = zext i8 %156 to i32
  %160 = add nsw i32 %159, -1
  %161 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %160
  %162 = load i8, ptr %161, align 1
  %163 = zext i8 %162 to i32
  %164 = add i32 %152, 1
  %165 = add i32 %164, %163
  br label %166

166:                                              ; preds = %158, %154
  %167 = phi i32 [ %165, %158 ], [ %152, %154 ]
  %168 = icmp eq i8 %94, 5
  br i1 %168, label %181, label %169

169:                                              ; preds = %166
  %170 = select i1 %90, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5)
  %171 = load i8, ptr %170, align 1
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %181, label %173

173:                                              ; preds = %169
  %174 = zext i8 %171 to i32
  %175 = add nsw i32 %174, -1
  %176 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %175
  %177 = load i8, ptr %176, align 1
  %178 = zext i8 %177 to i32
  %179 = add i32 %167, 1
  %180 = add i32 %179, %178
  br label %181

181:                                              ; preds = %169, %173, %166, %151, %136, %121, %106
  %182 = phi i32 [ %107, %106 ], [ %122, %121 ], [ %137, %136 ], [ %152, %151 ], [ %167, %166 ], [ %180, %173 ], [ %167, %169 ]
  %183 = shl i32 %182, 16
  br label %184

184:                                              ; preds = %87, %181
  %185 = phi i32 [ 262144, %87 ], [ %183, %181 ]
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 30, i32 noundef %185, i32 noundef 0, i32 noundef 3670016) #13
  %186 = tail call arm_apcscc i32 @ScriptCallbackRenderSceneText(ptr poison) #15
  br label %187

187:                                              ; preds = %11, %13, %14, %15, %46, %81, %10, %184
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfirmSceneText(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %3 = icmp eq i8 %2, 1
  %4 = select i1 %3, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %5 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6)
  %6 = load i8, ptr %4, align 1
  %7 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1)
  %8 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2)
  %9 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3)
  %10 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4)
  %11 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5)
  %12 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6)
  br label %13

13:                                               ; preds = %42, %1
  %14 = phi i8 [ %6, %1 ], [ %22, %42 ]
  %15 = phi i8 [ 0, %1 ], [ %43, %42 ]
  %16 = icmp eq i8 %14, 1
  br i1 %16, label %17, label %45

17:                                               ; preds = %13
  %18 = load i8, ptr %7, align 1
  %19 = icmp eq i8 %18, -1
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  store i8 %18, ptr %4, align 1
  br label %21

21:                                               ; preds = %17, %20
  %22 = phi i8 [ 1, %17 ], [ %18, %20 ]
  %23 = load i8, ptr %8, align 1
  %24 = icmp eq i8 %23, -1
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i8 %23, ptr %7, align 1
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i8, ptr %9, align 1
  %28 = icmp eq i8 %27, -1
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i8 %27, ptr %8, align 1
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i8, ptr %10, align 1
  %32 = icmp eq i8 %31, -1
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  store i8 %31, ptr %9, align 1
  br label %34

34:                                               ; preds = %33, %30
  %35 = load i8, ptr %11, align 1
  %36 = icmp eq i8 %35, -1
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store i8 %35, ptr %10, align 1
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i8, ptr %12, align 1
  %40 = icmp eq i8 %39, -1
  br i1 %40, label %42, label %41

41:                                               ; preds = %38
  store i8 %39, ptr %11, align 1
  br label %42

42:                                               ; preds = %38, %41
  store i8 1, ptr %5, align 1
  %43 = add nuw nsw i8 %15, 1
  %44 = icmp ult i8 %15, 6
  br i1 %44, label %13, label %45

45:                                               ; preds = %42, %13
  %46 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6)
  %47 = load i8, ptr %46, align 1
  %48 = icmp ne i8 %47, 1
  br i1 %48, label %72, label %49

49:                                               ; preds = %45
  %50 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5)
  %51 = load i8, ptr %50, align 1
  %52 = icmp ne i8 %51, 1
  br i1 %52, label %72, label %53

53:                                               ; preds = %49
  %54 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4)
  %55 = load i8, ptr %54, align 1
  %56 = icmp ne i8 %55, 1
  br i1 %56, label %72, label %57

57:                                               ; preds = %53
  %58 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3)
  %59 = load i8, ptr %58, align 1
  %60 = icmp ne i8 %59, 1
  br i1 %60, label %72, label %61

61:                                               ; preds = %57
  %62 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2)
  %63 = load i8, ptr %62, align 1
  %64 = icmp ne i8 %63, 1
  br i1 %64, label %72, label %65

65:                                               ; preds = %61
  %66 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1)
  %67 = load i8, ptr %66, align 1
  %68 = icmp ne i8 %67, 1
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load i8, ptr %4, align 1
  %71 = icmp ne i8 %70, 1
  br label %72

72:                                               ; preds = %69, %65, %61, %57, %53, %49, %45
  %73 = phi i1 [ %48, %45 ], [ %52, %49 ], [ %56, %53 ], [ %60, %57 ], [ %64, %61 ], [ %68, %65 ], [ %71, %69 ]
  br i1 %73, label %77, label %74

74:                                               ; preds = %72
  %75 = zext i8 %2 to i32
  %76 = tail call arm_apcscc i32 @ScriptCallbackResetSceneText(i32 noundef %75) #15
  br label %77

77:                                               ; preds = %74, %72
  store i16 1, ptr @gScriptResult, align 2
  %78 = tail call arm_apcscc i32 @ScriptCallbackRenderSceneText(ptr poison) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectSceneTextBank(i32 noundef %0) local_unnamed_addr #9 {
  %2 = trunc i32 %0 to i8
  store i8 %2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %3 = trunc i32 %0 to i16
  %4 = and i16 %3, 255
  %5 = add nuw nsw i16 %4, 2
  store i16 %5, ptr @gScriptResult, align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdvanceSceneTextPosition(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %3 = icmp ult i8 %2, 7
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = add nuw nsw i8 %2, 1
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi i8 [ %5, %4 ], [ %2, %1 ]
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 6)
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %10 = icmp eq i8 %9, 1
  %11 = select i1 %10, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %12 = zext nneg i8 %8 to i32
  br label %13

13:                                               ; preds = %27, %6
  %14 = phi i32 [ 0, %6 ], [ %29, %27 ]
  %15 = phi i32 [ 4, %6 ], [ %28, %27 ]
  %16 = getelementptr [0 x i8], ptr %11, i32 0, i32 %14
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %13
  %20 = zext i8 %17 to i32
  %21 = add nsw i32 %20, -1
  %22 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add i32 %15, 1
  %26 = add i32 %25, %24
  br label %27

27:                                               ; preds = %19, %13
  %28 = phi i32 [ %26, %19 ], [ %15, %13 ]
  %29 = add nuw nsw i32 %14, 1
  %30 = icmp eq i32 %29, %12
  br i1 %30, label %31, label %13

31:                                               ; preds = %27
  %32 = shl i32 %28, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 30, i32 noundef %32, i32 noundef 0, i32 noundef 3670016) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gSceneTextAdvanceGraphics to i32)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRetreatSceneTextPosition(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  switch i8 %2, label %4 [
    i8 7, label %3
    i8 0, label %34
  ]

3:                                                ; preds = %1
  store i8 5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %7

4:                                                ; preds = %1
  %5 = add i8 %2, -1
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %3, %4
  %8 = phi i8 [ 5, %3 ], [ %5, %4 ]
  %9 = tail call i8 @llvm.umin.i8(i8 %8, i8 6)
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %11 = icmp eq i8 %10, 1
  %12 = select i1 %11, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %13 = zext nneg i8 %9 to i32
  br label %14

14:                                               ; preds = %28, %7
  %15 = phi i32 [ 0, %7 ], [ %30, %28 ]
  %16 = phi i32 [ 4, %7 ], [ %29, %28 ]
  %17 = getelementptr [0 x i8], ptr %12, i32 0, i32 %15
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = zext i8 %18 to i32
  %22 = add nsw i32 %21, -1
  %23 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = add i32 %16, 1
  %27 = add i32 %26, %25
  br label %28

28:                                               ; preds = %20, %14
  %29 = phi i32 [ %27, %20 ], [ %16, %14 ]
  %30 = add nuw nsw i32 %15, 1
  %31 = icmp eq i32 %30, %13
  br i1 %31, label %32, label %14

32:                                               ; preds = %28
  %33 = shl i32 %29, 16
  br label %34

34:                                               ; preds = %1, %4, %32
  %35 = phi i32 [ 262144, %4 ], [ %33, %32 ], [ 262144, %1 ]
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 30, i32 noundef %35, i32 noundef 0, i32 noundef 3670016) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 6, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gSceneTextRetreatGraphics to i32)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshSceneTextCaret(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %95, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %6 = icmp eq i8 %5, 1
  %7 = select i1 %6, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %4
  %11 = zext i8 %8 to i32
  %12 = add nsw i32 %11, -1
  %13 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %12
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = add nuw nsw i32 %15, 5
  br label %17

17:                                               ; preds = %10, %4
  %18 = phi i32 [ %16, %10 ], [ 4, %4 ]
  %19 = icmp eq i8 %2, 1
  br i1 %19, label %92, label %20

20:                                               ; preds = %17
  %21 = select i1 %6, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1)
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %20
  %25 = zext i8 %22 to i32
  %26 = add nsw i32 %25, -1
  %27 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %18, 1
  %31 = add nsw i32 %30, %29
  br label %32

32:                                               ; preds = %24, %20
  %33 = phi i32 [ %31, %24 ], [ %18, %20 ]
  %34 = icmp eq i8 %2, 2
  br i1 %34, label %92, label %35

35:                                               ; preds = %32
  %36 = select i1 %6, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2)
  %37 = load i8, ptr %36, align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = zext i8 %37 to i32
  %41 = add nsw i32 %40, -1
  %42 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = add nsw i32 %33, 1
  %46 = add i32 %45, %44
  br label %47

47:                                               ; preds = %39, %35
  %48 = phi i32 [ %46, %39 ], [ %33, %35 ]
  %49 = icmp eq i8 %2, 3
  br i1 %49, label %92, label %50

50:                                               ; preds = %47
  %51 = select i1 %6, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3)
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %50
  %55 = zext i8 %52 to i32
  %56 = add nsw i32 %55, -1
  %57 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add i32 %48, 1
  %61 = add i32 %60, %59
  br label %62

62:                                               ; preds = %54, %50
  %63 = phi i32 [ %61, %54 ], [ %48, %50 ]
  %64 = icmp eq i8 %2, 4
  br i1 %64, label %92, label %65

65:                                               ; preds = %62
  %66 = select i1 %6, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4)
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = zext i8 %67 to i32
  %71 = add nsw i32 %70, -1
  %72 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %71
  %73 = load i8, ptr %72, align 1
  %74 = zext i8 %73 to i32
  %75 = add i32 %63, 1
  %76 = add i32 %75, %74
  br label %77

77:                                               ; preds = %69, %65
  %78 = phi i32 [ %76, %69 ], [ %63, %65 ]
  %79 = icmp eq i8 %2, 5
  br i1 %79, label %92, label %80

80:                                               ; preds = %77
  %81 = select i1 %6, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5)
  %82 = load i8, ptr %81, align 1
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = zext i8 %82 to i32
  %86 = add nsw i32 %85, -1
  %87 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %86
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = add i32 %78, 1
  %91 = add i32 %90, %89
  br label %92

92:                                               ; preds = %80, %84, %77, %62, %47, %32, %17
  %93 = phi i32 [ %18, %17 ], [ %33, %32 ], [ %48, %47 ], [ %63, %62 ], [ %78, %77 ], [ %91, %84 ], [ %78, %80 ]
  %94 = shl i32 %93, 16
  br label %95

95:                                               ; preds = %92, %1
  %96 = phi i32 [ 262144, %1 ], [ %94, %92 ]
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 30, i32 noundef %96, i32 noundef 0, i32 noundef 3670016) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSceneText(ptr nocapture readnone %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef 640) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 -858993460, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr %3, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597152, ptr inttoptr (i32 67109084 to ptr), align 4
  %6 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  br label %7

7:                                                ; preds = %5, %1
  %8 = ptrtoint ptr %3 to i32
  br label %9

9:                                                ; preds = %7, %18
  %10 = phi i32 [ 0, %7 ], [ %29, %18 ]
  %11 = phi i8 [ 0, %7 ], [ %28, %18 ]
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %13 = icmp eq i8 %12, 1
  %14 = select i1 %13, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %15 = getelementptr [0 x i8], ptr %14, i32 0, i32 %10
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %33, label %18

18:                                               ; preds = %9
  %19 = add i8 %16, -1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 6
  %22 = getelementptr i8, ptr @gTaskGlyphBlocks, i32 %21
  %23 = ptrtoint ptr %22 to i32
  %24 = zext i8 %11 to i32
  call arm_apcscc void @BlitTaskGlyphToShadow(i32 noundef %23, i32 noundef %8, i32 noundef 7, i32 noundef %24, i32 noundef 3) #13
  %25 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %20
  %26 = load i8, ptr %25, align 1
  %27 = add i8 %11, 1
  %28 = add i8 %27, %26
  %29 = add nuw nsw i32 %10, 1
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %9

31:                                               ; preds = %18
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  br label %33

33:                                               ; preds = %9, %31
  %34 = phi i8 [ %32, %31 ], [ %12, %9 ]
  %35 = icmp ult i8 %34, 2
  store volatile ptr %3, ptr inttoptr (i32 67109076 to ptr), align 4
  %36 = select i1 %35, ptr inttoptr (i32 100679712 to ptr), ptr inttoptr (i32 100680160 to ptr)
  store volatile ptr %36, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2080374672, ptr inttoptr (i32 67109084 to ptr), align 4
  %37 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %38 = call arm_apcscc i32 @FreeHeap(ptr noundef %3) #13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSceneTextNoop() local_unnamed_addr #4 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectSceneTextConfirm() local_unnamed_addr #0 {
  store i8 76, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %1 = tail call arm_apcscc i32 @ScriptCallbackRefreshSceneTextGrid(ptr poison) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackNextSceneTextBank() local_unnamed_addr #7 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %2 = add i8 %1, 1
  %3 = icmp ugt i8 %2, 2
  %4 = select i1 %3, i8 0, i8 %2
  store i8 %4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %5 = zext i8 %4 to i16
  %6 = add nuw nsw i16 %5, 2
  store i16 %6, ptr @gScriptResult, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPreviousSceneTextBank() local_unnamed_addr #7 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %2 = add i8 %1, -1
  %3 = icmp slt i8 %2, 0
  %4 = select i1 %3, i8 2, i8 %2
  store i8 %4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %5 = zext i8 %4 to i16
  %6 = add nuw nsw i16 %5, 2
  store i16 %6, ptr @gScriptResult, align 2
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEraseSceneTextCharacter() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %2 = icmp eq i8 %1, 7
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  store i8 6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %5 = icmp eq i8 %4, 1
  %6 = select i1 %5, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %7 = select i1 %5, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6)
  store i8 1, ptr %7, align 1
  store i8 5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %18

8:                                                ; preds = %0
  %9 = zext i8 %1 to i32
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %11 = icmp eq i8 %10, 1
  %12 = select i1 %11, ptr @gTaskFlagsFirst, ptr @gTaskFlagsSecond
  %13 = getelementptr [0 x i8], ptr %12, i32 0, i32 %9
  store i8 1, ptr %13, align 1
  %14 = icmp eq i8 %1, 0
  br i1 %14, label %43, label %15

15:                                               ; preds = %8
  %16 = add i8 %1, -1
  store i8 %16, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %43, label %18

18:                                               ; preds = %3, %15
  %19 = phi i8 [ 5, %3 ], [ %16, %15 ]
  %20 = phi ptr [ %6, %3 ], [ %12, %15 ]
  %21 = tail call i8 @llvm.umin.i8(i8 %19, i8 6)
  %22 = zext nneg i8 %21 to i32
  br label %23

23:                                               ; preds = %37, %18
  %24 = phi i32 [ 0, %18 ], [ %39, %37 ]
  %25 = phi i32 [ 4, %18 ], [ %38, %37 ]
  %26 = getelementptr [0 x i8], ptr %20, i32 0, i32 %24
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = zext i8 %27 to i32
  %31 = add nsw i32 %30, -1
  %32 = getelementptr [0 x i8], ptr @gTaskTextAdvanceWidths, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = add i32 %25, 1
  %36 = add i32 %35, %34
  br label %37

37:                                               ; preds = %29, %23
  %38 = phi i32 [ %36, %29 ], [ %25, %23 ]
  %39 = add nuw nsw i32 %24, 1
  %40 = icmp eq i32 %39, %22
  br i1 %40, label %41, label %23

41:                                               ; preds = %37
  %42 = shl i32 %38, 16
  br label %43

43:                                               ; preds = %8, %15, %41
  %44 = phi i32 [ 262144, %15 ], [ %42, %41 ], [ 262144, %8 ]
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 30, i32 noundef %44, i32 noundef 0, i32 noundef 3670016) #13
  %45 = tail call arm_apcscc i32 @ScriptCallbackRenderSceneText(ptr poison) #15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetSceneText(i32 noundef %0) local_unnamed_addr #10 {
  %2 = and i32 %0, 255
  %3 = icmp ult i32 %2, 2
  %4 = icmp eq i32 %2, 1
  br i1 %3, label %5, label %16

5:                                                ; preds = %1
  %6 = load i8, ptr @gSceneTextDefaultFirst, align 1
  store i8 %6, ptr @gTaskFlagsFirst, align 1
  br i1 %4, label %7, label %9

7:                                                ; preds = %5
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 1), align 1
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  br label %26

9:                                                ; preds = %5
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %11 = icmp eq i8 %10, 4
  %12 = select i1 %11, ptr @gSceneTextDefaultSecondSpanish, ptr @gSceneTextDefaultSecond
  %13 = load i8, ptr %12, align 1
  store i8 %13, ptr @gTaskFlagsSecond, align 1
  br i1 %3, label %14, label %30

14:                                               ; preds = %9
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 1), align 1
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  br i1 %4, label %26, label %21

16:                                               ; preds = %1
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %18 = icmp eq i8 %17, 4
  %19 = select i1 %18, ptr @gSceneTextDefaultSecondSpanish, ptr @gSceneTextDefaultSecond
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr @gTaskFlagsSecond, align 1
  br label %21

21:                                               ; preds = %16, %14
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %23 = icmp eq i8 %22, 4
  %24 = select i1 %23, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 1), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 1)
  %25 = load i8, ptr %24, align 1
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  br i1 %3, label %28, label %44

26:                                               ; preds = %14, %7
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 2), align 1
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  br label %40

28:                                               ; preds = %21
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 2), align 1
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  br i1 %4, label %40, label %35

30:                                               ; preds = %9
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %32 = icmp eq i8 %31, 4
  %33 = select i1 %32, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 1), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 1)
  %34 = load i8, ptr %33, align 1
  store i8 %34, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  br label %35

35:                                               ; preds = %30, %28
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %37 = icmp eq i8 %36, 4
  %38 = select i1 %37, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 2), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 2)
  %39 = load i8, ptr %38, align 1
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  br i1 %3, label %42, label %58

40:                                               ; preds = %28, %26
  %41 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 3), align 1
  store i8 %41, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  br label %54

42:                                               ; preds = %35
  %43 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 3), align 1
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  br i1 %4, label %54, label %49

44:                                               ; preds = %21
  %45 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %46 = icmp eq i8 %45, 4
  %47 = select i1 %46, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 2), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 2)
  %48 = load i8, ptr %47, align 1
  store i8 %48, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  br label %49

49:                                               ; preds = %44, %42
  %50 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %51 = icmp eq i8 %50, 4
  %52 = select i1 %51, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 3), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 3)
  %53 = load i8, ptr %52, align 1
  store i8 %53, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  br i1 %3, label %56, label %72

54:                                               ; preds = %42, %40
  %55 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 4), align 1
  store i8 %55, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  br label %68

56:                                               ; preds = %49
  %57 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 4), align 1
  store i8 %57, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  br i1 %4, label %68, label %63

58:                                               ; preds = %35
  %59 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %60 = icmp eq i8 %59, 4
  %61 = select i1 %60, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 3), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 3)
  %62 = load i8, ptr %61, align 1
  store i8 %62, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  br label %63

63:                                               ; preds = %58, %56
  %64 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %65 = icmp eq i8 %64, 4
  %66 = select i1 %65, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 4), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 4)
  %67 = load i8, ptr %66, align 1
  store i8 %67, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  br i1 %3, label %70, label %86

68:                                               ; preds = %56, %54
  %69 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 5), align 1
  store i8 %69, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  br label %82

70:                                               ; preds = %63
  %71 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 5), align 1
  store i8 %71, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  br i1 %4, label %82, label %77

72:                                               ; preds = %49
  %73 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %74 = icmp eq i8 %73, 4
  %75 = select i1 %74, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 4), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 4)
  %76 = load i8, ptr %75, align 1
  store i8 %76, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  br label %77

77:                                               ; preds = %72, %70
  %78 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %79 = icmp eq i8 %78, 4
  %80 = select i1 %79, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 5), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 5)
  %81 = load i8, ptr %80, align 1
  store i8 %81, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  br i1 %3, label %84, label %100

82:                                               ; preds = %70, %68
  %83 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 6), align 1
  store i8 %83, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  br label %96

84:                                               ; preds = %77
  %85 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 6), align 1
  store i8 %85, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  br i1 %4, label %96, label %91

86:                                               ; preds = %63
  %87 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %88 = icmp eq i8 %87, 4
  %89 = select i1 %88, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 5), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 5)
  %90 = load i8, ptr %89, align 1
  store i8 %90, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  br label %91

91:                                               ; preds = %86, %84
  %92 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %93 = icmp eq i8 %92, 4
  %94 = select i1 %93, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 6), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 6)
  %95 = load i8, ptr %94, align 1
  store i8 %95, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  br i1 %3, label %98, label %112

96:                                               ; preds = %84, %82
  %97 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 7), align 1
  store i8 %97, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 7), align 1
  br label %121

98:                                               ; preds = %91
  %99 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 7), align 1
  store i8 %99, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 7), align 1
  br i1 %4, label %121, label %105

100:                                              ; preds = %77
  %101 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %102 = icmp eq i8 %101, 4
  %103 = select i1 %102, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 6), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 6)
  %104 = load i8, ptr %103, align 1
  store i8 %104, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  br label %105

105:                                              ; preds = %100, %98
  %106 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %107 = icmp eq i8 %106, 4
  %108 = select i1 %107, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 7), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 7)
  %109 = load i8, ptr %108, align 1
  store i8 %109, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 7), align 1
  br i1 %3, label %110, label %117

110:                                              ; preds = %105
  %111 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 8), align 1
  store i8 %111, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 8), align 1
  br i1 %4, label %125, label %117

112:                                              ; preds = %91
  %113 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %114 = icmp eq i8 %113, 4
  %115 = select i1 %114, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 7), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 7)
  %116 = load i8, ptr %115, align 1
  store i8 %116, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 7), align 1
  br label %117

117:                                              ; preds = %112, %110, %105
  %118 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %119 = icmp eq i8 %118, 4
  %120 = select i1 %119, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 8), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 8)
  br label %121

121:                                              ; preds = %117, %96, %98
  %122 = phi ptr [ getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 8), %98 ], [ getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 8), %96 ], [ %120, %117 ]
  %123 = phi ptr [ getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 8), %98 ], [ getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 8), %96 ], [ getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 8), %117 ]
  %124 = load i8, ptr %122, align 1
  store i8 %124, ptr %123, align 1
  br label %125

125:                                              ; preds = %121, %110
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetBothSceneTexts() local_unnamed_addr #0 {
  %1 = load i8, ptr @gSceneTextDefaultFirst, align 1
  store i8 %1, ptr @gTaskFlagsFirst, align 1
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %3 = icmp eq i8 %2, 4
  %4 = select i1 %3, ptr @gSceneTextDefaultSecondSpanish, ptr @gSceneTextDefaultSecond
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr @gTaskFlagsSecond, align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 1), align 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  %7 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 1), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 1)
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 2), align 1
  store i8 %9, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  %10 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 2), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 2)
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 3), align 1
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  %13 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 3), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 3)
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 4), align 1
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  %16 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 4), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 4)
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 5), align 1
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  %19 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 5), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 5)
  %20 = load i8, ptr %19, align 1
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 6), align 1
  store i8 %21, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  %22 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 6), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 6)
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 7), align 1
  store i8 %24, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 7), align 1
  %25 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 7), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 7)
  %26 = load i8, ptr %25, align 1
  store i8 %26, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 7), align 1
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultFirst, i32 0, i32 8), align 1
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 8), align 1
  %28 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecondSpanish, i32 0, i32 8), ptr getelementptr ([0 x i8], ptr @gSceneTextDefaultSecond, i32 0, i32 8)
  %29 = load i8, ptr %28, align 1
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 8), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %30 = tail call arm_apcscc i32 @ScriptCallbackRenderSceneText(ptr poison) #15
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %31 = tail call arm_apcscc i32 @ScriptCallbackRenderSceneText(ptr poison) #15
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackTrimSceneTextPadding() local_unnamed_addr #7 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  %2 = icmp eq i8 %1, 1
  br i1 %2, label %3, label %22

3:                                                ; preds = %0
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 6), align 1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  %5 = icmp eq i8 %4, 1
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 5), align 1
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  %8 = icmp eq i8 %7, 1
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 4), align 1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  %11 = icmp eq i8 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %9
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 3), align 1
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 2), align 1
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsSecond, i32 0, i32 1), align 1
  %19 = load i8, ptr @gTaskFlagsSecond, align 1
  %20 = icmp eq i8 %19, 1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i8 0, ptr @gTaskFlagsSecond, align 1
  br label %22

22:                                               ; preds = %21, %18, %15, %12, %9, %6, %3, %0
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  %24 = icmp eq i8 %23, 1
  br i1 %24, label %25, label %44

25:                                               ; preds = %22
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 6), align 1
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  %27 = icmp eq i8 %26, 1
  br i1 %27, label %28, label %44

28:                                               ; preds = %25
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 5), align 1
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  %30 = icmp eq i8 %29, 1
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 4), align 1
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  %33 = icmp eq i8 %32, 1
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 3), align 1
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  %36 = icmp eq i8 %35, 1
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 2), align 1
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  %39 = icmp eq i8 %38, 1
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 1), align 1
  %41 = load i8, ptr @gTaskFlagsFirst, align 1
  %42 = icmp eq i8 %41, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i8 0, ptr @gTaskFlagsFirst, align 1
  br label %44

44:                                               ; preds = %43, %40, %37, %34, %31, %28, %25, %22
  ret i32 0
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BlitTaskGlyphToShadow(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeScenePanelTransition(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 23
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 92
  %8 = add nuw nsw i32 %7, %4
  %9 = getelementptr [0 x i8], ptr @gScenePanelShiftLayouts, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp sgt i8 %10, 0
  br i1 %11, label %12, label %84

12:                                               ; preds = %1
  %13 = add nuw nsw i32 %4, 1
  %14 = mul nuw nsw i32 %3, 22
  br label %15

15:                                               ; preds = %12, %75
  %16 = phi i32 [ %7, %12 ], [ %76, %75 ]
  %17 = phi i32 [ %6, %12 ], [ %77, %75 ]
  %18 = phi i32 [ 0, %12 ], [ %79, %75 ]
  %19 = phi i8 [ 0, %12 ], [ %78, %75 ]
  %20 = add nuw nsw i32 %13, %18
  %21 = add nuw nsw i32 %16, %20
  %22 = getelementptr i8, ptr @gScenePanelShiftLayouts, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sgt i8 %23, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %15
  %27 = shl nuw nsw i32 %24, 3
  %28 = getelementptr [0 x i8], ptr @gScenePanelPixelOffsets, i32 0, i32 %21
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = add nuw nsw i32 %27, %30
  br label %38

32:                                               ; preds = %15
  %33 = getelementptr [0 x i8], ptr @gScenePanelPixelOffsets, i32 0, i32 %21
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nsw i32 %24, 3
  %37 = add nsw i32 %36, %35
  br label %38

38:                                               ; preds = %32, %26
  %39 = phi i32 [ %31, %26 ], [ %37, %32 ]
  %40 = add nuw nsw i32 %18, %14
  %41 = mul nuw nsw i32 %17, 88
  %42 = add nuw nsw i32 %40, %41
  %43 = getelementptr [440 x i8], ptr @gScenePanelAnimationCodes, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr [52 x ptr], ptr @gScenePanelAnimations, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %19, i8 noundef zeroext 1, i8 noundef zeroext 124, i32 noundef %39, i32 noundef 0, i32 noundef 4, ptr noundef %47) #13
  %48 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %49 = zext i8 %48 to i32
  %50 = mul nuw nsw i32 %49, 92
  %51 = add nuw nsw i32 %50, %20
  %52 = getelementptr [0 x i8], ptr @gScenePanelShiftLayouts, i32 0, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = icmp sgt i8 %53, 0
  %55 = select i1 %54, i16 -2048, i16 2048
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %19, i16 noundef signext %55, i16 noundef signext 0, i16 noundef signext 0) #13
  %56 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %57 = zext i8 %56 to i32
  %58 = mul nuw nsw i32 %57, 92
  %59 = add nuw nsw i32 %58, %20
  %60 = getelementptr [0 x i8], ptr @gScenePanelShiftLayouts, i32 0, i32 %59
  %61 = tail call ptr asm "", "=r,0"(ptr %60) #16, !srcloc !10
  %62 = load i8, ptr %61, align 1
  %63 = icmp sgt i8 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %38
  %65 = load i8, ptr %60, align 1
  %66 = add nuw nsw i32 %18, 422
  %67 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %66
  store i8 %65, ptr %67, align 1
  br label %75

68:                                               ; preds = %38
  %69 = add i32 %18, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %70 = inttoptr i32 %69 to ptr
  %71 = sub i8 0, %62
  store i8 %71, ptr %70, align 1
  %72 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %73 = zext i8 %72 to i32
  %74 = mul nuw nsw i32 %73, 92
  br label %75

75:                                               ; preds = %68, %64
  %76 = phi i32 [ %74, %68 ], [ %58, %64 ]
  %77 = phi i32 [ %73, %68 ], [ %57, %64 ]
  %78 = add nuw nsw i8 %19, 1
  %79 = zext nneg i8 %78 to i32
  %80 = add nuw nsw i32 %76, %4
  %81 = getelementptr [0 x i8], ptr @gScenePanelShiftLayouts, i32 0, i32 %80
  %82 = load i8, ptr %81, align 1
  %83 = icmp slt i8 %78, %82
  br i1 %83, label %15, label %84

84:                                               ; preds = %75, %1
  ret i32 1
}

declare dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackScheduleScenePanelExit(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 23
  %5 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 235) to ptr), align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 92
  %8 = add i32 %4, ptrtoint (ptr @gScenePanelShiftLayouts to i32)
  %9 = add i32 %8, %7
  %10 = inttoptr i32 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = icmp slt i8 %11, 1
  br i1 %12, label %45, label %13

13:                                               ; preds = %1
  %14 = tail call i32 asm "", "={r1},{r1}"(i32 ptrtoint (ptr @gScenePanelShiftLayouts to i32)) #16, !srcloc !11
  %15 = add i32 %14, 1
  %16 = add i32 %4, add (i32 ptrtoint (ptr @gScenePanelShiftLayouts to i32), i32 1)
  %17 = add i32 %15, %4
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  br label %19

19:                                               ; preds = %19, %13
  %20 = phi i8 [ %18, %13 ], [ %37, %19 ]
  %21 = phi i32 [ 0, %13 ], [ %36, %19 ]
  %22 = zext i8 %20 to i32
  %23 = mul nuw nsw i32 %22, 92
  %24 = add i32 %16, %21
  %25 = add i32 %24, %23
  %26 = inttoptr i32 %25 to ptr
  %27 = load i8, ptr %26, align 1
  %28 = add i32 %21, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %29 = add i32 %17, %23
  %30 = inttoptr i32 %29 to ptr
  %31 = load i8, ptr %30, align 1
  %32 = inttoptr i32 %28 to ptr
  %33 = tail call i8 @llvm.abs.i8(i8 %27, i1 false)
  %34 = sub i8 %31, %33
  store i8 %34, ptr %32, align 1
  %35 = add nuw nsw i32 %21, 1
  %36 = and i32 %35, 255
  %37 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %38 = zext i8 %37 to i32
  %39 = mul nuw nsw i32 %38, 92
  %40 = add i32 %8, %39
  %41 = inttoptr i32 %40 to ptr
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp slt i32 %36, %43
  br i1 %44, label %19, label %45

45:                                               ; preds = %19, %1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateScenePanelEntry(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 23
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, 92
  %8 = add nuw nsw i32 %7, %4
  %9 = getelementptr [0 x i8], ptr @gScenePanelShiftLayouts, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = icmp sgt i8 %10, 0
  br i1 %11, label %12, label %38

12:                                               ; preds = %1, %25
  %13 = phi i8 [ %26, %25 ], [ %5, %1 ]
  %14 = phi i32 [ %29, %25 ], [ 0, %1 ]
  %15 = phi i8 [ %28, %25 ], [ 0, %1 ]
  %16 = phi i8 [ %27, %25 ], [ 0, %1 ]
  %17 = add nuw nsw i32 %14, 422
  %18 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %12
  %22 = add i8 %19, -1
  store i8 %22, ptr %18, align 1
  br label %25

23:                                               ; preds = %12
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %15, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #13
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i8 [ %13, %21 ], [ %24, %23 ]
  %27 = phi i8 [ 1, %21 ], [ %16, %23 ]
  %28 = add nuw nsw i8 %15, 1
  %29 = zext nneg i8 %28 to i32
  %30 = zext i8 %26 to i32
  %31 = mul nuw nsw i32 %30, 92
  %32 = add nuw nsw i32 %31, %4
  %33 = getelementptr [0 x i8], ptr @gScenePanelShiftLayouts, i32 0, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp slt i8 %28, %34
  br i1 %35, label %12, label %36

36:                                               ; preds = %25
  %37 = icmp eq i8 %27, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1, %36
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 422), align 1
  br label %39

39:                                               ; preds = %38, %36
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateScenePanelExit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #14
  store i32 0, ptr %2, align 4
  call void asm "", "=*m,*m"(ptr nonnull elementtype(i32) %2, ptr nonnull elementtype(i32) %2) #14, !srcloc !12
  %5 = mul nuw nsw i32 %4, 23
  %6 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 235) to ptr), align 1
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, 92
  %9 = add i32 %5, ptrtoint (ptr @gScenePanelShiftLayouts to i32)
  %10 = add i32 %9, %8
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = sext i8 %12 to i32
  %14 = load i32, ptr %2, align 4
  %15 = icmp slt i32 %14, %13
  br i1 %15, label %16, label %83

16:                                               ; preds = %1
  call void asm sideeffect "", "{r2}"(i32 92) #14, !srcloc !13
  %17 = add nuw nsw i32 %5, 1
  br label %18

18:                                               ; preds = %70, %16
  %19 = phi i8 [ 0, %16 ], [ %71, %70 ]
  %20 = call i32 asm sideeffect "", "={r3},{r3}"(i32 422) #14, !srcloc !14
  %21 = zext nneg i8 %19 to i32
  %22 = add i32 %21, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %23 = add i32 %22, %20
  %24 = inttoptr i32 %23 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %18
  %28 = add i8 %25, -1
  store i8 %28, ptr %24, align 1
  store i32 1, ptr %2, align 4
  br label %70

29:                                               ; preds = %18
  %30 = load ptr, ptr @gRenderSlots, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = mul nuw nsw i32 %21, 104
  %33 = add nuw nsw i32 %32, 36
  %34 = add i32 %33, %31
  %35 = inttoptr i32 %34 to ptr
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %29
  %39 = add nuw nsw i32 %17, %21
  %40 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 235) to ptr), align 1
  %41 = zext i8 %40 to i32
  %42 = mul nuw nsw i32 %41, 92
  %43 = add i32 %39, ptrtoint (ptr @gScenePanelShiftLayouts to i32)
  %44 = add i32 %43, %42
  %45 = inttoptr i32 %44 to ptr
  %46 = load i8, ptr %45, align 1
  %47 = icmp sgt i8 %46, 0
  %48 = select i1 %47, i16 2048, i16 -2048
  call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %19, i16 noundef signext %48, i16 noundef signext 0, i16 noundef signext 0) #13
  %49 = inttoptr i32 %43 to ptr
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = add i32 %21, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %54 = inttoptr i32 %53 to ptr
  store i8 0, ptr %54, align 1
  call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext %19, i8 noundef zeroext 0, ptr noundef null) #13
  br label %70

55:                                               ; preds = %38
  %56 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 235) to ptr), align 1
  %57 = zext i8 %56 to i32
  %58 = mul nuw nsw i32 %57, 92
  %59 = add i32 %43, %58
  %60 = inttoptr i32 %59 to ptr
  %61 = load i8, ptr %60, align 1
  %62 = icmp sgt i8 %61, -1
  %63 = add i32 %21, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %64 = inttoptr i32 %63 to ptr
  br i1 %62, label %65, label %67

65:                                               ; preds = %55
  %66 = add nsw i8 %61, -1
  store i8 %66, ptr %64, align 1
  br label %70

67:                                               ; preds = %55
  %68 = xor i8 %61, -1
  store i8 %68, ptr %64, align 1
  br label %70

69:                                               ; preds = %29
  call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext %19, i8 noundef zeroext 0, ptr noundef null) #13
  br label %70

70:                                               ; preds = %27, %69, %65, %67, %52
  %71 = add nuw nsw i8 %19, 1
  %72 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 235) to ptr), align 1
  %73 = zext i8 %72 to i32
  %74 = mul nuw nsw i32 %73, 92
  %75 = call i32 asm "", "={r3},{r3}"(i32 %74) #16, !srcloc !15
  %76 = call i32 asm "", "=r,0"(i32 %75) #16, !srcloc !16
  %77 = add i32 %9, %76
  %78 = inttoptr i32 %77 to ptr
  %79 = load i8, ptr %78, align 1
  %80 = icmp slt i8 %71, %79
  br i1 %80, label %18, label %81

81:                                               ; preds = %70
  %82 = load i32, ptr %2, align 4
  br label %83

83:                                               ; preds = %81, %1
  %84 = phi i32 [ %82, %81 ], [ %14, %1 ]
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i8 -1, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422) to ptr), align 1
  br label %87

87:                                               ; preds = %86, %83
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #14
  ret i32 1
}

declare dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateScenePanelDepth(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 441), align 1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  %6 = add i8 %5, -1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  %7 = icmp eq i8 %6, 0
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  br i1 %7, label %15, label %9

9:                                                ; preds = %3
  %10 = zext i8 %4 to i32
  %11 = mul nuw nsw i32 %10, 23
  %12 = zext i8 %8 to i32
  %13 = mul nuw nsw i32 %12, 92
  %14 = add nuw nsw i32 %13, %11
  br label %60

15:                                               ; preds = %3
  store i8 4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  %16 = load ptr, ptr @gRenderSlots, align 4
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  %18 = zext i8 %17 to i32
  %19 = zext i8 %4 to i32
  %20 = mul nuw nsw i32 %19, 23
  %21 = add nuw nsw i32 %20, 1
  %22 = add nuw nsw i32 %21, %18
  %23 = zext i8 %8 to i32
  %24 = mul nuw nsw i32 %23, 92
  %25 = add nuw nsw i32 %22, %24
  %26 = getelementptr [0 x i8], ptr @gScenePanelActivationOrder, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr %struct.RenderSlot, ptr %16, i32 %28, i32 5
  store i32 262144, ptr %29, align 4
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  %31 = zext i8 %30 to i32
  %32 = add nuw nsw i32 %21, %31
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %34, 92
  %36 = add nuw nsw i32 %32, %35
  %37 = getelementptr [0 x i8], ptr @gScenePanelActivationOrder, i32 0, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %39, i32 noundef 0, i32 noundef 0, i32 noundef -32768) #13
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  %41 = zext i8 %40 to i32
  %42 = add nuw nsw i32 %21, %41
  %43 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, 92
  %46 = add nuw nsw i32 %42, %45
  %47 = getelementptr [0 x i8], ptr @gScenePanelActivationOrder, i32 0, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  tail call arm_apcscc void @SetRenderVector30(i32 noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 4096) #13
  %50 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  %51 = add i8 %50, 1
  store i8 %51, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  %52 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %53 = zext i8 %52 to i32
  %54 = mul nuw nsw i32 %53, 92
  %55 = add nuw nsw i32 %54, %20
  %56 = getelementptr [0 x i8], ptr @gScenePanelActivationOrder, i32 0, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %51, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %15
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  store i8 127, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  br label %60

60:                                               ; preds = %9, %15, %59
  %61 = phi i32 [ %14, %9 ], [ %55, %15 ], [ %55, %59 ]
  %62 = phi i32 [ %11, %9 ], [ %20, %15 ], [ %20, %59 ]
  %63 = phi i8 [ %8, %9 ], [ %52, %15 ], [ %52, %59 ]
  %64 = getelementptr [0 x i8], ptr @gScenePanelShiftLayouts, i32 0, i32 %61
  %65 = load i8, ptr %64, align 1
  %66 = icmp sgt i8 %65, 0
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = load ptr, ptr @gRenderSlots, align 4
  br label %69

69:                                               ; preds = %67, %80
  %70 = phi i8 [ %81, %80 ], [ %63, %67 ]
  %71 = phi ptr [ %82, %80 ], [ %68, %67 ]
  %72 = phi i32 [ %84, %80 ], [ 0, %67 ]
  %73 = phi i8 [ %83, %80 ], [ 0, %67 ]
  %74 = getelementptr %struct.RenderSlot, ptr %71, i32 %72, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = icmp sgt i32 %75, 294911
  br i1 %76, label %77, label %80

77:                                               ; preds = %69
  store i32 294912, ptr %74, align 4
  tail call arm_apcscc void @SetRenderVector24(i32 noundef %72, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  tail call arm_apcscc void @SetRenderVector30(i32 noundef %72, i32 noundef 0, i32 noundef 0, i32 noundef 0) #13
  %78 = load ptr, ptr @gRenderSlots, align 4
  %79 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  br label %80

80:                                               ; preds = %77, %69
  %81 = phi i8 [ %79, %77 ], [ %70, %69 ]
  %82 = phi ptr [ %78, %77 ], [ %71, %69 ]
  %83 = add nuw nsw i8 %73, 1
  %84 = zext nneg i8 %83 to i32
  %85 = zext i8 %81 to i32
  %86 = mul nuw nsw i32 %85, 92
  %87 = add nuw nsw i32 %86, %62
  %88 = getelementptr [0 x i8], ptr @gScenePanelShiftLayouts, i32 0, i32 %87
  %89 = load i8, ptr %88, align 1
  %90 = icmp slt i8 %83, %89
  br i1 %90, label %69, label %91

91:                                               ; preds = %80, %60
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderVector24(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderVector30(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeSceneIndicators() local_unnamed_addr #0 {
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef 1) #15
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef 2) #15
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef 3) #15
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef 4) #15
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef 5) #15
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef 6) #15
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef 7) #15
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 108), align 1
  store i8 %1, ptr @gSceneIndicatorPreviousSelection, align 1
  store i8 0, ptr @gSceneIndicatorSelectionChanged, align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateSceneIndicator(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %3 = and i32 %0, 255
  %4 = trunc i32 %0 to i8
  %5 = add i8 %4, 63
  %6 = zext i8 %5 to i16
  %7 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %6) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %46, label %9

9:                                                ; preds = %1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 22), align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %9
  %13 = zext i8 %10 to i32
  %14 = add nsw i32 %13, -1
  %15 = getelementptr [0 x i8], ptr @gSceneIndicatorVisibilityMasks, i32 0, i32 %14
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = add nsw i32 %3, -1
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %46, label %22

22:                                               ; preds = %9, %12
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 108), align 1
  %24 = icmp eq i8 %23, %4
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 19), align 1
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 1, i32 2
  %29 = zext i8 %2 to i32
  %30 = getelementptr [0 x [8 x ptr]], ptr @gSceneIndicatorBackgrounds, i32 0, i32 %29, i32 %3
  %31 = load ptr, ptr %30, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 129, ptr noundef %31) #13
  tail call arm_apcscc void @ConfigureSceneIndicator(i32 noundef %3, i32 noundef %28) #15
  br label %32

32:                                               ; preds = %25, %22
  %33 = tail call arm_apcscc i32 @CheckSceneIndicatorComplete(i32 noundef %3) #15, !range !17
  %34 = icmp eq i32 %33, 0
  %35 = select i1 %34, i32 4, i32 3
  tail call arm_apcscc void @ConfigureSceneIndicator(i32 noundef %3, i32 noundef %35) #15
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 229), align 1
  %37 = icmp eq i8 %36, %4
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = shl nuw nsw i32 %3, 1
  %40 = getelementptr i16, ptr @gRasterE5RenderPositionWords7098, i32 %39
  %41 = load i16, ptr %40, align 2
  %42 = sext i16 %41 to i32
  %43 = getelementptr i16, ptr %40, i32 1
  %44 = load i16, ptr %43, align 2
  %45 = sext i16 %44 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %42, i32 noundef %45, i32 noundef 0, ptr noundef nonnull @gSceneIndicatorDestinationAnimation) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 26, i8 noundef zeroext 1) #13
  br label %46

46:                                               ; preds = %32, %38, %12, %1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshSceneIndicators() local_unnamed_addr #0 {
  %1 = load i8, ptr @gSceneIndicatorSelectionChanged, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 108), align 1
  %5 = zext i8 %4 to i32
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef %5) #15
  %6 = load i8, ptr @gSceneIndicatorPreviousSelection, align 1
  %7 = zext i8 %6 to i32
  tail call arm_apcscc void @UpdateSceneIndicator(i32 noundef %7) #15
  store i8 0, ptr @gSceneIndicatorSelectionChanged, align 1
  br label %8

8:                                                ; preds = %3, %0
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc i32 @CheckSceneIndicatorVisible(i32 noundef %0) local_unnamed_addr #6 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 22), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %1
  %5 = zext i8 %2 to i32
  %6 = add nsw i32 %5, -1
  %7 = getelementptr [0 x i8], ptr @gSceneIndicatorVisibilityMasks, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = and i32 %0, 255
  %11 = add nsw i32 %10, -1
  %12 = lshr i32 %9, %11
  %13 = and i32 %12, 1
  br label %14

14:                                               ; preds = %1, %4
  %15 = phi i32 [ %13, %4 ], [ 1, %1 ]
  ret i32 %15
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneIndicator(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %0 to i8
  %4 = add i8 %3, 17
  %5 = shl i32 %0, 1
  %6 = and i32 %5, 510
  %7 = getelementptr i16, ptr @gRasterE5RenderPositionWords7098, i32 %6
  %8 = trunc i32 %1 to i8
  switch i8 %8, label %40 [
    i8 0, label %9
    i8 1, label %10
    i8 2, label %16
    i8 3, label %22
    i8 4, label %28
    i8 5, label %34
  ]

9:                                                ; preds = %2
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #13
  br label %40

10:                                               ; preds = %2
  %11 = load i16, ptr %7, align 2
  %12 = sext i16 %11 to i32
  %13 = getelementptr i16, ptr %7, i32 1
  %14 = load i16, ptr %13, align 2
  %15 = sext i16 %14 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %12, i32 noundef %15, i32 noundef 0, ptr noundef nonnull @gSceneIndicatorCurrentAnimation) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 15, i8 noundef zeroext 1) #13
  br label %40

16:                                               ; preds = %2
  %17 = load i16, ptr %7, align 2
  %18 = sext i16 %17 to i32
  %19 = getelementptr i16, ptr %7, i32 1
  %20 = load i16, ptr %19, align 2
  %21 = sext i16 %20 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %18, i32 noundef %21, i32 noundef 0, ptr noundef nonnull @gSceneIndicatorAlternateAnimation) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 15, i8 noundef zeroext 1) #13
  br label %40

22:                                               ; preds = %2
  %23 = load i16, ptr %7, align 2
  %24 = sext i16 %23 to i32
  %25 = getelementptr i16, ptr %7, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = sext i16 %26 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %24, i32 noundef %27, i32 noundef 0, ptr noundef nonnull @gSceneIndicatorCompleteAnimation) #13
  br label %40

28:                                               ; preds = %2
  %29 = load i16, ptr %7, align 2
  %30 = sext i16 %29 to i32
  %31 = getelementptr i16, ptr %7, i32 1
  %32 = load i16, ptr %31, align 2
  %33 = sext i16 %32 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %30, i32 noundef %33, i32 noundef 0, ptr noundef nonnull @gSceneIndicatorIncompleteAnimation) #13
  br label %40

34:                                               ; preds = %2
  %35 = load i16, ptr %7, align 2
  %36 = sext i16 %35 to i32
  %37 = getelementptr i16, ptr %7, i32 1
  %38 = load i16, ptr %37, align 2
  %39 = sext i16 %38 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %36, i32 noundef %39, i32 noundef 0, ptr noundef nonnull @gSceneIndicatorDestinationAnimation) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 26, i8 noundef zeroext 1) #13
  br label %40

40:                                               ; preds = %2, %34, %28, %22, %16, %10, %9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @CheckSceneIndicatorComplete(i32 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i32 %0 to i8
  switch i8 %2, label %215 [
    i8 1, label %3
    i8 2, label %15
    i8 3, label %75
    i8 4, label %114
    i8 5, label %153
    i8 6, label %180
    i8 7, label %207
  ]

3:                                                ; preds = %1
  %4 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 106) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %215, label %6

6:                                                ; preds = %3
  %7 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 155) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %215, label %9

9:                                                ; preds = %6
  %10 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 145) #13
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %215, label %12

12:                                               ; preds = %9
  %13 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 154) #13
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %215, label %210

15:                                               ; preds = %1
  %16 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 75) #13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %215, label %18

18:                                               ; preds = %15
  %19 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 139) #13
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %215, label %21

21:                                               ; preds = %18
  %22 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 116) #13
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %215, label %24

24:                                               ; preds = %21
  %25 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 138) #13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %215, label %27

27:                                               ; preds = %24
  %28 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 130) #13
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %215, label %30

30:                                               ; preds = %27
  %31 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 84) #13
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %215, label %33

33:                                               ; preds = %30
  %34 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 137) #13
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %215, label %36

36:                                               ; preds = %33
  %37 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 115) #13
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %215, label %39

39:                                               ; preds = %36
  %40 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 76) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %215, label %42

42:                                               ; preds = %39
  %43 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 132) #13
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %215, label %45

45:                                               ; preds = %42
  %46 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 82) #13
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %215, label %48

48:                                               ; preds = %45
  %49 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 117) #13
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %215, label %51

51:                                               ; preds = %48
  %52 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 147) #13
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %215, label %54

54:                                               ; preds = %51
  %55 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 143) #13
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %215, label %57

57:                                               ; preds = %54
  %58 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 129) #13
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %215, label %60

60:                                               ; preds = %57
  %61 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 126) #13
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %215, label %63

63:                                               ; preds = %60
  %64 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 135) #13
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %215, label %66

66:                                               ; preds = %63
  %67 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 131) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %215, label %69

69:                                               ; preds = %66
  %70 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 136) #13
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %215, label %72

72:                                               ; preds = %69
  %73 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 118) #13
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %215, label %210

75:                                               ; preds = %1
  %76 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 85) #13
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %215, label %78

78:                                               ; preds = %75
  %79 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 107) #13
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %215, label %81

81:                                               ; preds = %78
  %82 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 97) #13
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %215, label %84

84:                                               ; preds = %81
  %85 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 98) #13
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %215, label %87

87:                                               ; preds = %84
  %88 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 96) #13
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %215, label %90

90:                                               ; preds = %87
  %91 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 89) #13
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %215, label %93

93:                                               ; preds = %90
  %94 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 81) #13
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %215, label %96

96:                                               ; preds = %93
  %97 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 93) #13
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %215, label %99

99:                                               ; preds = %96
  %100 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 88) #13
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %215, label %102

102:                                              ; preds = %99
  %103 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 95) #13
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %215, label %105

105:                                              ; preds = %102
  %106 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 90) #13
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %215, label %108

108:                                              ; preds = %105
  %109 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 105) #13
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %215, label %111

111:                                              ; preds = %108
  %112 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 94) #13
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %215, label %210

114:                                              ; preds = %1
  %115 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 152) #13
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %215, label %117

117:                                              ; preds = %114
  %118 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 142) #13
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %215, label %120

120:                                              ; preds = %117
  %121 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 120) #13
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %215, label %123

123:                                              ; preds = %120
  %124 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 114) #13
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %215, label %126

126:                                              ; preds = %123
  %127 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 149) #13
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %215, label %129

129:                                              ; preds = %126
  %130 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 151) #13
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %215, label %132

132:                                              ; preds = %129
  %133 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 150) #13
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %215, label %135

135:                                              ; preds = %132
  %136 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 146) #13
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %215, label %138

138:                                              ; preds = %135
  %139 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 148) #13
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %215, label %141

141:                                              ; preds = %138
  %142 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 119) #13
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %215, label %144

144:                                              ; preds = %141
  %145 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 87) #13
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %215, label %147

147:                                              ; preds = %144
  %148 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 91) #13
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %215, label %150

150:                                              ; preds = %147
  %151 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 92) #13
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %215, label %210

153:                                              ; preds = %1
  %154 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 86) #13
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %215, label %156

156:                                              ; preds = %153
  %157 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 122) #13
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %215, label %159

159:                                              ; preds = %156
  %160 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 101) #13
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %215, label %162

162:                                              ; preds = %159
  %163 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 123) #13
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %215, label %165

165:                                              ; preds = %162
  %166 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 100) #13
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %215, label %168

168:                                              ; preds = %165
  %169 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 125) #13
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %215, label %171

171:                                              ; preds = %168
  %172 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 104) #13
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %215, label %174

174:                                              ; preds = %171
  %175 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 103) #13
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %215, label %177

177:                                              ; preds = %174
  %178 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 141) #13
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %215, label %210

180:                                              ; preds = %1
  %181 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 140) #13
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %215, label %183

183:                                              ; preds = %180
  %184 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 113) #13
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %215, label %186

186:                                              ; preds = %183
  %187 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 112) #13
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %215, label %189

189:                                              ; preds = %186
  %190 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 99) #13
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %215, label %192

192:                                              ; preds = %189
  %193 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 121) #13
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %215, label %195

195:                                              ; preds = %192
  %196 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 111) #13
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %215, label %198

198:                                              ; preds = %195
  %199 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 128) #13
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %215, label %201

201:                                              ; preds = %198
  %202 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 108) #13
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %215, label %204

204:                                              ; preds = %201
  %205 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 110) #13
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %215, label %210

207:                                              ; preds = %1
  %208 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 156) #13
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %215, label %210

210:                                              ; preds = %207, %204, %177, %150, %111, %72, %12
  %211 = phi i16 [ 153, %12 ], [ 127, %72 ], [ 124, %111 ], [ 144, %150 ], [ 102, %177 ], [ 109, %204 ], [ 134, %207 ]
  %212 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %211) #13
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i32
  br label %215

215:                                              ; preds = %210, %207, %180, %183, %186, %189, %192, %195, %198, %201, %204, %153, %156, %159, %162, %165, %168, %171, %174, %177, %114, %117, %120, %123, %126, %129, %132, %135, %138, %141, %144, %147, %150, %75, %78, %81, %84, %87, %90, %93, %96, %99, %102, %105, %108, %111, %15, %18, %21, %24, %27, %30, %33, %36, %39, %42, %45, %48, %51, %54, %57, %60, %63, %66, %69, %72, %3, %6, %9, %12, %1
  %216 = phi i32 [ 0, %1 ], [ 0, %207 ], [ 0, %204 ], [ 0, %201 ], [ 0, %198 ], [ 0, %195 ], [ 0, %192 ], [ 0, %189 ], [ 0, %186 ], [ 0, %183 ], [ 0, %180 ], [ 0, %177 ], [ 0, %174 ], [ 0, %171 ], [ 0, %168 ], [ 0, %165 ], [ 0, %162 ], [ 0, %159 ], [ 0, %156 ], [ 0, %153 ], [ 0, %150 ], [ 0, %147 ], [ 0, %144 ], [ 0, %141 ], [ 0, %138 ], [ 0, %135 ], [ 0, %132 ], [ 0, %129 ], [ 0, %126 ], [ 0, %123 ], [ 0, %120 ], [ 0, %117 ], [ 0, %114 ], [ 0, %111 ], [ 0, %108 ], [ 0, %105 ], [ 0, %102 ], [ 0, %99 ], [ 0, %96 ], [ 0, %93 ], [ 0, %90 ], [ 0, %87 ], [ 0, %84 ], [ 0, %81 ], [ 0, %78 ], [ 0, %75 ], [ 0, %72 ], [ 0, %69 ], [ 0, %66 ], [ 0, %63 ], [ 0, %60 ], [ 0, %57 ], [ 0, %54 ], [ 0, %51 ], [ 0, %48 ], [ 0, %45 ], [ 0, %42 ], [ 0, %39 ], [ 0, %36 ], [ 0, %33 ], [ 0, %30 ], [ 0, %27 ], [ 0, %24 ], [ 0, %21 ], [ 0, %18 ], [ 0, %15 ], [ 0, %12 ], [ 0, %9 ], [ 0, %6 ], [ 0, %3 ], [ %214, %210 ]
  ret i32 %216
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackMoveSceneIndicator() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 240, i8 noundef zeroext 1) #13
  %2 = icmp eq i16 %1, 0
  br i1 %2, label %71, label %3

3:                                                ; preds = %0
  %4 = lshr i16 %1, 4
  %5 = zext nneg i16 %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %3
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = and i32 %5, 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = and i32 %5, 8
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i32 4, i32 3
  br label %18

18:                                               ; preds = %14, %11, %8, %3
  %19 = phi i32 [ 0, %3 ], [ 1, %8 ], [ 2, %11 ], [ %17, %14 ]
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 108), align 1
  %21 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 64) #13
  %22 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 65) #13
  %23 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 66) #13
  %24 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 67) #13
  %25 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 68) #13
  %26 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 69) #13
  %27 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 70) #13
  %28 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 22), align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %18
  %31 = zext i8 %28 to i32
  %32 = add nsw i32 %31, -1
  %33 = getelementptr [0 x ptr], ptr @gSceneIndicatorModeNavigationBanks, i32 0, i32 %32
  br label %57

34:                                               ; preds = %18
  %35 = icmp ne i32 %21, 0
  %36 = zext i1 %35 to i32
  %37 = icmp ne i32 %22, 0
  %38 = zext i1 %37 to i32
  %39 = add nuw nsw i32 %36, %38
  %40 = icmp ne i32 %23, 0
  %41 = zext i1 %40 to i32
  %42 = add nuw nsw i32 %39, %41
  %43 = icmp ne i32 %24, 0
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %42, %44
  %46 = icmp ne i32 %25, 0
  %47 = zext i1 %46 to i32
  %48 = add nuw nsw i32 %45, %47
  %49 = icmp ne i32 %26, 0
  %50 = zext i1 %49 to i32
  %51 = add nuw nsw i32 %48, %50
  %52 = icmp ne i32 %27, 0
  %53 = zext i1 %52 to i32
  %54 = add nuw nsw i32 %51, %53
  %55 = add nsw i32 %54, -2
  %56 = getelementptr [0 x ptr], ptr @gSceneIndicatorNavigationBanks, i32 0, i32 %55
  br label %57

57:                                               ; preds = %34, %30
  %58 = phi ptr [ %56, %34 ], [ %33, %30 ]
  %59 = load ptr, ptr %58, align 4
  %60 = zext i8 %20 to i32
  %61 = getelementptr [4 x i8], ptr %59, i32 %60, i32 %19
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %57
  %65 = add i8 %62, 63
  %66 = zext i8 %65 to i16
  %67 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %66) #13
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 108), align 1
  store i8 %70, ptr @gSceneIndicatorPreviousSelection, align 1
  store i8 %62, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 108), align 1
  store i8 1, ptr @gSceneIndicatorSelectionChanged, align 1
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 302) #13
  br label %71

71:                                               ; preds = %57, %64, %69, %0
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUnlockSceneIndicator() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 384) #13
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %17, label %3

3:                                                ; preds = %35, %32, %29, %26, %23, %20, %17, %0
  %4 = phi i8 [ 0, %0 ], [ 1, %17 ], [ 2, %20 ], [ 3, %23 ], [ 4, %26 ], [ 5, %29 ], [ 6, %32 ], [ 7, %35 ]
  %5 = phi i16 [ 384, %0 ], [ 385, %17 ], [ 386, %20 ], [ 387, %23 ], [ 388, %26 ], [ 389, %29 ], [ 390, %32 ], [ 391, %35 ]
  %6 = add nuw nsw i8 %4, 18
  %7 = shl nuw nsw i8 %4, 1
  %8 = zext nneg i8 %7 to i32
  %9 = getelementptr i16, ptr getelementptr ([0 x i16], ptr @gRasterE5RenderPositionWords7098, i32 0, i32 2), i32 %8
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  %12 = getelementptr i16, ptr %9, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %11, i32 noundef %14, i32 noundef 0, ptr noundef nonnull @gSceneIndicatorUnlockAnimation) #13
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %5, i32 noundef 0) #13
  %15 = or disjoint i8 %4, 64
  %16 = zext nneg i8 %15 to i16
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %16, i32 noundef 1) #13
  br label %38

17:                                               ; preds = %0
  %18 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 385) #13
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %3

20:                                               ; preds = %17
  %21 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 386) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %3

23:                                               ; preds = %20
  %24 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 387) #13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %3

26:                                               ; preds = %23
  %27 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 388) #13
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %3

29:                                               ; preds = %26
  %30 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 389) #13
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %3

32:                                               ; preds = %29
  %33 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 390) #13
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %3

35:                                               ; preds = %32
  %36 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 391) #13
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %3

38:                                               ; preds = %35, %3
  ret i32 0
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeSceneDestinationIndicator() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 230), align 1
  store i8 %1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 229), align 1
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 1
  %4 = getelementptr i16, ptr @gRasterE5RenderPositionWords7098, i32 %3
  %5 = load i16, ptr %4, align 2
  %6 = sext i16 %5 to i32
  %7 = getelementptr i16, ptr %4, i32 1
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %6, i32 noundef %9, i32 noundef 0, ptr noundef nonnull @gSceneIndicatorDestinationInitialAnimation) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 26, i8 noundef zeroext 1) #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #12

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nobuiltin nounwind "no-builtins" }
attributes #14 = { nounwind }
attributes #15 = { nobuiltin "no-builtins" }
attributes #16 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 4922}
!5 = !{i64 9429}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.peeled.count", i32 1}
!8 = !{i64 22888}
!9 = !{i64 23246}
!10 = !{i64 38039}
!11 = !{i64 39605}
!12 = !{i64 42606}
!13 = !{i64 43090}
!14 = !{i64 43170}
!15 = !{i64 46103}
!16 = !{i64 46159}
!17 = !{i32 0, i32 256}
