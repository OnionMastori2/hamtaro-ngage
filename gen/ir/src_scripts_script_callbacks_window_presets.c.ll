; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.WindowGridStyleBank = type { [8 x ptr] }
%struct.WindowSequenceStage = type { i16, i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gWindowPresetAnimation088FCDAB = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCE1B = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCCDE = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCCD4 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCCCA = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCCBB = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCCB6 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCCB1 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCCAC = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCCA7 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCC9D = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCC98 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCC93 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCC8E = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FCC89 = external dso_local constant [0 x i8], align 1
@gObjectWindowGridStyles = external dso_local local_unnamed_addr constant %struct.WindowGridStyleBank, align 4
@gWindowPresetAnimation088FD138 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FD367 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FD375 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FD383 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FD391 = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FD39F = external dso_local constant [0 x i8], align 1
@gWindowPresetAnimation088FD3AD = external dso_local constant [0 x i8], align 1
@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gWindowSequenceStages = external dso_local constant [0 x %struct.WindowSequenceStage], align 2
@gWindowSequenceStyles = external dso_local constant [0 x i8], align 1
@gWindowSequenceTasks = external dso_local global [0 x ptr], align 4
@gWindowSequenceScripts = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gWindowSequenceTiles = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSelectionWindowSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 1
  %5 = zext i8 %2 to i16
  %6 = shl i16 %5, 12
  %7 = sub i16 -32630, %6
  store volatile i16 %7, ptr inttoptr (i32 67108932 to ptr), align 4
  %8 = sub nsw i32 15, %4
  %9 = shl nsw i32 %8, 19
  %10 = add nsw i32 %9, -131072
  %11 = ashr exact i32 %10, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 168, i32 noundef 0, i32 noundef %11, ptr noundef nonnull @gWindowPresetAnimation088FCDAB) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 208, i32 noundef 0, i32 noundef %11, ptr noundef nonnull @gWindowPresetAnimation088FCE1B) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef %11, ptr noundef nonnull @gWindowPresetAnimation088FCCDE) #5
  %12 = shl nsw i32 %8, 3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef %12, ptr noundef nonnull @gWindowPresetAnimation088FCCD4) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gWindowPresetAnimation088FCCCA) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCCBB) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCCB6) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCCB1) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCCAC) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCCA7) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCC9D) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCC98) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCC93) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 30, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCC8E) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 132, ptr noundef nonnull @gWindowPresetAnimation088FCC89) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 22, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 23, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 24, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 25, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 26, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 27, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 28, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 29, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 30, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 31, i8 noundef zeroext 0) #5
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @WindowPresetNoOperationCEC70(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureObjectWindowGrid(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = load i8, ptr %2, align 1
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = tail call arm_apcscc ptr @GetVideoState() #5
  %8 = getelementptr inbounds %struct.VideoState, ptr %7, i32 0, i32 12
  %9 = load i16, ptr %8, align 4
  %10 = or i16 %9, -32768
  store i16 %10, ptr %8, align 4
  %11 = load i32, ptr %7, align 4
  %12 = or i32 %11, 1
  store i32 %12, ptr %7, align 4
  %13 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %14 = or i16 %13, -32768
  store volatile i16 %14, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %15 = zext i8 %6 to i16
  %16 = shl nuw i16 %15, 8
  store volatile i16 %16, ptr inttoptr (i32 67108938 to ptr), align 2
  %17 = zext i8 %4 to i32
  %18 = getelementptr [8 x ptr], ptr @gObjectWindowGridStyles, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  br label %20

20:                                               ; preds = %1, %20
  %21 = phi i32 [ 0, %1 ], [ %41, %20 ]
  %22 = trunc i32 %21 to i8
  %23 = shl i8 %22, 3
  %24 = add i8 %23, %3
  %25 = shl nuw i32 %21, 5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef -8, i32 noundef %25, i32 noundef 0, ptr noundef %19) #5
  %26 = zext i8 %24 to i32
  tail call arm_apcscc void @SetRenderBit5(i32 noundef %26, i8 noundef zeroext 0) #5
  %27 = add i8 %24, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 24, i32 noundef %25, i32 noundef 0, ptr noundef %19) #5
  %28 = zext i8 %27 to i32
  tail call arm_apcscc void @SetRenderBit5(i32 noundef %28, i8 noundef zeroext 0) #5
  %29 = add i8 %24, 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %29, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 56, i32 noundef %25, i32 noundef 0, ptr noundef %19) #5
  %30 = zext i8 %29 to i32
  tail call arm_apcscc void @SetRenderBit5(i32 noundef %30, i8 noundef zeroext 0) #5
  %31 = add i8 %24, 3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %31, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 88, i32 noundef %25, i32 noundef 0, ptr noundef %19) #5
  %32 = zext i8 %31 to i32
  tail call arm_apcscc void @SetRenderBit5(i32 noundef %32, i8 noundef zeroext 0) #5
  %33 = add i8 %24, 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %33, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 120, i32 noundef %25, i32 noundef 0, ptr noundef %19) #5
  %34 = zext i8 %33 to i32
  tail call arm_apcscc void @SetRenderBit5(i32 noundef %34, i8 noundef zeroext 0) #5
  %35 = add i8 %24, 5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %35, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 152, i32 noundef %25, i32 noundef 0, ptr noundef %19) #5
  %36 = zext i8 %35 to i32
  tail call arm_apcscc void @SetRenderBit5(i32 noundef %36, i8 noundef zeroext 0) #5
  %37 = add i8 %24, 6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %37, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef %25, i32 noundef 0, ptr noundef %19) #5
  %38 = zext i8 %37 to i32
  tail call arm_apcscc void @SetRenderBit5(i32 noundef %38, i8 noundef zeroext 0) #5
  %39 = add i8 %24, 7
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %39, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 216, i32 noundef %25, i32 noundef 0, ptr noundef %19) #5
  %40 = zext i8 %39 to i32
  tail call arm_apcscc void @SetRenderBit5(i32 noundef %40, i8 noundef zeroext 0) #5
  %41 = add nuw nsw i32 %21, 1
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %20

