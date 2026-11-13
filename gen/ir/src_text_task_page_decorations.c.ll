; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextMarkerAnimation22 = external dso_local constant [0 x i8], align 1
@gTaskTextMarkerAnimation29 = external dso_local constant [0 x i8], align 1
@gTaskTextMarkerAnimation26 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration20 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration21 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration16 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration17 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration18 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration19 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration29 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration30 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration31 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration26 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration27 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecoration28 = external dso_local constant [0 x i8], align 1
@gTaskTextPageDecorationGraphicsScript = external dso_local constant [0 x i8], align 1
@gSaveGroup01Block37F0 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup01Byte3E30 = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextLanguageOrder = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextSelectionMarkerPositions = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gTaskTextSelectionMarkerAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureTaskTextSelectionMarkers(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %3 = zext i8 %2 to i32
  %4 = shl i32 %3, 28
  %5 = add i32 %4, 268435456
  %6 = lshr exact i32 %5, 24
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 88, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @gTaskTextMarkerAnimation22) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 16, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @gTaskTextMarkerAnimation29) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 88, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @gTaskTextMarkerAnimation26) #2
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureTaskTextPageDecorations(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %3 = zext i8 %2 to i32
  %4 = shl i32 %3, 28
  %5 = add i32 %4, 268435456
  %6 = lshr exact i32 %5, 24
  %7 = add nsw i32 %6, -96
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 168, i32 noundef %7, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration20) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 168, i32 noundef %7, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration21) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration16) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration17) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration18) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration19) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 16, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration29) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 30, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 16, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration30) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 16, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration31) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 88, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration26) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 88, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration27) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 88, i32 noundef %6, i32 noundef 0, ptr noundef nonnull @gTaskTextPageDecoration28) #2
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gTaskTextPageDecorationGraphicsScript to i32)) #2
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRecordTaskTextAcquisition(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 118), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %68, label %4

4:                                                ; preds = %1
  %5 = icmp sgt i8 %2, -1
  br i1 %5, label %52, label %6

6:                                                ; preds = %4
  %7 = icmp eq i8 %2, -1
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 263, i32 noundef 1) #2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 264, i32 noundef 1) #2
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 118), align 1
  %10 = and i8 %9, 127
  store i8 %10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 118), align 1
  br label %66

11:                                               ; preds = %6
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 71, i32 noundef 1) #2
  %12 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %13
  store i8 1, ptr %14, align 1
  %15 = add i8 %12, 1
  store i8 %15, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 72, i32 noundef 1) #2
  %16 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %17
  store i8 2, ptr %18, align 1
  %19 = add i8 %16, 1
  store i8 %19, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 73, i32 noundef 1) #2
  %20 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %21
  store i8 3, ptr %22, align 1
  %23 = add i8 %20, 1
  store i8 %23, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 74, i32 noundef 1) #2
  %24 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %25
  store i8 4, ptr %26, align 1
  %27 = add i8 %24, 1
  store i8 %27, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 77, i32 noundef 1) #2
  %28 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %29
  store i8 7, ptr %30, align 1
  %31 = add i8 %28, 1
  store i8 %31, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 78, i32 noundef 1) #2
  %32 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %33
  store i8 8, ptr %34, align 1
  %35 = add i8 %32, 1
  store i8 %35, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 79, i32 noundef 1) #2
  %36 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %37
  store i8 9, ptr %38, align 1
  %39 = add i8 %36, 1
  store i8 %39, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 80, i32 noundef 1) #2
  %40 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %41
  store i8 10, ptr %42, align 1
  %43 = add i8 %40, 1
  store i8 %43, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 83, i32 noundef 1) #2
  %44 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %45
  store i8 13, ptr %46, align 1
  %47 = add i8 %44, 1
  store i8 %47, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 133, i32 noundef 1) #2
  %48 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %49 = zext i8 %48 to i32
  %50 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %49
  store i8 63, ptr %50, align 1
  %51 = add i8 %48, 1
  store i8 %51, ptr @gSaveGroup01Byte3E30, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 263, i32 noundef 1) #2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 264, i32 noundef 1) #2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 265, i32 noundef 1) #2
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 118), align 1
  br label %66

