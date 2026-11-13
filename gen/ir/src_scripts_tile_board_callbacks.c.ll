; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTileBoardCoordinates = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2
@gTileBoardAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTileBoardCursorDown = external dso_local constant [0 x i8], align 1
@gActorRegionZMovingAnimation0 = external dso_local constant [0 x i8], align 1
@gActorRegionXMovingAnimation0 = external dso_local constant [0 x i8], align 1
@gTileBoardCursorRight = external dso_local constant [0 x i8], align 1
@gTileBoardDirectionOffsets = external dso_local local_unnamed_addr global [0 x i16], align 2
@gTileBoardMotionVectors = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2
@gTileBoardArrowUpOpen = external dso_local constant [0 x i8], align 1
@gTileBoardArrowUpBlocked = external dso_local constant [0 x i8], align 1
@gTileBoardArrowDownOpen = external dso_local constant [0 x i8], align 1
@gTileBoardArrowDownBlocked = external dso_local constant [0 x i8], align 1
@gTileBoardArrowLeftOpen = external dso_local constant [0 x i8], align 1
@gTileBoardArrowLeftBlocked = external dso_local constant [0 x i8], align 1
@gTileBoardArrowRightOpen = external dso_local constant [0 x i8], align 1
@gTileBoardArrowRightBlocked = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeTileBoard(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 429) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %4
  %6 = phi i8 [ 1, %4 ], [ 0, %1 ]
  %7 = phi i8 [ 2, %4 ], [ 1, %1 ]
  %8 = phi i8 [ 6, %4 ], [ 2, %1 ]
  %9 = phi i8 [ 5, %4 ], [ 3, %1 ]
  %10 = phi i8 [ 0, %4 ], [ 4, %1 ]
  %11 = phi i8 [ 7, %4 ], [ 5, %1 ]
  %12 = phi i8 [ 3, %4 ], [ 6, %1 ]
  %13 = phi i8 [ 8, %4 ], [ 7, %1 ]
  %14 = phi i8 [ 4, %4 ], [ 8, %1 ]
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  store i8 %9, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  store i8 %10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 422), align 1
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 423), align 1
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 424), align 1
  store i8 9, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 425), align 1
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureTileBoardSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %19
  %3 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %4 = or disjoint i32 %3, 416
  %5 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %19, label %8

8:                                                ; preds = %2
  %9 = zext i8 %6 to i32
  %10 = add i8 %6, 24
  %11 = getelementptr [0 x [2 x i16]], ptr @gTileBoardCoordinates, i32 0, i32 %3
  %12 = load i16, ptr %11, align 2
  %13 = sext i16 %12 to i32
  %14 = getelementptr [0 x [2 x i16]], ptr @gTileBoardCoordinates, i32 0, i32 %3, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = sext i16 %15 to i32
  %17 = getelementptr [0 x ptr], ptr @gTileBoardAnimations, i32 0, i32 %9
  %18 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %10, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %13, i32 noundef %16, i32 noundef 0, ptr noundef %18) #3
  br label %19

19:                                               ; preds = %8, %2
  %20 = add nuw nsw i32 %3, 1
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %2

22:                                               ; preds = %19
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackMoveTileBoardCursor(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  store i8 0, ptr @gRasterScriptControlBytes, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = load i8, ptr %0, align 1
  switch i8 %2, label %131 [
    i8 0, label %3
    i8 1, label %34
    i8 2, label %65
    i8 3, label %95
  ]

3:                                                ; preds = %1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %5 = icmp ult i8 %4, 7
  br i1 %5, label %6, label %131

6:                                                ; preds = %3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gTileBoardCursorDown) #3
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 256) #3
  store i8 1, ptr @gRasterScriptControlBytes, align 1
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %129, label %9

9:                                                ; preds = %6
  %10 = zext i8 %7 to i32
  %11 = add nuw nsw i32 %10, 416
  %12 = load i16, ptr @gTileBoardDirectionOffsets, align 2
  %13 = trunc i32 %11 to i16
  %14 = add i16 %12, %13
  %15 = sext i16 %14 to i32
  %16 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %9
  %20 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %11
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %21, 24
  %23 = load i16, ptr @gTileBoardMotionVectors, align 2
  %24 = load i16, ptr getelementptr inbounds ([0 x [2 x i16]], ptr @gTileBoardMotionVectors, i32 0, i32 0, i32 1), align 2
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %22, i16 noundef signext %23, i16 noundef signext %24, i16 noundef signext 0) #3
  %25 = load i16, ptr @gTileBoardDirectionOffsets, align 2
  %26 = sext i16 %25 to i32
  %27 = load i8, ptr %20, align 1
  %28 = add nsw i32 %11, %26
  %29 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %28
  store i8 %27, ptr %29, align 1
  store i8 0, ptr %20, align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  br label %31