43:                                               ; preds = %20
  ret i32 3
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderBit5(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureWindowRowSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 16, i32 noundef 0, i32 noundef 208, ptr noundef nonnull @gWindowPresetAnimation088FD138) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 48, i32 noundef 0, i32 noundef 208, ptr noundef nonnull @gWindowPresetAnimation088FD367) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 80, i32 noundef 0, i32 noundef 208, ptr noundef nonnull @gWindowPresetAnimation088FD375) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 112, i32 noundef 0, i32 noundef 208, ptr noundef nonnull @gWindowPresetAnimation088FD383) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 144, i32 noundef 0, i32 noundef 208, ptr noundef nonnull @gWindowPresetAnimation088FD391) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 176, i32 noundef 0, i32 noundef 208, ptr noundef nonnull @gWindowPresetAnimation088FD39F) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 208, i32 noundef 0, i32 noundef 208, ptr noundef nonnull @gWindowPresetAnimation088FD3AD) #5
  tail call arm_apcscc void @SetRenderBit5(i32 noundef 17, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderBit5(i32 noundef 18, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderBit5(i32 noundef 19, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderBit5(i32 noundef 20, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderBit5(i32 noundef 21, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderBit5(i32 noundef 22, i8 noundef zeroext 0) #5
  tail call arm_apcscc void @SetRenderBit5(i32 noundef 23, i8 noundef zeroext 0) #5
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSaveActorsAndChangeMap10_17(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4
  %6 = tail call arm_apcscc ptr @memcpy(ptr noundef nonnull @gSaveGroup01Block2EB0, ptr noundef %5, i32 noundef 104) #5
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i8, ptr @gCoreScriptByte2274, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.RenderSlot, ptr %7, i32 %9
  %11 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), ptr noundef %10, i32 noundef 104) #5
  %12 = load ptr, ptr @gRenderSlots, align 4
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.RenderSlot, ptr %12, i32 %14
  %16 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), ptr noundef %15, i32 noundef 104) #5
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.RenderSlot, ptr %17, i32 %19
  %21 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), ptr noundef %20, i32 noundef 104) #5
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 13), align 1
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 14), align 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  tail call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext 10, i8 noundef zeroext 17) #5
  ret i32 -4
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreActorsAndPreviousMapCEEA8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gScriptCursor, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  tail call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext %3, i8 noundef zeroext %4) #5
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 96), align 1
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -1
  %8 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 1
  %11 = or disjoint i32 %10, 1
  %12 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %7 to i32
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr @gRenderClassSlots0, align 1
  %18 = zext i8 %17 to i32
  %19 = load ptr, ptr @gRenderSlots, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = mul nuw nsw i32 %18, 104
  %22 = add i32 %21, %20
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call arm_apcscc ptr @memcpy(ptr noundef %23, ptr noundef nonnull @gSaveGroup01Block2EB0, i32 noundef 104) #5
  %25 = load i8, ptr @gRenderClassSlots0, align 1
  %26 = zext i8 %25 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %26, ptr noundef %16) #5
  %27 = load i8, ptr @gCoreScriptByte2274, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %1
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 200), align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = shl nuw nsw i32 %14, 1
  %40 = getelementptr ptr, ptr %38, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr @gRenderSlots, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = mul nuw nsw i32 %28, 104
  %45 = add i32 %44, %43
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call arm_apcscc ptr @memcpy(ptr noundef %46, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), i32 noundef 104) #5
  %48 = load i8, ptr @gCoreScriptByte2274, align 1
  %49 = zext i8 %48 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %49, ptr noundef %41) #5
  br label %50

