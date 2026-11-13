; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapBank3Entry = type { i8, i8, i8, i8, i8, i8, i16 }
%struct.MapBank3ChainEntry = type { i8, i8, i8, i8, i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.anon = type { i16, i16, ptr }

@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank3RandomFlagOrder = external dso_local constant [0 x i8], align 1
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gMapBank3SourceEntries = external dso_local global [0 x %struct.MapBank3Entry], align 2
@gMapBank3SpawnEntries = external dso_local global [0 x %struct.MapBank3Entry], align 2
@gMapBank3AvoidX = external dso_local local_unnamed_addr global i16, align 2
@gMapBank3StageThresholds = external dso_local constant [0 x i8], align 1
@gMapBank3KindThresholds = external dso_local constant [0 x i8], align 1
@gMapBank3VariationThresholds = external dso_local constant [0 x i8], align 1
@gMapBank3SourceAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3SpawnAnimations = external dso_local constant [0 x ptr], align 4
@gMapBank3VerticalThresholds = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gMapBank3SourceMotionThresholds = external dso_local constant [0 x i8], align 1
@gMapBank3ReleaseAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3Score = external dso_local local_unnamed_addr global i16, align 2
@gMapBank3Counter1E1 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank3FrameCount = external dso_local local_unnamed_addr global i16, align 2
@gMapBank3FeedbackAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3TimeTiles = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMapBank3ScoreTiles = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMapBank3RecordTiles = external dso_local local_unnamed_addr global [0 x i16], align 2
@gTaskTextPairContexts = external dso_local global [0 x ptr], align 4
@gMapBank3RecordPromptFirstTexts = external dso_local constant [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gMapBank3RecordPromptSecondTexts = external dso_local constant [0 x ptr], align 4
@gTaskFlagsFirst = external dso_local global [0 x i8], align 1
@gTaskFlagsSecond = external dso_local global [0 x i8], align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4
@gMapBank3PairBoardCoordinates = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2
@gMapBank3ChoiceBytePairs = external dso_local constant [0 x i8], align 1
@gMapBank3ChainFlags = external dso_local global [0 x i8], align 1
@gMapBank3ChainEntries = external dso_local global [0 x %struct.MapBank3ChainEntry], align 1
@gMapBank3ChainTail = external dso_local global [0 x i8], align 1
@gMapBank3ChainKindAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainVariantAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainSpeeds = external dso_local constant [0 x i16], align 2
@gMapBank3ChainRates = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gMapBank3ChainCycleFirstTiles = external dso_local global [0 x i16], align 2
@gMapBank3ChainCycleSecondTiles = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMapBank3ChainDirection = external dso_local local_unnamed_addr global i8, align 1
@gMapBank3ChainState1B7 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank3ChainState1B8 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank3ChainState1B9 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank3ChainCapturedAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainAvailableKinds = external dso_local global [0 x i8], align 1
@gMapBank3ChainFlagAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainKindThresholds = external dso_local constant [0 x i8], align 1
@gMapBank3ChainPhaseDurations = external dso_local constant [0 x i8], align 1
@gMapBank3ChainBackgroundScripts = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainCountAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainLinesAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainInitialKindOrder = external dso_local constant [0 x i8], align 1
@gMapBank3ChainGridAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainFlagGraphics = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainOverlayGraphics = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gMapBank3ChainLineGraphics = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gRenderClassSlots0 = external dso_local global i8, align 1
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1
@gAudioPlayerContext4E90 = external dso_local global [0 x i8], align 1
@gMapBank3PhaseResourceRows = external dso_local local_unnamed_addr global [0 x [5 x ptr]], align 4
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gMapBank3OrbitAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@switch.table.ScriptCallbackCaptureMapBank3ChainEntries = private unnamed_addr constant [3 x i16] [i16 63, i16 61, i16 345], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3PairIndicator4B4B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143283105 to ptr)) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143299308 to ptr)) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143283105 to ptr)) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3PairIndicator4B4DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143283212 to ptr)) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143299412 to ptr)) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143283212 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Auxiliary4B508() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15564() #13
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 467), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %5, i8 noundef zeroext %4, ptr noundef nonnull inttoptr (i32 143434583 to ptr)) #13
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15564() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Auxiliary4B540() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15AE4() #13
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 467), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %5, i8 noundef zeroext %4, ptr noundef nonnull inttoptr (i32 143434591 to ptr)) #13
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  %7 = add i8 %6, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %7, i8 noundef zeroext 0) #13
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15AE4() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Auxiliary4B588() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15B44() #13
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 467), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %5, i8 noundef zeroext %4, ptr noundef nonnull inttoptr (i32 143434667 to ptr)) #13
  br label %6

6:                                                ; preds = %3, %0
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15B44() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Auxiliary4B5C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureGraphicsAnimationSlots15B74() #13
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 467), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %5, i8 noundef zeroext %4, ptr noundef nonnull inttoptr (i32 143434524 to ptr)) #13
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  %7 = add i8 %6, 1
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext %7, i32 noundef 0, i32 noundef -1, i32 noundef 1) #13
  br label %8

8:                                                ; preds = %3, %0
  ret void
}

declare dso_local arm_apcscc void @ConfigureGraphicsAnimationSlots15B74() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Class2Indicator() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143447036 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143447036 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackChooseMapBank3Flags(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca [5 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #14
  %3 = call arm_apcscc ptr @memcpy(ptr noundef nonnull %2, ptr noundef nonnull @gMapBank3RandomFlagOrder, i32 noundef 5) #13
  %4 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 5) #13
  %5 = and i16 %4, 255
  %6 = zext nneg i16 %5 to i32
  %7 = getelementptr [5 x i8], ptr %2, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  %9 = icmp ult i8 %8, 5
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = zext nneg i8 %8 to i16
  %12 = add nuw nsw i16 %11, 363
  call arm_apcscc void @SetGameFlag(i16 noundef zeroext %12, i32 noundef 1) #13
  br label %13

13:                                               ; preds = %1, %10
  %14 = icmp ult i16 %5, 4
  br i1 %14, label %15, label %38

15:                                               ; preds = %13
  %16 = add nuw nsw i32 %6, 1
  %17 = getelementptr [5 x i8], ptr %2, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr [5 x i8], ptr %2, i32 0, i32 %6
  store i8 %18, ptr %19, align 1
  %20 = icmp eq i32 %16, 4
  br i1 %20, label %38, label %21

21:                                               ; preds = %15
  %22 = add nuw nsw i32 %6, 2
  %23 = getelementptr [5 x i8], ptr %2, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr [5 x i8], ptr %2, i32 0, i32 %16
  store i8 %24, ptr %25, align 1
  %26 = icmp eq i32 %22, 4
  br i1 %26, label %38, label %27

27:                                               ; preds = %21
  %28 = add nuw nsw i32 %6, 3
  %29 = getelementptr [5 x i8], ptr %2, i32 0, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr [5 x i8], ptr %2, i32 0, i32 %22
  store i8 %30, ptr %31, align 1
  %32 = icmp eq i32 %28, 4
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = or disjoint i32 %6, 4
  %35 = getelementptr [5 x i8], ptr %2, i32 0, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr [5 x i8], ptr %2, i32 0, i32 %28
  store i8 %36, ptr %37, align 1
  br label %38

38:                                               ; preds = %15, %21, %27, %33, %13
  %39 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 4) #13
  %40 = and i16 %39, 255
  %41 = zext nneg i16 %40 to i32
  %42 = getelementptr [5 x i8], ptr %2, i32 0, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp ult i8 %43, 5
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = zext nneg i8 %43 to i16
  %47 = add nuw nsw i16 %46, 363
  call arm_apcscc void @SetGameFlag(i16 noundef zeroext %47, i32 noundef 1) #13
  br label %48

48:                                               ; preds = %38, %45
  %49 = icmp ult i16 %40, 4
  br i1 %49, label %50, label %73

50:                                               ; preds = %48
  %51 = add nuw nsw i32 %41, 1
  %52 = getelementptr [5 x i8], ptr %2, i32 0, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = getelementptr [5 x i8], ptr %2, i32 0, i32 %41
  store i8 %53, ptr %54, align 1
  %55 = icmp eq i32 %51, 4
  br i1 %55, label %73, label %56

56:                                               ; preds = %50
  %57 = add nuw nsw i32 %41, 2
  %58 = getelementptr [5 x i8], ptr %2, i32 0, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = getelementptr [5 x i8], ptr %2, i32 0, i32 %51
  store i8 %59, ptr %60, align 1
  %61 = icmp eq i32 %57, 4
  br i1 %61, label %73, label %62

62:                                               ; preds = %56
  %63 = add nuw nsw i32 %41, 3
  %64 = getelementptr [5 x i8], ptr %2, i32 0, i32 %63
  %65 = load i8, ptr %64, align 1
  %66 = getelementptr [5 x i8], ptr %2, i32 0, i32 %57
  store i8 %65, ptr %66, align 1
  %67 = icmp eq i32 %63, 4
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = or disjoint i32 %41, 4
  %70 = getelementptr [5 x i8], ptr %2, i32 0, i32 %69
  %71 = load i8, ptr %70, align 1
  %72 = getelementptr [5 x i8], ptr %2, i32 0, i32 %63
  store i8 %71, ptr %72, align 1
  br label %73

73:                                               ; preds = %50, %56, %62, %68, %48
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #14
  ret i32 0
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B6E8() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B6EC() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B6F0() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B6F4() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B6F8() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B6FC() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B700() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B704() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B708() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B70C() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B710() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B714() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B718() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B71C() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B720() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B724() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B728() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B72C() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @StartMapBank3Song60() local_unnamed_addr #0 {
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 60) #13
  ret void
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4B73C() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot15_4B740() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433974 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot15_4B770() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143434014 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot15_4B7A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433939 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot15_4B7D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433911 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot15_4B800() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143434033 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot15_4B830() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143434047 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank3ControlledSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  %3 = icmp eq i8 %2, 0
  %4 = load i16, ptr @gScriptResult, align 2
  br i1 %3, label %10, label %5

5:                                                ; preds = %1
  %6 = icmp ne i16 %4, 0
  %7 = icmp eq i8 %2, 1
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %53

9:                                                ; preds = %5
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  br label %51

10:                                               ; preds = %1
  switch i16 %4, label %45 [
    i16 0, label %11
    i16 1, label %17
    i16 2, label %31
  ]

11:                                               ; preds = %10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 20, ptr noundef nonnull inttoptr (i32 143558333 to ptr)) #13
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  switch i8 %12, label %16 [
    i8 1, label %14
    i8 2, label %13
  ]

13:                                               ; preds = %11
  br label %14

14:                                               ; preds = %11, %13
  %15 = phi ptr [ inttoptr (i32 143343756 to ptr), %13 ], [ inttoptr (i32 143343811 to ptr), %11 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %15) #13
  br label %16

16:                                               ; preds = %14, %11
  tail call arm_apcscc void @StopSong(i16 noundef zeroext 59) #13
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  br label %45

17:                                               ; preds = %10
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %18, i32 10, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp sgt i32 %20, 2621440
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 16
  %26 = sub nsw i32 %20, %25
  store i32 %26, ptr %19, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %29 = icmp eq i8 %28, 1
  br i1 %29, label %45, label %30

30:                                               ; preds = %27
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 20, ptr noundef nonnull inttoptr (i32 143558370 to ptr)) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143360832 to ptr)) #13
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 59) #13
  br label %45

31:                                               ; preds = %10
  %32 = load ptr, ptr @gRenderSlots, align 4
  %33 = getelementptr %struct.RenderSlot, ptr %32, i32 10, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = icmp slt i32 %34, 11534336
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = add nsw i32 %39, %34
  store i32 %40, ptr %33, align 4
  br label %41

41:                                               ; preds = %36, %31
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %43 = icmp eq i8 %42, 2
  br i1 %43, label %45, label %44

44:                                               ; preds = %41
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 20, ptr noundef nonnull inttoptr (i32 143558393 to ptr)) #13
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143360991 to ptr)) #13
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 59) #13
  br label %45

45:                                               ; preds = %41, %44, %27, %30, %10, %16
  %46 = tail call arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef null) #13
  %47 = load i16, ptr @gAnimationClassValues, align 2
  %48 = and i16 %47, 1
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143281626 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143558132 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 20, ptr noundef nonnull inttoptr (i32 143558333 to ptr)) #13
  tail call arm_apcscc void @StopSong(i16 noundef zeroext 59) #13
  br label %51

51:                                               ; preds = %50, %9
  %52 = phi ptr [ inttoptr (i32 143361150 to ptr), %9 ], [ inttoptr (i32 143360804 to ptr), %50 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %52) #13
  br label %53

53:                                               ; preds = %45, %5, %51
  ret i32 0
}

declare dso_local arm_apcscc void @StopSong(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeMapBank3Entries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 225), align 2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 480), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 481), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  store i8 0, ptr @gMapBank3SourceEntries, align 2
  store i8 0, ptr getelementptr inbounds ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 0, i32 2), align 2
  store i16 0, ptr getelementptr inbounds ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 0, i32 6), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 1), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 1, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 1, i32 2), align 2
  store i16 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 1, i32 6), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 2, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 2, i32 2), align 2
  store i16 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 2, i32 6), align 2
  store i8 0, ptr @gMapBank3SpawnEntries, align 2
  store i8 0, ptr getelementptr inbounds ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr inbounds ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr inbounds ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr inbounds ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 0, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 1), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 1, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 1, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 1, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 1, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 2, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 2, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 2, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 2, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 3), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 3, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 3, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 3, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 3, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 4, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 4, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 4, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 4, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 5), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 5, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 5, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 5, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 5, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 6), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 6, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 6, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 6, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 6, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 7), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 7, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 7, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 7, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 7, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 8), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 8, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 8, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 8, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 8, i32 4), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 9), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 9, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 9, i32 2), align 2
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 9, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 9, i32 4), align 2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 672, i32 noundef 0) #13
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 673, i32 noundef 0) #13
  store i16 0, ptr @gMapBank3AvoidX, align 2
  tail call arm_apcscc void @ConfigureMapBank3SourceEntry(i32 noundef 0) #15
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3SourceEntry(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 8) #13
  %3 = and i16 %2, 255
  %4 = and i32 %0, 255
  %5 = shl nuw nsw i32 %4, 3
  %6 = add i32 %5, ptrtoint (ptr @gMapBank3SourceEntries to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 1
  %11 = add i32 %10, ptrtoint (ptr @gMapBank3StageThresholds to i32)
  %12 = inttoptr i32 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = icmp ult i16 %3, %14
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = add i32 %10, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3StageThresholds, i32 0, i32 1) to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  %21 = icmp ult i16 %3, %20
  %22 = select i1 %21, i8 2, i8 3
  br label %23

23:                                               ; preds = %16, %1
  %24 = phi i8 [ 1, %1 ], [ %22, %16 ]
  store i8 %24, ptr %7, align 2
  %25 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 16) #13
  %26 = and i16 %25, 255
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 480), align 1
  %28 = icmp ugt i8 %27, 19
  br i1 %28, label %36, label %29

29:                                               ; preds = %23
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 481), align 1
  %31 = icmp ugt i8 %30, 4
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %34 = zext i8 %33 to i32
  %35 = mul nuw nsw i32 %34, 3
  br label %41

36:                                               ; preds = %29, %23
  %37 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 480), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 481), align 1
  %40 = getelementptr [0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 %4, i32 1
  store i8 4, ptr %40, align 1
  br label %59

41:                                               ; preds = %32, %36
  %42 = phi i32 [ %35, %32 ], [ 0, %36 ]
  %43 = add i32 %42, ptrtoint (ptr @gMapBank3KindThresholds to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i8, ptr %44, align 1
  %46 = zext i8 %45 to i16
  %47 = icmp ult i16 %26, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = getelementptr [0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 %4, i32 1
  store i8 1, ptr %49, align 1
  br label %59

50:                                               ; preds = %41
  %51 = add i32 %42, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3KindThresholds, i32 0, i32 1) to i32)
  %52 = inttoptr i32 %51 to ptr
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i16
  %55 = icmp ult i16 %26, %54
  %56 = getelementptr [0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 %4, i32 1
  br i1 %55, label %57, label %58

57:                                               ; preds = %50
  store i8 2, ptr %56, align 1
  br label %59

58:                                               ; preds = %50
  store i8 3, ptr %56, align 1
  br label %59

59:                                               ; preds = %48, %58, %57, %39
  %60 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 8) #13
  %61 = and i16 %60, 255
  %62 = getelementptr inbounds %struct.MapBank3Entry, ptr %7, i32 0, i32 2
  %63 = load i8, ptr %62, align 2
  %64 = zext i8 %63 to i32
  %65 = mul nuw nsw i32 %64, 3
  %66 = add i32 %65, ptrtoint (ptr @gMapBank3VariationThresholds to i32)
  %67 = inttoptr i32 %66 to ptr
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i16
  %70 = icmp ult i16 %61, %69
  br i1 %70, label %84, label %71

71:                                               ; preds = %59
  %72 = add i32 %65, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3VariationThresholds, i32 0, i32 1) to i32)
  %73 = inttoptr i32 %72 to ptr
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i16
  %76 = icmp ult i16 %61, %75
  br i1 %76, label %84, label %77

77:                                               ; preds = %71
  %78 = add i32 %65, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3VariationThresholds, i32 0, i32 2) to i32)
  %79 = inttoptr i32 %78 to ptr
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i16
  %82 = icmp ult i16 %61, %81
  %83 = select i1 %82, i8 2, i8 3
  br label %84

84:                                               ; preds = %77, %71, %59
  %85 = phi i8 [ 0, %59 ], [ 1, %71 ], [ %83, %77 ]
  store i8 %85, ptr %62, align 2
  %86 = getelementptr inbounds %struct.MapBank3Entry, ptr %7, i32 0, i32 6
  store i16 24, ptr %86, align 2
  %87 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %88 = getelementptr inbounds %struct.MapBank3Entry, ptr %7, i32 0, i32 3
  store i8 %87, ptr %88, align 1
  %89 = getelementptr inbounds %struct.MapBank3Entry, ptr %7, i32 0, i32 4
  store i8 0, ptr %89, align 2
  br label %90

90:                                               ; preds = %90, %84
  %91 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 64, i16 noundef zeroext 200) #13
  %92 = zext i16 %91 to i32
  %93 = load i16, ptr @gMapBank3AvoidX, align 2
  %94 = zext i16 %93 to i32
  %95 = add nsw i32 %94, -24
  %96 = icmp sle i32 %95, %92
  %97 = add nuw nsw i32 %94, 24
  %98 = icmp uge i32 %97, %92
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %90, label %100

100:                                              ; preds = %90
  %101 = trunc i32 %0 to i8
  %102 = add i8 %101, 23
  %103 = sext i16 %91 to i32
  %104 = getelementptr [0 x %struct.MapBank3Entry], ptr @gMapBank3SourceEntries, i32 0, i32 %4, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = zext i8 %105 to i32
  %107 = add nsw i32 %106, -1
  %108 = getelementptr [0 x ptr], ptr @gMapBank3SourceAnimations, i32 0, i32 %107
  %109 = load ptr, ptr %108, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %102, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %103, i32 noundef 0, i32 noundef -24, ptr noundef %109) #13
  %110 = load ptr, ptr @gRenderSlots, align 4
  %111 = mul nuw nsw i32 %4, 104
  %112 = ptrtoint ptr %110 to i32
  %113 = add nuw nsw i32 %111, 2392
  %114 = add i32 %113, %112
  %115 = inttoptr i32 %114 to ptr
  %116 = getelementptr %struct.RenderSlot, ptr %115, i32 0, i32 6, i32 2
  store i32 65536, ptr %116, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStopMapBank3EntryVelocities(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = add i32 %3, 2392
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.RenderSlot, ptr %5, i32 0, i32 6
  %7 = getelementptr %struct.RenderSlot, ptr %5, i32 0, i32 6, i32 2
  store i32 0, ptr %7, align 4
  store i32 0, ptr %6, align 4
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = add i32 %9, 2496
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %11, i32 0, i32 6
  %13 = getelementptr %struct.RenderSlot, ptr %11, i32 0, i32 6, i32 2
  store i32 0, ptr %13, align 4
  store i32 0, ptr %12, align 4
  %14 = load ptr, ptr @gRenderSlots, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = add i32 %15, 2600
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 6
  %19 = getelementptr %struct.RenderSlot, ptr %17, i32 0, i32 6, i32 2
  store i32 0, ptr %19, align 4
  store i32 0, ptr %18, align 4
  %20 = load ptr, ptr @gRenderSlots, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = add i32 %21, 2704
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %23, i32 0, i32 6
  store i32 0, ptr %24, align 4
  %25 = getelementptr %struct.RenderSlot, ptr %23, i32 0, i32 6, i32 2
  store i32 0, ptr %25, align 4
  %26 = getelementptr inbounds %struct.RenderSlot, ptr %23, i32 0, i32 7
  store i32 0, ptr %26, align 4
  %27 = getelementptr %struct.RenderSlot, ptr %23, i32 0, i32 7, i32 2
  store i32 0, ptr %27, align 4
  %28 = load ptr, ptr @gRenderSlots, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = add i32 %29, 2808
  %31 = inttoptr i32 %30 to ptr
  %32 = getelementptr inbounds %struct.RenderSlot, ptr %31, i32 0, i32 6
  store i32 0, ptr %32, align 4
  %33 = getelementptr %struct.RenderSlot, ptr %31, i32 0, i32 6, i32 2
  store i32 0, ptr %33, align 4
  %34 = getelementptr inbounds %struct.RenderSlot, ptr %31, i32 0, i32 7
  store i32 0, ptr %34, align 4
  %35 = getelementptr %struct.RenderSlot, ptr %31, i32 0, i32 7, i32 2
  store i32 0, ptr %35, align 4
  %36 = load ptr, ptr @gRenderSlots, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = add i32 %37, 2912
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.RenderSlot, ptr %39, i32 0, i32 6
  store i32 0, ptr %40, align 4
  %41 = getelementptr %struct.RenderSlot, ptr %39, i32 0, i32 6, i32 2
  store i32 0, ptr %41, align 4
  %42 = getelementptr inbounds %struct.RenderSlot, ptr %39, i32 0, i32 7
  store i32 0, ptr %42, align 4
  %43 = getelementptr %struct.RenderSlot, ptr %39, i32 0, i32 7, i32 2
  store i32 0, ptr %43, align 4
  %44 = load ptr, ptr @gRenderSlots, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = add i32 %45, 3016
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr inbounds %struct.RenderSlot, ptr %47, i32 0, i32 6
  store i32 0, ptr %48, align 4
  %49 = getelementptr %struct.RenderSlot, ptr %47, i32 0, i32 6, i32 2
  store i32 0, ptr %49, align 4
  %50 = getelementptr inbounds %struct.RenderSlot, ptr %47, i32 0, i32 7
  store i32 0, ptr %50, align 4
  %51 = getelementptr %struct.RenderSlot, ptr %47, i32 0, i32 7, i32 2
  store i32 0, ptr %51, align 4
  %52 = load ptr, ptr @gRenderSlots, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = add i32 %53, 3120
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr inbounds %struct.RenderSlot, ptr %55, i32 0, i32 6
  store i32 0, ptr %56, align 4
  %57 = getelementptr %struct.RenderSlot, ptr %55, i32 0, i32 6, i32 2
  store i32 0, ptr %57, align 4
  %58 = getelementptr inbounds %struct.RenderSlot, ptr %55, i32 0, i32 7
  store i32 0, ptr %58, align 4
  %59 = getelementptr %struct.RenderSlot, ptr %55, i32 0, i32 7, i32 2
  store i32 0, ptr %59, align 4
  %60 = load ptr, ptr @gRenderSlots, align 4
  %61 = ptrtoint ptr %60 to i32
  %62 = add i32 %61, 3224
  %63 = inttoptr i32 %62 to ptr
  %64 = getelementptr inbounds %struct.RenderSlot, ptr %63, i32 0, i32 6
  store i32 0, ptr %64, align 4
  %65 = getelementptr %struct.RenderSlot, ptr %63, i32 0, i32 6, i32 2
  store i32 0, ptr %65, align 4
  %66 = getelementptr inbounds %struct.RenderSlot, ptr %63, i32 0, i32 7
  store i32 0, ptr %66, align 4
  %67 = getelementptr %struct.RenderSlot, ptr %63, i32 0, i32 7, i32 2
  store i32 0, ptr %67, align 4
  %68 = load ptr, ptr @gRenderSlots, align 4
  %69 = ptrtoint ptr %68 to i32
  %70 = add i32 %69, 3328
  %71 = inttoptr i32 %70 to ptr
  %72 = getelementptr inbounds %struct.RenderSlot, ptr %71, i32 0, i32 6
  store i32 0, ptr %72, align 4
  %73 = getelementptr %struct.RenderSlot, ptr %71, i32 0, i32 6, i32 2
  store i32 0, ptr %73, align 4
  %74 = getelementptr inbounds %struct.RenderSlot, ptr %71, i32 0, i32 7
  store i32 0, ptr %74, align 4
  %75 = getelementptr %struct.RenderSlot, ptr %71, i32 0, i32 7, i32 2
  store i32 0, ptr %75, align 4
  %76 = load ptr, ptr @gRenderSlots, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = add i32 %77, 3432
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr inbounds %struct.RenderSlot, ptr %79, i32 0, i32 6
  store i32 0, ptr %80, align 4
  %81 = getelementptr %struct.RenderSlot, ptr %79, i32 0, i32 6, i32 2
  store i32 0, ptr %81, align 4
  %82 = getelementptr inbounds %struct.RenderSlot, ptr %79, i32 0, i32 7
  store i32 0, ptr %82, align 4
  %83 = getelementptr %struct.RenderSlot, ptr %79, i32 0, i32 7, i32 2
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr @gRenderSlots, align 4
  %85 = ptrtoint ptr %84 to i32
  %86 = add i32 %85, 3536
  %87 = inttoptr i32 %86 to ptr
  %88 = getelementptr inbounds %struct.RenderSlot, ptr %87, i32 0, i32 6
  store i32 0, ptr %88, align 4
  %89 = getelementptr %struct.RenderSlot, ptr %87, i32 0, i32 6, i32 2
  store i32 0, ptr %89, align 4
  %90 = getelementptr inbounds %struct.RenderSlot, ptr %87, i32 0, i32 7
  store i32 0, ptr %90, align 4
  %91 = getelementptr %struct.RenderSlot, ptr %87, i32 0, i32 7, i32 2
  store i32 0, ptr %91, align 4
  %92 = load ptr, ptr @gRenderSlots, align 4
  %93 = ptrtoint ptr %92 to i32
  %94 = add i32 %93, 3640
  %95 = inttoptr i32 %94 to ptr
  %96 = getelementptr inbounds %struct.RenderSlot, ptr %95, i32 0, i32 6
  store i32 0, ptr %96, align 4
  %97 = getelementptr %struct.RenderSlot, ptr %95, i32 0, i32 6, i32 2
  store i32 0, ptr %97, align 4
  %98 = getelementptr inbounds %struct.RenderSlot, ptr %95, i32 0, i32 7
  store i32 0, ptr %98, align 4
  %99 = getelementptr %struct.RenderSlot, ptr %95, i32 0, i32 7, i32 2
  store i32 0, ptr %99, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackFinishMapBank3Entries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 27, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 29, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 31, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 32, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 33, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 34, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 35, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 51, i32 noundef 232, i32 noundef 0, i32 noundef 216, ptr noundef nonnull inttoptr (i32 143311046 to ptr)) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 272, i32 noundef 0, i32 noundef 216, ptr noundef nonnull inttoptr (i32 143343701 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 232, i32 noundef 0, i32 noundef 184, ptr noundef nonnull inttoptr (i32 143463470 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 32, i32 noundef 0, i32 noundef 96, ptr noundef nonnull inttoptr (i32 143558341 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 128, i32 noundef 137, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143558333 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 104, i32 noundef 8, i32 noundef 104, ptr noundef nonnull inttoptr (i32 143558305 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 104, i32 noundef 0, i32 noundef 112, ptr noundef nonnull inttoptr (i32 143558319 to ptr)) #13
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 225), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 66), align 2
  %4 = icmp ult i16 %3, %2
  %5 = icmp ugt i16 %2, 859
  %6 = and i1 %5, %4
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i16 %2, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 66), align 2
  br label %8

8:                                                ; preds = %1, %7
  %9 = phi i32 [ 1, %7 ], [ 0, %1 ]
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 675, i32 noundef %9) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackTickMapBank3Entries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %3 = add i16 %2, 1
  store i16 %3, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %4 = icmp ugt i16 %3, 3599
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 253, i32 noundef 1) #13
  br label %6