31:                                               ; preds = %9, %19
  %32 = phi i8 [ %7, %9 ], [ %30, %19 ]
  %33 = add i8 %32, 3
  br label %129

34:                                               ; preds = %1
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %36 = icmp ugt i8 %35, 3
  br i1 %36, label %37, label %131

37:                                               ; preds = %34
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gActorRegionZMovingAnimation0) #3
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext -256) #3
  store i8 1, ptr @gRasterScriptControlBytes, align 1
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %39 = icmp eq i8 %38, 10
  br i1 %39, label %129, label %40

40:                                               ; preds = %37
  %41 = zext i8 %38 to i32
  %42 = add nuw nsw i32 %41, 416
  %43 = load i16, ptr getelementptr ([0 x i16], ptr @gTileBoardDirectionOffsets, i32 0, i32 1), align 2
  %44 = trunc i32 %42 to i16
  %45 = add i16 %43, %44
  %46 = sext i16 %45 to i32
  %47 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %40
  %51 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %42
  %52 = load i8, ptr %51, align 1
  %53 = add i8 %52, 24
  %54 = load i16, ptr getelementptr ([0 x [2 x i16]], ptr @gTileBoardMotionVectors, i32 0, i32 1, i32 0), align 2
  %55 = load i16, ptr getelementptr ([0 x [2 x i16]], ptr @gTileBoardMotionVectors, i32 0, i32 1, i32 1), align 2
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %53, i16 noundef signext %54, i16 noundef signext %55, i16 noundef signext 0) #3
  %56 = load i16, ptr getelementptr ([0 x i16], ptr @gTileBoardDirectionOffsets, i32 0, i32 1), align 2
  %57 = sext i16 %56 to i32
  %58 = load i8, ptr %51, align 1
  %59 = add nsw i32 %42, %57
  %60 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %59
  store i8 %58, ptr %60, align 1
  store i8 0, ptr %51, align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %61 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  br label %62

62:                                               ; preds = %40, %50
  %63 = phi i8 [ %38, %40 ], [ %61, %50 ]
  %64 = add i8 %63, -3
  br label %129

65:                                               ; preds = %1
  %66 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  switch i8 %66, label %67 [
    i8 0, label %131
    i8 10, label %131
    i8 7, label %131
  ]

67:                                               ; preds = %65
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gActorRegionXMovingAnimation0) #3
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext -256, i16 noundef signext 0, i16 noundef signext 0) #3
  store i8 1, ptr @gRasterScriptControlBytes, align 1
  %68 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %69 = icmp eq i8 %68, 4
  br i1 %69, label %129, label %70

70:                                               ; preds = %67
  %71 = zext i8 %68 to i32
  %72 = add nuw nsw i32 %71, 416
  %73 = load i16, ptr getelementptr ([0 x i16], ptr @gTileBoardDirectionOffsets, i32 0, i32 2), align 2
  %74 = trunc i32 %72 to i16
  %75 = add i16 %73, %74
  %76 = sext i16 %75 to i32
  %77 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %76
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %70
  %81 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %72
  %82 = load i8, ptr %81, align 1
  %83 = add i8 %82, 24
  %84 = load i16, ptr getelementptr ([0 x [2 x i16]], ptr @gTileBoardMotionVectors, i32 0, i32 2, i32 0), align 2
  %85 = load i16, ptr getelementptr ([0 x [2 x i16]], ptr @gTileBoardMotionVectors, i32 0, i32 2, i32 1), align 2
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %83, i16 noundef signext %84, i16 noundef signext %85, i16 noundef signext 0) #3
  %86 = load i16, ptr getelementptr ([0 x i16], ptr @gTileBoardDirectionOffsets, i32 0, i32 2), align 2
  %87 = sext i16 %86 to i32
  %88 = load i8, ptr %81, align 1
  %89 = add nsw i32 %72, %87
  %90 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %89
  store i8 %88, ptr %90, align 1
  store i8 0, ptr %81, align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %91 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  br label %92