50:                                               ; preds = %33, %30, %1
  %51 = load i8, ptr @gRenderClassSlots1, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i8 %51, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %50
  %55 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 304), align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  %58 = and i8 %55, 15
  %59 = add nsw i8 %58, -1
  %60 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %61 = xor i8 %60, 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 1
  %64 = or disjoint i32 %63, 1
  %65 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = zext i8 %59 to i32
  %68 = getelementptr ptr, ptr %66, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr @gRenderSlots, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = mul nuw nsw i32 %52, 104
  %73 = add i32 %72, %71
  %74 = inttoptr i32 %73 to ptr
  %75 = tail call arm_apcscc ptr @memcpy(ptr noundef %74, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), i32 noundef 104) #5
  %76 = load i8, ptr @gRenderClassSlots1, align 1
  %77 = zext i8 %76 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %77, ptr noundef %69) #5
  br label %78

78:                                               ; preds = %54, %57, %50
  %79 = phi i8 [ %7, %50 ], [ %59, %57 ], [ %7, %54 ]
  %80 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i8 %80, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %78
  %84 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 408), align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %83
  %87 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 1
  %90 = or disjoint i32 %89, 1
  %91 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = zext i8 %79 to i32
  %94 = shl nuw nsw i32 %93, 1
  %95 = getelementptr ptr, ptr %92, i32 %94
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr @gRenderSlots, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = mul nuw nsw i32 %81, 104
  %100 = add i32 %99, %98
  %101 = inttoptr i32 %100 to ptr
  %102 = tail call arm_apcscc ptr @memcpy(ptr noundef %101, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), i32 noundef 104) #5
  %103 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %104 = zext i8 %103 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %104, ptr noundef %96) #5
  br label %105