6:                                                ; preds = %5, %1
  %7 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 672) #13
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %11 = icmp ugt i16 %10, 79
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 672, i32 noundef 1) #13
  tail call arm_apcscc void @ConfigureMapBank3SourceEntry(i32 noundef 1) #15
  br label %13

13:                                               ; preds = %12, %9, %6
  %14 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 673) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %18 = icmp ugt i16 %17, 1799
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 673, i32 noundef 1) #13
  tail call arm_apcscc void @ConfigureMapBank3SourceEntry(i32 noundef 2) #15
  br label %20

20:                                               ; preds = %19, %13
  %21 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %22 = icmp ugt i16 %21, 3000
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = icmp ugt i16 %21, 1800
  %25 = zext i1 %24 to i8
  br label %26

26:                                               ; preds = %23, %16, %20
  %27 = phi i8 [ 2, %20 ], [ 0, %16 ], [ %25, %23 ]
  %28 = phi i16 [ %21, %20 ], [ %17, %16 ], [ %21, %23 ]
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %29 = load i16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gAnimationClassValues to i32), i32 448) to ptr), align 2
  %30 = urem i16 %29, 60
  %31 = icmp eq i16 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = zext i16 %28 to i32
  %34 = sub nsw i32 3600, %33
  %35 = sdiv i32 %34, 60
  %36 = trunc i32 %35 to i16
  %37 = freeze i16 %36
  %38 = udiv i16 %37, 60
  tail call void asm sideeffect "", "{r1}"(i32 28997) #14, !srcloc !4
  %39 = add nuw nsw i16 %38, 28997
  store i16 %39, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 3), align 2
  %40 = mul i16 %38, 60
  %41 = sub i16 %37, %40
  %42 = trunc i16 %41 to i8
  %43 = udiv i8 %42, 10
  %44 = zext nneg i8 %43 to i16
  %45 = add nuw nsw i16 %44, 28997
  store i16 %45, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 9), align 2
  %46 = urem i16 %36, 10
  %47 = add nuw nsw i16 %46, 28997
  store i16 %47, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 12), align 2
  br label %48

48:                                               ; preds = %32, %26
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshMapBank3TimeTiles(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %3 = zext i16 %2 to i32
  %4 = sub nsw i32 3600, %3
  %5 = sdiv i32 %4, 60
  %6 = trunc i32 %5 to i16
  %7 = freeze i16 %6
  %8 = udiv i16 %7, 60
  tail call void asm sideeffect "", "{r1}"(i32 28997) #14, !srcloc !4
  %9 = add nuw nsw i16 %8, 28997
  store i16 %9, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 3), align 2
  %10 = mul i16 %8, 60
  %11 = sub i16 %7, %10
  %12 = trunc i16 %11 to i8
  %13 = udiv i8 %12, 10
  %14 = zext nneg i8 %13 to i16
  %15 = add nuw nsw i16 %14, 28997
  store i16 %15, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 9), align 2
  %16 = urem i16 %6, 10
  %17 = add nuw nsw i16 %16, 28997
  store i16 %17, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 12), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SpawnMapBank3Entry(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 255
  %3 = load i8, ptr @gMapBank3SpawnEntries, align 2
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 8) to ptr), align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %32, label %8

8:                                                ; preds = %5
  %9 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 16) to ptr), align 2
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %32, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 24) to ptr), align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 32) to ptr), align 2
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %32, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 40) to ptr), align 2
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %17
  %21 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 48) to ptr), align 2
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 56) to ptr), align 2
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 64) to ptr), align 2
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 72) to ptr), align 2
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %5, %8, %11, %14, %17, %20, %23, %26, %29, %1
  %33 = phi ptr [ @gMapBank3SpawnEntries, %1 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 8) to ptr), %5 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 16) to ptr), %8 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 24) to ptr), %11 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 32) to ptr), %14 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 40) to ptr), %17 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 48) to ptr), %20 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 56) to ptr), %23 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 64) to ptr), %26 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3SpawnEntries to i32), i32 72) to ptr), %29 ]
  %34 = phi i8 [ 0, %1 ], [ 1, %5 ], [ 2, %8 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ 6, %20 ], [ 7, %23 ], [ 8, %26 ], [ 9, %29 ]
  store i8 1, ptr %33, align 2
  br label %35

35:                                               ; preds = %32, %29
  %36 = phi i8 [ 10, %29 ], [ %34, %32 ]
  %37 = zext nneg i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 3
  %39 = add i32 %38, ptrtoint (ptr @gMapBank3SpawnEntries to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = tail call i32 asm "", "={r3},{r3}"(i32 %2) #16, !srcloc !5
  %42 = shl i32 %41, 3
  %43 = add i32 %42, ptrtoint (ptr @gMapBank3SourceEntries to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = getelementptr inbounds %struct.MapBank3Entry, ptr %44, i32 0, i32 1
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.MapBank3Entry, ptr %40, i32 0, i32 1
  store i8 %46, ptr %47, align 1
  %48 = getelementptr inbounds %struct.MapBank3Entry, ptr %44, i32 0, i32 2
  %49 = load i8, ptr %48, align 2
  %50 = getelementptr inbounds %struct.MapBank3Entry, ptr %40, i32 0, i32 2
  store i8 %49, ptr %50, align 2
  %51 = getelementptr inbounds %struct.MapBank3Entry, ptr %44, i32 0, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = getelementptr inbounds %struct.MapBank3Entry, ptr %40, i32 0, i32 3
  store i8 %52, ptr %53, align 1
  %54 = icmp eq i8 %46, 4
  %55 = add nuw nsw i32 %37, 26
  %56 = trunc i32 %55 to i8
  tail call void asm sideeffect "", "r"(i32 %55) #14
  %57 = load ptr, ptr @gRenderSlots, align 4
  %58 = mul i32 %41, 104
  %59 = ptrtoint ptr %57 to i32
  %60 = add i32 %58, 2392
  %61 = add i32 %60, %59
  %62 = inttoptr i32 %61 to ptr
  %63 = getelementptr i8, ptr %62, i32 26
  %64 = load i16, ptr %63, align 2
  %65 = sext i16 %64 to i32
  %66 = getelementptr i8, ptr %62, i32 34
  %67 = load i16, ptr %66, align 2
  br i1 %54, label %82, label %68

68:                                               ; preds = %35
  %69 = add i16 %67, 16
  %70 = sext i16 %69 to i32
  %71 = load i8, ptr %50, align 2
  %72 = lshr i8 %71, 1
  %73 = zext nneg i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 2
  %75 = load i8, ptr %47, align 1
  %76 = zext i8 %75 to i32
  %77 = shl nuw nsw i32 %76, 3
  %78 = add i32 %77, add (i32 ptrtoint (ptr @gMapBank3SpawnAnimations to i32), i32 -8)
  %79 = add i32 %78, %74
  %80 = inttoptr i32 %79 to ptr
  %81 = load ptr, ptr %80, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %56, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %65, i32 noundef 0, i32 noundef %70, ptr noundef %81) #13
  br label %84

82:                                               ; preds = %35
  %83 = sext i16 %67 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %56, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %65, i32 noundef 0, i32 noundef %83, ptr noundef nonnull inttoptr (i32 143558082 to ptr)) #13
  br label %84

84:                                               ; preds = %82, %68
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %56, i8 noundef zeroext 1) #13
  tail call arm_apcscc void @SetMapBank3SpawnMotion(i8 noundef zeroext %36) #15
  ret void
}

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3SpawnMotion(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i8 %0 to i32
  %3 = shl nuw nsw i32 %2, 3
  %4 = add i32 %3, ptrtoint (ptr @gMapBank3SpawnEntries to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr inbounds %struct.MapBank3Entry, ptr %5, i32 0, i32 4
  store i8 16, ptr %6, align 2
  %7 = getelementptr inbounds %struct.MapBank3Entry, ptr %5, i32 0, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %129, label %10

10:                                               ; preds = %1
  %11 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 8) #13
  %12 = and i16 %11, 255
  %13 = getelementptr inbounds %struct.MapBank3Entry, ptr %5, i32 0, i32 2
  %14 = load i8, ptr %13, align 2
  %15 = zext i8 %14 to i32
  tail call void asm sideeffect "", "r"(i32 %15) #14, !srcloc !6
  %16 = mul nuw nsw i32 %15, 3
  %17 = add i32 %16, ptrtoint (ptr @gMapBank3VariationThresholds to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i16
  %21 = icmp ult i16 %12, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %10
  store i8 0, ptr %13, align 2
  %23 = load ptr, ptr @gRenderSlots, align 4
  %24 = mul nuw nsw i32 %2, 104
  %25 = ptrtoint ptr %23 to i32
  %26 = add nuw nsw i32 %24, 2704
  %27 = add i32 %26, %25
  %28 = inttoptr i32 %27 to ptr
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 15
  %32 = getelementptr inbounds %struct.RenderSlot, ptr %28, i32 0, i32 6
  store i32 %31, ptr %32, align 4
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %34 = zext i8 %33 to i32
  %35 = mul nsw i32 %34, -1024
  br label %88

36:                                               ; preds = %10
  %37 = add i32 %16, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3VariationThresholds, i32 0, i32 1) to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i16
  %41 = icmp ult i16 %12, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %36
  store i8 1, ptr %13, align 2
  %43 = load ptr, ptr @gRenderSlots, align 4
  %44 = mul nuw nsw i32 %2, 104
  %45 = ptrtoint ptr %43 to i32
  %46 = add nuw nsw i32 %44, 2704
  %47 = add i32 %46, %45
  %48 = inttoptr i32 %47 to ptr
  %49 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %50 = zext i8 %49 to i32
  %51 = shl nuw nsw i32 %50, 16
  %52 = getelementptr inbounds %struct.RenderSlot, ptr %48, i32 0, i32 6
  store i32 %51, ptr %52, align 4
  %53 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %54 = zext i8 %53 to i32
  %55 = mul nsw i32 %54, -2048
  br label %88

56:                                               ; preds = %36
  %57 = add i32 %16, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3VariationThresholds, i32 0, i32 2) to i32)
  %58 = inttoptr i32 %57 to ptr
  %59 = load i8, ptr %58, align 1
  %60 = zext i8 %59 to i16
  %61 = icmp ult i16 %12, %60
  %62 = mul nuw nsw i32 %2, 104
  %63 = add nuw nsw i32 %62, 2704
  br i1 %61, label %64, label %76

64:                                               ; preds = %56
  store i8 2, ptr %13, align 2
  %65 = load ptr, ptr @gRenderSlots, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = add i32 %63, %66
  %68 = inttoptr i32 %67 to ptr
  %69 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %70 = zext i8 %69 to i32
  %71 = mul nsw i32 %70, -32768
  %72 = getelementptr inbounds %struct.RenderSlot, ptr %68, i32 0, i32 6
  store i32 %71, ptr %72, align 4
  %73 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %74 = zext i8 %73 to i32
  %75 = shl nuw nsw i32 %74, 10
  br label %88

76:                                               ; preds = %56
  store i8 3, ptr %13, align 2
  %77 = load ptr, ptr @gRenderSlots, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = add i32 %63, %78
  %80 = inttoptr i32 %79 to ptr
  %81 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %82 = zext i8 %81 to i32
  %83 = mul nsw i32 %82, -65536
  %84 = getelementptr inbounds %struct.RenderSlot, ptr %80, i32 0, i32 6
  store i32 %83, ptr %84, align 4
  %85 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 11
  br label %88

88:                                               ; preds = %42, %76, %64, %22
  %89 = phi ptr [ %48, %42 ], [ %80, %76 ], [ %68, %64 ], [ %28, %22 ]
  %90 = phi i32 [ %55, %42 ], [ %87, %76 ], [ %75, %64 ], [ %35, %22 ]
  %91 = phi i32 [ add (i32 ptrtoint (ptr getelementptr ([0 x ptr], ptr @gMapBank3SpawnAnimations, i32 0, i32 1) to i32), i32 -8), %42 ], [ add (i32 ptrtoint (ptr @gMapBank3SpawnAnimations to i32), i32 -8), %76 ], [ add (i32 ptrtoint (ptr @gMapBank3SpawnAnimations to i32), i32 -8), %64 ], [ add (i32 ptrtoint (ptr getelementptr ([0 x ptr], ptr @gMapBank3SpawnAnimations, i32 0, i32 1) to i32), i32 -8), %22 ]
  %92 = getelementptr inbounds %struct.RenderSlot, ptr %89, i32 0, i32 7
  store i32 %90, ptr %92, align 4
  %93 = add i8 %0, 26
  %94 = load i8, ptr %7, align 1
  %95 = zext i8 %94 to i32
  %96 = shl nuw nsw i32 %95, 3
  %97 = add i32 %96, %91
  %98 = inttoptr i32 %97 to ptr
  %99 = load ptr, ptr %98, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %93, ptr noundef %99) #13
  %100 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 8) #13
  %101 = and i16 %100, 255
  %102 = getelementptr [0 x %struct.MapBank3Entry], ptr @gMapBank3SpawnEntries, i32 0, i32 %2, i32 3
  %103 = load i8, ptr %102, align 1
  %104 = zext i8 %103 to i32
  %105 = getelementptr [0 x i8], ptr @gMapBank3VerticalThresholds, i32 0, i32 %104
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i16
  %108 = icmp ult i16 %101, %107
  %109 = load ptr, ptr @gRenderSlots, align 4
  %110 = mul nuw nsw i32 %2, 104
  %111 = ptrtoint ptr %109 to i32
  %112 = add nuw nsw i32 %110, 2704
  %113 = add i32 %112, %111
  %114 = inttoptr i32 %113 to ptr
  %115 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %116 = zext i8 %115 to i32
  %117 = getelementptr %struct.RenderSlot, ptr %114, i32 0, i32 6, i32 2
  %118 = getelementptr %struct.RenderSlot, ptr %114, i32 0, i32 7, i32 2
  br i1 %108, label %119, label %124

119:                                              ; preds = %88
  %120 = shl nuw nsw i32 %116, 15
  store i32 %120, ptr %117, align 4
  %121 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %122 = zext i8 %121 to i32
  %123 = mul nsw i32 %122, -1792
  store i32 %123, ptr %118, align 4
  br label %140

124:                                              ; preds = %88
  %125 = shl nuw nsw i32 %116, 16
  store i32 %125, ptr %117, align 4
  %126 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %127 = zext i8 %126 to i32
  %128 = mul nsw i32 %127, -4352
  store i32 %128, ptr %118, align 4
  br label %140

129:                                              ; preds = %1
  %130 = load ptr, ptr @gRenderSlots, align 4
  %131 = mul nuw nsw i32 %2, 104
  %132 = ptrtoint ptr %130 to i32
  %133 = add nuw nsw i32 %131, 2704
  %134 = add i32 %133, %132
  %135 = inttoptr i32 %134 to ptr
  %136 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %137 = zext i8 %136 to i32
  %138 = shl nuw nsw i32 %137, 16
  %139 = getelementptr %struct.RenderSlot, ptr %135, i32 0, i32 6, i32 2
  store i32 %138, ptr %139, align 4
  br label %140

140:                                              ; preds = %119, %124, %129
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank3SourceEntries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %165, %1
  %3 = phi i32 [ 0, %1 ], [ %166, %165 ]
  %4 = shl nuw nsw i32 %3, 3
  %5 = add i32 %4, ptrtoint (ptr @gMapBank3SourceEntries to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = getelementptr inbounds %struct.MapBank3Entry, ptr %6, i32 0, i32 6
  %8 = load i16, ptr %7, align 2
  %9 = add i16 %8, -1
  store i16 %9, ptr %7, align 2
  %10 = load i8, ptr %6, align 2
  %11 = zext i8 %10 to i32
  %12 = tail call { ptr, i32, i32 } asm "", "={r1},=r,=r,{r1},1,2"(ptr nonnull @gMapBank3SourceEntries, i32 %4, i32 %11) #16, !srcloc !7
  %13 = extractvalue { ptr, i32, i32 } %12, 0
  %14 = extractvalue { ptr, i32, i32 } %12, 1
  %15 = extractvalue { ptr, i32, i32 } %12, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %165, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.MapBank3Entry, ptr %6, i32 0, i32 4
  %19 = load i8, ptr %18, align 2
  switch i8 %19, label %165 [
    i8 0, label %20
    i8 1, label %86
    i8 2, label %113
    i8 3, label %144
    i8 4, label %157
  ]

20:                                               ; preds = %17
  %21 = ptrtoint ptr %13 to i32
  %22 = add i32 %14, %21
  %23 = inttoptr i32 %22 to ptr
  %24 = getelementptr inbounds %struct.MapBank3Entry, ptr %23, i32 0, i32 6
  %25 = load i16, ptr %24, align 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %27, label %165

27:                                               ; preds = %20
  %28 = load ptr, ptr @gRenderSlots, align 4
  %29 = mul nuw nsw i32 %3, 104
  %30 = ptrtoint ptr %28 to i32
  %31 = add nuw nsw i32 %29, 2392
  %32 = add i32 %31, %30
  %33 = inttoptr i32 %32 to ptr
  %34 = getelementptr %struct.RenderSlot, ptr %33, i32 0, i32 6, i32 2
  store i32 0, ptr %34, align 4
  %35 = getelementptr inbounds %struct.MapBank3Entry, ptr %23, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 4
  br i1 %37, label %45, label %38

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.MapBank3Entry, ptr %23, i32 0, i32 3
  %40 = load i8, ptr %39, align 1
  switch i8 %40, label %47 [
    i8 0, label %41
    i8 1, label %45
    i8 2, label %43
  ]

41:                                               ; preds = %38
  %42 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 40, i16 noundef zeroext 60) #13
  br label %45

43:                                               ; preds = %38
  %44 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 30, i16 noundef zeroext 50) #13
  br label %45

45:                                               ; preds = %38, %27, %43, %41
  %46 = phi i16 [ %42, %41 ], [ %44, %43 ], [ 30, %27 ], [ 45, %38 ]
  store i16 %46, ptr %24, align 2
  br label %47

47:                                               ; preds = %45, %38
  %48 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 8) #13
  %49 = and i16 %48, 255
  %50 = add i32 %14, ptrtoint (ptr @gMapBank3SourceEntries to i32)
  %51 = inttoptr i32 %50 to ptr
  %52 = getelementptr inbounds %struct.MapBank3Entry, ptr %51, i32 0, i32 3
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 1
  %56 = add i32 %55, ptrtoint (ptr @gMapBank3SourceMotionThresholds to i32)
  %57 = inttoptr i32 %56 to ptr
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i16
  %60 = icmp ult i16 %49, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i8, ptr %51, align 2
  switch i8 %62, label %82 [
    i8 1, label %75
    i8 2, label %63
  ]

63:                                               ; preds = %61
  br label %75

64:                                               ; preds = %47
  %65 = add i32 %55, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3SourceMotionThresholds, i32 0, i32 1) to i32)
  %66 = inttoptr i32 %65 to ptr
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i16
  %69 = icmp ult i16 %49, %68
  %70 = load i8, ptr %51, align 2
  br i1 %69, label %71, label %73

71:                                               ; preds = %64
  switch i8 %70, label %82 [
    i8 1, label %75
    i8 2, label %72
  ]

72:                                               ; preds = %71
  br label %75

73:                                               ; preds = %64
  switch i8 %70, label %82 [
    i8 1, label %75
    i8 2, label %74
  ]

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %73, %71, %61, %63, %74, %72
  %76 = phi i32 [ -98304, %72 ], [ -131072, %74 ], [ -65536, %63 ], [ 65536, %61 ], [ 98304, %71 ], [ 131072, %73 ]
  %77 = load ptr, ptr @gRenderSlots, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = add i32 %31, %78
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.RenderSlot, ptr %80, i32 0, i32 6
  store i32 %76, ptr %81, align 4
  br label %82

82:                                               ; preds = %75, %73, %71, %61
  %83 = getelementptr inbounds %struct.MapBank3Entry, ptr %51, i32 0, i32 4
  %84 = load i8, ptr %83, align 2
  %85 = add i8 %84, 1
  store i8 %85, ptr %83, align 2
  br label %165

86:                                               ; preds = %17
  %87 = load ptr, ptr @gRenderSlots, align 4
  %88 = mul nuw nsw i32 %3, 104
  %89 = ptrtoint ptr %87 to i32
  %90 = add nuw nsw i32 %88, 2392
  %91 = add i32 %90, %89
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr inbounds %struct.RenderSlot, ptr %92, i32 0, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = add i32 %94, -13107200
  %96 = icmp ult i32 %95, -8912895
  br i1 %96, label %97, label %101

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.RenderSlot, ptr %92, i32 0, i32 6
  %99 = load i32, ptr %98, align 4
  %100 = sub i32 0, %99
  store i32 %100, ptr %98, align 4
  br label %101

101:                                              ; preds = %97, %86
  %102 = ptrtoint ptr %13 to i32
  %103 = add i32 %14, %102
  %104 = inttoptr i32 %103 to ptr
  %105 = getelementptr inbounds %struct.MapBank3Entry, ptr %104, i32 0, i32 6
  %106 = load i16, ptr %105, align 2
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %165

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.RenderSlot, ptr %92, i32 0, i32 6
  store i32 0, ptr %109, align 4
  store i16 45, ptr %105, align 2
  %110 = getelementptr inbounds %struct.MapBank3Entry, ptr %104, i32 0, i32 4
  %111 = load i8, ptr %110, align 2
  %112 = add i8 %111, 1
  store i8 %112, ptr %110, align 2
  br label %165

113:                                              ; preds = %17
  %114 = ptrtoint ptr %13 to i32
  %115 = add i32 %14, %114
  %116 = inttoptr i32 %115 to ptr
  %117 = getelementptr inbounds %struct.MapBank3Entry, ptr %116, i32 0, i32 6
  %118 = load i16, ptr %117, align 2
  %119 = icmp eq i16 %118, 20
  br i1 %119, label %120, label %130

120:                                              ; preds = %113
  %121 = trunc i32 %3 to i8
  %122 = add nuw nsw i8 %121, 23
  %123 = getelementptr inbounds %struct.MapBank3Entry, ptr %116, i32 0, i32 1
  %124 = load i8, ptr %123, align 1
  %125 = zext i8 %124 to i32
  %126 = add nsw i32 %125, -1
  %127 = getelementptr [0 x ptr], ptr @gMapBank3ReleaseAnimations, i32 0, i32 %126
  %128 = load ptr, ptr %127, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %122, ptr noundef %128) #13
  tail call arm_apcscc void @SpawnMapBank3Entry(i32 noundef %3) #15
  %129 = load i16, ptr %117, align 2
  br label %130

130:                                              ; preds = %120, %113
  %131 = phi i16 [ %129, %120 ], [ %118, %113 ]
  %132 = icmp eq i16 %131, 0
  br i1 %132, label %133, label %165

133:                                              ; preds = %130
  %134 = load ptr, ptr @gRenderSlots, align 4
  %135 = mul nuw nsw i32 %3, 104
  %136 = ptrtoint ptr %134 to i32
  %137 = add nuw nsw i32 %135, 2392
  %138 = add i32 %137, %136
  %139 = inttoptr i32 %138 to ptr
  %140 = getelementptr %struct.RenderSlot, ptr %139, i32 0, i32 6, i32 1
  store i32 -65536, ptr %140, align 4
  store i16 40, ptr %117, align 2
  %141 = getelementptr inbounds %struct.MapBank3Entry, ptr %116, i32 0, i32 4
  %142 = load i8, ptr %141, align 2
  %143 = add i8 %142, 1
  store i8 %143, ptr %141, align 2
  br label %165

144:                                              ; preds = %17
  %145 = ptrtoint ptr %13 to i32
  %146 = add i32 %14, %145
  %147 = inttoptr i32 %146 to ptr
  %148 = getelementptr inbounds %struct.MapBank3Entry, ptr %147, i32 0, i32 6
  %149 = load i16, ptr %148, align 2
  %150 = icmp eq i16 %149, 0
  br i1 %150, label %151, label %165

151:                                              ; preds = %144
  %152 = trunc i32 %3 to i8
  %153 = add nuw nsw i8 %152, 23
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %153, i8 noundef zeroext 0) #13
  store i16 40, ptr %148, align 2
  %154 = getelementptr inbounds %struct.MapBank3Entry, ptr %147, i32 0, i32 4
  %155 = load i8, ptr %154, align 2
  %156 = add i8 %155, 1
  store i8 %156, ptr %154, align 2
  br label %165

157:                                              ; preds = %17
  %158 = ptrtoint ptr %13 to i32
  %159 = add i32 %14, %158
  %160 = inttoptr i32 %159 to ptr
  %161 = getelementptr inbounds %struct.MapBank3Entry, ptr %160, i32 0, i32 6
  %162 = load i16, ptr %161, align 2
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  tail call arm_apcscc void @ConfigureMapBank3SourceEntry(i32 noundef %3) #15
  br label %165

165:                                              ; preds = %144, %151, %130, %133, %101, %108, %20, %82, %17, %164, %157, %2
  %166 = add nuw nsw i32 %3, 1
  %167 = icmp eq i32 %166, 3
  br i1 %167, label %168, label %2

168:                                              ; preds = %165
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank3SpawnEntries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %198, %1
  %3 = phi i32 [ %199, %198 ], [ 0, %1 ]
  %4 = shl nuw nsw i32 %3, 3
  %5 = add i32 %4, ptrtoint (ptr @gMapBank3SpawnEntries to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %198, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.MapBank3Entry, ptr %6, i32 0, i32 4
  %11 = load i8, ptr %10, align 2
  %12 = add i8 %11, -1
  store i8 %12, ptr %10, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = trunc i32 %3 to i8
  tail call arm_apcscc void @SetMapBank3SpawnMotion(i8 noundef zeroext %15) #15
  br label %16

16:                                               ; preds = %14, %9
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = mul nuw nsw i32 %3, 104
  %19 = ptrtoint ptr %17 to i32
  %20 = add nuw nsw i32 %18, 2704
  %21 = add i32 %20, %19
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.RenderSlot, ptr %22, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, 3145728
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.MapBank3Entry, ptr %6, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = icmp ugt i8 %28, 1
  br i1 %29, label %36, label %44

30:                                               ; preds = %16
  %31 = icmp ugt i32 %24, 13631488
  br i1 %31, label %32, label %44

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.MapBank3Entry, ptr %6, i32 0, i32 2
  %34 = load i8, ptr %33, align 2
  %35 = icmp ult i8 %34, 2
  br i1 %35, label %36, label %44

36:                                               ; preds = %32, %26
  %37 = getelementptr inbounds %struct.RenderSlot, ptr %22, i32 0, i32 6
  %38 = load i32, ptr %37, align 4
  %39 = sub i32 0, %38
  store i32 %39, ptr %37, align 4
  %40 = getelementptr inbounds %struct.MapBank3Entry, ptr %6, i32 0, i32 2
  %41 = load i8, ptr %40, align 2
  %42 = xor i8 %41, 2
  store i8 %42, ptr %40, align 2
  %43 = load ptr, ptr @gRenderSlots, align 4
  br label %44

44:                                               ; preds = %26, %36, %32, %30
  %45 = phi ptr [ %17, %26 ], [ %43, %36 ], [ %17, %32 ], [ %17, %30 ]
  %46 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  %47 = add i8 %46, -1
  %48 = icmp ult i8 %47, 2
  br i1 %48, label %49, label %187

49:                                               ; preds = %44
  %50 = ptrtoint ptr %45 to i32
  %51 = add i32 %50, 1040
  %52 = inttoptr i32 %51 to ptr
  %53 = getelementptr i8, ptr %52, i32 34
  %54 = load i16, ptr %53, align 2
  %55 = getelementptr i8, ptr %52, i32 26
  %56 = load i8, ptr %55, align 1
  %57 = add i32 %20, %50
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr i8, ptr %58, i32 34
  %60 = load i16, ptr %59, align 2
  %61 = getelementptr i8, ptr %58, i32 26
  %62 = load i8, ptr %61, align 1
  %63 = add i8 %56, 16
  %64 = trunc i16 %54 to i8
  %65 = add i8 %64, -48
  %66 = add i8 %56, 40
  %67 = add i8 %64, -8
  %68 = add i8 %62, 2
  %69 = trunc i16 %60 to i8
  %70 = add i8 %69, 2
  %71 = add i8 %62, 6
  %72 = add i8 %69, 6
  %73 = icmp ult i8 %63, %68
  %74 = icmp ugt i8 %66, %68
  %75 = and i1 %73, %74
  %76 = icmp ult i8 %63, %71
  %77 = icmp ugt i8 %66, %71
  %78 = and i1 %76, %77
  %79 = or i1 %75, %78
  %80 = icmp ult i8 %65, %70
  %81 = icmp ugt i8 %67, %70
  %82 = and i1 %80, %81
  %83 = icmp ult i8 %65, %72
  %84 = icmp ugt i8 %67, %72
  %85 = and i1 %83, %84
  %86 = or i1 %82, %85
  %87 = and i1 %79, %86
  br i1 %87, label %88, label %187

88:                                               ; preds = %49
  store i8 0, ptr %6, align 2
  %89 = getelementptr inbounds %struct.MapBank3Entry, ptr %6, i32 0, i32 1
  %90 = load i8, ptr %89, align 1
  switch i8 %90, label %180 [
    i8 1, label %91
    i8 2, label %111
    i8 3, label %133
    i8 4, label %157
  ]

91:                                               ; preds = %88
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 315) #13
  %92 = trunc i32 %3 to i8
  %93 = add i8 %92, 26
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %93, i8 noundef zeroext 0) #13
  %94 = load i16, ptr @gMapBank3Score, align 2
  %95 = add i16 %94, 50
  store i16 %95, ptr @gMapBank3Score, align 2
  %96 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 225), align 2
  %97 = freeze i16 %96
  %98 = udiv i16 %97, 1000
  tail call void asm sideeffect "", "{r1}"(i32 28997) #14, !srcloc !8
  %99 = add nuw nsw i16 %98, 28997
  store i16 %99, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 3), align 2
  %100 = mul i16 %98, 1000
  %101 = sub i16 %97, %100
  %102 = udiv i16 %101, 100
  %103 = add nuw nsw i16 %102, 28997
  store i16 %103, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 6), align 2
  %104 = urem i16 %96, 100
  %105 = trunc i16 %104 to i8
  %106 = udiv i8 %105, 10
  %107 = zext nneg i8 %106 to i16
  %108 = add nuw nsw i16 %107, 28997
  store i16 %108, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 9), align 2
  %109 = urem i16 %96, 10
  %110 = add nuw nsw i16 %109, 28997
  store i16 %110, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 12), align 2
  br label %178