92:                                               ; preds = %70, %80
  %93 = phi i8 [ %68, %70 ], [ %91, %80 ]
  %94 = add i8 %93, -1
  br label %129

95:                                               ; preds = %1
  %96 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %97 = icmp ne i8 %96, 0
  %98 = urem i8 %96, 3
  %99 = icmp eq i8 %98, 0
  %100 = and i1 %97, %99
  br i1 %100, label %131, label %101

101:                                              ; preds = %95
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gTileBoardCursorRight) #3
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 256, i16 noundef signext 0, i16 noundef signext 0) #3
  store i8 1, ptr @gRasterScriptControlBytes, align 1
  %102 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %103 = icmp eq i8 %102, 10
  br i1 %103, label %129, label %104

104:                                              ; preds = %101
  %105 = zext i8 %102 to i32
  %106 = add nuw nsw i32 %105, 416
  %107 = load i16, ptr getelementptr ([0 x i16], ptr @gTileBoardDirectionOffsets, i32 0, i32 3), align 2
  %108 = trunc i32 %106 to i16
  %109 = add i16 %107, %108
  %110 = sext i16 %109 to i32
  %111 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %110
  %112 = load i8, ptr %111, align 1
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %104
  %115 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %106
  %116 = load i8, ptr %115, align 1
  %117 = add i8 %116, 24
  %118 = load i16, ptr getelementptr ([0 x [2 x i16]], ptr @gTileBoardMotionVectors, i32 0, i32 3, i32 0), align 2
  %119 = load i16, ptr getelementptr ([0 x [2 x i16]], ptr @gTileBoardMotionVectors, i32 0, i32 3, i32 1), align 2
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %117, i16 noundef signext %118, i16 noundef signext %119, i16 noundef signext 0) #3
  %120 = load i16, ptr getelementptr ([0 x i16], ptr @gTileBoardDirectionOffsets, i32 0, i32 3), align 2
  %121 = sext i16 %120 to i32
  %122 = load i8, ptr %115, align 1
  %123 = add nsw i32 %106, %121
  %124 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %123
  store i8 %122, ptr %124, align 1
  store i8 0, ptr %115, align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %125 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  br label %126

126:                                              ; preds = %104, %114
  %127 = phi i8 [ %102, %104 ], [ %125, %114 ]
  %128 = add i8 %127, 1
  br label %129

129:                                              ; preds = %101, %67, %37, %6, %31, %62, %92, %126
  %130 = phi i8 [ %128, %126 ], [ %94, %92 ], [ %64, %62 ], [ %33, %31 ], [ 10, %6 ], [ 0, %37 ], [ 10, %67 ], [ 4, %101 ]
  store i8 %130, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  br label %131

131:                                              ; preds = %129, %95, %65, %65, %65, %34, %3, %1
  ret i32 1
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MoveTileBoardIntoEmptyCell(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i32 %0, 255
  %4 = add nuw nsw i32 %3, 416
  %5 = and i32 %1, 255
  %6 = getelementptr [0 x i16], ptr @gTileBoardDirectionOffsets, i32 0, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = trunc i32 %4 to i16
  %9 = add i16 %7, %8
  %10 = sext i16 %9 to i32
  %11 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %2
  %15 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %4
  %16 = load i8, ptr %15, align 1
  %17 = shl nuw nsw i32 %5, 1
  %18 = getelementptr i16, ptr @gTileBoardMotionVectors, i32 %17
  %19 = getelementptr i16, ptr getelementptr inbounds ([0 x [2 x i16]], ptr @gTileBoardMotionVectors, i32 0, i32 0, i32 1), i32 %17
  %20 = add i8 %16, 24
  %21 = load i16, ptr %18, align 2
  %22 = load i16, ptr %19, align 2
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %20, i16 noundef signext %21, i16 noundef signext %22, i16 noundef signext 0) #3
  %23 = load i16, ptr %6, align 2
  %24 = sext i16 %23 to i32
  %25 = load i8, ptr %15, align 1
  %26 = add nsw i32 %4, %24
  %27 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %26
  store i8 %25, ptr %27, align 1
  store i8 0, ptr %15, align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %28

28:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckTileBoardSolved(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  store i8 0, ptr @gRasterScriptControlBytes, align 1
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %31

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  %6 = icmp eq i8 %5, 1
  br i1 %6, label %7, label %31

7:                                                ; preds = %4
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %9 = icmp eq i8 %8, 2
  br i1 %9, label %10, label %31

10:                                               ; preds = %7
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %31

13:                                               ; preds = %10
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %15 = icmp eq i8 %14, 4
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %18 = icmp eq i8 %17, 5
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 422), align 1
  %21 = icmp eq i8 %20, 6
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 423), align 1
  %24 = icmp eq i8 %23, 7
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 424), align 1
  %27 = icmp eq i8 %26, 8
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 425), align 1
  %30 = icmp eq i8 %29, 9
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %25, %22, %19, %16, %13, %10, %7, %4, %1
  store i8 1, ptr @gRasterScriptControlBytes, align 1
  br label %32

32:                                               ; preds = %28, %31
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRefreshTileBoardArrows(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x [2 x i16]], ptr @gTileBoardCoordinates, i32 0, i32 %3
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr [0 x [2 x i16]], ptr @gTileBoardCoordinates, i32 0, i32 %3, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = icmp ugt i8 %2, 3
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = add nuw nsw i32 %3, 413
  %11 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = icmp ne i8 %12, 0
  %14 = icmp eq i8 %2, 10
  %15 = or i1 %14, %13
  %16 = add i16 %5, 12
  %17 = sext i16 %16 to i32
  %18 = add i16 %7, -16
  %19 = sext i16 %18 to i32
  %20 = select i1 %15, ptr @gTileBoardArrowUpBlocked, ptr @gTileBoardArrowUpOpen
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 34, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %17, i32 noundef 0, i32 noundef %19, ptr noundef nonnull %20) #3
  br label %21

21:                                               ; preds = %9, %1
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %23 = icmp ult i8 %22, 7
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = zext nneg i8 %22 to i32
  %26 = add nuw nsw i32 %25, 419
  %27 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 0
  %30 = add i16 %5, 12
  %31 = sext i16 %30 to i32
  %32 = add i16 %7, 40
  %33 = sext i16 %32 to i32
  %34 = select i1 %29, ptr @gTileBoardArrowDownOpen, ptr @gTileBoardArrowDownBlocked
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 35, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %31, i32 noundef 0, i32 noundef %33, ptr noundef nonnull %34) #3
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  br label %36

36:                                               ; preds = %24, %21
  %37 = phi i8 [ %35, %24 ], [ %22, %21 ]
  switch i8 %37, label %38 [
    i8 0, label %49
    i8 10, label %49
    i8 7, label %49
  ]

38:                                               ; preds = %36
  %39 = zext i8 %37 to i32
  %40 = add nuw nsw i32 %39, 415
  %41 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = icmp eq i8 %42, 0
  %44 = add i16 %5, -16
  %45 = sext i16 %44 to i32
  %46 = add i16 %7, 12
  %47 = sext i16 %46 to i32
  %48 = select i1 %43, ptr @gTileBoardArrowLeftOpen, ptr @gTileBoardArrowLeftBlocked
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 36, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %45, i32 noundef 0, i32 noundef %47, ptr noundef nonnull %48) #3
  br label %49

49:                                               ; preds = %38, %36, %36, %36
  %50 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %51 = urem i8 %50, 3
  %52 = icmp ne i8 %51, 0
  %53 = icmp eq i8 %50, 0
  %54 = or i1 %53, %52
  br i1 %54, label %55, label %68

55:                                               ; preds = %49
  %56 = zext i8 %50 to i32
  %57 = add nuw nsw i32 %56, 417
  %58 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %57
  %59 = load i8, ptr %58, align 1
  %60 = icmp ne i8 %59, 0
  %61 = icmp eq i8 %50, 10
  %62 = or i1 %61, %60
  %63 = add i16 %5, 40
  %64 = sext i16 %63 to i32
  %65 = add i16 %7, 12
  %66 = sext i16 %65 to i32
  %67 = select i1 %62, ptr @gTileBoardArrowRightBlocked, ptr @gTileBoardArrowRightOpen
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 37, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %64, i32 noundef 0, i32 noundef %66, ptr noundef nonnull %67) #3
  br label %68

68:                                               ; preds = %55, %49
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