105:                                              ; preds = %83, %86, %78
  store ptr %2, ptr @gScriptCursor, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClampRasterEffectWindow(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gRasterEffect, align 4
  %3 = getelementptr i8, ptr %2, i32 6
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = getelementptr i8, ptr %2, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = or disjoint i32 %6, %9
  %11 = icmp ult i32 %10, 41
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  store i8 40, ptr %7, align 1
  store i8 0, ptr %3, align 1
  %13 = load ptr, ptr @gRasterEffect, align 4
  %14 = getelementptr i8, ptr %13, i32 9
  store i8 0, ptr %14, align 1
  %15 = load ptr, ptr @gRasterEffect, align 4
  %16 = getelementptr i8, ptr %15, i32 10
  store i8 0, ptr %16, align 1
  %17 = getelementptr i8, ptr %15, i32 11
  store i8 0, ptr %17, align 1
  %18 = load ptr, ptr @gRasterEffect, align 4
  %19 = getelementptr i8, ptr %18, i32 13
  store i8 0, ptr %19, align 1
  %20 = getelementptr i8, ptr %18, i32 14
  store i8 0, ptr %20, align 1
  br label %21

21:                                               ; preds = %12, %1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdvanceWindowSequenceStage(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 255), align 1
  %3 = zext i8 %2 to i32
  %4 = shl nuw nsw i32 %3, 2
  %5 = load i16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gAnimationClassValues to i32), i32 82) to ptr), align 2
  %6 = add i32 %4, ptrtoint (ptr @gWindowSequenceStages to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i16, ptr %7, align 2
  %9 = icmp ult i16 %5, %8
  br i1 %9, label %21, label %10

10:                                               ; preds = %1
  %11 = add i32 %4, add (i32 ptrtoint (ptr @gWindowSequenceStages to i32), i32 2)
  %12 = inttoptr i32 %11 to ptr
  %13 = load i16, ptr %12, align 2
  switch i16 %13, label %19 [
    i16 1, label %14
    i16 3, label %15
    i16 6, label %18
  ]

14:                                               ; preds = %10
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  br label %19

15:                                               ; preds = %10
  store i8 11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 103), align 1
  %17 = add i8 %16, 1
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 103), align 1
  br label %19

18:                                               ; preds = %10
  store i8 12, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  br label %19

19:                                               ; preds = %10, %18, %15, %14
  %20 = add i8 %2, 1
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 255), align 1
  br label %21

21:                                               ; preds = %19, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCreateWindowSequenceTask(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %3 = add i8 %2, -1
  store i8 %3, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %55

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 103), align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 7
  %11 = add i32 %7, add (i32 ptrtoint (ptr @gWindowSequenceStyles to i32), i32 -1)
  %12 = add i32 %11, %10
  %13 = inttoptr i32 %12 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %53, label %17

17:                                               ; preds = %5
  %18 = add i8 %6, -1
  %19 = tail call arm_apcscc ptr @AllocateTaskContext(i32 noundef 14) #5
  %20 = zext i8 %18 to i32
  %21 = shl nuw nsw i32 %20, 2
  %22 = add i32 %21, ptrtoint (ptr @gWindowSequenceTasks to i32)
  %23 = inttoptr i32 %22 to ptr
  store ptr %19, ptr %23, align 4
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 103), align 1
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %27, 7
  %29 = getelementptr ptr, ptr @gWindowSequenceScripts, i32 %25
  %30 = getelementptr ptr, ptr %29, i32 -1
  %31 = getelementptr ptr, ptr %30, i32 %28
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %17
  %35 = mul nuw nsw i32 %20, 896
  %36 = or disjoint i32 %35, 100663360
  %37 = shl nuw nsw i32 %15, 6
  %38 = add i32 %37, ptrtoint (ptr @gWindowSequenceTiles to i32)
  tail call arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef %19, i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 3, i32 noundef %36, i32 noundef %38) #5
  %39 = load ptr, ptr %23, align 4
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 103), align 1
  %43 = zext i8 %42 to i32
  %44 = mul nuw nsw i32 %43, 7
  %45 = getelementptr ptr, ptr @gWindowSequenceScripts, i32 %41
  %46 = getelementptr ptr, ptr %45, i32 -1
  %47 = getelementptr ptr, ptr %46, i32 %44
  %48 = load ptr, ptr %47, align 4
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %39, ptr noundef %48) #5
  %49 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  br label %50

50:                                               ; preds = %34, %17
  %51 = phi i8 [ %49, %34 ], [ %24, %17 ]
  %52 = add i8 %51, 1
  br label %53

53:                                               ; preds = %5, %50
  %54 = phi i8 [ %52, %50 ], [ 7, %5 ]
  store i8 %54, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  br label %55

55:                                               ; preds = %53, %1
  ret i32 0
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveWindowSequenceTask(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 104), align 1
  %3 = add i8 %2, -2
  %4 = zext i8 %3 to i32
  %5 = getelementptr [0 x ptr], ptr @gWindowSequenceTasks, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %6) #5
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