111:                                              ; preds = %88
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 315) #13
  %112 = trunc i32 %3 to i8
  %113 = add i8 %112, 26
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %113, i8 noundef zeroext 0) #13
  %114 = load i16, ptr @gMapBank3Score, align 2
  %115 = add i16 %114, 30
  store i16 %115, ptr @gMapBank3Score, align 2
  %116 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 225), align 2
  %117 = freeze i16 %116
  %118 = udiv i16 %117, 1000
  tail call void asm sideeffect "", "{r1}"(i32 28997) #14, !srcloc !8
  %119 = add nuw nsw i16 %118, 28997
  store i16 %119, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 3), align 2
  %120 = mul i16 %118, 1000
  %121 = sub i16 %117, %120
  %122 = udiv i16 %121, 100
  %123 = add nuw nsw i16 %122, 28997
  store i16 %123, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 6), align 2
  %124 = urem i16 %116, 100
  %125 = trunc i16 %124 to i8
  %126 = udiv i8 %125, 10
  %127 = zext nneg i8 %126 to i16
  %128 = add nuw nsw i16 %127, 28997
  store i16 %128, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 9), align 2
  %129 = urem i16 %116, 10
  %130 = add nuw nsw i16 %129, 28997
  store i16 %130, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 12), align 2
  tail call void asm sideeffect "", "{r3}"(i32 480) #14, !srcloc !9
  %131 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 480), align 1
  %132 = add i8 %131, 1
  store i8 %132, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 480), align 1
  br label %178

133:                                              ; preds = %88
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 315) #13
  %134 = trunc i32 %3 to i8
  %135 = add i8 %134, 26
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %135, i8 noundef zeroext 0) #13
  %136 = load i16, ptr @gMapBank3Score, align 2
  %137 = add i16 %136, 10
  store i16 %137, ptr @gMapBank3Score, align 2
  %138 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 225), align 2
  %139 = freeze i16 %138
  %140 = udiv i16 %139, 1000
  tail call void asm sideeffect "", "{r1}"(i32 28997) #14, !srcloc !8
  %141 = add nuw nsw i16 %140, 28997
  store i16 %141, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 3), align 2
  %142 = mul i16 %140, 1000
  %143 = sub i16 %139, %142
  %144 = udiv i16 %143, 100
  %145 = add nuw nsw i16 %144, 28997
  store i16 %145, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 6), align 2
  %146 = urem i16 %138, 100
  %147 = trunc i16 %146 to i8
  %148 = udiv i8 %147, 10
  %149 = zext nneg i8 %148 to i16
  %150 = add nuw nsw i16 %149, 28997
  store i16 %150, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 9), align 2
  %151 = urem i16 %138, 10
  %152 = add nuw nsw i16 %151, 28997
  store i16 %152, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 12), align 2
  tail call void asm sideeffect "", "{r3}"(i32 480) #14, !srcloc !10
  %153 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 480), align 1
  %154 = add i8 %153, 2
  store i8 %154, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 480), align 1
  %155 = load i8, ptr @gMapBank3Counter1E1, align 1
  %156 = add i8 %155, 1
  br label %178

157:                                              ; preds = %88
  %158 = trunc i32 %3 to i8
  %159 = add i8 %158, 26
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %159, ptr noundef nonnull inttoptr (i32 143558090 to ptr)) #13
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %159, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #13
  tail call void asm sideeffect "", "{r2}"(i32 -600) #14, !srcloc !11
  tail call void asm sideeffect "", "{r0}"(i32 -600) #14, !srcloc !12
  %160 = load i16, ptr @gMapBank3FrameCount, align 2
  %161 = add i16 %160, -600
  store i16 %161, ptr @gMapBank3FrameCount, align 2
  %162 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 224), align 2
  %163 = zext i16 %162 to i32
  %164 = sub nsw i32 3600, %163
  %165 = sdiv i32 %164, 60
  %166 = trunc i32 %165 to i16
  %167 = freeze i16 %166
  %168 = udiv i16 %167, 60
  tail call void asm sideeffect "", "{r1}"(i32 28997) #14, !srcloc !4
  %169 = add nuw nsw i16 %168, 28997
  store i16 %169, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 3), align 2
  %170 = mul i16 %168, 60
  %171 = sub i16 %167, %170
  %172 = trunc i16 %171 to i8
  %173 = udiv i8 %172, 10
  %174 = zext nneg i8 %173 to i16
  %175 = add nuw nsw i16 %174, 28997
  store i16 %175, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 9), align 2
  %176 = urem i16 %166, 10
  %177 = add nuw nsw i16 %176, 28997
  store i16 %177, ptr getelementptr ([0 x i16], ptr @gMapBank3TimeTiles, i32 0, i32 12), align 2
  br label %178

178:                                              ; preds = %91, %111, %133, %157
  %179 = phi i8 [ 0, %157 ], [ %156, %133 ], [ 0, %111 ], [ 0, %91 ]
  store i8 %179, ptr @gMapBank3Counter1E1, align 1
  br label %180

180:                                              ; preds = %178, %88
  tail call void asm sideeffect "", "{r0},{r2}"(ptr nonnull @gRasterScriptControlBytes, i32 417) #14, !srcloc !13
  store i8 3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143332141 to ptr)) #13
  %181 = load i8, ptr %89, align 1
  %182 = zext i8 %181 to i32
  %183 = add nsw i32 %182, -1
  %184 = getelementptr [0 x ptr], ptr @gMapBank3FeedbackAnimations, i32 0, i32 %183
  %185 = load ptr, ptr %184, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %185) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143558236 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143360794 to ptr)) #13
  %186 = load ptr, ptr @gRenderSlots, align 4
  br label %187

187:                                              ; preds = %49, %180, %44
  %188 = phi ptr [ %45, %49 ], [ %186, %180 ], [ %45, %44 ]
  %189 = ptrtoint ptr %188 to i32
  %190 = add i32 %20, %189
  %191 = inttoptr i32 %190 to ptr
  %192 = getelementptr inbounds %struct.RenderSlot, ptr %191, i32 0, i32 5
  %193 = load i32, ptr %192, align 4
  %194 = icmp sgt i32 %193, 10485760
  br i1 %194, label %195, label %198

195:                                              ; preds = %187
  %196 = trunc i32 %3 to i8
  %197 = add i8 %196, 26
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %197, i8 noundef zeroext 0) #13
  store i8 0, ptr %6, align 2
  br label %198

198:                                              ; preds = %187, %195, %2
  %199 = add nuw nsw i32 %3, 1
  %200 = icmp eq i32 %199, 10
  br i1 %200, label %201, label %2

201:                                              ; preds = %198
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @MapBank3BoxEndpointsOverlap(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i8 noundef zeroext %6, i8 noundef zeroext %7) local_unnamed_addr #3 {
  %9 = icmp ult i8 %0, %4
  %10 = icmp ugt i8 %2, %4
  %11 = and i1 %9, %10
  %12 = icmp ult i8 %0, %6
  %13 = icmp ugt i8 %2, %6
  %14 = and i1 %12, %13
  %15 = or i1 %11, %14
  %16 = icmp ult i8 %1, %5
  %17 = icmp ugt i8 %3, %5
  %18 = and i1 %16, %17
  %19 = icmp ult i8 %1, %7
  %20 = icmp ugt i8 %3, %7
  %21 = and i1 %19, %20
  %22 = or i1 %18, %21
  %23 = and i1 %15, %22
  %24 = zext i1 %23 to i32
  ret i32 %24
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshMapBank3ScoreTiles(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 225), align 2
  %3 = freeze i16 %2
  %4 = udiv i16 %3, 1000
  tail call void asm sideeffect "", "{r1}"(i32 28997) #14, !srcloc !8
  %5 = add nuw nsw i16 %4, 28997
  store i16 %5, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 3), align 2
  %6 = mul i16 %4, 1000
  %7 = sub i16 %3, %6
  %8 = udiv i16 %7, 100
  %9 = add nuw nsw i16 %8, 28997
  store i16 %9, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 6), align 2
  %10 = urem i16 %2, 100
  %11 = trunc i16 %10 to i8
  %12 = udiv i8 %11, 10
  %13 = zext nneg i8 %12 to i16
  %14 = add nuw nsw i16 %13, 28997
  store i16 %14, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 9), align 2
  %15 = urem i16 %2, 10
  %16 = add nuw nsw i16 %15, 28997
  store i16 %16, ptr getelementptr ([0 x i16], ptr @gMapBank3ScoreTiles, i32 0, i32 12), align 2
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshMapBank3RecordTiles(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 66), align 2
  %3 = icmp eq i16 %2, 0
  %4 = select i1 %3, i16 860, i16 %2
  %5 = freeze i16 %4
  %6 = udiv i16 %5, 1000
  tail call void asm sideeffect "", "{r1}"(i32 33093) #14, !srcloc !14
  %7 = add nuw nsw i16 %6, -32443
  store i16 %7, ptr getelementptr ([0 x i16], ptr @gMapBank3RecordTiles, i32 0, i32 3), align 2
  %8 = mul i16 %6, 1000
  %9 = sub i16 %5, %8
  %10 = udiv i16 %9, 100
  %11 = add nuw nsw i16 %10, -32443
  store i16 %11, ptr getelementptr ([0 x i16], ptr @gMapBank3RecordTiles, i32 0, i32 6), align 2
  %12 = urem i16 %4, 100
  %13 = trunc i16 %12 to i8
  %14 = udiv i8 %13, 10
  %15 = zext nneg i8 %14 to i16
  %16 = add nuw nsw i16 %15, -32443
  store i16 %16, ptr getelementptr ([0 x i16], ptr @gMapBank3RecordTiles, i32 0, i32 9), align 2
  %17 = urem i16 %4, 10
  %18 = add nuw nsw i16 %17, -32443
  store i16 %18, ptr getelementptr ([0 x i16], ptr @gMapBank3RecordTiles, i32 0, i32 12), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3RecordMessages(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @AllocateTaskContext(i32 noundef 10) #13
  %3 = tail call ptr asm "", "=r,0"(ptr nonnull @gTaskTextPairContexts) #16, !srcloc !15
  store ptr %2, ptr %3, align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %2, i8 noundef zeroext 10, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 100679712, i32 noundef 100709888) #13
  %4 = tail call arm_apcscc ptr @AllocateTaskContext(i32 noundef 10) #13
  %5 = getelementptr ptr, ptr %3, i32 1
  store ptr %4, ptr %5, align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %4, i8 noundef zeroext 10, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 100680352, i32 noundef 100709888) #13
  %6 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 66), align 2
  %7 = icmp eq i16 %6, 0
  %8 = load ptr, ptr %3, align 4
  br i1 %7, label %9, label %27

9:                                                ; preds = %1
  %10 = tail call ptr asm "", "=r,0"(ptr nonnull @gDefaultTaskContextScript) #16, !srcloc !16
  %11 = icmp eq ptr %10, @gMapBank3RecordPromptFirstTexts
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr ptr, ptr @gMapBank3RecordPromptFirstTexts, i32 %14
  %16 = load ptr, ptr %15, align 4
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi ptr [ %16, %12 ], [ @gMapBank3RecordPromptFirstTexts, %9 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %8, ptr noundef %18) #13
  %19 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 1), align 4
  br i1 icmp ne (ptr @gMapBank3RecordPromptSecondTexts, ptr @gDefaultTaskContextScript), label %20, label %25

20:                                               ; preds = %17
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr ptr, ptr @gMapBank3RecordPromptSecondTexts, i32 %22
  %24 = load ptr, ptr %23, align 4
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi ptr [ %24, %20 ], [ @gMapBank3RecordPromptSecondTexts, %17 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %19, ptr noundef %26) #13
  br label %29

27:                                               ; preds = %1
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %8, ptr noundef nonnull @gTaskFlagsFirst) #13
  %28 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %28, ptr noundef nonnull @gTaskFlagsSecond) #13
  br label %29

29:                                               ; preds = %27, %25
  ret i32 0
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureTaskContext(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveMapBank3RecordMessages(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 1), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %2) #13
  %3 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %3) #13
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackLimitMapBank3Class6Increment(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 41), align 2
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %4 = add i16 %3, %2
  %5 = icmp ugt i16 %4, 50
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = icmp ult i16 %2, 51
  %8 = sub nuw nsw i16 50, %2
  %9 = add i16 %4, -50
  %10 = select i1 %7, i16 %8, i16 0
  %11 = select i1 %7, i16 %9, i16 %3
  store i16 %10, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %12 = mul i16 %11, 10
  store i16 %12, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 41), align 2
  br label %13

13:                                               ; preds = %6, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank3Callback4CB60() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Slot16Preset4CB64() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143463086 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot15Linked16() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143463372 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530200 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143463372, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Slot16Indicator4CBCC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143463470 to ptr)) #13
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143463470, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Slot16Indicator4CBF4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143463482 to ptr)) #13
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143463482, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot17_4CC1C() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143434765 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot17_4CC4C() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143434688 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot17_4CC7C() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143434701 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3Slot17_4CCAC() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143434757 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeMapBank3PairBoard(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 421) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 423) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 424) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 425) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 426) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 427) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 428) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 429) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 430) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 431) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 432) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 433) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 434) to ptr), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 484), align 1
  tail call void asm sideeffect "", "{r1}"(i32 421) #14, !srcloc !17
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  tail call void asm sideeffect "", "{r3}"(i32 -421) #14, !srcloc !18
  br label %6

6:                                                ; preds = %6, %5
  %7 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %8 = and i16 %7, 255
  %9 = zext nneg i16 %8 to i32
  %10 = add i32 %9, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %6

14:                                               ; preds = %6
  store i8 1, ptr %11, align 1
  br label %15

15:                                               ; preds = %15, %14
  %16 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %17 = and i16 %16, 255
  %18 = zext nneg i16 %17 to i32
  %19 = add i32 %18, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %15

23:                                               ; preds = %15
  store i8 1, ptr %20, align 1
  br label %24

24:                                               ; preds = %23, %1
  tail call void asm sideeffect "", "{r1}"(i32 421) #14, !srcloc !17
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %26 = and i8 %25, 2
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  tail call void asm sideeffect "", "{r3}"(i32 -421) #14, !srcloc !18
  br label %29

29:                                               ; preds = %29, %28
  %30 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %31 = and i16 %30, 255
  %32 = zext nneg i16 %31 to i32
  %33 = add i32 %32, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %34 = inttoptr i32 %33 to ptr
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %29

37:                                               ; preds = %29
  store i8 2, ptr %34, align 1
  br label %38

38:                                               ; preds = %38, %37
  %39 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %40 = and i16 %39, 255
  %41 = zext nneg i16 %40 to i32
  %42 = add i32 %41, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %43 = inttoptr i32 %42 to ptr
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %38

46:                                               ; preds = %38
  store i8 2, ptr %43, align 1
  br label %47

47:                                               ; preds = %46, %24
  tail call void asm sideeffect "", "{r1}"(i32 421) #14, !srcloc !17
  %48 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %49 = and i8 %48, 4
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %47
  tail call void asm sideeffect "", "{r3}"(i32 -421) #14, !srcloc !18
  br label %52

52:                                               ; preds = %52, %51
  %53 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %54 = and i16 %53, 255
  %55 = zext nneg i16 %54 to i32
  %56 = add i32 %55, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %57 = inttoptr i32 %56 to ptr
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %52

60:                                               ; preds = %52
  store i8 3, ptr %57, align 1
  br label %61

61:                                               ; preds = %61, %60
  %62 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %63 = and i16 %62, 255
  %64 = zext nneg i16 %63 to i32
  %65 = add i32 %64, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %66 = inttoptr i32 %65 to ptr
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %61

69:                                               ; preds = %61
  store i8 3, ptr %66, align 1
  br label %70

70:                                               ; preds = %69, %47
  tail call void asm sideeffect "", "{r1}"(i32 421) #14, !srcloc !17
  %71 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %72 = and i8 %71, 8
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %74, label %93

74:                                               ; preds = %70
  tail call void asm sideeffect "", "{r3}"(i32 -421) #14, !srcloc !18
  br label %75

75:                                               ; preds = %75, %74
  %76 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %77 = and i16 %76, 255
  %78 = zext nneg i16 %77 to i32
  %79 = add i32 %78, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %80 = inttoptr i32 %79 to ptr
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %75

83:                                               ; preds = %75
  store i8 4, ptr %80, align 1
  br label %84

84:                                               ; preds = %84, %83
  %85 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %86 = and i16 %85, 255
  %87 = zext nneg i16 %86 to i32
  %88 = add i32 %87, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422)
  %89 = inttoptr i32 %88 to ptr
  %90 = load i8, ptr %89, align 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %92, label %84

92:                                               ; preds = %84
  store i8 4, ptr %89, align 1
  br label %93

93:                                               ; preds = %92, %70
  %94 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 422), align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %121, label %96

96:                                               ; preds = %93
  %97 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 423) to ptr), align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %121, label %99

99:                                               ; preds = %96
  %100 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 424) to ptr), align 1
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %121, label %102

102:                                              ; preds = %99
  %103 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 425) to ptr), align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %121, label %105

105:                                              ; preds = %102
  %106 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 426) to ptr), align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %121, label %108

108:                                              ; preds = %105
  %109 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 427) to ptr), align 1
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %121, label %111

111:                                              ; preds = %108
  %112 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 428) to ptr), align 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %121, label %114

114:                                              ; preds = %111
  %115 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 429) to ptr), align 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %114
  %118 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 430) to ptr), align 1
  %119 = icmp eq i8 %118, 0
  %120 = select i1 %119, i32 430, i32 431
  br label %121

121:                                              ; preds = %117, %96, %99, %102, %105, %108, %111, %114, %93
  %122 = phi i32 [ 422, %93 ], [ 423, %96 ], [ 424, %99 ], [ 425, %102 ], [ 426, %105 ], [ 427, %108 ], [ 428, %111 ], [ 429, %114 ], [ %120, %117 ]
  %123 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %124 = and i8 %123, 16
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 2) #13
  %128 = trunc i16 %127 to i8
  %129 = add i8 %128, 5
  br label %130

130:                                              ; preds = %121, %126
  %131 = phi i8 [ %129, %126 ], [ 6, %121 ]
  %132 = inttoptr i32 %122 to ptr
  %133 = getelementptr i8, ptr %132, i32 ptrtoint (ptr @gRasterScriptControlBytes to i32)
  store i8 %131, ptr %133, align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectMapBank3PairBoardPosition(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 434), align 1
  br label %3

3:                                                ; preds = %18, %1
  %4 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %5 = and i16 %4, 255
  %6 = zext nneg i16 %5 to i32
  %7 = add i32 %6, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 421)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %9, -5
  %11 = icmp ult i8 %10, -4
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 433), align 1
  %14 = trunc i16 %4 to i8
  %15 = icmp eq i8 %13, %14
  %16 = icmp eq i8 %2, %14
  %17 = select i1 %15, i1 true, i1 %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %12, %19, %3
  br label %3

19:                                               ; preds = %12
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 484), align 1
  %21 = icmp eq i8 %9, %20
  br i1 %21, label %18, label %22

22:                                               ; preds = %19
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 434), align 1
  %23 = add nsw i32 %6, -1
  %24 = getelementptr [0 x [2 x i16]], ptr @gMapBank3PairBoardCoordinates, i32 0, i32 %23
  %25 = load i16, ptr %24, align 2
  store i16 %25, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %26 = getelementptr [0 x [2 x i16]], ptr @gMapBank3PairBoardCoordinates, i32 0, i32 %23, i32 1
  %27 = load i16, ptr %26, align 2
  store i16 %27, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 37), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadMapBank3PairBoardKind(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  %4 = select i1 %3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 433), ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 434)
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = add i32 %6, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 421)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  tail call void asm sideeffect "", "{r2}"(ptr nonnull @gRasterScriptControlBytes) #14, !srcloc !19
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCompareMapBank3PairBoardKinds(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 433), align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 434), align 1
  %5 = zext i8 %4 to i32
  %6 = add i32 %3, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 421)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = add i32 %5, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 421)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %12) #14, !srcloc !20
  %13 = icmp eq i8 %8, %11
  %14 = icmp eq i8 %8, 5
  %15 = or i1 %14, %13
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 7), align 1
  %18 = add i8 %17, 1
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 7), align 1
  br i1 %14, label %19, label %20

19:                                               ; preds = %16
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 484), align 1
  br label %20

20:                                               ; preds = %1, %16, %19
  %21 = phi i8 [ 1, %19 ], [ 1, %16 ], [ 2, %1 ]
  store i8 %21, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  tail call void asm sideeffect "", "{r2}"(ptr nonnull @gRasterScriptControlBytes) #14, !srcloc !21
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveMapBank3PairBoardPair(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r0}"(i32 433) #14, !srcloc !22
  %2 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 433) to ptr), align 1
  %3 = zext i8 %2 to i32
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 421)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = add nsw i32 %7, -1
  %9 = shl nuw i32 1, %8
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %9, %11
  %13 = trunc i32 %12 to i8
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %14 = icmp eq i8 %6, 5
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 434), align 1
  %16 = zext i8 %15 to i32
  %17 = add i32 %16, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 421)
  %18 = inttoptr i32 %17 to ptr
  br i1 %14, label %19, label %26

19:                                               ; preds = %1
  %20 = load i8, ptr %18, align 1
  %21 = zext i8 %20 to i32
  %22 = add nsw i32 %21, -1
  %23 = shl nuw i32 1, %22
  %24 = or i32 %23, %12
  %25 = trunc i32 %24 to i8
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  br label %26

26:                                               ; preds = %1, %19
  %27 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 433) to ptr), align 1
  %28 = zext i8 %27 to i32
  %29 = add i32 %28, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 421)
  %30 = inttoptr i32 %29 to ptr
  store i8 -1, ptr %30, align 1
  store i8 -1, ptr %18, align 1
  %31 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 422) to ptr), align 1
  %32 = icmp eq i8 %31, -1
  %33 = zext i1 %32 to i32
  %34 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 423) to ptr), align 1
  %35 = icmp eq i8 %34, -1
  %36 = select i1 %32, i32 2, i32 1
  %37 = select i1 %35, i32 %36, i32 %33
  %38 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 424) to ptr), align 1
  %39 = icmp eq i8 %38, -1
  %40 = zext i1 %39 to i32
  %41 = add nuw nsw i32 %37, %40
  %42 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 425) to ptr), align 1
  %43 = icmp eq i8 %42, -1
  %44 = zext i1 %43 to i32
  %45 = add nuw nsw i32 %41, %44
  %46 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 426) to ptr), align 1
  %47 = icmp eq i8 %46, -1
  %48 = zext i1 %47 to i32
  %49 = add nuw nsw i32 %45, %48
  %50 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 427) to ptr), align 1
  %51 = icmp eq i8 %50, -1
  %52 = zext i1 %51 to i32
  %53 = add nuw nsw i32 %49, %52
  %54 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 428) to ptr), align 1
  %55 = icmp eq i8 %54, -1
  %56 = zext i1 %55 to i32
  %57 = add nuw nsw i32 %53, %56
  %58 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 429) to ptr), align 1
  %59 = icmp eq i8 %58, -1
  %60 = zext i1 %59 to i32
  %61 = add nuw nsw i32 %57, %60
  %62 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 430) to ptr), align 1
  %63 = icmp eq i8 %62, -1
  %64 = add nuw nsw i32 %61, 1
  %65 = and i32 %64, 248
  %66 = select i1 %63, i32 %65, i32 %61
  %67 = tail call ptr asm "", "={r4},{r4}"(ptr nonnull @gRasterScriptControlBytes) #16, !srcloc !23
  %68 = icmp ugt i32 %66, 7
  %69 = zext i1 %68 to i8
  %70 = getelementptr i8, ptr %67, i32 96
  store i8 %69, ptr %70, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackIncrementMapBank3PairBoardAttempts(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 431), align 1
  %3 = add i8 %2, 1
  store i8 %3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 431), align 1
  %4 = icmp ugt i8 %3, 3
  %5 = zext i1 %4 to i8
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackTakeMapBank3PairBoardKind(ptr nocapture noundef readnone %0) local_unnamed_addr #5 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %3 = and i8 %2, 15
  %4 = zext nneg i8 %3 to i32
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %17, %14, %11, %1
  %8 = phi i32 [ 1, %1 ], [ 2, %11 ], [ 3, %14 ], [ 4, %17 ]
  %9 = phi i8 [ -2, %1 ], [ -3, %11 ], [ -5, %14 ], [ -9, %17 ]
  %10 = and i8 %2, %9
  store i8 %10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  br label %19

11:                                               ; preds = %1
  %12 = and i32 %4, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %7

14:                                               ; preds = %11
  %15 = and i32 %4, 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %7

17:                                               ; preds = %14
  %18 = icmp eq i8 %3, 0
  br i1 %18, label %19, label %7

19:                                               ; preds = %17, %7
  %20 = phi i32 [ %8, %7 ], [ 5, %17 ]
  %21 = icmp ugt i32 %20, 4
  %22 = trunc i32 %20 to i8
  %23 = select i1 %21, i8 0, i8 %22
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackChooseMapBank3FourVariants(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 8) #13
  %3 = and i16 %2, 255
  %4 = zext nneg i16 %3 to i32
  %5 = shl nuw i32 1, %4
  %6 = trunc i16 %2 to i8
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 476) to ptr), align 1
  %7 = and i32 %5, 255
  br label %8

8:                                                ; preds = %8, %1
  %9 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 8) #13
  %10 = and i16 %9, 255
  %11 = zext nneg i16 %10 to i32
  %12 = shl nuw i32 1, %11
  %13 = and i32 %12, %7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %8

15:                                               ; preds = %8
  %16 = trunc i16 %9 to i8
  store i8 %16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 477) to ptr), align 1
  %17 = or i32 %12, %5
  %18 = and i32 %17, 255
  br label %19

19:                                               ; preds = %19, %15
  %20 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 8) #13
  %21 = and i16 %20, 255
  %22 = zext nneg i16 %21 to i32
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %18
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %19

26:                                               ; preds = %19
  %27 = trunc i16 %20 to i8
  store i8 %27, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 478) to ptr), align 1
  %28 = or i32 %23, %17
  %29 = and i32 %28, 255
  br label %30

30:                                               ; preds = %30, %26
  %31 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 8) #13
  %32 = and i16 %31, 255
  %33 = zext nneg i16 %32 to i32
  %34 = shl nuw i32 1, %33
  %35 = and i32 %34, %29
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %30

