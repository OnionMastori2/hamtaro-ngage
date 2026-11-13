; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPlayerRecord = type { ptr, i32, i32 }
%struct.AudioSongRecord = type { ptr, i16, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4
@gMapBank3PanCounter = external dso_local local_unnamed_addr global i8, align 1
@gAudioPlayerRecordsADEC = external dso_local local_unnamed_addr constant [0 x %struct.AudioPlayerRecord], align 4
@gAudioSongRecordsAE34 = external dso_local local_unnamed_addr constant [0 x %struct.AudioSongRecord], align 4
@gMapBank3TempoCounter = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gAffineUsage = external dso_local local_unnamed_addr global [32 x i8], align 1
@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50FC8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143568983 to ptr)) #4
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation50FE0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143568991 to ptr)) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset50FF8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143569024 to ptr)) #4
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143569024 to ptr)) #4
  ret void
}

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation5101C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143569044 to ptr)) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank3Animation51034() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143569052 to ptr)) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset5104C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143569085 to ptr)) #4
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143569085 to ptr)) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51070() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 104, i32 noundef 0, i32 noundef 8, ptr noundef nonnull inttoptr (i32 143569105 to ptr)) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 128, i32 noundef 0, i32 noundef 8, ptr noundef nonnull inttoptr (i32 143569105 to ptr)) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 88, i32 noundef 0, i32 noundef 32, ptr noundef nonnull inttoptr (i32 143569161 to ptr)) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 144, i32 noundef 0, i32 noundef 32, ptr noundef nonnull inttoptr (i32 143569161 to ptr)) #4
  store i8 17, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143569105, ptr @gTaskRenderAnimationWordF7C, align 4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528859) #4
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 61) #4
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackCycleMapBank3SongPan(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gMapBank3PanCounter, align 1
  %5 = add i8 %4, -1
  store i8 %5, ptr @gMapBank3PanCounter, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = zext i8 %5 to i32
  %9 = load i16, ptr getelementptr ([0 x %struct.AudioSongRecord], ptr @gAudioSongRecordsAE34, i32 0, i32 55, i32 1), align 4
  %10 = zext i16 %9 to i32
  %11 = getelementptr [0 x %struct.AudioPlayerRecord], ptr @gAudioPlayerRecordsADEC, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = mul i32 %8, 167772160
  %14 = add i32 %13, -2130706432
  %15 = ashr exact i32 %14, 24
  tail call arm_apcscc void @SetAudioTrackPan(ptr noundef %12, i16 noundef zeroext 255, i32 noundef %15) #4
  br label %17

16:                                               ; preds = %3
  store i8 22, ptr @gMapBank3PanCounter, align 1
  br label %17

17:                                               ; preds = %16, %7
  store i32 0, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetAudioTrackPan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackSetMapBank3SongTempo(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gMapBank3TempoCounter, align 1
  %5 = add i8 %4, -1
  store i8 %5, ptr @gMapBank3TempoCounter, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load i16, ptr getelementptr ([0 x %struct.AudioSongRecord], ptr @gAudioSongRecordsAE34, i32 0, i32 54, i32 1), align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr [0 x %struct.AudioPlayerRecord], ptr @gAudioPlayerRecordsADEC, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @SetAudioTempoScale(ptr noundef %11, i16 noundef zeroext 128) #4
  br label %12

12:                                               ; preds = %7, %3
  store i32 0, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetAudioTempoScale(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank3NoOp511AC() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset511B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F1C() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AE10() #4
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F34() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AE54() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570849 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570912 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570971 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571034 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571085 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571148 to ptr)) #4
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15F1C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AE10() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51640() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F34() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AE54() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570849 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570912 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570971 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571034 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571085 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571148 to ptr)) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset511C4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset162B8() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AC78() #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433728 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528883) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143433830) #4
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset162B8() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AC78() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51218() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570841 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570884 to ptr)) #4
  tail call arm_apcscc void @SetRenderField60(i32 noundef 11, i32 noundef 1) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433728 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528891) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143433830) #4
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51284() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F64() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AE98() #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433728 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528899) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143433830) #4
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15F64() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AE98() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset512D8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15EA4() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AD44() #4
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15EA4() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AD44() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset512E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15EEC() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AD88() #4
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F04() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1ADCC() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570841 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570898 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570963 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571020 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571077 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571134 to ptr)) #4
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15EEC() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AD88() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset515E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F04() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1ADCC() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570841 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570898 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570963 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571020 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571077 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571134 to ptr)) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset512FC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16FEC() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B720() #4
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16FEC() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B720() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset5130C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset1707C() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B7A8() #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433728 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528883) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143433830) #4
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset1707C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B7A8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51360() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset170AC() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B7EC() #4
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F04() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1ADCC() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570841 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570898 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570963 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571020 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571077 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571134 to ptr)) #4
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset170AC() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B7EC() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51374() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset170C4() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B830() #4
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F34() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AE54() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570849 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570912 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570971 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571034 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571085 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571148 to ptr)) #4
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset170C4() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B830() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51388() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570955 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571006 to ptr)) #4
  tail call arm_apcscc void @SetRenderField60(i32 noundef 14, i32 noundef 1) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433728 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528907) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143433830) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset513F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571077 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571120 to ptr)) #4
  tail call arm_apcscc void @SetRenderField60(i32 noundef 23, i32 noundef 1) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143433728 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528915) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143433830) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51460() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset1707C() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B7A8() #4
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F64() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AE98() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570841 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570884 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570955 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571006 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571077 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571120 to ptr)) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528978) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143537147 to ptr)) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143571165 to ptr)) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 12, i32 noundef -16, ptr noundef nonnull inttoptr (i32 143537130 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 29, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 30, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -64, i32 noundef 12, i32 noundef -32, ptr noundef nonnull inttoptr (i32 143537130 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 64, i32 noundef 12, i32 noundef -32, ptr noundef nonnull inttoptr (i32 143537130 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 31, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51698() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F64() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AE98() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570841 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570884 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570955 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571006 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571077 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571120 to ptr)) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank3LatePreset51524() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset162B8() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AC78() #4
  tail call arm_apcscc void @SetGraphicsAnimationPreset15F64() #4
  tail call arm_apcscc void @ConfigureRenderSetupPreset1AE98() #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143570841 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 11, ptr noundef nonnull inttoptr (i32 143570884 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143570955 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 14, ptr noundef nonnull inttoptr (i32 143571006 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 22, ptr noundef nonnull inttoptr (i32 143571077 to ptr)) #4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 23, ptr noundef nonnull inttoptr (i32 143571120 to ptr)) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528978) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143537147 to ptr)) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143571165 to ptr)) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 12, i32 noundef -16, ptr noundef nonnull inttoptr (i32 143537130 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 29, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 30, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -64, i32 noundef 12, i32 noundef -32, ptr noundef nonnull inttoptr (i32 143537130 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 64, i32 noundef 12, i32 noundef -32, ptr noundef nonnull inttoptr (i32 143537130 to ptr)) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 31, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15F04() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1ADCC() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15F34() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1AE54() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackToggleMapBank3Mirror(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 87), align 1
  %5 = xor i8 %4, 1
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 87), align 1
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackCopyMapBank3AffineScales(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 27, i32 8
  %6 = load i16, ptr %5, align 4
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 87), align 1
  %8 = icmp eq i8 %7, 0
  %9 = sub i16 0, %6
  %10 = select i1 %8, i16 %6, i16 %9
  %11 = getelementptr %struct.RenderSlot, ptr %4, i32 27, i32 9
  %12 = getelementptr %struct.RenderSlot, ptr %4, i32 29, i32 23, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, -1
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %16, ptr %12, align 4
  %17 = zext i8 %16 to i32
  %18 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %17
  store i8 1, ptr %18, align 1
  br label %19