52:                                               ; preds = %4
  %53 = add nuw i8 %2, 70
  %54 = zext i8 %53 to i16
  %55 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %54) #2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %52
  %58 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 118), align 1
  %59 = zext i8 %58 to i16
  %60 = add nuw nsw i16 %59, 70
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %60, i32 noundef 1) #2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 263, i32 noundef 1) #2
  %61 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 118), align 1
  %62 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %63 = zext i8 %62 to i32
  %64 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %63
  store i8 %61, ptr %64, align 1
  %65 = add i8 %62, 1
  store i8 %65, ptr @gSaveGroup01Byte3E30, align 1
  br label %66

66:                                               ; preds = %8, %57, %11
  %67 = tail call arm_apcscc i32 @ScriptCallbackSelectTaskTextAcquiredPage(ptr noundef null) #2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 118), align 1
  br label %68

68:                                               ; preds = %66, %1, %52
  ret i32 0
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @ScriptCallbackSelectTaskTextAcquiredPage(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackResolveTaskTextSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 34), align 1
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 248) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  %6 = shl i8 %5, 2
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %8 = add i8 %7, -1
  %9 = add i8 %8, %6
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %11, 86
  br label %13

13:                                               ; preds = %4, %19
  %14 = phi i32 [ 0, %4 ], [ %20, %19 ]
  %15 = add nuw nsw i32 %12, %14
  %16 = getelementptr [0 x i8], ptr @gTaskTextLanguageOrder, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %9, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %13
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, 86
  br i1 %21, label %37, label %13

22:                                               ; preds = %1
  %23 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %26, 2
  %30 = add nuw nsw i32 %29, %28
  %31 = sub nsw i32 %24, %30
  %32 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = add i8 %33, -1
  br label %37

35:                                               ; preds = %13
  %36 = trunc i32 %14 to i8
  br label %37

37:                                               ; preds = %19, %35, %22
  %38 = phi i8 [ %34, %22 ], [ %36, %35 ], [ 86, %19 ]
  %39 = zext i8 %38 to i16
  %40 = add nuw nsw i16 %39, 71
  %41 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %40) #2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = add i8 %38, 1
  store i8 %44, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 34), align 1
  br label %45

45:                                               ; preds = %43, %37
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackShowTaskTextSelectionMarkers(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 34), align 1
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 248) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %22, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  %6 = shl i8 %5, 2
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %8 = add i8 %7, -1
  %9 = add i8 %8, %6
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %11 = zext i8 %10 to i32
  %12 = mul nuw nsw i32 %11, 86
  br label %13

13:                                               ; preds = %19, %4
  %14 = phi i32 [ 0, %4 ], [ %20, %19 ]
  %15 = add nuw nsw i32 %14, %12
  %16 = getelementptr [0 x i8], ptr @gTaskTextLanguageOrder, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %9, %17
  br i1 %18, label %35, label %19

19:                                               ; preds = %13
  %20 = add nuw nsw i32 %14, 1
  %21 = icmp eq i32 %20, 86
  br i1 %21, label %37, label %13

22:                                               ; preds = %1
  %23 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  %26 = zext i8 %25 to i32
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %26, 2
  %30 = add nuw nsw i32 %29, %28
  %31 = sub nsw i32 %24, %30
  %32 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = add i8 %33, -1
  br label %37

35:                                               ; preds = %13
  %36 = trunc i32 %14 to i8
  br label %37

37:                                               ; preds = %19, %35, %22
  %38 = phi i8 [ %34, %22 ], [ %36, %35 ], [ 86, %19 ]
  %39 = zext i8 %38 to i16
  %40 = add nuw nsw i16 %39, 71
  %41 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %40) #2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37
  %44 = add i8 %38, 1
  store i8 %44, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 34), align 1
  br label %47

45:                                               ; preds = %37
  %46 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 34), align 1
  br label %47

47:                                               ; preds = %45, %43
  %48 = phi i8 [ %46, %45 ], [ %44, %43 ]
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load i16, ptr getelementptr ([0 x i16], ptr @gTaskTextSelectionMarkerPositions, i32 0, i32 2), align 2
  %52 = sext i16 %51 to i32
  %53 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextSelectionMarkerAnimations, i32 0, i32 2), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef %52, i32 noundef 0, i32 noundef 112, ptr noundef %53) #2
  %54 = load i16, ptr getelementptr ([0 x i16], ptr @gTaskTextSelectionMarkerPositions, i32 0, i32 3), align 2
  %55 = sext i16 %54 to i32
  %56 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextSelectionMarkerAnimations, i32 0, i32 3), align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef %55, i32 noundef 0, i32 noundef 112, ptr noundef %56) #2
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 274, i32 noundef 1) #2
  br label %57

57:                                               ; preds = %50, %47
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