37:                                               ; preds = %30
  %38 = trunc i16 %31 to i8
  store i8 %38, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 479) to ptr), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackApplyMapBank3ChoiceVariant(ptr nocapture noundef readonly %0) local_unnamed_addr #6 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 476)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 1
  %9 = add i32 %8, ptrtoint (ptr @gMapBank3ChoiceBytePairs to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  %12 = add i32 %8, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3ChoiceBytePairs, i32 0, i32 1) to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr @gRasterScriptControlBytes, align 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @HideMapBank3NeighborSlots(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #13
  %3 = add i8 %0, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3PairPreset4D0C4(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143284060 to ptr)) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143300299 to ptr)) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143284060 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D0FC(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524118 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D118(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524074 to ptr)) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524074 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D140(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524062 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D15C(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523916 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D178(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523973 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3Slot24_4D194(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 208, i32 noundef 156, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143558665 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackHideMapBank3Slot24(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D1CC(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523835 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D1E8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523985 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D204(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523997 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3Slot15_4D220(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528768) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524009 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529721 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524009 to ptr)) #13
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3Slot24_4D280(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 224, i32 noundef 104, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143558665 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D2A8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524266 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3Slot15_4D2C4(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523405 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143523428 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank3Slot16Preset4D318(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523856 to ptr)) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523856 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3SlotsExcept3(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 3, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 6, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3SlotsExcept4(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 4, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 6, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3SlotsExcept5(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 5, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 6, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank3SlotsExcept6(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 6, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeMapBank3ChainEntries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 445), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 436), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 450), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  tail call void asm sideeffect "", "{r1}"(i32 435) #14, !srcloc !24
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  store i8 4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 438), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 441), align 1
  tail call void asm sideeffect "", "{r1}"(i32 441) #14, !srcloc !25
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 448), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 447), align 1
  tail call void asm sideeffect "", "r,{r3}"(i32 447, ptr nonnull @gRasterScriptControlBytes) #14, !srcloc !26
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 253, i32 noundef 0) #13
  tail call arm_apcscc void @InitializeMapBank3ChainFlags() #15
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 143560746) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 2, i8 noundef zeroext 1, i32 noundef 143560792) #13
  store i8 0, ptr @gMapBank3ChainFlags, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 6), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 7), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 8), align 1
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 6, i32 noundef 132, ptr noundef nonnull inttoptr (i32 143560483 to ptr)) #13
  br label %2

2:                                                ; preds = %71, %1
  %3 = phi i32 [ %85, %71 ], [ 0, %1 ]
  %4 = tail call arm_apcscc i32 @PickMapBank3ChainKind() #15, !range !27
  %5 = trunc i32 %4 to i8
  %6 = shl nuw nsw i32 %3, 3
  %7 = add i32 %6, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %8 = inttoptr i32 %7 to ptr
  store i8 %5, ptr %8, align 1
  %9 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %8, i32 0, i32 1
  store i8 0, ptr %9, align 1
  %10 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %8, i32 0, i32 2
  store i8 0, ptr %10, align 1
  %11 = load i8, ptr @gMapBank3ChainTail, align 1
  %12 = icmp eq i8 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = trunc i32 %3 to i8
  br label %19

15:                                               ; preds = %2
  %16 = zext i8 %11 to i32
  %17 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %16, i32 4
  %18 = trunc i32 %3 to i8
  store i8 %18, ptr %17, align 1
  br label %19

19:                                               ; preds = %13, %15
  %20 = phi i8 [ %14, %13 ], [ %18, %15 ]
  %21 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %8, i32 0, i32 3
  store i8 %11, ptr %21, align 1
  %22 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %8, i32 0, i32 4
  store i8 -1, ptr %22, align 1
  store i8 %20, ptr @gMapBank3ChainTail, align 1
  switch i8 %5, label %27 [
    i8 0, label %23
    i8 10, label %35
  ]

23:                                               ; preds = %19
  %24 = mul nuw nsw i32 %3, 24
  %25 = trunc i32 %3 to i8
  %26 = add i8 %25, 22
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %24, i32 noundef 0, i32 noundef 6, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  br label %71

27:                                               ; preds = %19
  %28 = mul nuw nsw i32 %3, 24
  %29 = load i8, ptr %8, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr [0 x ptr], ptr @gMapBank3ChainKindAnimations, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  %33 = trunc i32 %3 to i8
  %34 = add i8 %33, 22
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %34, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %28, i32 noundef 0, i32 noundef 6, ptr noundef %32) #13
  br label %71

35:                                               ; preds = %19, %35
  %36 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %37 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %38 = and i16 %37, 255
  %39 = and i16 %36, 255
  %40 = icmp eq i16 %39, %38
  br i1 %40, label %35, label %41

41:                                               ; preds = %35
  %42 = trunc i16 %36 to i8
  %43 = trunc i16 %37 to i8
  %44 = icmp ult i16 %39, %38
  %45 = select i1 %44, i8 %42, i8 %43
  %46 = select i1 %44, i8 %43, i8 %42
  store i8 %45, ptr %9, align 1
  store i8 %46, ptr %10, align 1
  tail call void asm sideeffect "", "{r3}"(i32 %6) #14, !srcloc !28
  %47 = load i8, ptr %9, align 1
  %48 = icmp ugt i8 %47, 1
  br i1 %48, label %49, label %59

49:                                               ; preds = %41
  %50 = mul i8 %47, 7
  %51 = zext i8 %47 to i9
  %52 = add nsw i9 %51, -2
  %53 = add nsw i9 %51, -3
  %54 = mul i9 %52, %53
  %55 = lshr i9 %54, 1
  %56 = trunc i9 %55 to i8
  %57 = add i8 %50, -6
  %58 = sub i8 %57, %56
  br label %59

59:                                               ; preds = %41, %49
  %60 = phi i8 [ 0, %41 ], [ %58, %49 ]
  %61 = xor i8 %47, -1
  %62 = load i8, ptr %10, align 1
  %63 = add i8 %60, %61
  %64 = add i8 %63, %62
  %65 = zext i8 %64 to i32
  %66 = mul nuw nsw i32 %3, 24
  %67 = getelementptr [0 x ptr], ptr @gMapBank3ChainVariantAnimations, i32 0, i32 %65
  %68 = load ptr, ptr %67, align 4
  %69 = trunc i32 %3 to i8
  %70 = add i8 %69, 22
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %70, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %66, i32 noundef 0, i32 noundef 6, ptr noundef %68) #13
  br label %71

71:                                               ; preds = %27, %59, %23
  %72 = load ptr, ptr @gRenderSlots, align 4
  %73 = mul nuw nsw i32 %3, 104
  %74 = ptrtoint ptr %72 to i32
  %75 = add nuw nsw i32 %73, 2288
  %76 = add i32 %75, %74
  %77 = inttoptr i32 %76 to ptr
  %78 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainTail to i32), i32 -11) to ptr), align 1
  %79 = zext i8 %78 to i32
  %80 = getelementptr [0 x i16], ptr @gMapBank3ChainSpeeds, i32 0, i32 %79
  %81 = load i16, ptr %80, align 2
  %82 = zext i16 %81 to i32
  %83 = mul nsw i32 %82, -256
  %84 = getelementptr inbounds %struct.RenderSlot, ptr %77, i32 0, i32 6
  store i32 %83, ptr %84, align 4
  %85 = add nuw nsw i32 %3, 1
  %86 = icmp eq i32 %85, 11
  br i1 %86, label %87, label %2

87:                                               ; preds = %71
  store i8 -1, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 88) to ptr), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 88) to ptr), i32 1), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 88) to ptr), i32 2), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 88) to ptr), i32 3), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 88) to ptr), i32 4), align 1
  %88 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %89 = icmp eq i8 %88, 11
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void asm sideeffect "", "r"(i32 -1) #14, !srcloc !29
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  br label %91

91:                                               ; preds = %87, %90
  store i8 -1, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 96) to ptr), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 96) to ptr), i32 1), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 96) to ptr), i32 2), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 96) to ptr), i32 3), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 96) to ptr), i32 4), align 1
  %92 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %93 = icmp eq i8 %92, 12
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  tail call void asm sideeffect "", "r"(i32 -1) #14, !srcloc !29
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  br label %95

95:                                               ; preds = %94, %91
  store i8 -1, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 104) to ptr), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 104) to ptr), i32 1), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 104) to ptr), i32 2), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 104) to ptr), i32 3), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 104) to ptr), i32 4), align 1
  %96 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %97 = icmp eq i8 %96, 13
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  tail call void asm sideeffect "", "r"(i32 -1) #14, !srcloc !29
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  br label %99

99:                                               ; preds = %98, %95
  store i8 -1, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 112) to ptr), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 112) to ptr), i32 1), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 112) to ptr), i32 2), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 112) to ptr), i32 3), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 112) to ptr), i32 4), align 1
  %100 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %101 = icmp eq i8 %100, 14
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  tail call void asm sideeffect "", "r"(i32 -1) #14, !srcloc !29
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  br label %103

103:                                              ; preds = %102, %99
  store i8 -1, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 120) to ptr), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 120) to ptr), i32 1), align 1
  store i8 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 120) to ptr), i32 2), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 120) to ptr), i32 3), align 1
  store i8 -1, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainEntries to i32), i32 120) to ptr), i32 4), align 1
  %104 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %105 = icmp eq i8 %104, 15
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  tail call void asm sideeffect "", "r"(i32 -1) #14, !srcloc !29
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  br label %107

107:                                              ; preds = %103, %106
  %108 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 438), align 1
  %109 = icmp ult i8 %108, 10
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = zext nneg i8 %108 to i32
  %112 = getelementptr [0 x ptr], ptr @gMapBank3ChainCountAnimations, i32 0, i32 %111
  %113 = load ptr, ptr %112, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 140, i32 noundef 0, i32 noundef 106, ptr noundef %113) #13
  br label %115

114:                                              ; preds = %107
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 140, i32 noundef 0, i32 noundef 106, ptr noundef nonnull inttoptr (i32 143560224 to ptr)) #13
  br label %115

115:                                              ; preds = %110, %114
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 39, i8 noundef zeroext 0) #13
  %116 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 450), align 1
  %117 = zext i8 %116 to i32
  %118 = getelementptr [0 x ptr], ptr @gMapBank3ChainLinesAnimations, i32 0, i32 %117
  %119 = load ptr, ptr %118, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef 8, i32 noundef 0, i32 noundef 128, ptr noundef %119) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 14, i8 noundef zeroext 0) #13
  %120 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 677) #13
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 60, i16 noundef zeroext 180) #13
  %124 = trunc i16 %123 to i8
  store i8 %124, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 451), align 1
  br label %125

125:                                              ; preds = %122, %115
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeMapBank3ChainFlags() local_unnamed_addr #0 {
  %1 = alloca [9 x i8], align 1
  %2 = alloca [9 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %1) #14
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %2) #14
  %3 = call arm_apcscc ptr @memcpy(ptr noundef nonnull %2, ptr noundef nonnull @gMapBank3ChainInitialKindOrder, i32 noundef 9) #13
  %4 = load i8, ptr @gMapBank3ChainFlags, align 1
  store i8 %4, ptr %1, align 1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 1), align 1
  %6 = getelementptr inbounds [9 x i8], ptr %1, i32 0, i32 1
  store i8 %5, ptr %6, align 1
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 2), align 1
  %8 = getelementptr inbounds [9 x i8], ptr %1, i32 0, i32 2
  store i8 %7, ptr %8, align 1
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 3), align 1
  %10 = getelementptr inbounds [9 x i8], ptr %1, i32 0, i32 3
  store i8 %9, ptr %10, align 1
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 4), align 1
  %12 = getelementptr inbounds [9 x i8], ptr %1, i32 0, i32 4
  store i8 %11, ptr %12, align 1
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 5), align 1
  %14 = getelementptr inbounds [9 x i8], ptr %1, i32 0, i32 5
  store i8 %13, ptr %14, align 1
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 6), align 1
  %16 = getelementptr inbounds [9 x i8], ptr %1, i32 0, i32 6
  store i8 %15, ptr %16, align 1
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 7), align 1
  %18 = getelementptr inbounds [9 x i8], ptr %1, i32 0, i32 7
  store i8 %17, ptr %18, align 1
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 8), align 1
  %20 = getelementptr inbounds [9 x i8], ptr %1, i32 0, i32 8
  store i8 %19, ptr %20, align 1
  store i8 0, ptr @gMapBank3ChainAvailableKinds, align 1
  store i8 0, ptr @gMapBank3ChainFlags, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 3), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 4), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 5), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 6), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 6), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 7), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 7), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 8), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 8), align 1
  %21 = ptrtoint ptr %2 to i32
  br label %22

22:                                               ; preds = %0, %43
  %23 = phi i32 [ 0, %0 ], [ %44, %43 ]
  %24 = trunc i32 %23 to i16
  %25 = sub nuw nsw i16 9, %24
  %26 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext %25) #13
  %27 = and i16 %26, 255
  %28 = zext nneg i16 %27 to i32
  %29 = getelementptr i8, ptr %2, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = getelementptr [0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 %23
  store i8 %30, ptr %31, align 1
  %32 = icmp ult i16 %27, 8
  br i1 %32, label %33, label %43

33:                                               ; preds = %22, %33
  %34 = phi i32 [ %41, %33 ], [ %28, %22 ]
  %35 = add i32 %34, %21
  %36 = inttoptr i32 %35 to ptr
  %37 = add nuw nsw i32 %34, 1
  %38 = add i32 %37, %21
  %39 = inttoptr i32 %38 to ptr
  %40 = load i8, ptr %39, align 1
  store i8 %40, ptr %36, align 1
  %41 = and i32 %37, 255
  %42 = icmp ult i32 %41, 8
  br i1 %42, label %33, label %43

43:                                               ; preds = %33, %22
  %44 = add nuw nsw i32 %23, 1
  %45 = icmp eq i32 %44, 9
  br i1 %45, label %46, label %22

46:                                               ; preds = %43, %46
  %47 = phi i32 [ %49, %46 ], [ 0, %43 ]
  %48 = and i32 %47, 255
  %49 = add nuw nsw i32 %48, 1
  %50 = trunc i32 %49 to i8
  %51 = trunc i32 %47 to i8
  %52 = freeze i8 %51
  %53 = udiv i8 %52, 3
  %54 = mul i8 %53, 3
  %55 = sub i8 %52, %54
  %56 = shl nuw nsw i8 %55, 4
  %57 = add nuw nsw i8 %56, 16
  %58 = zext nneg i8 %57 to i32
  %59 = zext nneg i8 %53 to i32
  %60 = shl nuw nsw i32 %59, 4
  %61 = add nuw nsw i32 %60, 88
  %62 = getelementptr [0 x i8], ptr @gMapBank3ChainAvailableKinds, i32 0, i32 %48
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr [0 x ptr], ptr @gMapBank3ChainGridAnimations, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %50, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %58, i32 noundef 0, i32 noundef %61, ptr noundef %66) #13
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %50, i8 noundef zeroext 0) #13
  %67 = and i32 %49, 255
  %68 = icmp ult i32 %67, 9
  br i1 %68, label %46, label %69

69:                                               ; preds = %46, %109
  %70 = phi i32 [ %110, %109 ], [ 0, %46 ]
  %71 = getelementptr [9 x i8], ptr %1, i32 0, i32 %70
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %109, label %74

74:                                               ; preds = %69
  %75 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  %76 = tail call i32 asm "", "={r4}"() #16, !srcloc !30
  %77 = add i8 %72, -1
  %78 = icmp eq i8 %75, %77
  br i1 %78, label %104, label %79

79:                                               ; preds = %74
  %80 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %81 = icmp eq i8 %80, %77
  br i1 %81, label %104, label %82

82:                                               ; preds = %79
  %83 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %84 = icmp eq i8 %83, %77
  br i1 %84, label %104, label %85

85:                                               ; preds = %82
  %86 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %87 = icmp eq i8 %86, %77
  br i1 %87, label %104, label %88

88:                                               ; preds = %85
  %89 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %90 = icmp eq i8 %89, %77
  br i1 %90, label %104, label %91

91:                                               ; preds = %88
  %92 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %93 = icmp eq i8 %92, %77
  br i1 %93, label %104, label %94

94:                                               ; preds = %91
  %95 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %96 = icmp eq i8 %95, %77
  br i1 %96, label %104, label %97

97:                                               ; preds = %94
  %98 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %99 = icmp eq i8 %98, %77
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %102 = icmp eq i8 %101, %77
  %103 = select i1 %102, i32 8, i32 %76
  br label %104

104:                                              ; preds = %74, %79, %82, %85, %88, %91, %94, %97, %100
  %105 = phi i32 [ 0, %74 ], [ 1, %79 ], [ 2, %82 ], [ 3, %85 ], [ 4, %88 ], [ 5, %91 ], [ 6, %94 ], [ 7, %97 ], [ %103, %100 ]
  %106 = and i32 %105, 255
  %107 = add i32 %106, ptrtoint (ptr @gMapBank3ChainFlags to i32)
  %108 = inttoptr i32 %107 to ptr
  store i8 %72, ptr %108, align 1
  br label %109

109:                                              ; preds = %104, %69
  %110 = add nuw nsw i32 %70, 1
  %111 = icmp eq i32 %110, 9
  br i1 %111, label %112, label %69

112:                                              ; preds = %109
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %2) #14
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %1) #14
  ret void
}

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @PickMapBank3ChainKind() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %55, %0
  %2 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 16) #13
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 445), align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 7
  %6 = and i16 %2, 255
  %7 = add i32 %5, ptrtoint (ptr @gMapBank3ChainKindThresholds to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  %11 = icmp ult i16 %6, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %14 = trunc i16 %13 to i8
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 446), align 1
  %16 = icmp eq i8 %15, %14
  %17 = add i8 %14, 1
  %18 = icmp eq i8 %17, 10
  %19 = select i1 %18, i8 1, i8 %17
  %20 = select i1 %16, i8 %19, i8 %14
  br label %72

21:                                               ; preds = %1
  %22 = add i32 %5, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3ChainKindThresholds, i32 0, i32 1) to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i16
  %26 = icmp ult i16 %6, %25
  br i1 %26, label %72, label %27

27:                                               ; preds = %21
  %28 = add i32 %5, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3ChainKindThresholds, i32 0, i32 2) to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i16
  %32 = icmp ult i16 %6, %31
  br i1 %32, label %72, label %33

33:                                               ; preds = %27
  %34 = add i32 %5, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3ChainKindThresholds, i32 0, i32 3) to i32)
  %35 = inttoptr i32 %34 to ptr
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i16
  %38 = icmp ult i16 %6, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 446), align 1
  %41 = icmp eq i8 %40, 12
  %42 = select i1 %41, i8 10, i8 12
  br label %72

43:                                               ; preds = %33
  %44 = add i32 %5, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3ChainKindThresholds, i32 0, i32 4) to i32)
  %45 = inttoptr i32 %44 to ptr
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i16
  %48 = icmp ult i16 %6, %47
  br i1 %48, label %72, label %49

49:                                               ; preds = %43
  %50 = add i32 %5, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3ChainKindThresholds, i32 0, i32 5) to i32)
  %51 = inttoptr i32 %50 to ptr
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i16
  %54 = icmp ult i16 %6, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 447), align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %58, label %1

58:                                               ; preds = %55
  store i8 12, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 447), align 1
  br label %72

59:                                               ; preds = %49
  %60 = add i32 %5, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank3ChainKindThresholds, i32 0, i32 6) to i32)
  %61 = inttoptr i32 %60 to ptr
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i16
  %64 = icmp ult i16 %6, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  tail call void asm sideeffect "", "{r5}"(ptr nonnull @gRasterScriptControlBytes) #14, !srcloc !31
  switch i8 %66, label %68 [
    i8 0, label %72
    i8 2, label %67
  ]

67:                                               ; preds = %65
  br label %72

68:                                               ; preds = %65
  %69 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 2) #13
  %70 = trunc i16 %69 to i8
  %71 = add i8 %70, 15
  br label %72

72:                                               ; preds = %21, %27, %43, %12, %39, %58, %65, %67, %68, %59
  %73 = phi i8 [ 17, %59 ], [ 15, %65 ], [ %71, %68 ], [ 16, %67 ], [ 14, %58 ], [ %42, %39 ], [ %20, %12 ], [ 10, %21 ], [ 11, %27 ], [ 13, %43 ]
  store i8 %73, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 446) to ptr), align 1
  %74 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 447) to ptr), align 1
  %75 = add i8 %74, -1
  %76 = icmp ult i8 %75, -2
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i8 %75, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 447) to ptr), align 1
  br label %78

78:                                               ; preds = %77, %72
  %79 = zext i8 %73 to i32
  ret i32 %79
}

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @ChooseMapBank3ChainVariant(i32 noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %4 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %5 = and i16 %4, 255
  %6 = and i16 %3, 255
  %7 = icmp eq i16 %6, %5
  br i1 %7, label %2, label %8

8:                                                ; preds = %2
  %9 = trunc i16 %3 to i8
  %10 = trunc i16 %4 to i8
  %11 = icmp ult i16 %6, %5
  %12 = shl i32 %0, 3
  %13 = and i32 %12, 2040
  %14 = add i32 %13, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %15, i32 0, i32 2
  %18 = select i1 %11, i8 %9, i8 %10
  %19 = select i1 %11, i8 %10, i8 %9
  store i8 %18, ptr %16, align 1
  store i8 %19, ptr %17, align 1
  tail call void asm sideeffect "", "{r3}"(i32 %13) #14, !srcloc !28
  %20 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %15, i32 0, i32 1
  %21 = load i8, ptr %20, align 1
  %22 = icmp ugt i8 %21, 1
  br i1 %22, label %23, label %33

23:                                               ; preds = %8
  %24 = mul i8 %21, 7
  %25 = zext i8 %21 to i9
  %26 = add nsw i9 %25, -2
  %27 = add nsw i9 %25, -3
  %28 = mul i9 %26, %27
  %29 = lshr i9 %28, 1
  %30 = trunc i9 %29 to i8
  %31 = add i8 %24, -6
  %32 = sub i8 %31, %30
  br label %33

33:                                               ; preds = %23, %8
  %34 = phi i8 [ 0, %8 ], [ %32, %23 ]
  %35 = xor i8 %21, -1
  %36 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %15, i32 0, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = add i8 %34, %35
  %39 = add i8 %38, %37
  %40 = zext i8 %39 to i32
  ret i32 %40
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PrepareMapBank3ChainEntry(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl i32 %0, 3
  %3 = and i32 %2, 2040
  %4 = add i32 %3, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %5 = inttoptr i32 %4 to ptr
  store i8 -1, ptr %5, align 1
  %6 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 2
  store i8 0, ptr %7, align 1
  %8 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 3
  store i8 -1, ptr %8, align 1
  %9 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 4
  store i8 -1, ptr %9, align 1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %11 = trunc i32 %0 to i8
  %12 = icmp eq i8 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  tail call void asm sideeffect "", "r"(i32 -1) #14, !srcloc !29
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  br label %14

14:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3ChainCountDisplay() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 438), align 1
  %2 = icmp ult i8 %1, 10
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = zext nneg i8 %1 to i32
  %5 = getelementptr [0 x ptr], ptr @gMapBank3ChainCountAnimations, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 140, i32 noundef 0, i32 noundef 106, ptr noundef %6) #13
  br label %8

7:                                                ; preds = %0
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 140, i32 noundef 0, i32 noundef 106, ptr noundef nonnull inttoptr (i32 143560224 to ptr)) #13
  br label %8

8:                                                ; preds = %7, %3
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 39, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3ChainLinesDisplay() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 450), align 1
  %2 = zext i8 %1 to i32
  %3 = getelementptr [0 x ptr], ptr @gMapBank3ChainLinesAnimations, i32 0, i32 %2
  %4 = load ptr, ptr %3, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef 8, i32 noundef 0, i32 noundef 128, ptr noundef %4) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 14, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackHideMapBank3ChainEntries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 0, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #13
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 445), align 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 1, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 2, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 3, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 4, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 5, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 6, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 7, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 8, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 22, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 27, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 29, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 31, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 32, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 33, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 34, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 35, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 36, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 37, i8 noundef zeroext 0) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackTriggerMapBank3ChainAction(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef null) #13
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 677) #13
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %30

5:                                                ; preds = %1
  %6 = load i16, ptr @gAnimationClassValues, align 2
  %7 = and i16 %6, 1
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %40, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr @gRenderSlots, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = add i32 %11, 1040
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %9
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143332254 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 21, i8 noundef zeroext 1, i32 noundef 143528875) #13
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = add i32 %19, 1040
  %21 = inttoptr i32 %20 to ptr
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %21, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  %24 = icmp slt i32 %23, 6848513
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  %27 = icmp eq i8 %26, 2
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529669 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 11, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143560164 to ptr)) #13
  store i8 3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  br label %40

29:                                               ; preds = %17
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529669 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 11, i8 noundef zeroext 0) #13
  br label %40

30:                                               ; preds = %1
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  %32 = icmp eq i8 %31, 2
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 451), align 1
  %35 = add i8 %34, -1
  store i8 %35, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 451), align 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143361283 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 21, i8 noundef zeroext 1, i32 noundef 143528875) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529669 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 11, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143560164 to ptr)) #13
  store i8 3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  %38 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 60, i16 noundef zeroext 180) #13
  %39 = trunc i16 %38 to i8
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 451), align 1
  br label %40

40:                                               ; preds = %30, %37, %33, %9, %29, %28, %25, %5
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateMapBank3ChainKeys() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @ScriptCallbackReadPressedKeyMask(ptr noundef null) #13
  %2 = load i16, ptr @gAnimationClassValues, align 2
  %3 = and i16 %2, 2
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %51, label %5

5:                                                ; preds = %0
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 143560746) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 2, i8 noundef zeroext 1, i32 noundef 143560792) #13
  tail call arm_apcscc void @InitializeMapBank3ChainFlags() #15
  br label %6