19:                                               ; preds = %15, %3
  %20 = getelementptr %struct.RenderSlot, ptr %4, i32 29, i32 8
  store i16 %10, ptr %20, align 4
  %21 = load i16, ptr %11, align 2
  %22 = getelementptr %struct.RenderSlot, ptr %4, i32 29, i32 9
  store i16 %21, ptr %22, align 2
  %23 = getelementptr %struct.RenderSlot, ptr %4, i32 30, i32 23, i32 4
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %27, ptr %23, align 4
  %28 = zext i8 %27 to i32
  %29 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %28
  store i8 1, ptr %29, align 1
  %30 = load i16, ptr %11, align 2
  br label %31

31:                                               ; preds = %26, %19
  %32 = phi i16 [ %30, %26 ], [ %21, %19 ]
  %33 = getelementptr %struct.RenderSlot, ptr %4, i32 30, i32 8
  store i16 %10, ptr %33, align 4
  %34 = getelementptr %struct.RenderSlot, ptr %4, i32 30, i32 9
  store i16 %32, ptr %34, align 2
  %35 = getelementptr %struct.RenderSlot, ptr %4, i32 31, i32 23, i32 4
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #4
  store i8 %39, ptr %35, align 4
  %40 = zext i8 %39 to i32
  %41 = getelementptr [32 x i8], ptr @gAffineUsage, i32 0, i32 %40
  store i8 1, ptr %41, align 1
  %42 = load i16, ptr %11, align 2
  br label %43