6:                                                ; preds = %46, %5
  %7 = phi i32 [ %47, %46 ], [ 0, %5 ]
  %8 = add i32 %7, ptrtoint (ptr @gMapBank3ChainFlags to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %6
  %13 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  %14 = tail call i32 asm "", "={r4}"() #16, !srcloc !30
  %15 = add i8 %10, -1
  %16 = icmp eq i8 %13, %15
  br i1 %16, label %43, label %17

17:                                               ; preds = %12
  %18 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %19 = icmp eq i8 %18, %15
  br i1 %19, label %43, label %20

20:                                               ; preds = %17
  %21 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %22 = icmp eq i8 %21, %15
  br i1 %22, label %43, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %25 = icmp eq i8 %24, %15
  br i1 %25, label %43, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %28 = icmp eq i8 %27, %15
  br i1 %28, label %43, label %29

29:                                               ; preds = %26
  %30 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %31 = icmp eq i8 %30, %15
  br i1 %31, label %43, label %32

32:                                               ; preds = %29
  %33 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %34 = icmp eq i8 %33, %15
  br i1 %34, label %43, label %35

35:                                               ; preds = %32
  %36 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %37 = icmp eq i8 %36, %15
  br i1 %37, label %43, label %38

38:                                               ; preds = %35
  %39 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %40 = icmp eq i8 %39, %15
  %41 = and i32 %14, 255
  %42 = select i1 %40, i32 8, i32 %41
  br label %43

43:                                               ; preds = %12, %17, %20, %23, %26, %29, %32, %35, %38
  %44 = phi i32 [ 0, %12 ], [ 1, %17 ], [ 2, %20 ], [ 3, %23 ], [ 4, %26 ], [ 5, %29 ], [ 6, %32 ], [ 7, %35 ], [ %42, %38 ]
  %45 = getelementptr [0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 %44
  store i8 %10, ptr %45, align 1
  br label %46

46:                                               ; preds = %43, %6
  %47 = add nuw nsw i32 %7, 1
  %48 = icmp eq i32 %47, 9
  br i1 %48, label %49, label %6

49:                                               ; preds = %46
  tail call arm_apcscc void @RefreshMapBank3ChainLines() #15
  %50 = load i16, ptr @gAnimationClassValues, align 2
  br label %51

51:                                               ; preds = %49, %0
  %52 = phi i16 [ %50, %49 ], [ %2, %0 ]
  %53 = and i16 %52, 512
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %87, label %55

55:                                               ; preds = %51
  %56 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %57 = icmp ult i8 %56, 2
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = add nuw nsw i8 %56, 1
  store i8 %59, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  br label %60

60:                                               ; preds = %58, %55
  %61 = load ptr, ptr @gRenderSlots, align 4
  %62 = ptrtoint ptr %61 to i32
  br label %63

63:                                               ; preds = %84, %60
  %64 = phi i32 [ 0, %60 ], [ %85, %84 ]
  %65 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %64
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %84, label %68

68:                                               ; preds = %63
  %69 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  %70 = icmp eq i8 %69, 0
  %71 = mul nuw nsw i32 %64, 104
  %72 = add nuw nsw i32 %71, 2288
  %73 = add i32 %72, %62
  %74 = inttoptr i32 %73 to ptr
  %75 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %76 = zext i8 %75 to i32
  %77 = getelementptr i16, ptr @gMapBank3ChainSpeeds, i32 %76
  %78 = load i16, ptr %77, align 2
  %79 = zext i16 %78 to i32
  %80 = getelementptr inbounds %struct.RenderSlot, ptr %74, i32 0, i32 6
  %81 = mul nsw i32 %79, -256
  %82 = shl nuw nsw i32 %79, 8
  %83 = select i1 %70, i32 %81, i32 %82
  store i32 %83, ptr %80, align 4
  br label %84

84:                                               ; preds = %68, %63
  %85 = add nuw nsw i32 %64, 1
  %86 = icmp eq i32 %85, 16
  br i1 %86, label %87, label %63

87:                                               ; preds = %84, %51
  %88 = and i16 %52, 256
  %89 = icmp eq i16 %88, 0
  br i1 %89, label %122, label %90

90:                                               ; preds = %87
  %91 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %90
  %94 = add i8 %91, -1
  store i8 %94, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  br label %95

95:                                               ; preds = %93, %90
  %96 = load ptr, ptr @gRenderSlots, align 4
  %97 = ptrtoint ptr %96 to i32
  br label %98

98:                                               ; preds = %119, %95
  %99 = phi i32 [ 0, %95 ], [ %120, %119 ]
  %100 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %99
  %101 = load i8, ptr %100, align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %119, label %103

103:                                              ; preds = %98
  %104 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  %105 = icmp eq i8 %104, 0
  %106 = mul nuw nsw i32 %99, 104
  %107 = add nuw nsw i32 %106, 2288
  %108 = add i32 %107, %97
  %109 = inttoptr i32 %108 to ptr
  %110 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr i16, ptr @gMapBank3ChainSpeeds, i32 %111
  %113 = load i16, ptr %112, align 2
  %114 = zext i16 %113 to i32
  %115 = getelementptr inbounds %struct.RenderSlot, ptr %109, i32 0, i32 6
  %116 = mul nsw i32 %114, -256
  %117 = shl nuw nsw i32 %114, 8
  %118 = select i1 %105, i32 %116, i32 %117
  store i32 %118, ptr %115, align 4
  br label %119

119:                                              ; preds = %103, %98
  %120 = add nuw nsw i32 %99, 1
  %121 = icmp eq i32 %120, 16
  br i1 %121, label %122, label %98

122:                                              ; preds = %119, %87
  ret i32 0
}

; Function Attrs: nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @SetMapBank3ChainFlag(i32 noundef %0, i32 noundef %1) local_unnamed_addr #7 {
  %3 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  %4 = tail call i32 asm "", "={r4}"() #16, !srcloc !30
  %5 = trunc i32 %0 to i8
  %6 = add i8 %5, -1
  %7 = icmp eq i8 %3, %6
  br i1 %7, label %34, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %10 = icmp eq i8 %9, %6
  br i1 %10, label %34, label %11

11:                                               ; preds = %8
  %12 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %13 = icmp eq i8 %12, %6
  br i1 %13, label %34, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %16 = icmp eq i8 %15, %6
  br i1 %16, label %34, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %19 = icmp eq i8 %18, %6
  br i1 %19, label %34, label %20

20:                                               ; preds = %17
  %21 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %22 = icmp eq i8 %21, %6
  br i1 %22, label %34, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %25 = icmp eq i8 %24, %6
  br i1 %25, label %34, label %26

26:                                               ; preds = %23
  %27 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %28 = icmp eq i8 %27, %6
  br i1 %28, label %34, label %29

29:                                               ; preds = %26
  %30 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %31 = icmp eq i8 %30, %6
  %32 = and i32 %4, 255
  %33 = select i1 %31, i32 8, i32 %32
  br label %34

34:                                               ; preds = %2, %8, %11, %14, %17, %20, %23, %26, %29
  %35 = phi i32 [ 0, %2 ], [ 1, %8 ], [ 2, %11 ], [ 3, %14 ], [ 4, %17 ], [ 5, %20 ], [ 6, %23 ], [ 7, %26 ], [ %33, %29 ]
  %36 = trunc i32 %1 to i8
  %37 = getelementptr [0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 %35
  store i8 %36, ptr %37, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RefreshMapBank3ChainLines() local_unnamed_addr #0 {
  tail call arm_apcscc void @RefreshMapBank3ChainFlagGraphics() #15
  %1 = load i8, ptr @gMapBank3ChainFlags, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %12, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 1), align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 2), align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr @gMapBank3ChainLineGraphics, align 4
  %11 = ptrtoint ptr %10 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 22, i8 noundef zeroext 1, i32 noundef %11) #13
  br label %12

12:                                               ; preds = %9, %6, %3, %0
  %13 = phi i8 [ 1, %9 ], [ 0, %6 ], [ 0, %3 ], [ 0, %0 ]
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 3), align 1
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %26, label %16

16:                                               ; preds = %12
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 4), align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 5), align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = add nuw nsw i8 %13, 1
  %24 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMapBank3ChainLineGraphics, i32 0, i32 1), align 4
  %25 = ptrtoint ptr %24 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 23, i8 noundef zeroext 1, i32 noundef %25) #13
  br label %26

26:                                               ; preds = %22, %19, %16, %12
  %27 = phi i8 [ %23, %22 ], [ %13, %19 ], [ %13, %16 ], [ %13, %12 ]
  %28 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 6), align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %26
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 7), align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 8), align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = add nuw nsw i8 %27, 1
  %38 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMapBank3ChainLineGraphics, i32 0, i32 2), align 4
  %39 = ptrtoint ptr %38 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 24, i8 noundef zeroext 1, i32 noundef %39) #13
  br label %40

40:                                               ; preds = %36, %33, %30, %26
  %41 = phi i8 [ %37, %36 ], [ %27, %33 ], [ %27, %30 ], [ %27, %26 ]
  %42 = load i8, ptr @gMapBank3ChainFlags, align 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %40
  %45 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 3), align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 6), align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = add nuw nsw i8 %41, 1
  %52 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMapBank3ChainLineGraphics, i32 0, i32 3), align 4
  %53 = ptrtoint ptr %52 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 25, i8 noundef zeroext 1, i32 noundef %53) #13
  br label %54

54:                                               ; preds = %50, %47, %44, %40
  %55 = phi i8 [ %51, %50 ], [ %41, %47 ], [ %41, %44 ], [ %41, %40 ]
  %56 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 1), align 1
  %57 = icmp eq i8 %56, 0
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 4), align 1
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 7), align 1
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = add nuw nsw i8 %55, 1
  %66 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMapBank3ChainLineGraphics, i32 0, i32 4), align 4
  %67 = ptrtoint ptr %66 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 26, i8 noundef zeroext 1, i32 noundef %67) #13
  br label %68

68:                                               ; preds = %64, %61, %58, %54
  %69 = phi i8 [ %65, %64 ], [ %55, %61 ], [ %55, %58 ], [ %55, %54 ]
  %70 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 2), align 1
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %68
  %73 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 5), align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %72
  %76 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 8), align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = add nuw nsw i8 %69, 1
  %80 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMapBank3ChainLineGraphics, i32 0, i32 5), align 4
  %81 = ptrtoint ptr %80 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 27, i8 noundef zeroext 1, i32 noundef %81) #13
  br label %82

82:                                               ; preds = %78, %75, %72, %68
  %83 = phi i8 [ %79, %78 ], [ %69, %75 ], [ %69, %72 ], [ %69, %68 ]
  %84 = load i8, ptr @gMapBank3ChainFlags, align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %82
  %87 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 4), align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %86
  %90 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 8), align 1
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = add nuw nsw i8 %83, 1
  %94 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMapBank3ChainLineGraphics, i32 0, i32 6), align 4
  %95 = ptrtoint ptr %94 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 28, i8 noundef zeroext 1, i32 noundef %95) #13
  br label %96

96:                                               ; preds = %92, %89, %86, %82
  %97 = phi i8 [ %93, %92 ], [ %83, %89 ], [ %83, %86 ], [ %83, %82 ]
  %98 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 2), align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %96
  %101 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 4), align 1
  %102 = icmp eq i8 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 6), align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %103
  %107 = add nuw nsw i8 %97, 1
  %108 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMapBank3ChainLineGraphics, i32 0, i32 7), align 4
  %109 = ptrtoint ptr %108 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 29, i8 noundef zeroext 1, i32 noundef %109) #13
  br label %110

110:                                              ; preds = %106, %103, %100, %96
  %111 = phi i8 [ %107, %106 ], [ %97, %103 ], [ %97, %100 ], [ %97, %96 ]
  %112 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 450), align 1
  %113 = icmp eq i8 %112, %111
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = icmp eq i8 %111, 1
  %116 = select i1 %115, i8 1, i8 2
  store i8 %116, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 487), align 1
  br label %117

117:                                              ; preds = %114, %110
  store i8 %111, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 450), align 1
  %118 = zext nneg i8 %111 to i32
  %119 = getelementptr [0 x ptr], ptr @gMapBank3ChainLinesAnimations, i32 0, i32 %118
  %120 = load ptr, ptr %119, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef 8, i32 noundef 0, i32 noundef 128, ptr noundef %120) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 14, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackTickMapBank3Chain(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr @gMapBank3ChainRates, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 436), align 1
  %7 = add i8 %6, %5
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 436), align 1
  %8 = icmp ugt i8 %7, 95
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 436), align 1
  %10 = tail call arm_apcscc i32 @RemoveMapBank3OffscreenChainEntries() #15
  tail call arm_apcscc void @SpawnOneMapBank3ChainEntry() #15
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 436), align 1
  br label %12

12:                                               ; preds = %9, %1
  %13 = phi i8 [ %11, %9 ], [ %7, %1 ]
  %14 = urem i8 %13, 10
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 444), align 1
  %18 = add i8 %17, 1
  tail call void asm sideeffect "", "{r2}"(i32 444) #14, !srcloc !32
  %19 = icmp ugt i8 %18, 8
  %20 = select i1 %19, i8 0, i8 %18
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 444), align 1
  tail call void asm sideeffect "", "r,{r4}"(ptr nonnull @gMapBank3ChainCycleFirstTiles, i32 33239) #14, !srcloc !33
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 444), align 1
  %22 = zext i8 %21 to i16
  %23 = add nuw nsw i16 %22, -32297
  store i16 %23, ptr getelementptr ([0 x i16], ptr @gMapBank3ChainCycleFirstTiles, i32 0, i32 3), align 2
  store i16 %23, ptr getelementptr ([0 x i16], ptr @gMapBank3ChainCycleSecondTiles, i32 0, i32 3), align 2
  br label %24

24:                                               ; preds = %16, %12
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @RemoveMapBank3OffscreenChainEntries() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %52, %0
  %2 = phi i32 [ %53, %52 ], [ 0, %0 ]
  %3 = shl nuw nsw i32 %2, 3
  %4 = add i32 %3, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, -1
  br i1 %7, label %52, label %8

8:                                                ; preds = %1
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = mul nuw nsw i32 %2, 104
  %11 = ptrtoint ptr %9 to i32
  %12 = add nuw nsw i32 %10, 2288
  %13 = add i32 %12, %11
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %14, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 15237119
  %18 = load i8, ptr @gMapBank3ChainDirection, align 1
  %19 = icmp eq i8 %18, 1
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %25, label %21

21:                                               ; preds = %8
  %22 = icmp slt i32 %16, -1048575
  %23 = icmp eq i8 %18, 0
  %24 = select i1 %22, i1 %23, i1 false
  br i1 %24, label %25, label %52

25:                                               ; preds = %21, %8
  %26 = trunc i32 %2 to i8
  %27 = add i8 %26, 22
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %27, i8 noundef zeroext 0) #13
  %28 = load i8, ptr @gMapBank3ChainDirection, align 1
  %29 = icmp eq i8 %28, 0
  %30 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 4
  %31 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 3
  %32 = select i1 %29, ptr %30, ptr %31
  %33 = load i8, ptr %32, align 1
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %34 = load i8, ptr %31, align 1
  %35 = icmp eq i8 %34, -1
  br i1 %35, label %39, label %36

36:                                               ; preds = %25
  %37 = zext i8 %34 to i32
  %38 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %37, i32 4
  store i8 -1, ptr %38, align 1
  br label %39

39:                                               ; preds = %25, %36
  %40 = load i8, ptr %30, align 1
  %41 = icmp eq i8 %40, -1
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = zext i8 %40 to i32
  %44 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %43, i32 3
  store i8 -1, ptr %44, align 1
  br label %45

45:                                               ; preds = %39, %42
  store i8 -1, ptr %5, align 1
  %46 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 1
  store i8 0, ptr %46, align 1
  %47 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 2
  store i8 0, ptr %47, align 1
  store i8 -1, ptr %31, align 1
  store i8 -1, ptr %30, align 1
  %48 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %2, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  tail call void asm sideeffect "", "r"(i32 -1) #14, !srcloc !29
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  br label %52

52:                                               ; preds = %51, %45, %21, %1
  %53 = add nuw nsw i32 %2, 1
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %1

55:                                               ; preds = %52
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SpawnOneMapBank3ChainEntry() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = ptrtoint ptr %1 to i32
  br label %3

3:                                                ; preds = %123, %0
  %4 = phi i32 [ 0, %0 ], [ %124, %123 ]
  %5 = shl nuw nsw i32 %4, 3
  %6 = add i32 %5, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = icmp eq i8 %8, -1
  br i1 %9, label %10, label %123

10:                                               ; preds = %3
  %11 = mul nuw nsw i32 %4, 104
  %12 = add nuw i32 %11, 2288
  %13 = add i32 %12, %2
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %14, i32 0, i32 23
  %16 = load i8, ptr %15, align 4
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %123

18:                                               ; preds = %10
  %19 = tail call arm_apcscc i32 @PickMapBank3ChainKind() #15, !range !27
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr %7, align 1
  %21 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %7, i32 0, i32 1
  store i8 0, ptr %21, align 1
  %22 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %7, i32 0, i32 2
  store i8 0, ptr %22, align 1
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  %24 = icmp eq i8 %23, 0
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 448), align 1
  %26 = icmp eq i8 %25, -1
  br i1 %24, label %27, label %50

27:                                               ; preds = %18
  br i1 %26, label %33, label %28

28:                                               ; preds = %27
  %29 = zext i8 %25 to i32
  %30 = trunc i32 %4 to i8
  %31 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %29, i32 4
  store i8 %30, ptr %31, align 1
  %32 = load i8, ptr %7, align 1
  br label %33

33:                                               ; preds = %28, %27
  %34 = phi i8 [ %32, %28 ], [ %20, %27 ]
  %35 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %7, i32 0, i32 3
  store i8 %25, ptr %35, align 1
  %36 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %7, i32 0, i32 4
  store i8 -1, ptr %36, align 1
  %37 = add nuw nsw i32 %4, 22
  %38 = trunc i32 %37 to i8
  %39 = zext i8 %34 to i32
  %40 = getelementptr [0 x ptr], ptr @gMapBank3ChainKindAnimations, i32 0, i32 %39
  %41 = load ptr, ptr %40, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %38, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 240, i32 noundef 0, i32 noundef 6, ptr noundef %41) #13
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 1
  %45 = add i32 %44, ptrtoint (ptr @gMapBank3ChainSpeeds to i32)
  %46 = inttoptr i32 %45 to ptr
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = mul nsw i32 %48, -256
  br label %73

50:                                               ; preds = %18
  br i1 %26, label %56, label %51

51:                                               ; preds = %50
  %52 = zext i8 %25 to i32
  %53 = trunc i32 %4 to i8
  %54 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %52, i32 3
  store i8 %53, ptr %54, align 1
  %55 = load i8, ptr %7, align 1
  br label %56

56:                                               ; preds = %51, %50
  %57 = phi i8 [ %55, %51 ], [ %20, %50 ]
  %58 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %7, i32 0, i32 4
  store i8 %25, ptr %58, align 1
  %59 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %7, i32 0, i32 3
  store i8 -1, ptr %59, align 1
  %60 = add nuw nsw i32 %4, 22
  %61 = trunc i32 %60 to i8
  %62 = zext i8 %57 to i32
  %63 = getelementptr [0 x ptr], ptr @gMapBank3ChainKindAnimations, i32 0, i32 %62
  %64 = load ptr, ptr %63, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %61, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef -24, i32 noundef 0, i32 noundef 6, ptr noundef %64) #13
  %65 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %66 = zext i8 %65 to i32
  %67 = shl nuw nsw i32 %66, 1
  %68 = add i32 %67, ptrtoint (ptr @gMapBank3ChainSpeeds to i32)
  %69 = inttoptr i32 %68 to ptr
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  br label %73

73:                                               ; preds = %56, %33
  %74 = phi i32 [ %72, %56 ], [ %49, %33 ]
  %75 = phi i32 [ %60, %56 ], [ %37, %33 ]
  %76 = load ptr, ptr @gRenderSlots, align 4
  %77 = ptrtoint ptr %76 to i32
  %78 = add i32 %12, %77
  %79 = inttoptr i32 %78 to ptr
  %80 = getelementptr inbounds %struct.RenderSlot, ptr %79, i32 0, i32 6
  store i32 %74, ptr %80, align 4
  %81 = trunc i32 %4 to i8
  store i8 %81, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 448), align 1
  tail call void asm sideeffect "", "r"(i32 %19) #14, !srcloc !34
  switch i8 %20, label %126 [
    i8 10, label %82
    i8 0, label %121
  ]

82:                                               ; preds = %73, %82
  %83 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %84 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %85 = and i16 %84, 255
  %86 = and i16 %83, 255
  %87 = icmp eq i16 %86, %85
  br i1 %87, label %82, label %88

88:                                               ; preds = %82
  %89 = trunc i16 %83 to i8
  %90 = trunc i16 %84 to i8
  %91 = icmp ult i16 %86, %85
  %92 = and i32 %5, 2040
  %93 = add i32 %92, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %94 = inttoptr i32 %93 to ptr
  %95 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %94, i32 0, i32 2
  %97 = select i1 %91, i8 %89, i8 %90
  %98 = select i1 %91, i8 %90, i8 %89
  store i8 %97, ptr %95, align 1
  store i8 %98, ptr %96, align 1
  tail call void asm sideeffect "", "{r3}"(i32 %92) #14, !srcloc !28
  %99 = load i8, ptr %95, align 1
  %100 = icmp ugt i8 %99, 1
  br i1 %100, label %101, label %111

101:                                              ; preds = %88
  %102 = mul i8 %99, 7
  %103 = zext i8 %99 to i9
  %104 = add nsw i9 %103, -2
  %105 = add nsw i9 %103, -3
  %106 = mul i9 %104, %105
  %107 = lshr i9 %106, 1
  %108 = trunc i9 %107 to i8
  %109 = add i8 %102, -6
  %110 = sub i8 %109, %108
  br label %111

111:                                              ; preds = %88, %101
  %112 = phi i8 [ 0, %88 ], [ %110, %101 ]
  %113 = xor i8 %99, -1
  %114 = load i8, ptr %96, align 1
  %115 = add i8 %112, %113
  %116 = add i8 %115, %114
  %117 = zext i8 %116 to i32
  %118 = trunc i32 %75 to i8
  %119 = getelementptr [0 x ptr], ptr @gMapBank3ChainVariantAnimations, i32 0, i32 %117
  %120 = load ptr, ptr %119, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %118, ptr noundef %120) #13
  br label %126

121:                                              ; preds = %73
  %122 = trunc i32 %75 to i8
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %122, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #13
  br label %126

123:                                              ; preds = %3, %10
  %124 = add nuw nsw i32 %4, 1
  %125 = icmp eq i32 %124, 16
  br i1 %125, label %126, label %3

126:                                              ; preds = %123, %111, %121, %73
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank3ChainState1B7(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  switch i8 %2, label %31 [
    i8 0, label %3
    i8 1, label %15
    i8 3, label %21
  ]

3:                                                ; preds = %1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 120, i32 noundef 0, i32 noundef 109, ptr noundef nonnull inttoptr (i32 143560126 to ptr)) #13
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 438), align 1
  %5 = add i8 %4, -1
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 438), align 1
  %6 = icmp ult i8 %5, 10
  br i1 %6, label %7, label %11

7:                                                ; preds = %3
  %8 = zext nneg i8 %5 to i32
  %9 = getelementptr [0 x ptr], ptr @gMapBank3ChainCountAnimations, i32 0, i32 %8
  %10 = load ptr, ptr %9, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 140, i32 noundef 0, i32 noundef 106, ptr noundef %10) #13
  br label %12

11:                                               ; preds = %3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 140, i32 noundef 0, i32 noundef 106, ptr noundef nonnull inttoptr (i32 143560224 to ptr)) #13
  br label %12

12:                                               ; preds = %7, %11
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 39, i8 noundef zeroext 0) #13
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  %14 = add i8 %13, 1
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  br label %31

15:                                               ; preds = %1
  %16 = load ptr, ptr @gRenderSlots, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %16, i32 16, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 143560126
  br i1 %19, label %31, label %20

20:                                               ; preds = %15
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  br label %31

21:                                               ; preds = %1
  %22 = load ptr, ptr @gRenderSlots, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %22, i32 16, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, -1572864
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 16, i8 noundef zeroext 0) #13
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 438), align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 253, i32 noundef 1) #13
  br label %31

30:                                               ; preds = %26
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 439), align 1
  br label %31

31:                                               ; preds = %21, %30, %29, %15, %20, %1, %12
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ResetMapBank3ChainTimer1C4() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 60, i16 noundef zeroext 180) #13
  %2 = trunc i16 %1 to i8
  store i8 %2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 452), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ResetMapBank3ChainTimer1C5() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 60, i16 noundef zeroext 180) #13
  %2 = trunc i16 %1 to i8
  store i8 %2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 453), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank3ChainState1B8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  switch i8 %2, label %29 [
    i8 0, label %3
    i8 1, label %8
    i8 2, label %13
    i8 3, label %21
  ]

3:                                                ; preds = %1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 40, i32 noundef 0, i32 noundef 109, ptr noundef nonnull inttoptr (i32 143560126 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 8, i32 noundef 0, i32 noundef 120, ptr noundef nonnull inttoptr (i32 143560385 to ptr)) #13
  %4 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 180, i16 noundef zeroext 250) #13
  %5 = trunc i16 %4 to i8
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 452), align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  %7 = add i8 %6, 1
  br label %27

8:                                                ; preds = %1
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %9, i32 15, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 143560126
  br i1 %12, label %29, label %27

13:                                               ; preds = %1
  %14 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 678) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 452), align 1
  %18 = add i8 %17, -1
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 452), align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 18, ptr noundef nonnull inttoptr (i32 143560393 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 21, i8 noundef zeroext 1, i32 noundef 143528875) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529669 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 18) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 15, ptr noundef nonnull inttoptr (i32 143560164 to ptr)) #13
  br label %27

21:                                               ; preds = %1
  %22 = load ptr, ptr @gRenderSlots, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %22, i32 15, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, -1572864
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  br label %27

27:                                               ; preds = %8, %3, %26, %20
  %28 = phi i8 [ 3, %20 ], [ 0, %26 ], [ %7, %3 ], [ 2, %8 ]
  store i8 %28, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 440), align 1
  br label %29

29:                                               ; preds = %27, %16, %21, %13, %8, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank3ChainState1B9(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 441), align 1
  switch i8 %2, label %29 [
    i8 0, label %3
    i8 1, label %8
    i8 2, label %13
    i8 3, label %21
  ]

3:                                                ; preds = %1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 200, i32 noundef 0, i32 noundef 109, ptr noundef nonnull inttoptr (i32 143560126 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 168, i32 noundef 0, i32 noundef 120, ptr noundef nonnull inttoptr (i32 143560385 to ptr)) #13
  %4 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 180, i16 noundef zeroext 250) #13
  %5 = trunc i16 %4 to i8
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 453), align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 441), align 1
  %7 = add i8 %6, 1
  br label %27

8:                                                ; preds = %1
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %9, i32 17, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 143560126
  br i1 %12, label %29, label %27

13:                                               ; preds = %1
  %14 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 678) #13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 453), align 1
  %18 = add i8 %17, -1
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 453), align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %16
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143560393 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 21, i8 noundef zeroext 1, i32 noundef 143528875) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529669 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 17, ptr noundef nonnull inttoptr (i32 143560164 to ptr)) #13
  br label %27

21:                                               ; preds = %1
  %22 = load ptr, ptr @gRenderSlots, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %22, i32 17, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = icmp slt i32 %24, -1572864
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #13
  br label %27

27:                                               ; preds = %8, %3, %26, %20
  %28 = phi i8 [ 3, %20 ], [ 0, %26 ], [ %7, %3 ], [ 2, %8 ]
  store i8 %28, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 441), align 1
  br label %29

29:                                               ; preds = %27, %16, %21, %13, %8, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define dso_local arm_apcscc void @ClearMapBank3ChainLink(i32 noundef %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = and i32 %1, 255
  %4 = icmp eq i32 %3, 255
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = and i32 %0, 255
  %7 = icmp eq i32 %6, 0
  %8 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %3, i32 4
  %9 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %3, i32 3
  %10 = select i1 %7, ptr %8, ptr %9
  store i8 -1, ptr %10, align 1
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCaptureMapBank3ChainEntries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 470), align 1
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 450), align 1
  br label %3

3:                                                ; preds = %162, %1
  %4 = phi i32 [ %164, %162 ], [ 0, %1 ]
  %5 = phi i32 [ %163, %162 ], [ 0, %1 ]
  %6 = shl nuw nsw i32 %4, 3
  %7 = add i32 %6, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = add i8 %9, -1
  %11 = icmp ult i8 %10, -2
  br i1 %11, label %12, label %162

12:                                               ; preds = %3
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = mul nuw nsw i32 %4, 104
  %15 = ptrtoint ptr %13 to i32
  %16 = add nuw nsw i32 %14, 2288
  %17 = add i32 %16, %15
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr i8, ptr %18, i32 26
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr i8, ptr %18, i32 34
  %22 = load i16, ptr %21, align 2
  %23 = load i8, ptr @gMapBank3ChainState1B7, align 1
  %24 = icmp eq i8 %23, 3
  br i1 %24, label %25, label %62

25:                                               ; preds = %12
  %26 = add i32 %15, 1664
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr i8, ptr %27, i32 26
  %29 = load i8, ptr %28, align 1
  %30 = getelementptr i8, ptr %27, i32 34
  %31 = load i16, ptr %30, align 2
  %32 = zext i16 %31 to i32
  %33 = shl i32 %32, 24
  %34 = add i32 %33, 134217728
  %35 = lshr exact i32 %34, 24
  %36 = trunc i32 %35 to i8
  %37 = add i8 %29, 24
  %38 = add i32 %33, 268435456
  %39 = lshr exact i32 %38, 24
  %40 = trunc i32 %39 to i8
  %41 = trunc i16 %22 to i8
  %42 = add i8 %41, 8
  %43 = add i8 %20, 24
  %44 = add i8 %41, 24
  %45 = icmp ult i8 %29, %20
  %46 = icmp ugt i8 %37, %20
  %47 = and i1 %45, %46
  %48 = icmp ult i8 %29, %43
  %49 = icmp ugt i8 %37, %43
  %50 = and i1 %48, %49
  %51 = or i1 %47, %50
  %52 = icmp ugt i8 %42, %36
  %53 = icmp ult i8 %42, %40
  %54 = and i1 %52, %53
  %55 = icmp ugt i8 %44, %36
  %56 = icmp ult i8 %44, %40
  %57 = and i1 %55, %56
  %58 = or i1 %54, %57
  %59 = and i1 %51, %58
  %60 = zext i1 %59 to i32
  %61 = select i1 %59, i32 1, i32 %5
  br label %62

62:                                               ; preds = %25, %12
  %63 = phi i32 [ %60, %25 ], [ 0, %12 ]
  %64 = phi i32 [ %61, %25 ], [ %5, %12 ]
  %65 = load i8, ptr @gMapBank3ChainState1B8, align 1
  %66 = icmp eq i8 %65, 3
  %67 = icmp ult i8 %20, 64
  %68 = select i1 %66, i1 %67, i1 false
  br i1 %68, label %69, label %98

69:                                               ; preds = %62
  %70 = getelementptr i8, ptr %13, i32 1594
  %71 = load i16, ptr %70, align 2
  %72 = getelementptr i8, ptr %13, i32 1586
  %73 = load i8, ptr %72, align 1
  %74 = trunc i16 %71 to i8
  %75 = add i8 %74, 8
  %76 = add i8 %73, 24
  %77 = add i8 %74, 16
  %78 = trunc i16 %22 to i8
  %79 = add i8 %78, 8
  %80 = add nuw nsw i8 %20, 24
  %81 = add i8 %78, 24
  %82 = icmp ult i8 %73, %20
  %83 = icmp ugt i8 %76, %20
  %84 = and i1 %82, %83
  %85 = icmp ult i8 %73, %80
  %86 = icmp ugt i8 %76, %80
  %87 = and i1 %85, %86
  %88 = or i1 %84, %87
  %89 = icmp ult i8 %75, %79
  %90 = icmp ugt i8 %77, %79
  %91 = and i1 %89, %90
  %92 = icmp ult i8 %75, %81
  %93 = icmp ugt i8 %77, %81
  %94 = and i1 %92, %93
  %95 = or i1 %91, %94
  %96 = and i1 %88, %95
  %97 = select i1 %96, i32 2, i32 %63
  br label %98

98:                                               ; preds = %69, %62
  %99 = phi i32 [ %63, %62 ], [ %97, %69 ]
  %100 = load i8, ptr @gMapBank3ChainState1B9, align 1
  %101 = icmp eq i8 %100, 3
  br i1 %101, label %102, label %134

102:                                              ; preds = %98
  tail call void asm sideeffect "", "{r2}"(i32 1768) #14, !srcloc !35
  %103 = icmp ugt i8 %20, -104
  br i1 %103, label %104, label %134

104:                                              ; preds = %102
  %105 = add i32 %15, 1768
  %106 = inttoptr i32 %105 to ptr
  %107 = getelementptr i8, ptr %106, i32 34
  %108 = load i16, ptr %107, align 2
  %109 = getelementptr i8, ptr %106, i32 26
  %110 = load i8, ptr %109, align 1
  %111 = trunc i16 %108 to i8
  %112 = add i8 %111, 8
  %113 = add i8 %110, 24
  %114 = add i8 %111, 16
  %115 = trunc i16 %22 to i8
  %116 = add i8 %115, 8
  %117 = add nsw i8 %20, 24
  %118 = add i8 %115, 24
  %119 = icmp ult i8 %110, %20
  %120 = icmp ugt i8 %113, %20
  %121 = and i1 %119, %120
  %122 = icmp ult i8 %110, %117
  %123 = icmp ugt i8 %113, %117
  %124 = and i1 %122, %123
  %125 = or i1 %121, %124
  %126 = icmp ult i8 %112, %116
  %127 = icmp ugt i8 %114, %116
  %128 = and i1 %126, %127
  %129 = icmp ult i8 %112, %118
  %130 = icmp ugt i8 %114, %118
  %131 = and i1 %129, %130
  %132 = or i1 %128, %131
  %133 = and i1 %125, %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %104, %102, %98
  %135 = icmp eq i32 %99, 0
  br i1 %135, label %162, label %136

136:                                              ; preds = %104, %134
  %137 = phi i32 [ %99, %134 ], [ 2, %104 ]
  %138 = load i8, ptr %8, align 1
  %139 = zext i8 %138 to i32
  %140 = getelementptr ptr, ptr @gMapBank3ChainCapturedAnimations, i32 %139
  %141 = load ptr, ptr %140, align 4
  %142 = trunc i32 %4 to i8
  %143 = add i8 %142, 22
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %143, ptr noundef %141) #13
  %144 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %8, i32 0, i32 3
  %145 = load i8, ptr %144, align 1
  %146 = icmp eq i8 %145, -1
  br i1 %146, label %150, label %147

147:                                              ; preds = %136
  %148 = zext i8 %145 to i32
  %149 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %148, i32 4
  store i8 -1, ptr %149, align 1
  br label %150

150:                                              ; preds = %136, %147
  %151 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %8, i32 0, i32 4
  %152 = load i8, ptr %151, align 1
  %153 = icmp eq i8 %152, -1
  br i1 %153, label %157, label %154

154:                                              ; preds = %150
  %155 = zext i8 %152 to i32
  %156 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %155, i32 3
  store i8 -1, ptr %156, align 1
  br label %157

157:                                              ; preds = %150, %154
  %158 = load i8, ptr %8, align 1
  %159 = zext i8 %158 to i32
  tail call arm_apcscc void @ApplyMapBank3ChainEffect(i32 noundef %4, i32 noundef %137, i32 noundef %159) #15
  store i8 0, ptr %8, align 1
  %160 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %8, i32 0, i32 1
  store i8 0, ptr %160, align 1
  %161 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %8, i32 0, i32 2
  store i8 0, ptr %161, align 1
  br label %162

162:                                              ; preds = %134, %157, %3
  %163 = phi i32 [ %5, %3 ], [ %64, %157 ], [ %64, %134 ]
  %164 = add nuw nsw i32 %4, 1
  %165 = icmp eq i32 %164, 16
  br i1 %165, label %166, label %3

166:                                              ; preds = %162
  %167 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 470), align 1
  %168 = add i8 %167, -1
  %169 = icmp ult i8 %168, 3
  br i1 %169, label %170, label %174

170:                                              ; preds = %166
  %171 = zext nneg i8 %168 to i32
  %172 = getelementptr inbounds [3 x i16], ptr @switch.table.ScriptCallbackCaptureMapBank3ChainEntries, i32 0, i32 %171
  %173 = load i16, ptr %172, align 2
  tail call arm_apcscc void @StartSong(i16 noundef zeroext %173) #13
  br label %174

174:                                              ; preds = %166, %170
  %175 = icmp eq i32 %163, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %174
  tail call arm_apcscc void @RefreshMapBank3ChainLines() #15
  br label %177

177:                                              ; preds = %176, %174
  %178 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 450), align 1
  %179 = icmp ult i8 %2, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143560232 to ptr)) #13
  br label %181

181:                                              ; preds = %180, %177
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3ChainEffect(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca [9 x i8], align 1
  %5 = and i32 %0, 255
  %6 = trunc i32 %1 to i8
  tail call void asm sideeffect "", "{r6}"(i32 %5) #14, !srcloc !36
  %7 = and i32 %2, 255
  %8 = trunc i32 %2 to i8
  switch i8 %8, label %506 [
    i8 10, label %9
    i8 11, label %84
    i8 12, label %232
    i8 13, label %341
    i8 14, label %406
    i8 15, label %419
    i8 16, label %450
    i8 17, label %481
  ]

9:                                                ; preds = %3
  %10 = and i32 %1, 255
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %564

12:                                               ; preds = %9
  %13 = shl nuw nsw i32 %5, 3
  %14 = add i32 %13, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %15, i32 0, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  %19 = tail call i32 asm "", "={r4}"() #16, !srcloc !30
  %20 = add i8 %17, -1
  %21 = icmp eq i8 %18, %20
  br i1 %21, label %48, label %22

22:                                               ; preds = %12
  %23 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %24 = icmp eq i8 %23, %20
  br i1 %24, label %48, label %25

25:                                               ; preds = %22
  %26 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %27 = icmp eq i8 %26, %20
  br i1 %27, label %48, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %30 = icmp eq i8 %29, %20
  br i1 %30, label %48, label %31

31:                                               ; preds = %28
  %32 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %33 = icmp eq i8 %32, %20
  br i1 %33, label %48, label %34

34:                                               ; preds = %31
  %35 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %36 = icmp eq i8 %35, %20
  br i1 %36, label %48, label %37

37:                                               ; preds = %34
  %38 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %39 = icmp eq i8 %38, %20
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %42 = icmp eq i8 %41, %20
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %45 = icmp eq i8 %44, %20
  %46 = and i32 %19, 255
  %47 = select i1 %45, i32 8, i32 %46
  br label %48

48:                                               ; preds = %12, %22, %25, %28, %31, %34, %37, %40, %43
  %49 = phi i32 [ 0, %12 ], [ 1, %22 ], [ 2, %25 ], [ 3, %28 ], [ 4, %31 ], [ 5, %34 ], [ 6, %37 ], [ 7, %40 ], [ %47, %43 ]
  %50 = getelementptr [0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 %49
  store i8 %17, ptr %50, align 1
  %51 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %15, i32 0, i32 2
  %52 = load i8, ptr %51, align 1
  %53 = add i8 %52, -1
  %54 = icmp eq i8 %18, %53
  br i1 %54, label %81, label %55

55:                                               ; preds = %48
  %56 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %57 = icmp eq i8 %56, %53
  br i1 %57, label %81, label %58

58:                                               ; preds = %55
  %59 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %60 = icmp eq i8 %59, %53
  br i1 %60, label %81, label %61

61:                                               ; preds = %58
  %62 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %63 = icmp eq i8 %62, %53
  br i1 %63, label %81, label %64

64:                                               ; preds = %61
  %65 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %66 = icmp eq i8 %65, %53
  br i1 %66, label %81, label %67

67:                                               ; preds = %64
  %68 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %69 = icmp eq i8 %68, %53
  br i1 %69, label %81, label %70

70:                                               ; preds = %67
  %71 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %72 = icmp eq i8 %71, %53
  br i1 %72, label %81, label %73

73:                                               ; preds = %70
  %74 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %75 = icmp eq i8 %74, %53
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %78 = icmp eq i8 %77, %53
  %79 = and i32 %19, 255
  %80 = select i1 %78, i32 8, i32 %79
  br label %81

81:                                               ; preds = %48, %55, %58, %61, %64, %67, %70, %73, %76
  %82 = phi i32 [ 0, %48 ], [ 1, %55 ], [ 2, %58 ], [ 3, %61 ], [ 4, %64 ], [ 5, %67 ], [ 6, %70 ], [ 7, %73 ], [ %80, %76 ]
  %83 = getelementptr [0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 %82
  store i8 %52, ptr %83, align 1
  br label %547

84:                                               ; preds = %3
  %85 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #13
  %86 = and i16 %85, 255
  %87 = zext nneg i16 %86 to i32
  %88 = and i32 %1, 255
  tail call void asm sideeffect "", "{r1}"(i32 %88) #14, !srcloc !37
  %89 = icmp eq i32 %88, 1
  br i1 %89, label %90, label %225

90:                                               ; preds = %84
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %4) #14
  %91 = load i8, ptr @gMapBank3ChainFlags, align 1
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  %95 = add i8 %94, 1
  store i8 %95, ptr %4, align 1
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i8 [ 1, %93 ], [ 0, %90 ]
  %98 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainFlags to i32), i32 1) to ptr), align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %102 = add i8 %101, 1
  %103 = zext nneg i8 %97 to i32
  %104 = getelementptr [9 x i8], ptr %4, i32 0, i32 %103
  store i8 %102, ptr %104, align 1
  %105 = add nuw nsw i8 %97, 1
  br label %106

106:                                              ; preds = %100, %96
  %107 = phi i8 [ %105, %100 ], [ %97, %96 ]
  %108 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainFlags to i32), i32 2) to ptr), align 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %112 = add i8 %111, 1
  %113 = zext nneg i8 %107 to i32
  %114 = getelementptr [9 x i8], ptr %4, i32 0, i32 %113
  store i8 %112, ptr %114, align 1
  %115 = add nuw nsw i8 %107, 1
  br label %116

116:                                              ; preds = %110, %106
  %117 = phi i8 [ %115, %110 ], [ %107, %106 ]
  %118 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainFlags to i32), i32 3) to ptr), align 1
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %122 = add i8 %121, 1
  %123 = zext nneg i8 %117 to i32
  %124 = getelementptr [9 x i8], ptr %4, i32 0, i32 %123
  store i8 %122, ptr %124, align 1
  %125 = add nuw nsw i8 %117, 1
  br label %126

126:                                              ; preds = %120, %116
  %127 = phi i8 [ %125, %120 ], [ %117, %116 ]
  %128 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainFlags to i32), i32 4) to ptr), align 1
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %132 = add i8 %131, 1
  %133 = zext nneg i8 %127 to i32
  %134 = getelementptr [9 x i8], ptr %4, i32 0, i32 %133
  store i8 %132, ptr %134, align 1
  %135 = add nuw nsw i8 %127, 1
  br label %136

136:                                              ; preds = %130, %126
  %137 = phi i8 [ %135, %130 ], [ %127, %126 ]
  %138 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainFlags to i32), i32 5) to ptr), align 1
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %140, label %146

140:                                              ; preds = %136
  %141 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %142 = add i8 %141, 1
  %143 = zext nneg i8 %137 to i32
  %144 = getelementptr [9 x i8], ptr %4, i32 0, i32 %143
  store i8 %142, ptr %144, align 1
  %145 = add nuw nsw i8 %137, 1
  br label %146

146:                                              ; preds = %140, %136
  %147 = phi i8 [ %145, %140 ], [ %137, %136 ]
  %148 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainFlags to i32), i32 6) to ptr), align 1
  %149 = icmp eq i8 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %146
  %151 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %152 = add i8 %151, 1
  %153 = zext nneg i8 %147 to i32
  %154 = getelementptr [9 x i8], ptr %4, i32 0, i32 %153
  store i8 %152, ptr %154, align 1
  %155 = add nuw nsw i8 %147, 1
  br label %156

156:                                              ; preds = %150, %146
  %157 = phi i8 [ %155, %150 ], [ %147, %146 ]
  %158 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainFlags to i32), i32 7) to ptr), align 1
  %159 = icmp eq i8 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %162 = add i8 %161, 1
  %163 = zext nneg i8 %157 to i32
  %164 = getelementptr [9 x i8], ptr %4, i32 0, i32 %163
  store i8 %162, ptr %164, align 1
  %165 = add nuw nsw i8 %157, 1
  br label %166

166:                                              ; preds = %160, %156
  %167 = phi i8 [ %165, %160 ], [ %157, %156 ]
  %168 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainFlags to i32), i32 8) to ptr), align 1
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %172 = add i8 %171, 1
  %173 = zext nneg i8 %167 to i32
  %174 = getelementptr [9 x i8], ptr %4, i32 0, i32 %173
  store i8 %172, ptr %174, align 1
  %175 = add nuw nsw i8 %167, 1
  br label %178

176:                                              ; preds = %166
  %177 = icmp eq i8 %167, 0
  br i1 %177, label %189, label %178

178:                                              ; preds = %170, %176
  %179 = phi i8 [ %175, %170 ], [ %167, %176 ]
  %180 = zext nneg i8 %179 to i16
  %181 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext %180) #13
  %182 = and i16 %181, 255
  %183 = zext nneg i16 %182 to i32
  call void asm sideeffect "", "{r4},{r1}"(i32 %183, ptr nonnull %4) #14, !srcloc !38
  %184 = ptrtoint ptr %4 to i32
  %185 = add i32 %183, %184
  %186 = inttoptr i32 %185 to ptr
  %187 = load i8, ptr %186, align 1
  %188 = zext i8 %187 to i32
  br label %189

189:                                              ; preds = %178, %176
  %190 = phi i32 [ %188, %178 ], [ %87, %176 ]
  %191 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  %192 = tail call i32 asm "", "={r4}"() #16, !srcloc !30
  %193 = trunc i32 %190 to i8
  %194 = add i8 %193, -1
  %195 = icmp eq i8 %191, %194
  br i1 %195, label %222, label %196

196:                                              ; preds = %189
  %197 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %198 = icmp eq i8 %197, %194
  br i1 %198, label %222, label %199

199:                                              ; preds = %196
  %200 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %201 = icmp eq i8 %200, %194
  br i1 %201, label %222, label %202

202:                                              ; preds = %199
  %203 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %204 = icmp eq i8 %203, %194
  br i1 %204, label %222, label %205

205:                                              ; preds = %202
  %206 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %207 = icmp eq i8 %206, %194
  br i1 %207, label %222, label %208

208:                                              ; preds = %205
  %209 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %210 = icmp eq i8 %209, %194
  br i1 %210, label %222, label %211

211:                                              ; preds = %208
  %212 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %213 = icmp eq i8 %212, %194
  br i1 %213, label %222, label %214

214:                                              ; preds = %211
  %215 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %216 = icmp eq i8 %215, %194
  br i1 %216, label %222, label %217

217:                                              ; preds = %214
  %218 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %219 = icmp eq i8 %218, %194
  %220 = and i32 %192, 255
  %221 = select i1 %219, i32 8, i32 %220
  br label %222

222:                                              ; preds = %189, %196, %199, %202, %205, %208, %211, %214, %217
  %223 = phi i32 [ 0, %189 ], [ 1, %196 ], [ 2, %199 ], [ 3, %202 ], [ 4, %205 ], [ 5, %208 ], [ 6, %211 ], [ 7, %214 ], [ %221, %217 ]
  %224 = getelementptr [0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 %223
  store i8 %193, ptr %224, align 1
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %4) #14
  br label %225

225:                                              ; preds = %222, %84
  %226 = phi i32 [ %190, %222 ], [ %87, %84 ]
  %227 = trunc i32 %0 to i8
  %228 = add i8 %227, 22
  %229 = add nsw i32 %226, -1
  %230 = getelementptr [0 x ptr], ptr @gMapBank3ChainFlagAnimations, i32 0, i32 %229
  %231 = load ptr, ptr %230, align 4
  call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %228, ptr noundef %231) #13
  br label %547

232:                                              ; preds = %3
  %233 = shl nuw nsw i32 %5, 3
  %234 = add i32 %233, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %235 = inttoptr i32 %234 to ptr
  %236 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %235, i32 0, i32 3
  %237 = load i8, ptr %236, align 1
  %238 = icmp eq i8 %237, -1
  br i1 %238, label %288, label %239

239:                                              ; preds = %232
  %240 = trunc i32 %0 to i8
  %241 = icmp ne i8 %237, %240
  %242 = icmp ult i8 %237, 16
  %243 = and i1 %241, %242
  br i1 %243, label %244, label %288

244:                                              ; preds = %239
  %245 = add nuw nsw i8 %237, 22
  %246 = tail call ptr asm "", "=r,0"(ptr nonnull %235) #16, !srcloc !39
  %247 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %246, i32 0, i32 3
  %248 = load i8, ptr %247, align 1
  %249 = zext i8 %248 to i32
  %250 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %249
  %251 = load i8, ptr %250, align 1
  %252 = zext i8 %251 to i32
  %253 = getelementptr ptr, ptr @gMapBank3ChainCapturedAnimations, i32 %252
  %254 = load ptr, ptr %253, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %245, ptr noundef %254) #13
  %255 = load i8, ptr %247, align 1
  %256 = zext i8 %255 to i32
  %257 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %256, i32 3
  %258 = load i8, ptr %257, align 1
  %259 = icmp eq i8 %258, -1
  br i1 %259, label %265, label %260

260:                                              ; preds = %244
  %261 = zext i8 %258 to i32
  %262 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %261, i32 4
  store i8 -1, ptr %262, align 1
  %263 = load i8, ptr %247, align 1
  %264 = zext i8 %263 to i32
  br label %265

265:                                              ; preds = %244, %260
  %266 = phi i32 [ %256, %244 ], [ %264, %260 ]
  %267 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %266, i32 4
  %268 = load i8, ptr %267, align 1
  %269 = icmp eq i8 %268, -1
  br i1 %269, label %275, label %270

270:                                              ; preds = %265
  %271 = zext i8 %268 to i32
  %272 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %271, i32 3
  store i8 -1, ptr %272, align 1
  %273 = load i8, ptr %247, align 1
  %274 = zext i8 %273 to i32
  br label %275

275:                                              ; preds = %265, %270
  %276 = phi i32 [ %266, %265 ], [ %274, %270 ]
  %277 = and i32 %1, 255
  %278 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %276
  %279 = load i8, ptr %278, align 1
  %280 = zext i8 %279 to i32
  tail call arm_apcscc void @ApplyMapBank3ChainEffect(i32 noundef %276, i32 noundef %277, i32 noundef %280) #15
  %281 = load i8, ptr %247, align 1
  %282 = zext i8 %281 to i32
  %283 = shl nuw nsw i32 %282, 3
  %284 = add i32 %283, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %285 = inttoptr i32 %284 to ptr
  store i8 0, ptr %285, align 1
  %286 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %285, i32 0, i32 1
  store i8 0, ptr %286, align 1
  %287 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %285, i32 0, i32 2
  store i8 0, ptr %287, align 1
  br label %288

288:                                              ; preds = %275, %239, %232
  %289 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %235, i32 0, i32 4
  %290 = load i8, ptr %289, align 1
  %291 = zext i8 %290 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %291) #14, !srcloc !40
  %292 = icmp eq i8 %290, -1
  br i1 %292, label %547, label %293

293:                                              ; preds = %288
  %294 = icmp ne i32 %5, %291
  %295 = icmp ult i8 %290, 16
  %296 = and i1 %295, %294
  br i1 %296, label %297, label %547

297:                                              ; preds = %293
  %298 = add nuw nsw i8 %290, 22
  %299 = tail call ptr asm "", "=r,0"(ptr nonnull %235) #16, !srcloc !41
  %300 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %299, i32 0, i32 4
  %301 = load i8, ptr %300, align 1
  %302 = zext i8 %301 to i32
  %303 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %302
  %304 = load i8, ptr %303, align 1
  %305 = zext i8 %304 to i32
  %306 = getelementptr ptr, ptr @gMapBank3ChainCapturedAnimations, i32 %305
  %307 = load ptr, ptr %306, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %298, ptr noundef %307) #13
  %308 = load i8, ptr %300, align 1
  %309 = zext i8 %308 to i32
  %310 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %309, i32 3
  %311 = load i8, ptr %310, align 1
  %312 = icmp eq i8 %311, -1
  br i1 %312, label %318, label %313

313:                                              ; preds = %297
  %314 = zext i8 %311 to i32
  %315 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %314, i32 4
  store i8 -1, ptr %315, align 1
  %316 = load i8, ptr %300, align 1
  %317 = zext i8 %316 to i32
  br label %318

318:                                              ; preds = %297, %313
  %319 = phi i32 [ %309, %297 ], [ %317, %313 ]
  %320 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %319, i32 4
  %321 = load i8, ptr %320, align 1
  %322 = icmp eq i8 %321, -1
  br i1 %322, label %328, label %323

323:                                              ; preds = %318
  %324 = zext i8 %321 to i32
  %325 = getelementptr [0 x %struct.MapBank3ChainEntry], ptr @gMapBank3ChainEntries, i32 0, i32 %324, i32 3
  store i8 -1, ptr %325, align 1
  %326 = load i8, ptr %300, align 1
  %327 = zext i8 %326 to i32
  br label %328

328:                                              ; preds = %318, %323
  %329 = phi i32 [ %319, %318 ], [ %327, %323 ]
  %330 = and i32 %1, 255
  %331 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %329
  %332 = load i8, ptr %331, align 1
  %333 = zext i8 %332 to i32
  tail call arm_apcscc void @ApplyMapBank3ChainEffect(i32 noundef %329, i32 noundef %330, i32 noundef %333) #15
  %334 = load i8, ptr %300, align 1
  %335 = zext i8 %334 to i32
  %336 = shl nuw nsw i32 %335, 3
  %337 = add i32 %336, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %338 = inttoptr i32 %337 to ptr
  store i8 0, ptr %338, align 1
  %339 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %338, i32 0, i32 1
  store i8 0, ptr %339, align 1
  %340 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %338, i32 0, i32 2
  store i8 0, ptr %340, align 1
  br label %547

341:                                              ; preds = %3
  %342 = and i32 %1, 255
  %343 = icmp eq i32 %342, 1
  br i1 %343, label %344, label %564

344:                                              ; preds = %341
  %345 = load i8, ptr @gMapBank3ChainFlags, align 1
  %346 = zext i8 %345 to i32
  %347 = tail call ptr asm "", "=r,{r1},0"(i32 %346, ptr nonnull @gMapBank3ChainFlags) #16, !srcloc !42
  %348 = icmp eq i8 %345, 0
  br i1 %348, label %349, label %392

349:                                              ; preds = %344
  %350 = ptrtoint ptr %347 to i32
  %351 = add i32 %350, 1
  %352 = inttoptr i32 %351 to ptr
  %353 = load i8, ptr %352, align 1
  %354 = icmp eq i8 %353, 0
  br i1 %354, label %357, label %392

355:                                              ; preds = %387
  %356 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 2) #13
  br label %405

357:                                              ; preds = %349
  %358 = add i32 %350, 2
  %359 = inttoptr i32 %358 to ptr
  %360 = load i8, ptr %359, align 1
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %362, label %392

362:                                              ; preds = %357
  %363 = add i32 %350, 3
  %364 = inttoptr i32 %363 to ptr
  %365 = load i8, ptr %364, align 1
  %366 = icmp eq i8 %365, 0
  br i1 %366, label %367, label %392

367:                                              ; preds = %362
  %368 = add i32 %350, 4
  %369 = inttoptr i32 %368 to ptr
  %370 = load i8, ptr %369, align 1
  %371 = icmp eq i8 %370, 0
  br i1 %371, label %372, label %392

372:                                              ; preds = %367
  %373 = add i32 %350, 5
  %374 = inttoptr i32 %373 to ptr
  %375 = load i8, ptr %374, align 1
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %377, label %392

377:                                              ; preds = %372
  %378 = add i32 %350, 6
  %379 = inttoptr i32 %378 to ptr
  %380 = load i8, ptr %379, align 1
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %392

382:                                              ; preds = %377
  %383 = add i32 %350, 7
  %384 = inttoptr i32 %383 to ptr
  %385 = load i8, ptr %384, align 1
  %386 = icmp eq i8 %385, 0
  br i1 %386, label %387, label %392

387:                                              ; preds = %382
  %388 = add i32 %350, 8
  %389 = inttoptr i32 %388 to ptr
  %390 = load i8, ptr %389, align 1
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %355, label %392

392:                                              ; preds = %349, %357, %362, %367, %372, %377, %382, %387, %344
  %393 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 2) #13
  %394 = icmp eq i16 %393, 0
  br i1 %394, label %395, label %405

395:                                              ; preds = %392, %395
  %396 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 9) #13
  %397 = and i16 %396, 255
  %398 = zext nneg i16 %397 to i32
  %399 = add i32 %398, ptrtoint (ptr @gMapBank3ChainFlags to i32)
  %400 = inttoptr i32 %399 to ptr
  %401 = load i8, ptr %400, align 1
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %395, label %403

403:                                              ; preds = %395
  %404 = zext i8 %401 to i32
  tail call arm_apcscc void @SetMapBank3ChainFlag(i32 noundef %404, i32 noundef 0) #15
  br label %547

405:                                              ; preds = %355, %392
  tail call arm_apcscc void @InitializeMapBank3ChainFlags() #15
  br label %547

406:                                              ; preds = %3
  %407 = and i32 %1, 255
  %408 = icmp eq i32 %407, 1
  br i1 %408, label %409, label %564

409:                                              ; preds = %406
  %410 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 438), align 1
  %411 = add i8 %410, 1
  store i8 %411, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 438), align 1
  %412 = icmp ult i8 %411, 10
  br i1 %412, label %413, label %417

413:                                              ; preds = %409
  %414 = zext nneg i8 %411 to i32
  %415 = getelementptr [0 x ptr], ptr @gMapBank3ChainCountAnimations, i32 0, i32 %414
  %416 = load ptr, ptr %415, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 140, i32 noundef 0, i32 noundef 106, ptr noundef %416) #13
  br label %418

417:                                              ; preds = %409
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 140, i32 noundef 0, i32 noundef 106, ptr noundef nonnull inttoptr (i32 143560224 to ptr)) #13
  br label %418

418:                                              ; preds = %413, %417
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 39, i8 noundef zeroext 0) #13
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 447), align 1
  br label %547

419:                                              ; preds = %3
  %420 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %421 = icmp ult i8 %420, 2
  br i1 %421, label %422, label %547

422:                                              ; preds = %419
  %423 = add nuw nsw i8 %420, 1
  store i8 %423, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  tail call void asm sideeffect "", "{r1}"(ptr nonnull @gMapBank3ChainEntries) #14, !srcloc !43
  %424 = load ptr, ptr @gRenderSlots, align 4
  %425 = ptrtoint ptr %424 to i32
  br label %426

426:                                              ; preds = %447, %422
  %427 = phi i32 [ 0, %422 ], [ %448, %447 ]
  %428 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %427
  %429 = load i8, ptr %428, align 1
  %430 = icmp eq i8 %429, -1
  br i1 %430, label %447, label %431

431:                                              ; preds = %426
  %432 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  %433 = icmp eq i8 %432, 0
  %434 = mul nuw nsw i32 %427, 104
  %435 = add nuw nsw i32 %434, 2288
  %436 = add i32 %435, %425
  %437 = inttoptr i32 %436 to ptr
  %438 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %439 = zext i8 %438 to i32
  %440 = getelementptr i16, ptr @gMapBank3ChainSpeeds, i32 %439
  %441 = load i16, ptr %440, align 2
  %442 = zext i16 %441 to i32
  %443 = getelementptr inbounds %struct.RenderSlot, ptr %437, i32 0, i32 6
  %444 = mul nsw i32 %442, -256
  %445 = shl nuw nsw i32 %442, 8
  %446 = select i1 %433, i32 %444, i32 %445
  store i32 %446, ptr %443, align 4
  br label %447

447:                                              ; preds = %431, %426
  %448 = add nuw nsw i32 %427, 1
  %449 = icmp eq i32 %448, 16
  br i1 %449, label %547, label %426

450:                                              ; preds = %3
  %451 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %452 = icmp eq i8 %451, 0
  br i1 %452, label %547, label %453

453:                                              ; preds = %450
  %454 = add i8 %451, -1
  store i8 %454, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  tail call void asm sideeffect "", "{r1}"(ptr nonnull @gMapBank3ChainEntries) #14, !srcloc !44
  %455 = load ptr, ptr @gRenderSlots, align 4
  %456 = ptrtoint ptr %455 to i32
  br label %457