43:                                               ; preds = %38, %31
  %44 = phi i16 [ %42, %38 ], [ %32, %31 ]
  %45 = getelementptr %struct.RenderSlot, ptr %4, i32 31, i32 8
  store i16 %10, ptr %45, align 4
  %46 = getelementptr %struct.RenderSlot, ptr %4, i32 31, i32 9
  store i16 %44, ptr %46, align 2
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindUnusedAffineMatrix() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSaveMapBank3Actors(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4
  %6 = tail call arm_apcscc ptr @memcpy(ptr noundef nonnull @gSaveGroup01Block2EB0, ptr noundef %5, i32 noundef 104) #4
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i8, ptr @gCoreScriptByte2274, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.RenderSlot, ptr %7, i32 %9
  %11 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), ptr noundef %10, i32 noundef 104) #4
  %12 = load ptr, ptr @gRenderSlots, align 4
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.RenderSlot, ptr %12, i32 %14
  %16 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), ptr noundef %15, i32 noundef 104) #4
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.RenderSlot, ptr %17, i32 %19
  %21 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), ptr noundef %20, i32 noundef 104) #4
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 13), align 1
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 14), align 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  tail call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext 3, i8 noundef zeroext 22) #4
  ret i32 -4
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreMapBank3Actors(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gScriptCursor, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  tail call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext %3, i8 noundef zeroext %4) #4
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 96), align 1
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -1
  %8 = zext i8 %7 to i32
  %9 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 1
  %12 = or disjoint i32 %11, 1
  %13 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr ptr, ptr %14, i32 %8
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = load i8, ptr @gRenderClassSlots0, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.RenderSlot, ptr %17, i32 %19
  %21 = tail call arm_apcscc ptr @memcpy(ptr noundef %20, ptr noundef nonnull @gSaveGroup01Block2EB0, i32 noundef 104) #4
  %22 = load i8, ptr @gRenderClassSlots0, align 1
  %23 = zext i8 %22 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %23, ptr noundef %16) #4
  %24 = load i8, ptr @gCoreScriptByte2274, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i8 %24, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %1
  %28 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 200), align 1
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 1
  %34 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  %36 = shl nuw nsw i32 %8, 1
  %37 = getelementptr ptr, ptr %35, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = load ptr, ptr @gRenderSlots, align 4
  %40 = getelementptr %struct.RenderSlot, ptr %39, i32 %25
  %41 = tail call arm_apcscc ptr @memcpy(ptr noundef %40, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), i32 noundef 104) #4
  %42 = load i8, ptr @gCoreScriptByte2274, align 1
  %43 = zext i8 %42 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %43, ptr noundef %38) #4
  br label %44

44:                                               ; preds = %30, %27, %1
  %45 = load i8, ptr @gRenderClassSlots1, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i8 %45, 0
  br i1 %47, label %69, label %48

48:                                               ; preds = %44
  %49 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 304), align 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %69, label %51

51:                                               ; preds = %48
  %52 = and i8 %49, 15
  %53 = add nsw i8 %52, -1
  %54 = zext i8 %53 to i32
  %55 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %56 = xor i8 %55, 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 1
  %59 = or disjoint i32 %58, 1
  %60 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %59
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr ptr, ptr %61, i32 %54
  %63 = load ptr, ptr %62, align 4
  %64 = load ptr, ptr @gRenderSlots, align 4
  %65 = getelementptr %struct.RenderSlot, ptr %64, i32 %46
  %66 = tail call arm_apcscc ptr @memcpy(ptr noundef %65, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), i32 noundef 104) #4
  %67 = load i8, ptr @gRenderClassSlots1, align 1
  %68 = zext i8 %67 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %68, ptr noundef %63) #4
  br label %69

69:                                               ; preds = %48, %51, %44
  %70 = phi i32 [ %8, %44 ], [ %54, %51 ], [ %8, %48 ]
  %71 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i8 %71, 0
  br i1 %73, label %94, label %74

74:                                               ; preds = %69
  %75 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 408), align 1
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %94, label %77

77:                                               ; preds = %74
  %78 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %79 = zext i8 %78 to i32
  %80 = shl nuw nsw i32 %79, 1
  %81 = or disjoint i32 %80, 1
  %82 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %81
  %83 = load ptr, ptr %82, align 4
  %84 = shl nuw nsw i32 %70, 3
  %85 = ptrtoint ptr %83 to i32
  %86 = add i32 %84, %85
  %87 = inttoptr i32 %86 to ptr
  %88 = load ptr, ptr %87, align 4
  %89 = load ptr, ptr @gRenderSlots, align 4
  %90 = getelementptr %struct.RenderSlot, ptr %89, i32 %72
  %91 = tail call arm_apcscc ptr @memcpy(ptr noundef %90, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), i32 noundef 104) #4
  %92 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %93 = zext i8 %92 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %93, ptr noundef %88) #4
  br label %94

94:                                               ; preds = %74, %77, %69
  store ptr %2, ptr @gScriptCursor, align 4
  %95 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  store i8 %95, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 13), align 1
  %96 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  store i8 %96, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 14), align 1
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