457:                                              ; preds = %478, %453
  %458 = phi i32 [ 0, %453 ], [ %479, %478 ]
  %459 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %458
  %460 = load i8, ptr %459, align 1
  %461 = icmp eq i8 %460, -1
  br i1 %461, label %478, label %462

462:                                              ; preds = %457
  %463 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  %464 = icmp eq i8 %463, 0
  %465 = mul nuw nsw i32 %458, 104
  %466 = add nuw nsw i32 %465, 2288
  %467 = add i32 %466, %456
  %468 = inttoptr i32 %467 to ptr
  %469 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %470 = zext i8 %469 to i32
  %471 = getelementptr i16, ptr @gMapBank3ChainSpeeds, i32 %470
  %472 = load i16, ptr %471, align 2
  %473 = zext i16 %472 to i32
  %474 = getelementptr inbounds %struct.RenderSlot, ptr %468, i32 0, i32 6
  %475 = mul nsw i32 %473, -256
  %476 = shl nuw nsw i32 %473, 8
  %477 = select i1 %464, i32 %475, i32 %476
  store i32 %477, ptr %474, align 4
  br label %478

478:                                              ; preds = %462, %457
  %479 = add nuw nsw i32 %458, 1
  %480 = icmp eq i32 %479, 16
  br i1 %480, label %547, label %457

481:                                              ; preds = %3
  %482 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  %483 = xor i8 %482, 1
  store i8 %483, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  tail call void asm sideeffect "", "{r1}"(i32 436) #14, !srcloc !45
  %484 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 436), align 1
  %485 = sub i8 96, %484
  store i8 %485, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 436), align 1
  %486 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  %487 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 448), align 1
  store i8 %487, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 449), align 1
  store i8 %486, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 448), align 1
  %488 = load ptr, ptr @gRenderSlots, align 4
  %489 = ptrtoint ptr %488 to i32
  br label %490

490:                                              ; preds = %503, %481
  %491 = phi i32 [ 0, %481 ], [ %504, %503 ]
  %492 = getelementptr %struct.MapBank3ChainEntry, ptr @gMapBank3ChainEntries, i32 %491
  %493 = load i8, ptr %492, align 1
  %494 = icmp eq i8 %493, -1
  br i1 %494, label %503, label %495

495:                                              ; preds = %490
  %496 = mul nuw nsw i32 %491, 104
  %497 = add nuw nsw i32 %496, 2288
  %498 = add i32 %497, %489
  %499 = inttoptr i32 %498 to ptr
  %500 = getelementptr inbounds %struct.RenderSlot, ptr %499, i32 0, i32 6
  %501 = load i32, ptr %500, align 4
  %502 = sub i32 0, %501
  store i32 %502, ptr %500, align 4
  br label %503

503:                                              ; preds = %495, %490
  %504 = add nuw nsw i32 %491, 1
  %505 = icmp eq i32 %504, 16
  br i1 %505, label %547, label %490

506:                                              ; preds = %3
  %507 = and i32 %1, 255
  tail call void asm sideeffect "", "{r1}"(i32 %507) #14, !srcloc !46
  %508 = icmp eq i32 %507, 1
  br i1 %508, label %509, label %564

509:                                              ; preds = %506
  %510 = add i32 %2, 255
  %511 = and i32 %510, 255
  %512 = icmp ult i32 %511, 9
  br i1 %512, label %513, label %547

513:                                              ; preds = %509
  %514 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  %515 = tail call i32 asm "", "={r4}"() #16, !srcloc !30
  %516 = add i8 %8, -1
  %517 = icmp eq i8 %514, %516
  br i1 %517, label %544, label %518

518:                                              ; preds = %513
  %519 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %520 = icmp eq i8 %519, %516
  br i1 %520, label %544, label %521

521:                                              ; preds = %518
  %522 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %523 = icmp eq i8 %522, %516
  br i1 %523, label %544, label %524

524:                                              ; preds = %521
  %525 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %526 = icmp eq i8 %525, %516
  br i1 %526, label %544, label %527

527:                                              ; preds = %524
  %528 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %529 = icmp eq i8 %528, %516
  br i1 %529, label %544, label %530

530:                                              ; preds = %527
  %531 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %532 = icmp eq i8 %531, %516
  br i1 %532, label %544, label %533

533:                                              ; preds = %530
  %534 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %535 = icmp eq i8 %534, %516
  br i1 %535, label %544, label %536

536:                                              ; preds = %533
  %537 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %538 = icmp eq i8 %537, %516
  br i1 %538, label %544, label %539

539:                                              ; preds = %536
  %540 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %541 = icmp eq i8 %540, %516
  %542 = and i32 %515, 255
  %543 = select i1 %541, i32 8, i32 %542
  br label %544

544:                                              ; preds = %513, %518, %521, %524, %527, %530, %533, %536, %539
  %545 = phi i32 [ 0, %513 ], [ 1, %518 ], [ 2, %521 ], [ 3, %524 ], [ 4, %527 ], [ 5, %530 ], [ 6, %533 ], [ 7, %536 ], [ %543, %539 ]
  %546 = getelementptr [0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 %545
  store i8 %8, ptr %546, align 1
  br label %547

547:                                              ; preds = %503, %478, %447, %418, %81, %450, %419, %405, %403, %288, %293, %328, %509, %544, %225
  %548 = and i32 %1, 255
  %549 = icmp eq i32 %548, 1
  br i1 %549, label %550, label %564

550:                                              ; preds = %547
  %551 = icmp eq i32 %7, 12
  br i1 %551, label %552, label %555

552:                                              ; preds = %550
  %553 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 470), align 1
  %554 = icmp ult i8 %553, 3
  br i1 %554, label %562, label %564

555:                                              ; preds = %550
  %556 = icmp eq i32 %7, 13
  %557 = icmp ugt i32 %7, 14
  %558 = or i1 %556, %557
  br i1 %558, label %562, label %559

559:                                              ; preds = %555
  %560 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 470), align 1
  %561 = icmp ult i8 %560, 2
  br i1 %561, label %562, label %564

562:                                              ; preds = %559, %555, %552
  %563 = phi i8 [ 2, %552 ], [ 3, %555 ], [ %6, %559 ]
  store i8 %563, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 470), align 1
  br label %564

564:                                              ; preds = %562, %406, %341, %9, %547, %559, %552, %506
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define dso_local arm_apcscc void @ConsumeMapBank3ChainEntry(i32 noundef %0) local_unnamed_addr #8 {
  %2 = shl i32 %0, 3
  %3 = and i32 %2, 2040
  %4 = add i32 %3, ptrtoint (ptr @gMapBank3ChainEntries to i32)
  %5 = inttoptr i32 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr inbounds %struct.MapBank3ChainEntry, ptr %5, i32 0, i32 2
  store i8 0, ptr %7, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackTickMapBank3ChainBackground(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 442), align 1
  %3 = add i8 %2, -1
  store i8 %3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 442), align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %25

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 435), align 1
  %7 = icmp eq i8 %6, 0
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 443), align 1
  %9 = select i1 %7, i8 7, i8 0
  %10 = select i1 %7, i8 1, i8 -1
  %11 = select i1 %7, i8 0, i8 7
  %12 = icmp eq i8 %8, %9
  %13 = add i8 %8, %10
  %14 = select i1 %12, i8 %11, i8 %13
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 443), align 1
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 3
  %18 = zext i8 %14 to i32
  %19 = add i32 %18, ptrtoint (ptr @gMapBank3ChainPhaseDurations to i32)
  %20 = add i32 %19, %17
  %21 = inttoptr i32 %20 to ptr
  %22 = load i8, ptr %21, align 1
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 442), align 1
  %23 = getelementptr [0 x ptr], ptr @gMapBank3ChainBackgroundScripts, i32 0, i32 %18
  %24 = load ptr, ptr %23, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 130, ptr noundef %24) #13
  br label %25

25:                                               ; preds = %5, %1
  ret i32 0
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @FindMapBank3ChainKind(i32 noundef %0) local_unnamed_addr #9 {
  %2 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  %3 = tail call i32 asm "", "={r4}"() #16, !srcloc !30
  %4 = trunc i32 %0 to i8
  %5 = add i8 %4, -1
  %6 = icmp eq i8 %2, %5
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %9 = icmp eq i8 %8, %5
  br i1 %9, label %32, label %10

10:                                               ; preds = %7
  %11 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %12 = icmp eq i8 %11, %5
  br i1 %12, label %32, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %15 = icmp eq i8 %14, %5
  br i1 %15, label %32, label %16

16:                                               ; preds = %13
  %17 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %18 = icmp eq i8 %17, %5
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %21 = icmp eq i8 %20, %5
  br i1 %21, label %32, label %22

22:                                               ; preds = %19
  %23 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %24 = icmp eq i8 %23, %5
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %27 = icmp eq i8 %26, %5
  br i1 %27, label %32, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %30 = icmp eq i8 %29, %5
  %31 = select i1 %30, i32 8, i32 %3
  br label %32

32:                                               ; preds = %28, %7, %10, %13, %16, %19, %22, %25, %1
  %33 = phi i32 [ 0, %1 ], [ 1, %7 ], [ 2, %10 ], [ 3, %13 ], [ 4, %16 ], [ 5, %19 ], [ 6, %22 ], [ 7, %25 ], [ %31, %28 ]
  ret i32 %33
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RefreshMapBank3ChainFlagGraphics() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 143560746) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 2, i8 noundef zeroext 1, i32 noundef 143560792) #13
  %1 = tail call i32 asm "", "={r4}"() #16, !srcloc !30
  %2 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  br label %3

3:                                                ; preds = %54, %0
  %4 = phi i8 [ %2, %0 ], [ %55, %54 ]
  %5 = phi i32 [ 0, %0 ], [ %7, %54 ]
  %6 = and i32 %5, 255
  %7 = add nuw nsw i32 %6, 1
  %8 = and i32 %7, 255
  %9 = trunc i32 %7 to i8
  %10 = add i8 %9, -1
  %11 = icmp eq i8 %4, %10
  br i1 %11, label %37, label %12

12:                                               ; preds = %3
  %13 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 1) to ptr), align 1
  %14 = icmp eq i8 %13, %10
  br i1 %14, label %37, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 2) to ptr), align 1
  %17 = icmp eq i8 %16, %10
  br i1 %17, label %37, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 3) to ptr), align 1
  %20 = icmp eq i8 %19, %10
  br i1 %20, label %37, label %21

21:                                               ; preds = %18
  %22 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 4) to ptr), align 1
  %23 = icmp eq i8 %22, %10
  br i1 %23, label %37, label %24

24:                                               ; preds = %21
  %25 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 5) to ptr), align 1
  %26 = icmp eq i8 %25, %10
  br i1 %26, label %37, label %27

27:                                               ; preds = %24
  %28 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 6) to ptr), align 1
  %29 = icmp eq i8 %28, %10
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 7) to ptr), align 1
  %32 = icmp eq i8 %31, %10
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank3ChainAvailableKinds to i32), i32 8) to ptr), align 1
  %35 = icmp eq i8 %34, %10
  %36 = select i1 %35, i32 8, i32 %1
  br label %37

37:                                               ; preds = %3, %12, %15, %18, %21, %24, %27, %30, %33
  %38 = phi i32 [ 0, %3 ], [ 1, %12 ], [ 2, %15 ], [ 3, %18 ], [ 4, %21 ], [ 5, %24 ], [ 6, %27 ], [ 7, %30 ], [ %36, %33 ]
  %39 = and i32 %38, 255
  %40 = getelementptr [0 x i8], ptr @gMapBank3ChainFlags, i32 0, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %37
  %44 = trunc i32 %5 to i8
  %45 = add i8 %44, 3
  %46 = getelementptr [0 x ptr], ptr @gMapBank3ChainFlagGraphics, i32 0, i32 %39
  %47 = load ptr, ptr %46, align 4
  %48 = ptrtoint ptr %47 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext %45, i8 noundef zeroext 1, i32 noundef %48) #13
  %49 = add i8 %44, 12
  %50 = getelementptr [0 x ptr], ptr @gMapBank3ChainOverlayGraphics, i32 0, i32 %6
  %51 = load ptr, ptr %50, align 4
  %52 = ptrtoint ptr %51 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext %49, i8 noundef zeroext 1, i32 noundef %52) #13
  %53 = load i8, ptr @gMapBank3ChainAvailableKinds, align 1
  br label %54

54:                                               ; preds = %43, %37
  %55 = phi i8 [ %53, %43 ], [ %4, %37 ]
  %56 = icmp ult i32 %8, 9
  br i1 %56, label %3, label %57

57:                                               ; preds = %54
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @MarkMapBank3ChainLine(i32 noundef %0) local_unnamed_addr #0 {
  %2 = and i32 %0, 255
  %3 = trunc i32 %0 to i8
  %4 = add i8 %3, 22
  %5 = getelementptr [0 x ptr], ptr @gMapBank3ChainLineGraphics, i32 0, i32 %2
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext %4, i8 noundef zeroext 1, i32 noundef %7) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackTickMapBank3ChainTiles(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %5 = urem i8 %4, 10
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %3
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %9 = add i8 %8, 1
  %10 = icmp ugt i8 %9, 8
  %11 = select i1 %10, i8 0, i8 %9
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %12 = zext nneg i8 %11 to i16
  %13 = add nuw nsw i16 %12, -32297
  store i16 %13, ptr getelementptr ([0 x i16], ptr @gMapBank3ChainCycleFirstTiles, i32 0, i32 3), align 2
  store i16 %13, ptr getelementptr ([0 x i16], ptr @gMapBank3ChainCycleSecondTiles, i32 0, i32 3), align 2
  br label %14

14:                                               ; preds = %7, %3
  %15 = add i8 %4, 1
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3ChainGrid() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143463247 to ptr)) #13
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 6, i32 noundef 132, ptr noundef nonnull inttoptr (i32 143560483 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 143560746) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 2, i8 noundef zeroext 1, i32 noundef 143560792) #13
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ %18, %1 ], [ 0, %0 ]
  %3 = trunc i32 %2 to i8
  %4 = freeze i8 %3
  %5 = udiv i8 %4, 3
  %6 = mul i8 %5, 3
  %7 = sub i8 %4, %6
  %8 = shl nuw nsw i8 %7, 4
  %9 = add nuw nsw i8 %8, 16
  %10 = zext nneg i8 %9 to i32
  %11 = zext nneg i8 %5 to i32
  %12 = shl nuw nsw i32 %11, 4
  %13 = add nuw nsw i32 %12, 88
  %14 = getelementptr [0 x ptr], ptr @gMapBank3ChainGridAnimations, i32 0, i32 %2
  %15 = load ptr, ptr %14, align 4
  %16 = trunc i32 %2 to i8
  %17 = add i8 %16, 22
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %17, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %10, i32 noundef 0, i32 noundef %13, ptr noundef %15) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %17, i8 noundef zeroext 0) #13
  %18 = add nuw nsw i32 %2, 1
  %19 = icmp eq i32 %18, 9
  br i1 %19, label %20, label %1

20:                                               ; preds = %1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @EndMapBank3ChainFlagGraphics() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143463470 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 3, i8 noundef zeroext 0, i32 noundef 0) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 0, i32 noundef 0) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 0, i32 noundef 0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank3NoOp4EFC8() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4EFCC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143463591 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530475 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143463591, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F020() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 143560746) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 2, i8 noundef zeroext 1, i32 noundef 143560792) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143561384 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef 143561415) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143561433) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143561454) #13
  store i8 31, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143561384, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F0A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 143560746) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 2, i8 noundef zeroext 1, i32 noundef 143560792) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143561384 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef 143561475) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143561493) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143561514) #13
  store i8 31, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143561384, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F120() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef 143560746) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 2, i8 noundef zeroext 1, i32 noundef 143560792) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143561384 to ptr)) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef 143561535) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143561556) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 0, i32 noundef 0) #13
  store i8 31, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143561384, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank3NoOp4F19C() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Slot22DirectionAnimation4F1A0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 22, i8 noundef zeroext %1) #13
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %8 [
    i8 4, label %6
    i8 1, label %4
    i8 2, label %5
  ]

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %0, %4, %5
  %7 = phi ptr [ inttoptr (i32 143562065 to ptr), %5 ], [ inttoptr (i32 143562073 to ptr), %4 ], [ inttoptr (i32 143562081 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull %7) #13
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F1F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562073 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F204() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562081 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Slot22DirectionAnimation4F218() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 22, i8 noundef zeroext %1) #13
  %3 = trunc i32 %2 to i8
  switch i8 %3, label %7 [
    i8 4, label %5
    i8 2, label %4
  ]

4:                                                ; preds = %0
  br label %5

5:                                                ; preds = %0, %4
  %6 = phi ptr [ inttoptr (i32 143562089 to ptr), %4 ], [ inttoptr (i32 143562097 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull %6) #13
  br label %7

7:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F254() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562089 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F268() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562097 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F27C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562105 to ptr)) #13
  store i8 22, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143562105, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F2A4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562123 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F2B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562123 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F2CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562144 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F2E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562152 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F2F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143562160 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F308() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143496211 to ptr)) #13
  store i8 19, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143496211, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F330() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143561996 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F344() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143562020 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F358() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143562028 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F36C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143562036 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F380() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143562044 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4F394() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143562052 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F3A8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset12F58() #13
  tail call arm_apcscc void @SetActorAnimationPreset13324() #13
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12F58() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetActorAnimationPreset13324() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F3B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143561762 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 24, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 25) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F3E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143442979 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F428() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538464 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F468() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528804) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538601 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F4A8() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143468288 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143468333 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 23, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F500() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143442979 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #13
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143442956, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F558() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538529 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F598() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @ScriptCallbackCompareMapBank3Class2X(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = load i8, ptr %0, align 1
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = zext i8 %2 to i32
  %5 = mul nuw nsw i32 %4, 104
  %6 = ptrtoint ptr %3 to i32
  %7 = add i32 %5, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr @gRenderClassSlots2, align 1
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 104
  %12 = add i32 %11, %6
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %15, %17
  %19 = select i1 %18, i32 6, i32 1
  ret i32 %19
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Class3ControlDirection() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @ScriptCallbackStoreDirectionsAgainstControl12(ptr noundef nonnull @gRenderClassSlots0) #13
  %2 = load i8, ptr @gRasterScriptControlBytes, align 1
  switch i8 %2, label %9 [
    i8 2, label %6
    i8 1, label %3
    i8 4, label %4
    i8 3, label %5
  ]

3:                                                ; preds = %0
  br label %6

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %0, %3, %4, %5
  %7 = phi ptr [ inttoptr (i32 143434814 to ptr), %5 ], [ inttoptr (i32 143434802 to ptr), %4 ], [ inttoptr (i32 143434778 to ptr), %3 ], [ inttoptr (i32 143434790 to ptr), %0 ]
  %8 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %8, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %0
  ret void
}

declare dso_local arm_apcscc i32 @ScriptCallbackStoreDirectionsAgainstControl12(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Class2ControlDirection() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @ScriptCallbackStoreDirectionsAgainstControl12(ptr noundef nonnull @gRenderClassSlots0) #13
  %2 = load i8, ptr @gRasterScriptControlBytes, align 1
  switch i8 %2, label %9 [
    i8 2, label %6
    i8 1, label %3
    i8 4, label %4
    i8 3, label %5
  ]

3:                                                ; preds = %0
  br label %6

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %0, %3, %4, %5
  %7 = phi ptr [ inttoptr (i32 143434814 to ptr), %5 ], [ inttoptr (i32 143434802 to ptr), %4 ], [ inttoptr (i32 143434778 to ptr), %3 ], [ inttoptr (i32 143434790 to ptr), %0 ]
  %8 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %8, ptr noundef nonnull %7) #13
  br label %9

9:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F6EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureGraphicsAnimationSlots15D5C() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143446599 to ptr)) #13
  ret void
}

declare dso_local arm_apcscc void @ConfigureGraphicsAnimationSlots15D5C() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank3NoOp4F708() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F70C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %2, i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143434090 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3AuxiliaryByAnimation() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = zext i8 %1 to i32
  %4 = getelementptr %struct.RenderSlot, ptr %2, i32 %3, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 143441642
  %7 = add i8 %1, 1
  %8 = select i1 %6, ptr inttoptr (i32 143434192 to ptr), ptr inttoptr (i32 143434205 to ptr)
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %7, i8 noundef zeroext %1, ptr noundef nonnull %8) #13
  %9 = load i8, ptr @gRenderClassSlots2, align 1
  %10 = add i8 %9, 1
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext %10, i32 noundef 0, i32 noundef -1, i32 noundef 1) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F794() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562385 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F7D8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562399 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank3NoOp4F81C() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F820() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset14124() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset19C04() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562385 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E00() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14124() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19C04() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F838() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset1413C() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562385 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset1413C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F84C() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset14154() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset19728() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562385 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14154() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19728() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F864() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset1416C() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562385 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset1416C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F878() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset14184() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562385 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14184() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F88C() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset1419C() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562385 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset1419C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F8A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset141B4() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset19C04() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset141B4() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4F8B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset141CC() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset141CC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F8C4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset141E4() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset197D0() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset141E4() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset197D0() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F8D8() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset141FC() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset199B8() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset141FC() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset199B8() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F8EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset14244() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143562399 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset199B8() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14244() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F904() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset1425C() #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143426165 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset1425C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F960() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset14274() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset19E40() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14274() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19E40() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F974() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143528752) #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143426653 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143426806 to ptr)) #13
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4F9E4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset142A4() #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143426277 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset142A4() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FA40() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset142BC() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset142BC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FA50() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset142D4() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset19C9C() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset142D4() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19C9C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FA64() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset14304() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14304() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FA74() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset14334() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14334() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FA84() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #13
  tail call arm_apcscc void @SetSecondaryAnimationPreset1422C() #13
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset1422C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FA94() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureRenderSetupPreset190C0() #13
  tail call arm_apcscc void @SetGraphicsAnimationPreset16060() #13
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset190C0() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16060() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FAA4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureRenderSetupPreset19250() #13
  tail call arm_apcscc void @SetGraphicsAnimationPreset1575C() #13
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19250() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset1575C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FAB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationAndIndicator156F0() #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439243 to ptr)) #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator156F0() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank3NoOp4FACC() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FAD0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset1682C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset19488() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1682C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19488() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FAE0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16090() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B008() #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16090() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B008() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackFadeInMapBank3Song37(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 718) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call arm_apcscc void @StopSong(i16 noundef zeroext 55) #13
  br label %19

7:                                                ; preds = %3
  %8 = tail call ptr asm "", "=r,0"(ptr nonnull @gRasterScriptControlBytes) #16, !srcloc !47
  %9 = getelementptr i8, ptr %8, i32 475
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 55) #13
  %13 = load i8, ptr %9, align 1
  br label %14

14:                                               ; preds = %12, %7
  %15 = phi i8 [ %13, %12 ], [ %10, %7 ]
  %16 = add i8 %15, 6
  store i8 %16, ptr %9, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 2
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext4E90, i32 noundef 255, i32 noundef %18) #13
  br label %19

19:                                               ; preds = %14, %6
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetAudioTrackVolume(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackFadeOutMapBank3Song37(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 718) #13
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call arm_apcscc void @StopSong(i16 noundef zeroext 55) #13
  br label %17

7:                                                ; preds = %3
  %8 = tail call ptr asm "", "=r,0"(ptr nonnull @gRasterScriptControlBytes) #16, !srcloc !48
  %9 = getelementptr i8, ptr %8, i32 475
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -6
  store i8 %11, ptr %9, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = zext i8 %11 to i32
  %15 = shl nuw nsw i32 %14, 2
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext4E90, i32 noundef 255, i32 noundef %15) #13
  br label %17

16:                                               ; preds = %7
  tail call arm_apcscc void @StopSong(i16 noundef zeroext 55) #13
  br label %17

17:                                               ; preds = %13, %16, %6
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FBA4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureActorPreviousSlotAndGraphics13084() #13
  tail call arm_apcscc void @ConfigureFollowerPreviousSlotAndGraphics13954() #13
  ret void
}

declare dso_local arm_apcscc void @ConfigureActorPreviousSlotAndGraphics13084() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureFollowerPreviousSlotAndGraphics13954() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FBB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset1682C() #13
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E2C() #13
  ret void
}

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E2C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FBC4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset12EE0() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A168() #13
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12EE0() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A168() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FBD4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset1691C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B1AC() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1691C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B1AC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FBE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset1694C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B200() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1694C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B200() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FBF4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15444() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AA64() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AB0C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AB60() #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15444() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AA64() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AB0C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AB60() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FC0C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset155AC() #13
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E90() #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset155AC() local_unnamed_addr #2

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E90() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FC1C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset160F0() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AB98() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1ABEC() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AC40() #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset160F0() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AB98() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1ABEC() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AC40() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FC34() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureGraphicsAnimationSlots15DD0() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AD00() #13
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143446599 to ptr)) #13
  ret void
}

declare dso_local arm_apcscc void @ConfigureGraphicsAnimationSlots15DD0() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AD00() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FC54() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15ED4() #13
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143447286 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15ED4() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FC9C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset1773C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BB70() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1773C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BB70() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FCAC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143492523 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull inttoptr (i32 143492523 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FCD0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset175D4() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BC18() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset175D4() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BC18() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FCE0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset17664() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BC5C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BCA0() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17664() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BC5C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BCA0() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FCF4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset17840() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BBC4() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17840() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BBC4() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FD04() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset17004() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B764() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17004() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B764() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FD14() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16270() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset194DC() #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16270() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset194DC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FD24() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset155AC() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset19250() #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FD34() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15444() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AA64() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AB0C() #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FD48() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset160F0() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AB98() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1ABEC() #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FD5C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143281852 to ptr)) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143297537 to ptr)) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143281852 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FD88() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282915 to ptr)) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143299124 to ptr)) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282915 to ptr)) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank3NoOp4FDB4() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FDB8() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14BC4() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14BAC() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14BC4() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14BAC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FDD8() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14BF4() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14BDC() #13
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi ptr [ @gRenderClassSlots2, %4 ], [ @gRenderClassSlots3, %3 ]
  %7 = load i8, ptr %6, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %7, ptr noundef nonnull inttoptr (i32 143428523 to ptr)) #13
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14BF4() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14BDC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FE1C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14C24() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14C0C() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14C24() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14C0C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FE3C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14C54() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14C3C() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14C54() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14C3C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FE5C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14C84() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14C6C() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14C84() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14C6C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FE7C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14CB4() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14C9C() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14CB4() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14C9C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FE9C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14CE4() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14CCC() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14CE4() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14CCC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FEBC() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14D14() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14CFC() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14D14() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14CFC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FEDC() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14D44() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14D2C() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14D44() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14D2C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FEFC() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14D74() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14D5C() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14D74() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14D5C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation4FF1C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143564279 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FF34() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = select i1 %2, i8 %3, i8 %4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef nonnull inttoptr (i32 143564292 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FF70() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14DA4() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14D8C() #13
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi ptr [ @gRenderClassSlots2, %4 ], [ @gRenderClassSlots3, %3 ]
  %7 = load i8, ptr %6, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %7, ptr noundef nonnull inttoptr (i32 143428707 to ptr)) #13
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14DA4() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14D8C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FFB4() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14DD4() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14DBC() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14DD4() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14DBC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset4FFD4() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14E04() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14DEC() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14E04() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14DEC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset4FFF4() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14E34() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14E1C() #13
  br label %5

5:                                                ; preds = %4, %3
  %6 = phi ptr [ @gRenderClassSlots2, %4 ], [ @gRenderClassSlots3, %3 ]
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143429772 to ptr)) #13
  %9 = load i8, ptr %6, align 1
  %10 = add i8 %9, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %10, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %9) #13
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14E34() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14E1C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50088() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143564300 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset500A0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143428941 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143429054 to ptr)) #13
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #13
  %6 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %6, ptr noundef nonnull inttoptr (i32 143429785 to ptr)) #13
  %7 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %7, ptr noundef nonnull inttoptr (i32 143428941 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation5010C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143564313 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset50124() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14EAC() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14E94() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14EAC() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14E94() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset50144() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143428733 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143428733 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset50168() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 167), align 1
  %2 = icmp eq i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14E7C() #13
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetExtendedAnimationPreset14E64() #13
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14E7C() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14E64() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset50188() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143428523 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143428585 to ptr)) #13
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #13
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %6, ptr noundef nonnull inttoptr (i32 143428523 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset501E4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143428613 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143428613 to ptr)) #13
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143428636 to ptr)) #13
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = add i8 %5, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50240() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143564292 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset50258() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset14D8C() #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143428707 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50274() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143564271 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset5028C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143429334 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143429334 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset502B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143564326 to ptr)) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 20, ptr noundef nonnull inttoptr (i32 143564326 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeMapBank3Phases(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 99) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 100) to ptr), align 1
  store i8 0, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 101) to ptr), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 102), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = tail call arm_apcscc i32 @PickMapBank3PhaseKind(i32 noundef 0) #15
  %3 = trunc i32 %2 to i8
  store i8 %3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %4 = and i32 %2, 255
  %5 = icmp ult i32 %4, 3
  %6 = select i1 %5, i32 1, i32 3
  %7 = tail call arm_apcscc i32 @PickMapBank3PhaseKind(i32 noundef %6) #15
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  %9 = and i32 %7, 255
  %10 = icmp ugt i32 %9, 2
  %11 = select i1 %5, i32 3, i32 4
  %12 = select i1 %5, i32 2, i32 1
  %13 = select i1 %10, i32 %11, i32 %12
  %14 = tail call arm_apcscc i32 @PickMapBank3PhaseKind(i32 noundef %13) #15
  %15 = trunc i32 %14 to i8
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  %16 = and i32 %14, 255
  %17 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 120, i32 noundef 0, i32 noundef 120, ptr noundef %18) #13
  %19 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %16, i32 1
  %20 = load ptr, ptr %19, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 120, i32 noundef 0, i32 noundef 120, ptr noundef %20) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 15, i8 noundef zeroext 1) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 16, i8 noundef zeroext 1) #13
  %21 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %16, i32 2
  %22 = load ptr, ptr %21, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 1, ptr noundef %22) #13
  %23 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %16, i32 3
  %24 = load ptr, ptr %23, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 2, ptr noundef %24) #13
  %25 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %16, i32 4
  %26 = load ptr, ptr %25, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 6, i32 noundef 4, ptr noundef %26) #13
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %28 = icmp ugt i8 %27, 2
  %29 = select i1 %28, i32 -1, i32 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef 0, i32 noundef 100, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143564863 to ptr)) #13
  %30 = mul nsw i32 %29, 450
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %30, i32 noundef 100, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143564949 to ptr)) #13
  %31 = mul nsw i32 %29, 900
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %31, i32 noundef 100, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143564906 to ptr)) #13
  %32 = mul nsw i32 %29, 1350
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %32, i32 noundef 100, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143564949 to ptr)) #13
  %33 = mul nsw i32 %29, 1800
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %33, i32 noundef 100, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143564863 to ptr)) #13
  %34 = trunc i32 %29 to i16
  %35 = shl nsw i16 %34, 8
  %36 = sext i16 %35 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %36, i32 noundef 72, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565160 to ptr)) #13
  %37 = mul nsw i32 %29, 706
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %37, i32 noundef 72, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565074 to ptr)) #13
  %38 = mul nsw i32 %29, 1156
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %38, i32 noundef 72, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565117 to ptr)) #13
  %39 = mul nsw i32 %29, 1606
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %39, i32 noundef 72, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565160 to ptr)) #13
  %40 = mul nsw i32 %29, 2056
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %40, i32 noundef 72, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565074 to ptr)) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 17, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 18, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 19, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 20, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 21, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 22, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 23, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 24, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 25, i8 noundef zeroext 3) #13
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 26, i8 noundef zeroext 3) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @PickMapBank3PhaseKind(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm "", "={r4}"() #16, !srcloc !49
  %3 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 16) #13
  %4 = trunc i32 %0 to i8
  switch i8 %4, label %49 [
    i8 0, label %5
    i8 1, label %13
    i8 2, label %25
    i8 3, label %31
    i8 4, label %43
  ]

5:                                                ; preds = %1
  %6 = and i16 %3, 255
  %7 = icmp ult i16 %6, 7
  br i1 %7, label %49, label %8

8:                                                ; preds = %5
  %9 = icmp ult i16 %6, 9
  br i1 %9, label %49, label %10

10:                                               ; preds = %8
  %11 = icmp ugt i16 %6, 14
  %12 = select i1 %11, i32 5, i32 4
  br label %49

13:                                               ; preds = %1
  %14 = and i16 %3, 255
  %15 = icmp ult i16 %14, 2
  br i1 %15, label %49, label %16

16:                                               ; preds = %13
  %17 = icmp ult i16 %14, 5
  br i1 %17, label %49, label %18

18:                                               ; preds = %16
  %19 = icmp eq i16 %14, 5
  br i1 %19, label %49, label %20

20:                                               ; preds = %18
  %21 = icmp ult i16 %14, 11
  br i1 %21, label %49, label %22

22:                                               ; preds = %20
  %23 = icmp ugt i16 %14, 13
  %24 = select i1 %23, i32 0, i32 2
  br label %49

25:                                               ; preds = %1
  %26 = and i16 %3, 255
  %27 = icmp ult i16 %26, 4
  br i1 %27, label %49, label %28

28:                                               ; preds = %25
  %29 = icmp ugt i16 %26, 13
  %30 = select i1 %29, i32 0, i32 2
  br label %49

31:                                               ; preds = %1
  %32 = and i16 %3, 255
  %33 = icmp ult i16 %32, 2
  br i1 %33, label %49, label %34

34:                                               ; preds = %31
  %35 = icmp ult i16 %32, 5
  br i1 %35, label %49, label %36

36:                                               ; preds = %34
  %37 = icmp eq i16 %32, 5
  br i1 %37, label %49, label %38

38:                                               ; preds = %36
  %39 = icmp ult i16 %32, 11
  br i1 %39, label %49, label %40

40:                                               ; preds = %38
  %41 = icmp ugt i16 %32, 13
  %42 = select i1 %41, i32 3, i32 5
  br label %49

43:                                               ; preds = %1
  %44 = and i16 %3, 255
  %45 = icmp ult i16 %44, 4
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = icmp ugt i16 %44, 13
  %48 = select i1 %47, i32 3, i32 5
  br label %49

49:                                               ; preds = %46, %40, %28, %22, %10, %43, %38, %36, %34, %31, %25, %20, %18, %16, %13, %8, %5, %1
  %50 = phi i32 [ %2, %1 ], [ 4, %43 ], [ %48, %46 ], [ 4, %31 ], [ 5, %34 ], [ 3, %36 ], [ 4, %38 ], [ %42, %40 ], [ 1, %25 ], [ %30, %28 ], [ 1, %13 ], [ 2, %16 ], [ 0, %18 ], [ 1, %20 ], [ %24, %22 ], [ 1, %5 ], [ 2, %8 ], [ %12, %10 ]
  ret i32 %50
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdvanceMapBank3Phase(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 102), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %42, label %4

4:                                                ; preds = %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 102), align 1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %6 = add i8 %5, 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %7 = icmp eq i8 %6, 2
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  %10 = icmp ugt i8 %9, 2
  %11 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 700) #13
  %12 = icmp eq i32 %11, 0
  br i1 %10, label %13, label %19

13:                                               ; preds = %8
  br i1 %12, label %14, label %17

14:                                               ; preds = %13
  %15 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 406) #13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef -32, i32 noundef 110, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565285 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 12, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565312 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -14, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565334 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 27, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 17) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 28, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 17) #13
  br label %25

18:                                               ; preds = %14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef -32, i32 noundef 110, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565258 to ptr)) #13
  br label %25

19:                                               ; preds = %8
  br i1 %12, label %20, label %23

20:                                               ; preds = %19
  %21 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 406) #13
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %19
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 272, i32 noundef 110, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565231 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 12, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565312 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -14, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565334 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 27, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 17) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 28, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 17) #13
  br label %25

24:                                               ; preds = %20
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 272, i32 noundef 110, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143565203 to ptr)) #13
  br label %25

25:                                               ; preds = %23, %24, %18, %17, %4
  %26 = tail call i8 @llvm.umin.i8(i8 %6, i8 2)
  %27 = add nuw nsw i8 %26, 99
  %28 = zext nneg i8 %27 to i32
  %29 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %28
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 15, ptr noundef %33) #13
  %34 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %31, i32 1
  %35 = load ptr, ptr %34, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef %35) #13
  %36 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %31, i32 2
  %37 = load ptr, ptr %36, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 129, ptr noundef %37) #13
  %38 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %31, i32 3
  %39 = load ptr, ptr %38, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 130, ptr noundef %39) #13
  %40 = getelementptr [0 x [5 x ptr]], ptr @gMapBank3PhaseResourceRows, i32 0, i32 %31, i32 4
  %41 = load ptr, ptr %40, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 6, i32 noundef 132, ptr noundef %41) #13
  br label %42

42:                                               ; preds = %25, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank3NoOp507CC() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank3RenderPreset507D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143528796) #13
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143528875) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282676 to ptr)) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143298820 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530769 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530812 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #13
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282676 to ptr)) #13
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset50868() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 147), align 1
  %2 = add i8 %1, -5
  %3 = icmp ult i8 %2, 2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143566568 to ptr)) #13
  br label %6

5:                                                ; preds = %0
  tail call arm_apcscc void @SetDirectionalAnimationPreset168A4() #13
  br label %6

6:                                                ; preds = %5, %4
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset168A4() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset50894() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143463529 to ptr)) #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B158() #13
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B158() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset508AC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset1694C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B200() #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset508BC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16A6C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B480() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B4D4() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16A6C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B480() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B4D4() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset508D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16D7C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B6CC() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16D7C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B6CC() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset508E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16B60() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B384() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16B60() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B384() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset508F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16B00() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B2DC() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B330() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16B00() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B2DC() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B330() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset50904() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16B78() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B3D8() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B42C() #13
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16B78() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B3D8() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B42C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50918() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505547 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset5092C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset17E74() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BCE4() #13
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17E74() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BCE4() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset5093C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset181F8() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset19D44() #13
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset181F8() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19D44() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset5094C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143566626 to ptr)) #13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 24, ptr noundef nonnull inttoptr (i32 143538509 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset5096C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset17C6C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BD7C() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BDD0() #13
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17C6C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BD7C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BDD0() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset50980() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset18090() #13
  tail call arm_apcscc void @ConfigureRenderSetupPreset1BD38() #13
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18090() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1BD38() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50990() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143507787 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackMoveMapBank3Orbit(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 464), align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %42

7:                                                ; preds = %3
  %8 = zext i8 %4 to i32
  %9 = shl nuw nsw i32 %8, 1
  %10 = add i32 %9, add (i32 ptrtoint (ptr @gAnimationClassValues to i32), i32 454)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i16, ptr %11, align 2
  %13 = and i16 %12, 7
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %7
  %16 = lshr exact i16 %12, 3
  %17 = and i16 %16, 255
  %18 = zext nneg i16 %17 to i32
  %19 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add nuw nsw i32 %18, 64
  %22 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %21
  %23 = load i16, ptr %22, align 2
  %24 = sext i16 %23 to i32
  %25 = shl nsw i32 %24, 10
  %26 = add i32 %25, %20
  store i32 %26, ptr %19, align 4
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %18
  %30 = load i16, ptr %29, align 2
  %31 = sext i16 %30 to i32
  %32 = shl nsw i32 %31, 10
  %33 = add i32 %32, %28
  store i32 %33, ptr %27, align 4
  %34 = icmp ugt i16 %17, 174
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  store i16 648, ptr %11, align 2
  store i32 20611072, ptr %19, align 4
  store i32 32768, ptr %27, align 4
  %36 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 622592, ptr %36, align 4
  br label %37

37:                                               ; preds = %35, %15
  %38 = trunc i16 %16 to i8
  switch i8 %38, label %42 [
    i8 -128, label %39
    i8 -127, label %41
  ]

39:                                               ; preds = %37
  %40 = add i8 %4, 1
  store i8 %40, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 465), align 1
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 8, i32 noundef 129, ptr noundef nonnull inttoptr (i32 143566779 to ptr)) #13
  br label %42

41:                                               ; preds = %37
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 465), align 1
  br label %42

42:                                               ; preds = %39, %7, %37, %41, %3
  store i32 1, ptr %2, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackAdvanceMapBank3Orbit(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #11 {
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 464), align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %3
  %7 = load i8, ptr %1, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 1
  %10 = add i32 %9, add (i32 ptrtoint (ptr @gAnimationClassValues to i32), i32 454)
  %11 = inttoptr i32 %10 to ptr
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, 1
  %15 = trunc i32 %14 to i16
  %16 = and i32 %14, 7
  %17 = icmp eq i32 %16, 5
  %18 = or i16 %15, 7
  %19 = select i1 %17, i16 %18, i16 %15
  store i16 %19, ptr %11, align 2
  br label %20

20:                                               ; preds = %6, %3
  store i32 0, ptr %2, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackShuffleMapBank3OrbitEntries(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca [6 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %2) #14
  call void asm "", "=*m"(ptr nonnull elementtype(i8) %2) #14, !srcloc !50
  store i8 -1, ptr %2, align 1
  %3 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 1
  call void asm "", "=*m"(ptr nonnull elementtype(i8) %3) #14, !srcloc !50
  store i8 -1, ptr %3, align 1
  %4 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 2
  call void asm "", "=*m"(ptr nonnull elementtype(i8) %4) #14, !srcloc !50
  store i8 -1, ptr %4, align 1
  %5 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 3
  call void asm "", "=*m"(ptr nonnull elementtype(i8) %5) #14, !srcloc !50
  store i8 -1, ptr %5, align 1
  %6 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 4
  call void asm "", "=*m"(ptr nonnull elementtype(i8) %6) #14, !srcloc !50
  store i8 -1, ptr %6, align 1
  %7 = getelementptr inbounds [6 x i8], ptr %2, i32 0, i32 5
  call void asm "", "=*m"(ptr nonnull elementtype(i8) %7) #14, !srcloc !50
  store i8 -1, ptr %7, align 1
  store i8 4, ptr %6, align 1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 147), align 1
  %9 = icmp eq i8 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i8 5, ptr %7, align 1
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i8, ptr %2, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %11, %14
  %15 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #13
  %16 = and i16 %15, 255
  %17 = zext nneg i16 %16 to i32
  %18 = getelementptr [6 x i8], ptr %2, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, -1
  br i1 %20, label %21, label %14

21:                                               ; preds = %14
  %22 = getelementptr [6 x i8], ptr %2, i32 0, i32 %17
  store i8 0, ptr %22, align 1
  br label %23

23:                                               ; preds = %21, %11
  %24 = load i8, ptr %3, align 1
  %25 = icmp eq i8 %24, 1
  br i1 %25, label %35, label %26

26:                                               ; preds = %23, %26
  %27 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #13
  %28 = and i16 %27, 255
  %29 = zext nneg i16 %28 to i32
  %30 = getelementptr [6 x i8], ptr %2, i32 0, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, -1
  br i1 %32, label %33, label %26

33:                                               ; preds = %26
  %34 = getelementptr [6 x i8], ptr %2, i32 0, i32 %29
  store i8 1, ptr %34, align 1
  br label %35

35:                                               ; preds = %33, %23
  %36 = load i8, ptr %4, align 1
  %37 = icmp eq i8 %36, 2
  br i1 %37, label %47, label %38

38:                                               ; preds = %35, %38
  %39 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #13
  %40 = and i16 %39, 255
  %41 = zext nneg i16 %40 to i32
  %42 = getelementptr [6 x i8], ptr %2, i32 0, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, -1
  br i1 %44, label %45, label %38

45:                                               ; preds = %38
  %46 = getelementptr [6 x i8], ptr %2, i32 0, i32 %41
  store i8 2, ptr %46, align 1
  br label %47

47:                                               ; preds = %45, %35
  %48 = load i8, ptr %5, align 1
  %49 = icmp eq i8 %48, 3
  br i1 %49, label %59, label %50

50:                                               ; preds = %47, %50
  %51 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #13
  %52 = and i16 %51, 255
  %53 = zext nneg i16 %52 to i32
  %54 = getelementptr [6 x i8], ptr %2, i32 0, i32 %53
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, -1
  br i1 %56, label %57, label %50

57:                                               ; preds = %50
  %58 = getelementptr [6 x i8], ptr %2, i32 0, i32 %53
  store i8 3, ptr %58, align 1
  br label %59

59:                                               ; preds = %57, %47
  %60 = load i8, ptr %6, align 1
  %61 = icmp eq i8 %60, 4
  br i1 %61, label %71, label %62

62:                                               ; preds = %59, %62
  %63 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #13
  %64 = and i16 %63, 255
  %65 = zext nneg i16 %64 to i32
  %66 = getelementptr [6 x i8], ptr %2, i32 0, i32 %65
  %67 = load i8, ptr %66, align 1
  %68 = icmp eq i8 %67, -1
  br i1 %68, label %69, label %62

69:                                               ; preds = %62
  %70 = getelementptr [6 x i8], ptr %2, i32 0, i32 %65
  store i8 4, ptr %70, align 1
  br label %71

71:                                               ; preds = %69, %59
  %72 = load i8, ptr %7, align 1
  %73 = icmp eq i8 %72, 5
  br i1 %73, label %83, label %74

74:                                               ; preds = %71, %74
  %75 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #13
  %76 = and i16 %75, 255
  %77 = zext nneg i16 %76 to i32
  %78 = getelementptr [6 x i8], ptr %2, i32 0, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = icmp eq i8 %79, -1
  br i1 %80, label %81, label %74

81:                                               ; preds = %74
  %82 = getelementptr [6 x i8], ptr %2, i32 0, i32 %77
  store i8 5, ptr %82, align 1
  br label %83

83:                                               ; preds = %81, %71
  br label %84

84:                                               ; preds = %83, %84
  %85 = phi i32 [ %97, %84 ], [ 0, %83 ]
  %86 = phi i8 [ %98, %84 ], [ 0, %83 ]
  %87 = mul nuw nsw i8 %86, 3
  %88 = getelementptr [6 x i8], ptr %2, i32 0, i32 %85
  %89 = load i8, ptr %88, align 1
  %90 = zext i8 %89 to i32
  %91 = getelementptr [0 x ptr], ptr @gMapBank3OrbitAnimations, i32 0, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = trunc i32 %85 to i8
  %94 = mul i8 %93, 3
  %95 = add i8 %94, 17
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %95, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %92) #13
  %96 = add nuw nsw i8 %87, 16
  call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %95, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %96) #13
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %95, i8 noundef zeroext 1) #13
  %97 = add nuw nsw i32 %85, 1
  %98 = add nuw nsw i8 %86, 1
  %99 = icmp eq i32 %97, 6
  br i1 %99, label %100, label %84

100:                                              ; preds = %84
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 227), align 2
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %2) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackMoveMapBank3OrbitEntry(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 227), align 2
  %5 = and i16 %4, 7
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %7, label %31

7:                                                ; preds = %3
  %8 = load i8, ptr %1, align 1
  %9 = lshr exact i16 %4, 3
  %10 = trunc i16 %9 to i8
  %11 = mul i8 %8, 42
  %12 = add i8 %11, %10
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = zext i8 %12 to i32
  %16 = add nuw nsw i32 %15, 64
  %17 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = sext i16 %18 to i32
  %20 = shl nsw i32 %19, 8
  %21 = add i32 %20, %14
  store i32 %21, ptr %13, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %15
  %25 = load i16, ptr %24, align 2
  %26 = sext i16 %25 to i32
  %27 = shl nsw i32 %26, 8
  %28 = add i32 %27, %23
  store i32 %28, ptr %22, align 4
  %29 = icmp eq i8 %12, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 8, i32 noundef 129, ptr noundef nonnull inttoptr (i32 143567774 to ptr)) #13
  br label %31

31:                                               ; preds = %7, %30, %3
  store i32 1, ptr %2, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackIncrementMapBank3Orbit(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 227), align 2
  %5 = add i16 %4, 1
  store i16 %5, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 227), align 2
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackHideMapBank3LowerSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 22, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 22, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  %8 = icmp sgt i32 %7, -1572864
  br i1 %8, label %73, label %9

9:                                                ; preds = %1
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 23, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 23, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = icmp sgt i32 %14, -1572864
  br i1 %15, label %73, label %16

16:                                               ; preds = %9
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 24, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %2, i32 24, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  %22 = icmp sgt i32 %21, -1572864
  br i1 %22, label %73, label %23

23:                                               ; preds = %16
  %24 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.RenderSlot, ptr %2, i32 25, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = add i32 %27, %25
  %29 = icmp sgt i32 %28, -1572864
  br i1 %29, label %73, label %30

30:                                               ; preds = %23
  %31 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.RenderSlot, ptr %2, i32 26, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, %32
  %36 = icmp sgt i32 %35, -1572864
  br i1 %36, label %73, label %37

37:                                               ; preds = %30
  %38 = getelementptr %struct.RenderSlot, ptr %2, i32 27, i32 4
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.RenderSlot, ptr %2, i32 27, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  %43 = icmp sgt i32 %42, -1572864
  br i1 %43, label %73, label %44

44:                                               ; preds = %37
  %45 = getelementptr %struct.RenderSlot, ptr %2, i32 28, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.RenderSlot, ptr %2, i32 28, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, %46
  %50 = icmp sgt i32 %49, -1572864
  br i1 %50, label %73, label %51

51:                                               ; preds = %44
  %52 = getelementptr %struct.RenderSlot, ptr %2, i32 29, i32 4
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr %struct.RenderSlot, ptr %2, i32 29, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = add i32 %55, %53
  %57 = icmp sgt i32 %56, -1572864
  br i1 %57, label %73, label %58

58:                                               ; preds = %51
  %59 = getelementptr %struct.RenderSlot, ptr %2, i32 30, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr %struct.RenderSlot, ptr %2, i32 30, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = add i32 %62, %60
  %64 = icmp sgt i32 %63, -1572864
  br i1 %64, label %73, label %65

65:                                               ; preds = %58
  %66 = getelementptr %struct.RenderSlot, ptr %2, i32 31, i32 4
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr %struct.RenderSlot, ptr %2, i32 31, i32 5
  %69 = load i32, ptr %68, align 4
  %70 = add i32 %69, %67
  %71 = icmp sgt i32 %70, -1572864
  br i1 %71, label %73, label %72

72:                                               ; preds = %65
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 692, i32 noundef 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 22, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 27, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 29, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #13
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 31, i8 noundef zeroext 0) #13
  br label %73

73:                                               ; preds = %1, %9, %16, %23, %30, %37, %44, %51, %58, %65, %72
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackJumpUnlessMapBank3ValueEquals(ptr nocapture noundef readonly %0) local_unnamed_addr #11 {
  %2 = alloca %struct.anon, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #14
  %3 = load i8, ptr %0, align 1
  %4 = ptrtoint ptr %2 to i32
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %2, align 4
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = or disjoint i32 %4, 1
  %10 = inttoptr i32 %9 to ptr
  store i8 %8, ptr %10, align 1
  %11 = getelementptr i8, ptr %0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = or disjoint i32 %4, 2
  %14 = inttoptr i32 %13 to ptr
  store i8 %12, ptr %14, align 2
  %15 = getelementptr i8, ptr %0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = or disjoint i32 %4, 3
  %18 = inttoptr i32 %17 to ptr
  store i8 %16, ptr %18, align 1
  %19 = getelementptr i8, ptr %0, i32 5
  %20 = load i8, ptr %19, align 1
  %21 = add nuw i32 %4, 4
  %22 = inttoptr i32 %21 to ptr
  store i8 %20, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = add nuw i32 %4, 5
  %26 = inttoptr i32 %25 to ptr
  store i8 %24, ptr %26, align 1
  %27 = getelementptr i8, ptr %0, i32 7
  %28 = load i8, ptr %27, align 1
  %29 = add nuw i32 %4, 6
  %30 = inttoptr i32 %29 to ptr
  store i8 %28, ptr %30, align 2
  %31 = getelementptr i8, ptr %0, i32 8
  %32 = load i8, ptr %31, align 1
  %33 = add nuw i32 %4, 7
  %34 = inttoptr i32 %33 to ptr
  store i8 %32, ptr %34, align 1
  %35 = icmp eq i8 %3, 0
  %36 = load i16, ptr %2, align 4
  %37 = zext i16 %36 to i32
  br i1 %35, label %38, label %42

38:                                               ; preds = %1
  %39 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %37
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  br label %46

42:                                               ; preds = %1
  %43 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %37
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  br label %46

46:                                               ; preds = %42, %38
  %47 = phi i32 [ %41, %38 ], [ %45, %42 ]
  %48 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %55, label %52

52:                                               ; preds = %46
  %53 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  store ptr %54, ptr @gScriptCursor, align 4
  br label %55

55:                                               ; preds = %46, %52
  %56 = phi i32 [ -4, %52 ], [ 9, %46 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #14
  ret i32 %56
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset50CEC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16210() #13
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E64() #13
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16210() local_unnamed_addr #2

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E64() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3SqrtMotion() local_unnamed_addr #0 {
  store i16 352, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 87), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef -40, i32 noundef -8, i32 noundef -40, ptr noundef nonnull inttoptr (i32 143568276 to ptr)) #13
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 23, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i32 143568299 to ptr)) #13
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackTickMapBank3SqrtMotion(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 87), align 2
  %5 = zext i16 %4 to i32
  %6 = add i16 %4, -1
  store i16 %6, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 87), align 2
  %7 = tail call i32 asm "", "={r1},{r1}"(i32 %5) #16, !srcloc !51
  %8 = and i32 %7, 65535
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = mul nuw nsw i32 %8, 20000
  %11 = add nuw nsw i32 %10, 10715136
  %12 = ptrtoint ptr %9 to i32
  %13 = add i32 %12, 2288
  %14 = inttoptr i32 %13 to ptr
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %14, i32 0, i32 3
  store i32 %11, ptr %15, align 4
  %16 = tail call arm_apcscc i32 @BiosSqrt(i32 noundef %8) #13
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = add i32 %18, 2288
  %20 = inttoptr i32 %19 to ptr
  %21 = and i32 %16, 65535
  %22 = shl nuw nsw i32 %8, 1
  %23 = and i32 %22, 254
  %24 = getelementptr i16, ptr @gRenderSineTable, i32 %23
  %25 = load i16, ptr %24, align 2
  %26 = sext i16 %25 to i32
  %27 = shl nsw i32 %26, 10
  %28 = add nuw nsw i32 %21, 9142272
  %29 = add nsw i32 %28, %27
  %30 = getelementptr inbounds %struct.RenderSlot, ptr %20, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = icmp eq i32 %8, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143544977 to ptr)) #13
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  store i8 0, ptr %33, align 4
  br label %34

34:                                               ; preds = %32, %3
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc i32 @BiosSqrt(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50DDC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 21, ptr noundef nonnull inttoptr (i32 143568213 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset50DF0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143454371 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  store i8 %2, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143454371, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset50E20() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528963) #13
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143446760 to ptr)) #13
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143446813 to ptr)) #13
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #13
  %6 = load i8, ptr @gRenderClassSlots3, align 1
  %7 = add i8 %6, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143446836 to ptr)) #13
  %8 = load i8, ptr @gRenderClassSlots3, align 1
  %9 = add i8 %8, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %8) #13
  %10 = load i8, ptr @gRenderClassSlots3, align 1
  store i8 %10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143446760, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50EC4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143516929 to ptr)) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset50ED8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143516942 to ptr)) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143516970 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143517060 to ptr)) #13
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #13
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3RenderPreset50F3C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #13
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %1, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 144, i32 noundef 0, i32 noundef 88, ptr noundef nonnull inttoptr (i32 143404770 to ptr)) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @ApplyMapBank3RenderPreset50F70() local_unnamed_addr #5 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  store i8 %1, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143411320, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #12

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!4 = !{i64 51332}
!5 = !{i64 26973}
!6 = !{i64 29750}
!7 = !{i64 35513}
!8 = !{i64 51945}
!9 = !{i64 46090}
!10 = !{i64 47092}
!11 = !{i64 47825}
!12 = !{i64 47925}
!13 = !{i64 48954}
!14 = !{i64 52739}
!15 = !{i64 53437}
!16 = !{i64 53948}
!17 = !{i64 57806}
!18 = !{i64 58101}
!19 = !{i64 61095}
!20 = !{i64 61781}
!21 = !{i64 62033}
!22 = !{i64 62302}
!23 = !{i64 64083}
!24 = !{i64 72916}
!25 = !{i64 73402}
!26 = !{i64 73894}
!27 = !{i32 0, i32 256}
!28 = !{i64 114590}
!29 = !{i64 113247}
!30 = !{i64 120038}
!31 = !{i64 111564}
!32 = !{i64 84770}
!33 = !{i64 85048}
!34 = !{i64 109389}
!35 = !{i64 94173}
!36 = !{i64 96122}
!37 = !{i64 96702}
!38 = !{i64 97403}
!39 = !{i64 98451}
!40 = !{i64 99020}
!41 = !{i64 99305}
!42 = !{i64 100007}
!43 = !{i64 101896}
!44 = !{i64 103557}
!45 = !{i64 104818}
!46 = !{i64 105976}
!47 = !{i64 138060}
!48 = !{i64 138543}
!49 = !{i64 154405}
!50 = !{i64 161181}
!51 = !{i64 164559}
