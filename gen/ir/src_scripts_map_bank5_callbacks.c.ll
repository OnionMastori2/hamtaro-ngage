; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapBank5GridPosition = type { i16, i16 }
%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank5GridPositions = external dso_local global [0 x %struct.MapBank5GridPosition], align 2
@gMapBank5GridAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gMapBank5SelectedGridAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gMapBank5GridPhase = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gMirrorPrimarySourceAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMirrorPrimaryFallbackAnimation = external dso_local constant [0 x i8], align 1
@gMirrorPrimaryAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMapBank5MirrorAreaAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMirrorSecondarySourceAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMirrorSecondaryFallbackAnimation = external dso_local constant [0 x i8], align 1
@gMirrorSecondaryAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank5SlowOscillationPhase = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gRenderLayerOffsets = external dso_local local_unnamed_addr global [4 x %struct.RenderLayerOffset], align 4
@gMapBank5MechanismBackgroundScripts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMapBank5MechanismStates = external dso_local global [0 x i8], align 1
@gMapBank5MechanismSpawnCount = external dso_local local_unnamed_addr global i32, align 4
@gMapBank5MechanismSpawnLimit = external dso_local local_unnamed_addr global i32, align 4
@gMapBank5MechanismResult = external dso_local global i8, align 1
@gSaveGroup01Byte21E0 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank5MechanismCounters = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMapBank5MechanismStyle = external dso_local local_unnamed_addr global i8, align 1
@gMapBank5AmbientPhase = external dso_local local_unnamed_addr global i8, align 1
@gMapBank5MotionCounters = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMapBank5AmbientPhase2 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank5SpawnPositions = external dso_local local_unnamed_addr constant [0 x [2 x i16]], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84DC0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522308 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143522320 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #10
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84DFC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522341 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84E10() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522353 to ptr)) #10
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84E2C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522365 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143521153 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143521198 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84E90() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521593 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84EA4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522377 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84EB8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522389 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84ECC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522401 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84EE0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143520476 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84EFC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521373 to ptr)) #10
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143521373, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84F24() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143541133 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521373 to ptr)) #10
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143521373, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84F78() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522422 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84F94() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521490 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84FA8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522140 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143522168 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84FE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522434 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset84FF8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521462 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset8500C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143520917 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85020() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522112 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85034() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522009 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85048() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143583034 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521373 to ptr)) #10
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143521373, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClampMapBank5Class6() local_unnamed_addr #2 {
  %1 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  %3 = icmp ugt i16 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  br label %5

5:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset850B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143412252 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset850CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410929 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143411072 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85108() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143412264 to ptr)) #10
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143412264, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85138() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143438081 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143438093 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85174() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143438121 to ptr)) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  store i8 19, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143438121, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset851A4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143442956 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143442979 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #10
  store i8 19, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143442956, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset851F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143434778 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85214() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439243 to ptr)) #10
  store i8 19, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143439243, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset8523C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143437051 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143437063 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85278() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143436867 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436888 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset852B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143283436 to ptr)) #10
  tail call arm_apcscc void @SetActorClassAnimationPreset138F8() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A114() #10
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143283436 to ptr)) #10
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorClassAnimationPreset138F8() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A114() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset852DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16258() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset195D8() #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16258() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset195D8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset852EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationAndIndicator165B4() #10
  tail call arm_apcscc void @SetDirectionalAnimationPreset16F74() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B104() #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator165B4() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16F74() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B104() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85300() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16A9C() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B528() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B57C() #10
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16A9C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B528() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B57C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85314() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16D4C() #10
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E64() #10
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16D4C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E64() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85324() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %2 = icmp eq i8 %1, 2
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderSetupAnimationPreset1886C() #10
  br label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderSetupAnimationPreset188E4() #10
  br label %5

5:                                                ; preds = %4, %3
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset1886C() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset188E4() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85348() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureRenderSetupPreset188FC() #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143518175 to ptr)) #10
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset188FC() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85364() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143288532 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532628 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532590 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143306312 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532628 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532609 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPlaceMapBank5GridChoices() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #10
  %2 = zext i16 %1 to i32
  %3 = add i32 %2, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 420)
  %4 = inttoptr i32 %3 to ptr
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  store i8 %8, ptr %4, align 1
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 684, i32 noundef 1) #10
  br label %11

11:                                               ; preds = %7, %10, %0
  %12 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #10
  %13 = zext i16 %12 to i32
  %14 = add i32 %13, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 420)
  %15 = inttoptr i32 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  store i8 %19, ptr %15, align 1
  %20 = icmp ult i8 %19, 4
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 684, i32 noundef 1) #10
  br label %22

22:                                               ; preds = %21, %18, %11
  %23 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #10
  %24 = zext i16 %23 to i32
  %25 = add i32 %24, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 420)
  %26 = inttoptr i32 %25 to ptr
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  store i8 %30, ptr %26, align 1
  %31 = icmp ult i8 %30, 4
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 684, i32 noundef 1) #10
  br label %33

33:                                               ; preds = %32, %29, %22
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReplaceMapBank5GridChoice() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = zext i8 %1 to i32
  %3 = add i32 %2, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 420)
  %4 = inttoptr i32 %3 to ptr
  store i8 7, ptr %4, align 1
  %5 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #10
  %6 = zext i16 %5 to i32
  %7 = add i32 %6, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 420)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %0
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  store i8 %12, ptr %8, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #10
  %15 = zext i16 %14 to i32
  %16 = add i32 %15, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 420)
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  store i8 %21, ptr %17, align 1
  br label %22

22:                                               ; preds = %20, %13
  %23 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 6) #10
  %24 = zext i16 %23 to i32
  %25 = add i32 %24, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 420)
  %26 = inttoptr i32 %25 to ptr
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  store i8 %30, ptr %26, align 1
  br label %31

31:                                               ; preds = %29, %22
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDrawMapBank5Grid() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %67
  %2 = phi i1 [ true, %0 ], [ false, %67 ]
  %3 = phi i32 [ 0, %0 ], [ 1, %67 ]
  %4 = mul nuw nsw i32 %3, 3
  %5 = add nuw nsw i32 %4, 26
  %6 = trunc i32 %5 to i8
  %7 = mul nuw nsw i32 %3, 12
  %8 = add i32 %7, ptrtoint (ptr @gMapBank5GridPositions to i32)
  %9 = inttoptr i32 %8 to ptr
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  %12 = add i32 %7, add (i32 ptrtoint (ptr @gMapBank5GridPositions to i32), i32 2)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i16, ptr %13, align 2
  %15 = sext i16 %14 to i32
  %16 = or disjoint i32 %4, 420
  %17 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %16
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr [0 x ptr], ptr @gMapBank5GridAnimations, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %11, i32 noundef 0, i32 noundef %15, ptr noundef %21) #10
  %22 = load i8, ptr %17, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %5, i8 noundef zeroext 1) #10
  br label %25

25:                                               ; preds = %24, %1
  %26 = add nuw nsw i32 %4, 27
  %27 = trunc i32 %26 to i8
  %28 = mul nuw nsw i32 %3, 12
  %29 = add i32 %28, add (i32 ptrtoint (ptr @gMapBank5GridPositions to i32), i32 4)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i16, ptr %30, align 2
  %32 = sext i16 %31 to i32
  %33 = add i32 %28, add (i32 ptrtoint (ptr @gMapBank5GridPositions to i32), i32 6)
  %34 = inttoptr i32 %33 to ptr
  %35 = load i16, ptr %34, align 2
  %36 = sext i16 %35 to i32
  %37 = add nuw nsw i32 %4, 421
  %38 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %37
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr [0 x ptr], ptr @gMapBank5GridAnimations, i32 0, i32 %40
  %42 = load ptr, ptr %41, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %32, i32 noundef 0, i32 noundef %36, ptr noundef %42) #10
  %43 = load i8, ptr %38, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %25
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %26, i8 noundef zeroext 1) #10
  br label %46

46:                                               ; preds = %45, %25
  %47 = or disjoint i32 %4, 28
  %48 = trunc i32 %47 to i8
  %49 = mul nuw nsw i32 %3, 12
  %50 = add i32 %49, add (i32 ptrtoint (ptr @gMapBank5GridPositions to i32), i32 8)
  %51 = inttoptr i32 %50 to ptr
  %52 = load i16, ptr %51, align 2
  %53 = sext i16 %52 to i32
  %54 = add i32 %49, add (i32 ptrtoint (ptr @gMapBank5GridPositions to i32), i32 10)
  %55 = inttoptr i32 %54 to ptr
  %56 = load i16, ptr %55, align 2
  %57 = sext i16 %56 to i32
  %58 = add nuw nsw i32 %4, 422
  %59 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %58
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i32
  %62 = getelementptr [0 x ptr], ptr @gMapBank5GridAnimations, i32 0, i32 %61
  %63 = load ptr, ptr %62, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %48, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %53, i32 noundef 0, i32 noundef %57, ptr noundef %63) #10
  %64 = load i8, ptr %59, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %46
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %47, i8 noundef zeroext 1) #10
  br label %67

67:                                               ; preds = %66, %46
  br i1 %2, label %1, label %68

68:                                               ; preds = %67
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderModeBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDrawMapBank5GridCover() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 0) #10
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = zext i8 %2 to i32
  %4 = icmp sgt i16 %1, -1
  %5 = add nuw nsw i32 %3, 26
  %6 = trunc i32 %5 to i8
  %7 = getelementptr [0 x %struct.MapBank5GridPosition], ptr @gMapBank5GridPositions, i32 0, i32 %3
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = shl nuw nsw i32 %3, 2
  %11 = add i32 %10, add (i32 ptrtoint (ptr @gMapBank5GridPositions to i32), i32 2)
  %12 = inttoptr i32 %11 to ptr
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  %15 = select i1 %4, ptr inttoptr (i32 143584770 to ptr), ptr inttoptr (i32 143584794 to ptr)
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %9, i32 noundef 0, i32 noundef %14, ptr noundef nonnull %15) #10
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %5, i8 noundef zeroext 1) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_855F4() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset855F8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143354527 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots1, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538560 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots1, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset8564C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584479 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset85684() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584636 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset856BC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143584650 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143537436 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset85710() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584599 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset85748() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584664 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset85780() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584493 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset857B8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584678 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset857F0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584585 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset85828() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143584507 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143463541 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset8587C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584692 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset858B4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 1, i32 23
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %0
  store i8 0, ptr %8, align 4
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  br label %13

13:                                               ; preds = %11, %0
  %14 = phi i8 [ %12, %11 ], [ %1, %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %14, ptr noundef nonnull inttoptr (i32 143584457 to ptr)) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_858EC() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDrawMapBank5SelectedGridChoice() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = zext i8 %1 to i32
  %3 = add nuw nsw i32 %2, 420
  %4 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr [0 x %struct.MapBank5GridPosition], ptr @gMapBank5GridPositions, i32 0, i32 %2
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = shl nuw nsw i32 %2, 2
  %11 = add i32 %10, add (i32 ptrtoint (ptr @gMapBank5GridPositions to i32), i32 2)
  %12 = inttoptr i32 %11 to ptr
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  %15 = getelementptr [0 x ptr], ptr @gMapBank5SelectedGridAnimations, i32 0, i32 %6
  %16 = load ptr, ptr %15, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %9, i32 noundef 0, i32 noundef %14, ptr noundef %16) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackOscillateMapBank5GridY(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i8, ptr @gMapBank5GridPhase, align 1
  %5 = zext i8 %4 to i32
  %6 = add nuw nsw i32 %5, 64
  %7 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %6
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 10
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = add i8 %4, 2
  store i8 %12, ptr @gMapBank5GridPhase, align 1
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackMirrorMapBank5Actors(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  store i32 1, ptr %2, align 4
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 52), align 2
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i8, ptr @gRenderClassSlots0, align 1
  %9 = zext i8 %8 to i32
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 35), align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.RenderSlot, ptr %7, i32 %11
  %13 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %6, %14
  %16 = shl i32 %15, 1
  %17 = add i32 %16, -1048576
  %18 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 5
  store i32 %17, ptr %18, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 16
  %22 = load i32, ptr %13, align 4
  %23 = add nuw nsw i32 %21, 65471
  %24 = and i32 %23, 65535
  %25 = icmp ugt i32 %24, 78
  %26 = icmp ugt i32 %22, 8454143
  %27 = select i1 %25, i1 true, i1 %26
  %28 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = load ptr, ptr @gMirrorPrimarySourceAnimations, align 4
  %31 = ptrtoint ptr %30 to i32
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %130, label %33

33:                                               ; preds = %3
  %34 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 1), align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = icmp eq i32 %29, %35
  br i1 %36, label %130, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 2), align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = icmp eq i32 %29, %39
  br i1 %40, label %130, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 3), align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = icmp eq i32 %29, %43
  br i1 %44, label %130, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 4), align 4
  %47 = ptrtoint ptr %46 to i32
  %48 = icmp eq i32 %29, %47
  br i1 %48, label %130, label %49

49:                                               ; preds = %45
  %50 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 5), align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = icmp eq i32 %29, %51
  br i1 %52, label %130, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 6), align 4
  %55 = ptrtoint ptr %54 to i32
  %56 = icmp eq i32 %29, %55
  br i1 %56, label %130, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 7), align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = icmp eq i32 %29, %59
  br i1 %60, label %130, label %61

61:                                               ; preds = %57
  %62 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 8), align 4
  %63 = ptrtoint ptr %62 to i32
  %64 = icmp eq i32 %29, %63
  br i1 %64, label %130, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 9), align 4
  %67 = ptrtoint ptr %66 to i32
  %68 = icmp eq i32 %29, %67
  br i1 %68, label %130, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 10), align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = icmp eq i32 %29, %71
  br i1 %72, label %130, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 11), align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = icmp eq i32 %29, %75
  br i1 %76, label %130, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 12), align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = icmp eq i32 %29, %79
  br i1 %80, label %130, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 13), align 4
  %83 = ptrtoint ptr %82 to i32
  %84 = icmp eq i32 %29, %83
  br i1 %84, label %130, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 14), align 4
  %87 = ptrtoint ptr %86 to i32
  %88 = icmp eq i32 %29, %87
  br i1 %88, label %130, label %89

89:                                               ; preds = %85
  %90 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 15), align 4
  %91 = ptrtoint ptr %90 to i32
  %92 = icmp eq i32 %29, %91
  br i1 %92, label %130, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 16), align 4
  %95 = ptrtoint ptr %94 to i32
  %96 = icmp eq i32 %29, %95
  br i1 %96, label %130, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 17), align 4
  %99 = ptrtoint ptr %98 to i32
  %100 = icmp eq i32 %29, %99
  br i1 %100, label %130, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 18), align 4
  %103 = ptrtoint ptr %102 to i32
  %104 = icmp eq i32 %29, %103
  br i1 %104, label %130, label %105

105:                                              ; preds = %101
  %106 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 19), align 4
  %107 = ptrtoint ptr %106 to i32
  %108 = icmp eq i32 %29, %107
  br i1 %108, label %130, label %109

109:                                              ; preds = %105
  %110 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 20), align 4
  %111 = ptrtoint ptr %110 to i32
  %112 = icmp eq i32 %29, %111
  br i1 %112, label %130, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 21), align 4
  %115 = ptrtoint ptr %114 to i32
  %116 = icmp eq i32 %29, %115
  br i1 %116, label %130, label %117

117:                                              ; preds = %113
  %118 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorPrimarySourceAnimations, i32 0, i32 22), align 4
  %119 = ptrtoint ptr %118 to i32
  %120 = icmp eq i32 %29, %119
  br i1 %120, label %130, label %121

121:                                              ; preds = %117
  br i1 %27, label %126, label %122

122:                                              ; preds = %121
  %123 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 346) #10
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  store i32 10485760, ptr %18, align 4
  br label %166

126:                                              ; preds = %122, %121
  %127 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 1
  store i32 ptrtoint (ptr @gMirrorPrimaryFallbackAnimation to i32), ptr %127, align 4
  %128 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 23, i32 3
  store i8 0, ptr %128, align 1
  %129 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 16
  store i16 0, ptr %129, align 4
  br label %166

130:                                              ; preds = %117, %113, %109, %105, %101, %97, %93, %89, %85, %81, %77, %73, %69, %65, %61, %57, %53, %49, %45, %41, %37, %33, %3
  %131 = phi i32 [ 0, %3 ], [ 1, %33 ], [ 2, %37 ], [ 3, %41 ], [ 4, %45 ], [ 5, %49 ], [ 6, %53 ], [ 7, %57 ], [ 8, %61 ], [ 9, %65 ], [ 10, %69 ], [ 11, %73 ], [ 12, %77 ], [ 13, %81 ], [ 14, %85 ], [ 15, %89 ], [ 16, %93 ], [ 17, %97 ], [ 18, %101 ], [ 19, %105 ], [ 20, %109 ], [ 21, %113 ], [ 22, %117 ]
  br i1 %27, label %132, label %145

132:                                              ; preds = %130
  %133 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = getelementptr [0 x ptr], ptr @gMirrorPrimaryAnimations, i32 0, i32 %131
  %136 = load ptr, ptr %135, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = icmp eq i32 %134, %137
  br i1 %138, label %166, label %139

139:                                              ; preds = %132
  store i32 %137, ptr %133, align 4
  %140 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 23, i32 3
  store i8 0, ptr %140, align 1
  %141 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 23, i32 3
  store i8 0, ptr %141, align 1
  %142 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 16
  %143 = load i16, ptr %142, align 4
  %144 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 16
  store i16 %143, ptr %144, align 4
  br label %166

145:                                              ; preds = %130
  %146 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 346) #10
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %165

148:                                              ; preds = %145
  %149 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = getelementptr [0 x ptr], ptr @gMapBank5MirrorAreaAnimations, i32 0, i32 %131
  %152 = load ptr, ptr %151, align 4
  %153 = ptrtoint ptr %152 to i32
  %154 = icmp eq i32 %150, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %148
  store i32 %153, ptr %149, align 4
  %156 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 23, i32 3
  store i8 0, ptr %156, align 1
  %157 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 23, i32 3
  store i8 0, ptr %157, align 1
  %158 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 16
  %159 = load i16, ptr %158, align 4
  %160 = getelementptr %struct.RenderSlot, ptr %7, i32 %11, i32 16
  store i16 %159, ptr %160, align 4
  br label %161

161:                                              ; preds = %155, %148
  %162 = and i32 %131, 28
  %163 = icmp eq i32 %162, 8
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 345, i32 noundef 1) #10
  br label %166

165:                                              ; preds = %145
  store i32 10485760, ptr %18, align 4
  br label %166

166:                                              ; preds = %165, %164, %161, %139, %132, %125, %126
  %167 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #10
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %280, label %169

169:                                              ; preds = %166
  %170 = load ptr, ptr @gRenderSlots, align 4
  %171 = load i8, ptr @gRenderClassSlots1, align 1
  %172 = zext i8 %171 to i32
  %173 = getelementptr %struct.RenderSlot, ptr %170, i32 %172, i32 3
  %174 = load i32, ptr %173, align 4
  %175 = lshr i32 %174, 16
  %176 = getelementptr %struct.RenderSlot, ptr %170, i32 %172, i32 5
  %177 = load i32, ptr %176, align 4
  %178 = add nuw nsw i32 %175, 65471
  %179 = and i32 %178, 65535
  %180 = icmp ugt i32 %179, 78
  %181 = icmp ugt i32 %177, 8454143
  %182 = select i1 %180, i1 true, i1 %181
  %183 = sub i32 %6, %177
  %184 = shl i32 %183, 1
  %185 = add i32 %184, -1048576
  %186 = select i1 %182, i32 %185, i32 10485760
  %187 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 5
  store i32 %186, ptr %187, align 4
  %188 = getelementptr %struct.RenderSlot, ptr %170, i32 %172, i32 1
  %189 = load i32, ptr %188, align 4
  %190 = load ptr, ptr @gMirrorSecondarySourceAnimations, align 4
  %191 = ptrtoint ptr %190 to i32
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %264, label %193

193:                                              ; preds = %169
  %194 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 1), align 4
  %195 = ptrtoint ptr %194 to i32
  %196 = icmp eq i32 %189, %195
  br i1 %196, label %264, label %197

197:                                              ; preds = %193
  %198 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 2), align 4
  %199 = ptrtoint ptr %198 to i32
  %200 = icmp eq i32 %189, %199
  br i1 %200, label %264, label %201

201:                                              ; preds = %197
  %202 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 3), align 4
  %203 = ptrtoint ptr %202 to i32
  %204 = icmp eq i32 %189, %203
  br i1 %204, label %264, label %205

205:                                              ; preds = %201
  %206 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 4), align 4
  %207 = ptrtoint ptr %206 to i32
  %208 = icmp eq i32 %189, %207
  br i1 %208, label %264, label %209

209:                                              ; preds = %205
  %210 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 5), align 4
  %211 = ptrtoint ptr %210 to i32
  %212 = icmp eq i32 %189, %211
  br i1 %212, label %264, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 6), align 4
  %215 = ptrtoint ptr %214 to i32
  %216 = icmp eq i32 %189, %215
  br i1 %216, label %264, label %217

217:                                              ; preds = %213
  %218 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 7), align 4
  %219 = ptrtoint ptr %218 to i32
  %220 = icmp eq i32 %189, %219
  br i1 %220, label %264, label %221

221:                                              ; preds = %217
  %222 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 8), align 4
  %223 = ptrtoint ptr %222 to i32
  %224 = icmp eq i32 %189, %223
  br i1 %224, label %264, label %225

225:                                              ; preds = %221
  %226 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 9), align 4
  %227 = ptrtoint ptr %226 to i32
  %228 = icmp eq i32 %189, %227
  br i1 %228, label %264, label %229

229:                                              ; preds = %225
  %230 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 10), align 4
  %231 = ptrtoint ptr %230 to i32
  %232 = icmp eq i32 %189, %231
  br i1 %232, label %264, label %233

233:                                              ; preds = %229
  %234 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 11), align 4
  %235 = ptrtoint ptr %234 to i32
  %236 = icmp eq i32 %189, %235
  br i1 %236, label %264, label %237

237:                                              ; preds = %233
  %238 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 12), align 4
  %239 = ptrtoint ptr %238 to i32
  %240 = icmp eq i32 %189, %239
  br i1 %240, label %264, label %241

241:                                              ; preds = %237
  %242 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 13), align 4
  %243 = ptrtoint ptr %242 to i32
  %244 = icmp eq i32 %189, %243
  br i1 %244, label %264, label %245

245:                                              ; preds = %241
  %246 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 14), align 4
  %247 = ptrtoint ptr %246 to i32
  %248 = icmp eq i32 %189, %247
  br i1 %248, label %264, label %249

249:                                              ; preds = %245
  %250 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 15), align 4
  %251 = ptrtoint ptr %250 to i32
  %252 = icmp eq i32 %189, %251
  br i1 %252, label %264, label %253

253:                                              ; preds = %249
  %254 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 16), align 4
  %255 = ptrtoint ptr %254 to i32
  %256 = icmp eq i32 %189, %255
  br i1 %256, label %264, label %257

257:                                              ; preds = %253
  %258 = load ptr, ptr getelementptr ([0 x ptr], ptr @gMirrorSecondarySourceAnimations, i32 0, i32 17), align 4
  %259 = ptrtoint ptr %258 to i32
  %260 = icmp eq i32 %189, %259
  br i1 %260, label %264, label %261

261:                                              ; preds = %257
  %262 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 1
  store i32 ptrtoint (ptr @gMirrorSecondaryFallbackAnimation to i32), ptr %262, align 4
  %263 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 23, i32 3
  store i8 0, ptr %263, align 1
  br label %277

264:                                              ; preds = %257, %253, %249, %245, %241, %237, %233, %229, %225, %221, %217, %213, %209, %205, %201, %197, %193, %169
  %265 = phi i32 [ 0, %169 ], [ 1, %193 ], [ 2, %197 ], [ 3, %201 ], [ 4, %205 ], [ 5, %209 ], [ 6, %213 ], [ 7, %217 ], [ 8, %221 ], [ 9, %225 ], [ 10, %229 ], [ 11, %233 ], [ 12, %237 ], [ 13, %241 ], [ 14, %245 ], [ 15, %249 ], [ 16, %253 ], [ 17, %257 ]
  %266 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 1
  %267 = load i32, ptr %266, align 4
  %268 = getelementptr [0 x ptr], ptr @gMirrorSecondaryAnimations, i32 0, i32 %265
  %269 = load ptr, ptr %268, align 4
  %270 = ptrtoint ptr %269 to i32
  %271 = icmp eq i32 %267, %270
  br i1 %271, label %280, label %272

272:                                              ; preds = %264
  store i32 %270, ptr %266, align 4
  %273 = getelementptr %struct.RenderSlot, ptr %170, i32 %172, i32 23, i32 3
  store i8 0, ptr %273, align 1
  %274 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 23, i32 3
  store i8 0, ptr %274, align 1
  %275 = getelementptr %struct.RenderSlot, ptr %170, i32 %172, i32 16
  %276 = load i16, ptr %275, align 4
  br label %277

277:                                              ; preds = %272, %261
  %278 = phi i16 [ 0, %261 ], [ %276, %272 ]
  %279 = getelementptr %struct.RenderSlot, ptr %12, i32 -1, i32 16
  store i16 %278, ptr %279, align 4
  br label %280

280:                                              ; preds = %277, %264, %166
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank5Preset85B7C() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackOffsetMapBank5ActorDepths() local_unnamed_addr #5 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %2, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -9437184
  store i32 %6, ptr %4, align 4
  %7 = load i8, ptr @gRenderClassSlots1, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %3, i32 %8, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -9437184
  store i32 %11, ptr %9, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85BC0() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528804) #10
  tail call arm_apcscc void @SetActorClassAnimationPreset13610() #10
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143317588 to ptr)) #10
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #10
  ret void
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorClassAnimationPreset13610() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank5Preset85C18() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85C1C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext %1, i32 noundef 168, i32 noundef 0, i32 noundef 64) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %2, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 208, i32 noundef 0, i32 noundef 64, ptr noundef nonnull inttoptr (i32 143380998 to ptr)) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  ret void
}

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85C78() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext %1, i32 noundef 208, i32 noundef 0, i32 noundef 64) #10
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %2, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 168, i32 noundef 0, i32 noundef 64, ptr noundef nonnull inttoptr (i32 143377950 to ptr)) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85CD4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586403 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85CEC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586403 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85D04() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586417 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85D1C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586417 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85D34() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586431 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85D4C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586539 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85D64() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586553 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85D7C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586567 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85D94() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586567 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85DAC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586581 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85DC4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586581 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85DDC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586595 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85DF4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586595 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85E0C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586666 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143518437 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85E5C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586666 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143518437 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85EAC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586338 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85EC4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586338 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538601 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85F14() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586338 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143586375 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  %6 = load i8, ptr @gRenderClassSlots3, align 1
  %7 = add i8 %6, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143586389 to ptr)) #10
  %8 = load i8, ptr @gRenderClassSlots3, align 1
  %9 = add i8 %8, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %8) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset85F94() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586703 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531575 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  %7 = add i8 %6, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531772 to ptr)) #10
  %8 = load i8, ptr @gRenderClassSlots2, align 1
  %9 = add i8 %8, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %8) #10
  %10 = load i8, ptr @gRenderClassSlots2, align 1
  store i8 %10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143586703, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86028() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586703 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531575 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  %6 = load i8, ptr @gRenderClassSlots3, align 1
  %7 = add i8 %6, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %7, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531772 to ptr)) #10
  %8 = load i8, ptr @gRenderClassSlots3, align 1
  %9 = add i8 %8, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %8) #10
  %10 = load i8, ptr @gRenderClassSlots3, align 1
  store i8 %10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143586703, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset860BC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143586822 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  store i8 %2, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143586822, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset860EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528875) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143587021 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531068 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  %6 = load i8, ptr @gRenderClassSlots3, align 1
  store i8 %6, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143587021, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackOscillateMapBank5YByFlags(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gMapBank5SlowOscillationPhase, align 1
  %5 = zext i8 %4 to i32
  %6 = add nuw nsw i32 %5, 64
  %7 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %6
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 10
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 681) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 682) #10
  %16 = icmp eq i32 %15, 0
  %17 = select i1 %16, i8 2, i8 1
  br label %18

18:                                               ; preds = %14, %3
  %19 = phi i8 [ 2, %3 ], [ %17, %14 ]
  %20 = load i8, ptr @gMapBank5SlowOscillationPhase, align 1
  %21 = add i8 %20, %19
  store i8 %21, ptr @gMapBank5SlowOscillationPhase, align 1
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackApproachMapBank5ClassPosition(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 38), align 2
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = load i8, ptr %1, align 1
  %11 = zext i8 %10 to i32
  %12 = tail call arm_apcscc i32 @__divsi3(i32 noundef %9, i32 noundef %11) #10
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %12, ptr %13, align 4
  %14 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 39), align 2
  %15 = zext i16 %14 to i32
  %16 = shl nuw i32 %15, 16
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %16, %18
  %20 = load i8, ptr %1, align 1
  %21 = zext i8 %20 to i32
  %22 = tail call arm_apcscc i32 @__divsi3(i32 noundef %19, i32 noundef %21) #10
  %23 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  store i32 %22, ptr %23, align 4
  store i32 0, ptr %2, align 4
  ret i32 1
}

declare dso_local arm_apcscc i32 @__divsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank5Preset86204() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86208() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143378465 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86238() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143381455 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86268() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143315571 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86298() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143362234 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @ConfigureMapBank5Preset862C8() local_unnamed_addr #6 {
  store i8 13, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143362112, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset862E4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143343673 to ptr)) #10
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #10
  %5 = load i8, ptr @gRenderClassSlots1, align 1
  %6 = add i8 %5, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143343687 to ptr)) #10
  %7 = load i8, ptr @gRenderClassSlots1, align 1
  %8 = add i8 %7, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %8, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %7) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86358() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143348652 to ptr)) #10
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #10
  %5 = load i8, ptr @gRenderClassSlots1, align 1
  %6 = add i8 %5, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143348666 to ptr)) #10
  %7 = load i8, ptr @gRenderClassSlots1, align 1
  %8 = add i8 %7, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %8, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %7) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset863CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16048() #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %2, i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143448939 to ptr)) #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16048() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset863F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 47) #10
  ret void
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset863FC() local_unnamed_addr #0 {
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 48) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143587810 to ptr)) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreMapBank5DepthDistances() local_unnamed_addr #7 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 6848512, %5
  %7 = icmp sgt i32 %6, 0
  %8 = lshr i32 %6, 15
  %9 = trunc i32 %8 to i16
  %10 = select i1 %7, i16 %9, i16 0
  store i16 %10, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  %11 = load i8, ptr @gRenderClassSlots1, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr %struct.RenderSlot, ptr %1, i32 %12, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 8421376, %14
  %16 = lshr i32 %15, 15
  %17 = trunc i32 %16 to i16
  %18 = icmp slt i32 %15, 1
  %19 = select i1 %18, i16 0, i16 %17
  store i16 %19, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86494() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset17D74() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset19BB0() #10
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17D74() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19BB0() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset864A4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset17CFC() #10
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E90() #10
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17CFC() local_unnamed_addr #1

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E90() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank5Mechanism() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 10, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = sub i32 15728640, %3
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 3145728)
  store i32 %6, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 5), align 4
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 445), align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  tail call arm_apcscc void @UpdateMapBank5MechanismSelection() #11
  br label %10

10:                                               ; preds = %9, %0
  tail call arm_apcscc void @UpdateMapBank5MechanismPrimaryLane(i32 noundef 0) #11
  %11 = load ptr, ptr @gRenderSlots, align 4
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismStates, i32 0, i32 3), align 1
  switch i8 %12, label %29 [
    i8 1, label %13
    i8 2, label %18
    i8 3, label %23
  ]

13:                                               ; preds = %10
  %14 = getelementptr %struct.RenderSlot, ptr %11, i32 21, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp slt i32 %15, 3145728
  br i1 %16, label %17, label %29

17:                                               ; preds = %13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 21, ptr noundef nonnull inttoptr (i32 143589212 to ptr)) #10
  br label %27

18:                                               ; preds = %10
  %19 = getelementptr %struct.RenderSlot, ptr %11, i32 21, i32 23
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %18
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 64, i32 noundef 0, i32 noundef 176, ptr noundef nonnull inttoptr (i32 143589264 to ptr)) #10
  br label %27

23:                                               ; preds = %10
  %24 = getelementptr %struct.RenderSlot, ptr %11, i32 21, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 143589264
  br i1 %26, label %29, label %27

27:                                               ; preds = %23, %22, %17
  %28 = phi i8 [ 3, %22 ], [ 2, %17 ], [ 0, %23 ]
  store i8 %28, ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismStates, i32 0, i32 3), align 1
  br label %29

29:                                               ; preds = %10, %13, %18, %23, %27
  tail call arm_apcscc void @UpdateMapBank5MechanismPrimaryLane(i32 noundef 1) #11
  %30 = load ptr, ptr @gRenderSlots, align 4
  %31 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismStates, i32 0, i32 3) to i32), i32 1) to ptr), align 1
  switch i8 %31, label %48 [
    i8 1, label %41
    i8 2, label %36
    i8 3, label %32
  ]

32:                                               ; preds = %29
  %33 = getelementptr %struct.RenderSlot, ptr %30, i32 22, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 143589264
  br i1 %35, label %48, label %46

36:                                               ; preds = %29
  %37 = getelementptr %struct.RenderSlot, ptr %30, i32 22, i32 23
  %38 = load i8, ptr %37, align 4
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 144, i32 noundef 0, i32 noundef 176, ptr noundef nonnull inttoptr (i32 143589264 to ptr)) #10
  br label %46

41:                                               ; preds = %29
  %42 = getelementptr %struct.RenderSlot, ptr %30, i32 22, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = icmp slt i32 %43, 3145728
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143589212 to ptr)) #10
  br label %46

46:                                               ; preds = %45, %40, %32
  %47 = phi i8 [ 3, %40 ], [ 2, %45 ], [ 0, %32 ]
  store i8 %47, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismStates, i32 0, i32 3) to i32), i32 1) to ptr), align 1
  br label %48

48:                                               ; preds = %46, %41, %36, %32, %29
  tail call arm_apcscc void @UpdateMapBank5MechanismPrimaryLane(i32 noundef 2) #11
  %49 = load ptr, ptr @gRenderSlots, align 4
  %50 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismStates, i32 0, i32 3) to i32), i32 2) to ptr), align 1
  switch i8 %50, label %67 [
    i8 1, label %60
    i8 2, label %55
    i8 3, label %51
  ]

51:                                               ; preds = %48
  %52 = getelementptr %struct.RenderSlot, ptr %49, i32 23, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 143589264
  br i1 %54, label %67, label %65

55:                                               ; preds = %48
  %56 = getelementptr %struct.RenderSlot, ptr %49, i32 23, i32 23
  %57 = load i8, ptr %56, align 4
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 224, i32 noundef 0, i32 noundef 176, ptr noundef nonnull inttoptr (i32 143589264 to ptr)) #10
  br label %65

60:                                               ; preds = %48
  %61 = getelementptr %struct.RenderSlot, ptr %49, i32 23, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %62, 3145728
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 23, ptr noundef nonnull inttoptr (i32 143589212 to ptr)) #10
  br label %65

65:                                               ; preds = %64, %59, %51
  %66 = phi i8 [ 3, %59 ], [ 2, %64 ], [ 0, %51 ]
  store i8 %66, ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismStates, i32 0, i32 3) to i32), i32 2) to ptr), align 1
  br label %67

67:                                               ; preds = %65, %60, %55, %51, %48
  %68 = tail call arm_apcscc i32 @CheckMapBank5MechanismOutcome() #11, !range !4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %117, label %70

70:                                               ; preds = %67
  %71 = load ptr, ptr @gRenderSlots, align 4
  %72 = ptrtoint ptr %71 to i32
  %73 = add i32 %72, 1872
  %74 = inttoptr i32 %73 to ptr
  %75 = getelementptr inbounds %struct.RenderSlot, ptr %74, i32 0, i32 6
  store i32 0, ptr %75, align 4
  %76 = getelementptr %struct.RenderSlot, ptr %74, i32 0, i32 6, i32 2
  store i32 0, ptr %76, align 4
  %77 = load ptr, ptr @gRenderSlots, align 4
  %78 = ptrtoint ptr %77 to i32
  %79 = add i32 %78, 1976
  %80 = inttoptr i32 %79 to ptr
  %81 = getelementptr inbounds %struct.RenderSlot, ptr %80, i32 0, i32 6
  store i32 0, ptr %81, align 4
  %82 = getelementptr %struct.RenderSlot, ptr %80, i32 0, i32 6, i32 2
  store i32 0, ptr %82, align 4
  %83 = load ptr, ptr @gRenderSlots, align 4
  %84 = ptrtoint ptr %83 to i32
  %85 = add i32 %84, 2080
  %86 = inttoptr i32 %85 to ptr
  %87 = getelementptr inbounds %struct.RenderSlot, ptr %86, i32 0, i32 6
  store i32 0, ptr %87, align 4
  %88 = getelementptr %struct.RenderSlot, ptr %86, i32 0, i32 6, i32 2
  store i32 0, ptr %88, align 4
  %89 = load ptr, ptr @gRenderSlots, align 4
  %90 = ptrtoint ptr %89 to i32
  %91 = add i32 %90, 2184
  %92 = inttoptr i32 %91 to ptr
  %93 = getelementptr inbounds %struct.RenderSlot, ptr %92, i32 0, i32 6
  store i32 0, ptr %93, align 4
  %94 = getelementptr %struct.RenderSlot, ptr %92, i32 0, i32 6, i32 2
  store i32 0, ptr %94, align 4
  %95 = load ptr, ptr @gRenderSlots, align 4
  %96 = ptrtoint ptr %95 to i32
  %97 = add i32 %96, 2288
  %98 = inttoptr i32 %97 to ptr
  %99 = getelementptr inbounds %struct.RenderSlot, ptr %98, i32 0, i32 6
  store i32 0, ptr %99, align 4
  %100 = getelementptr %struct.RenderSlot, ptr %98, i32 0, i32 6, i32 2
  store i32 0, ptr %100, align 4
  %101 = load ptr, ptr @gRenderSlots, align 4
  %102 = ptrtoint ptr %101 to i32
  %103 = add i32 %102, 2392
  %104 = inttoptr i32 %103 to ptr
  %105 = getelementptr inbounds %struct.RenderSlot, ptr %104, i32 0, i32 6
  store i32 0, ptr %105, align 4
  %106 = getelementptr %struct.RenderSlot, ptr %104, i32 0, i32 6, i32 2
  store i32 0, ptr %106, align 4
  %107 = load ptr, ptr @gRenderSlots, align 4
  %108 = load i8, ptr @gRenderClassSlots0, align 1
  %109 = zext i8 %108 to i32
  %110 = getelementptr %struct.RenderSlot, ptr %107, i32 %109, i32 6
  store i32 0, ptr %110, align 4
  %111 = getelementptr %struct.RenderSlot, ptr %107, i32 %109, i32 6, i32 2
  store i32 0, ptr %111, align 4
  %112 = load ptr, ptr @gRenderSlots, align 4
  %113 = load i8, ptr @gRenderClassSlots1, align 1
  %114 = zext i8 %113 to i32
  %115 = getelementptr %struct.RenderSlot, ptr %112, i32 %114, i32 6
  store i32 0, ptr %115, align 4
  %116 = getelementptr %struct.RenderSlot, ptr %112, i32 %114, i32 6, i32 2
  store i32 0, ptr %116, align 4
  br label %117

117:                                              ; preds = %70, %67
  %118 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %119 = icmp ult i32 %118, 362439
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = add nuw nsw i32 %118, 1
  store i32 %121, ptr @gTaskTextVariables2BB0, align 4
  br label %122

122:                                              ; preds = %120, %117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @UpdateMapBank5Layer1Scroll() local_unnamed_addr #7 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 10, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = sub i32 15728640, %3
  %5 = tail call i32 @llvm.smax.i32(i32 %4, i32 0)
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 3145728)
  store i32 %6, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 5), align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank5MechanismSelection() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 445), align 1
  %2 = zext i8 %1 to i32
  %3 = icmp ult i8 %1, 5
  br i1 %3, label %4, label %39

4:                                                ; preds = %0
  %5 = tail call arm_apcscc i32 @ScriptCallbackApproachClassCoordinates(ptr noundef nonnull inttoptr (i32 134836322 to ptr)) #10
  %6 = tail call arm_apcscc i32 @ScriptCallbackApproachClassCoordinates(ptr noundef nonnull inttoptr (i32 134836331 to ptr)) #10
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %8 = icmp eq i8 %7, 2
  br i1 %8, label %9, label %57

9:                                                ; preds = %4
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %11 = icmp eq i8 %10, 2
  br i1 %11, label %12, label %57

12:                                               ; preds = %9
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 445), align 1
  %14 = zext i8 %13 to i32
  %15 = add nsw i32 %14, -1
  %16 = add i8 %13, 4
  store i8 %16, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 445), align 1
  %17 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %17, ptr noundef nonnull inttoptr (i32 143281235 to ptr)) #10
  %18 = load i8, ptr @gRenderClassSlots0, align 1
  %19 = add i8 %18, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530200 to ptr)) #10
  %20 = load i8, ptr @gRenderClassSlots0, align 1
  %21 = add i8 %20, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %20) #10
  %22 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %22, ptr noundef nonnull inttoptr (i32 143588807 to ptr)) #10
  %23 = load i8, ptr @gRenderClassSlots1, align 1
  %24 = add i8 %23, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530244 to ptr)) #10
  %25 = load i8, ptr @gRenderClassSlots1, align 1
  %26 = add i8 %25, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %26, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %25) #10
  %27 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %14
  %28 = getelementptr i8, ptr %27, i32 434
  %29 = load i8, ptr %28, align 1
  switch i8 %29, label %57 [
    i8 2, label %30
    i8 1, label %34
  ]

30:                                               ; preds = %12
  %31 = shl nsw i32 %15, 1
  %32 = getelementptr [0 x ptr], ptr @gMapBank5MechanismBackgroundScripts, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 1, ptr noundef %33) #10
  br label %57

34:                                               ; preds = %12
  %35 = shl nsw i32 %15, 1
  %36 = or disjoint i32 %35, 1
  %37 = getelementptr [0 x ptr], ptr @gMapBank5MechanismBackgroundScripts, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 1, ptr noundef %38) #10
  br label %57

39:                                               ; preds = %0
  %40 = load ptr, ptr @gRenderSlots, align 4
  %41 = getelementptr %struct.RenderSlot, ptr %40, i32 13, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 143588807
  br i1 %43, label %57, label %44

44:                                               ; preds = %39
  %45 = add i32 %2, add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 430)
  %46 = inttoptr i32 %45 to ptr
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = add i8 %47, -1
  store i8 %50, ptr %46, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = mul nuw nsw i32 %2, 72
  %54 = add nuw nsw i32 %53, 65208
  %55 = and i32 %54, 65528
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %55, i32 noundef 0, i32 noundef 240, ptr noundef nonnull inttoptr (i32 143589322 to ptr)) #10
  br label %56

56:                                               ; preds = %49, %52, %44
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 445), align 1
  br label %57

57:                                               ; preds = %39, %56, %30, %34, %12, %4, %9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank5MechanismPrimaryLane(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, ptrtoint (ptr @gMapBank5MechanismStates to i32)
  %3 = inttoptr i32 %2 to ptr
  %4 = add i32 %0, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismStates, i32 0, i32 3) to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = add i32 %0, 21
  %7 = add i32 %0, 18
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = load i8, ptr %3, align 1
  switch i8 %9, label %59 [
    i8 0, label %10
    i8 1, label %25
  ]

10:                                               ; preds = %1
  %11 = load i8, ptr %5, align 1
  %12 = icmp eq i8 %11, 1
  br i1 %12, label %13, label %59

13:                                               ; preds = %10
  %14 = getelementptr %struct.RenderSlot, ptr %8, i32 %6, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %8, i32 %7, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %15, %17
  %19 = icmp slt i32 %18, 786432
  br i1 %19, label %20, label %59

20:                                               ; preds = %13
  %21 = trunc i32 %7 to i8
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %21, ptr noundef nonnull inttoptr (i32 143589124 to ptr)) #10
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext %21, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #10
  store i8 1, ptr %3, align 1
  %22 = trunc i32 %6 to i8
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %22, ptr noundef nonnull inttoptr (i32 143589212 to ptr)) #10
  store i8 2, ptr %5, align 1
  %23 = load i32, ptr @gMapBank5MechanismSpawnCount, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr @gMapBank5MechanismSpawnCount, align 4
  br label %59

25:                                               ; preds = %1
  %26 = getelementptr %struct.RenderSlot, ptr %8, i32 %7, i32 23
  %27 = load i8, ptr %26, align 4
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i32, ptr @gMapBank5MechanismSpawnCount, align 4
  %31 = load i32, ptr @gMapBank5MechanismSpawnLimit, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %53

33:                                               ; preds = %29
  %34 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 10) #10
  %35 = and i16 %34, 255
  %36 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 184) #10
  %37 = icmp eq i32 %36, 0
  %38 = trunc i32 %7 to i8
  %39 = mul i32 %0, 5242880
  %40 = add i32 %39, 4194304
  %41 = ashr exact i32 %40, 16
  br i1 %37, label %42, label %43

42:                                               ; preds = %33
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %38, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %41, i32 noundef 0, i32 noundef 64, ptr noundef nonnull inttoptr (i32 143588926 to ptr)) #10
  br label %58

43:                                               ; preds = %33
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %38, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %41, i32 noundef 0, i32 noundef 64, ptr noundef nonnull inttoptr (i32 143588974 to ptr)) #10
  %44 = icmp eq i32 %0, 2
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = add i16 %34, 249
  %47 = and i16 %46, 254
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %43
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %38, ptr noundef nonnull inttoptr (i32 143589022 to ptr)) #10
  br label %50

50:                                               ; preds = %49, %45
  %51 = icmp eq i16 %35, 9
  br i1 %51, label %52, label %58

52:                                               ; preds = %50
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %38, ptr noundef nonnull inttoptr (i32 143589070 to ptr)) #10
  br label %58

53:                                               ; preds = %29
  %54 = trunc i32 %7 to i8
  %55 = mul i32 %0, 5242880
  %56 = add i32 %55, 4194304
  %57 = ashr exact i32 %56, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %54, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %57, i32 noundef 0, i32 noundef 64, ptr noundef nonnull inttoptr (i32 143589070 to ptr)) #10
  br label %58

58:                                               ; preds = %42, %52, %50, %53
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %7, i8 noundef zeroext 1) #10
  store i8 0, ptr %3, align 1
  br label %59

59:                                               ; preds = %25, %58, %10, %13, %20, %1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank5MechanismPartnerLane(i32 noundef %0) local_unnamed_addr #0 {
  %2 = add i32 %0, ptrtoint (ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismStates, i32 0, i32 3) to i32)
  %3 = inttoptr i32 %2 to ptr
  %4 = add i32 %0, 21
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = load i8, ptr %3, align 1
  switch i8 %6, label %28 [
    i8 1, label %7
    i8 2, label %13
    i8 3, label %22
  ]

7:                                                ; preds = %1
  %8 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %9, 3145728
  br i1 %10, label %11, label %28

11:                                               ; preds = %7
  %12 = trunc i32 %4 to i8
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %12, ptr noundef nonnull inttoptr (i32 143589212 to ptr)) #10
  br label %26

13:                                               ; preds = %1
  %14 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 23
  %15 = load i8, ptr %14, align 4
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = trunc i32 %4 to i8
  %19 = mul i32 %0, 5242880
  %20 = add i32 %19, 4194304
  %21 = ashr exact i32 %20, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %21, i32 noundef 0, i32 noundef 176, ptr noundef nonnull inttoptr (i32 143589264 to ptr)) #10
  br label %26

22:                                               ; preds = %1
  %23 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 143589264
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %11, %17
  %27 = phi i8 [ 3, %17 ], [ 2, %11 ], [ 0, %22 ]
  store i8 %27, ptr %3, align 1
  br label %28

28:                                               ; preds = %26, %22, %13, %7, %1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @CheckMapBank5MechanismOutcome() local_unnamed_addr #0 {
  store i8 0, ptr @gMapBank5MechanismResult, align 1
  %1 = load i8, ptr inttoptr (i32 sub (i32 ptrtoint (ptr @gMapBank5MechanismResult to i32), i32 7) to ptr), align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %8

3:                                                ; preds = %0
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 18, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 10223616
  br i1 %7, label %24, label %8

8:                                                ; preds = %3, %0
  %9 = load i8, ptr inttoptr (i32 sub (i32 ptrtoint (ptr @gMapBank5MechanismResult to i32), i32 6) to ptr), align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %8
  %12 = load ptr, ptr @gRenderSlots, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %12, i32 19, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 10223616
  br i1 %15, label %24, label %16

16:                                               ; preds = %11, %8
  %17 = load i8, ptr inttoptr (i32 sub (i32 ptrtoint (ptr @gMapBank5MechanismResult to i32), i32 5) to ptr), align 1
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %16
  %20 = load ptr, ptr @gRenderSlots, align 4
  %21 = getelementptr %struct.RenderSlot, ptr %20, i32 20, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp sgt i32 %22, 10223616
  br i1 %23, label %24, label %31

24:                                               ; preds = %19, %11, %3
  %25 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %26 = or i8 %25, 4
  store i8 %26, ptr @gSaveGroup01Byte21E0, align 1
  %27 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 711) #10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call arm_apcscc void @RequestWordChoiceIdentifier(i32 noundef 3) #10
  br label %30

30:                                               ; preds = %29, %24
  store i8 1, ptr @gMapBank5MechanismResult, align 1
  br label %49

31:                                               ; preds = %19, %16
  %32 = load i8, ptr @gMapBank5MechanismCounters, align 1
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismCounters, i32 0, i32 1), align 1
  %34 = add i8 %33, %32
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismCounters, i32 0, i32 2), align 1
  %36 = add i8 %34, %35
  %37 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismCounters, i32 0, i32 3), align 1
  %38 = sub i8 0, %37
  %39 = icmp eq i8 %36, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  store i8 2, ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismCounters, i32 0, i32 4), align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 18, ptr noundef nonnull inttoptr (i32 143589124 to ptr)) #10
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 18, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #10
  store i8 2, ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismCounters, i32 0, i32 5), align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143589124 to ptr)) #10
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 19, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #10
  store i8 2, ptr getelementptr ([0 x i8], ptr @gMapBank5MechanismCounters, i32 0, i32 6), align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 20, ptr noundef nonnull inttoptr (i32 143589124 to ptr)) #10
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 20, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #10
  %41 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %42 = or i8 %41, 4
  store i8 %42, ptr @gSaveGroup01Byte21E0, align 1
  %43 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 711) #10
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  tail call arm_apcscc void @RequestWordChoiceIdentifier(i32 noundef 2) #10
  br label %46

46:                                               ; preds = %45, %40
  store i8 2, ptr @gMapBank5MechanismResult, align 1
  br label %47

47:                                               ; preds = %31, %46
  %48 = zext i1 %39 to i32
  br label %49

49:                                               ; preds = %47, %30
  %50 = phi i32 [ 1, %30 ], [ %48, %47 ]
  ret i32 %50
}

declare dso_local arm_apcscc i32 @ScriptCallbackApproachClassCoordinates(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @RequestWordChoiceIdentifier(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_86AB0() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset86AB4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143588694 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143588694 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset86ADC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143588574 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 143530200 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 1
  tail call arm_apcscc void @SetRenderModeBits(i32 noundef %8, i8 noundef zeroext 1) #10
  %9 = load i8, ptr @gRenderClassSlots2, align 1
  %10 = zext i8 %9 to i32
  %11 = add i8 %9, 1
  %12 = zext i8 %11 to i32
  tail call arm_apcscc void @RepositionRenderOrder(i32 noundef %12, i32 noundef %10, i32 noundef 0) #10
  %13 = load i8, ptr @gRenderClassSlots2, align 1
  store i8 %13, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143588574, ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @RepositionRenderOrder(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset86B60() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143588672 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank5Preset86B7C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143584493 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143589162 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  %7 = zext i8 %6 to i32
  %8 = add i8 %6, 1
  %9 = zext i8 %8 to i32
  tail call arm_apcscc void @RepositionRenderOrder(i32 noundef %9, i32 noundef %7, i32 noundef 0) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeMapBank5MechanismRound() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  %2 = icmp ugt i16 %1, 49
  %3 = select i1 %2, i16 500, i16 1000
  %4 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext %3) #10
  store i32 0, ptr @gMapBank5MechanismSpawnCount, align 4
  %5 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 184) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %22, label %7

7:                                                ; preds = %0
  %8 = icmp ult i16 %4, 250
  br i1 %8, label %9, label %10

9:                                                ; preds = %7
  store i16 10, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  br label %22

10:                                               ; preds = %7
  %11 = icmp ult i16 %4, 400
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store i16 20, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  br label %22

13:                                               ; preds = %10
  %14 = icmp ult i16 %4, 500
  br i1 %14, label %15, label %16

15:                                               ; preds = %13
  store i16 30, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  br label %22

16:                                               ; preds = %13
  %17 = icmp ult i16 %4, 700
  br i1 %17, label %22, label %18

18:                                               ; preds = %16
  %19 = icmp ult i16 %4, 900
  %20 = select i1 %19, i32 40, i32 20
  %21 = select i1 %19, i8 5, i8 6
  br label %22

22:                                               ; preds = %18, %16, %0, %9, %15, %12
  %23 = phi i32 [ 60, %9 ], [ 20, %15 ], [ 40, %12 ], [ 80, %0 ], [ 60, %16 ], [ %20, %18 ]
  %24 = phi i8 [ 1, %9 ], [ 3, %15 ], [ 2, %12 ], [ 0, %0 ], [ 4, %16 ], [ %21, %18 ]
  store i32 %23, ptr @gMapBank5MechanismSpawnLimit, align 4
  store i8 %24, ptr @gMapBank5MechanismStyle, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ResetMapBank5MechanismSpawnCount(ptr nocapture noundef readnone %0) local_unnamed_addr #6 {
  store i32 0, ptr @gMapBank5MechanismSpawnCount, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreMapBank5RoundTime() local_unnamed_addr #0 {
  %1 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %2 = icmp ult i32 %1, 65536
  br i1 %2, label %3, label %43

3:                                                ; preds = %0
  %4 = trunc i32 %1 to i16
  %5 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 63), align 2
  %6 = icmp ne i16 %5, 0
  %7 = zext i16 %5 to i32
  %8 = icmp ugt i32 %1, %7
  %9 = and i1 %6, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 64), align 2
  %12 = icmp ne i16 %11, 0
  %13 = zext i16 %11 to i32
  %14 = icmp ugt i32 %1, %13
  %15 = and i1 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 65), align 2
  %18 = icmp ne i16 %17, 0
  %19 = zext i16 %17 to i32
  %20 = icmp ugt i32 %1, %19
  %21 = and i1 %18, %20
  %22 = select i1 %21, i32 0, i32 3
  br label %23

23:                                               ; preds = %16, %10, %3
  %24 = phi i32 [ 1, %3 ], [ 2, %10 ], [ %22, %16 ]
  %25 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %1, i32 noundef 3600) #10
  %26 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %1, i32 noundef 60) #10
  %27 = mul i32 %26, 167
  %28 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %27, i32 noundef 100) #10
  %29 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %25, i32 noundef 60) #10
  %30 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %1, i32 noundef 3600) #10
  %31 = trunc i32 %24 to i8
  store i8 %31, ptr @gRasterScriptControlBytes, align 1
  %32 = trunc i32 %30 to i8
  store i8 %32, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 1), align 1
  %33 = trunc i32 %29 to i8
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 2), align 1
  %34 = trunc i32 %28 to i8
  store i8 %34, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 3), align 1
  switch i32 %24, label %43 [
    i32 1, label %35
    i32 2, label %37
    i32 3, label %41
  ]

35:                                               ; preds = %23
  %36 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 64), align 2
  store i16 %36, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 65), align 2
  br label %37

37:                                               ; preds = %23, %35
  %38 = phi ptr [ getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 63), %35 ], [ getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 64), %23 ]
  %39 = phi ptr [ getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 64), %35 ], [ getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 65), %23 ]
  %40 = load i16, ptr %38, align 2
  store i16 %40, ptr %39, align 2
  br label %41

41:                                               ; preds = %37, %23
  %42 = phi ptr [ getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 65), %23 ], [ %38, %37 ]
  store i16 %4, ptr %42, align 2
  br label %43

43:                                               ; preds = %41, %23, %0
  ret i32 0
}

declare dso_local arm_apcscc i32 @BiosDivRem(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank5Preset86DD4() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86DD8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590172 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86DF0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590114 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86E08() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590090 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86E20() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590150 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86E38() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590128 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86E50() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590100 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86E68() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590200 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531990 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  %6 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %6, ptr noundef nonnull inttoptr (i32 143590692 to ptr)) #10
  %7 = load i8, ptr @gRenderClassSlots3, align 1
  %8 = add i8 %7, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531949 to ptr)) #10
  %9 = load i8, ptr @gRenderClassSlots3, align 1
  %10 = add i8 %9, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %10, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %9) #10
  %11 = load i8, ptr @gRenderClassSlots2, align 1
  store i8 %11, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143590200, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86F18() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143589958 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86F30() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590562 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86F48() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590576 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86F60() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590834 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86F78() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590590 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86F90() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590604 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86FA8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143590641 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86FC0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143590164 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset86FE0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143590142 to ptr)) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackOscillateMapBank5YByControl(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i8, ptr @gMapBank5AmbientPhase, align 1
  %5 = zext i8 %4 to i32
  %6 = add nuw nsw i32 %5, 64
  %7 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %6
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 10
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 161), align 1
  %13 = icmp ult i8 %12, 5
  %14 = select i1 %13, i8 2, i8 1
  %15 = add i8 %14, %4
  store i8 %15, ptr @gMapBank5AmbientPhase, align 1
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackOffsetMapBank5SlotPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = sext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = sext i8 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = sext i8 %11 to i32
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = mul nuw nsw i32 %3, 104
  %15 = ptrtoint ptr %13 to i32
  %16 = add i32 %14, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = shl nsw i32 %6, 16
  %19 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, %18
  store i32 %21, ptr %19, align 4
  %22 = shl nsw i32 %9, 16
  %23 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %23, align 4
  %26 = shl nsw i32 %12, 16
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, %26
  store i32 %29, ptr %27, align 4
  ret i32 4
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87088() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285884 to ptr)) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143302723 to ptr)) #10
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285884 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset870B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorClassAnimationPreset13778() #10
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #10
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #10
  ret void
}

declare dso_local arm_apcscc void @SetActorClassAnimationPreset13778() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset870FC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143472184 to ptr)) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143472184 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87120() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorClassAnimationPreset13610() #10
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143317588 to ptr)) #10
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87168() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87180() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87198() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset871B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset871C8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset871E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591813 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset871FC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591830 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87218() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591847 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87234() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591864 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87250() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143591901 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87268() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591957 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87284() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591974 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset872A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591991 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset872BC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591991 to ptr)) #10
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #10
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -8, i32 noundef 8, ptr noundef nonnull inttoptr (i32 143463541 to ptr)) #10
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87324() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143592030 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87340() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143592013 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset8735C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591957 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87378() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143591813 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87394() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143593098 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset873B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143593090 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset873CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143592047 to ptr)) #10
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #10
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143592084 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset8741C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143592127 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87438() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143593501 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87454() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143593721 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87470() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143593808 to ptr)) #10
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #10
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143593861 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset874C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143411713 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset874DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143593372 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset874F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143593897 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87514() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143593964 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87530() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143356094 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87548() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354527 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87560() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354589 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87578() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143595626 to ptr)) #10
  store i8 13, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143595626, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackCycleMapBank5VerticalMotion(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i8, ptr @gMapBank5MotionCounters, align 1
  %5 = icmp eq i8 %4, -64
  br i1 %5, label %6, label %11

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 -2260992, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 7, i32 1
  store i32 256, ptr %8, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 1
  store i32 -12288, ptr %9, align 4
  %10 = load i8, ptr @gMapBank5MotionCounters, align 1
  br label %11

11:                                               ; preds = %6, %3
  %12 = phi i8 [ %10, %6 ], [ %4, %3 ]
  %13 = icmp eq i8 %12, 96
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 -2260992, ptr %15, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 7, i32 1
  store i32 -256, ptr %16, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 1
  store i32 12288, ptr %17, align 4
  %18 = load i8, ptr @gMapBank5MotionCounters, align 1
  br label %19

19:                                               ; preds = %14, %11
  %20 = phi i8 [ %18, %14 ], [ %12, %11 ]
  %21 = add i8 %20, -1
  %22 = icmp eq i8 %21, 0
  %23 = select i1 %22, i8 -64, i8 %21
  store i8 %23, ptr @gMapBank5MotionCounters, align 1
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackCycleMapBank5ResetMotion(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank5MotionCounters, i32 0, i32 1), align 1
  %5 = icmp eq i8 %4, 32
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  store i32 12615680, ptr %7, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 9338880, ptr %8, align 4
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 -2260992, ptr %9, align 4
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 7
  store i32 0, ptr %10, align 4
  %11 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 7, i32 1
  store i32 -1024, ptr %11, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 1
  store i32 8192, ptr %12, align 4
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank5MotionCounters, i32 0, i32 1), align 1
  br label %14

14:                                               ; preds = %6, %3
  %15 = phi i8 [ %13, %6 ], [ %4, %3 ]
  %16 = icmp eq i8 %15, 16
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  store i32 12615680, ptr %18, align 4
  %19 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 9338880, ptr %19, align 4
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 -2260992, ptr %20, align 4
  %21 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 7
  store i32 0, ptr %21, align 4
  %22 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 7, i32 1
  store i32 1024, ptr %22, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 1
  store i32 -8192, ptr %23, align 4
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank5MotionCounters, i32 0, i32 1), align 1
  br label %25

25:                                               ; preds = %17, %14
  %26 = phi i8 [ %24, %17 ], [ %15, %14 ]
  %27 = add i8 %26, -1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i8 32, i8 %27
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gMapBank5MotionCounters, i32 0, i32 1), align 1
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackCycleMapBank5HorizontalMotion(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gMapBank5MotionCounters, i32 0, i32 2), align 1
  %5 = icmp eq i8 %4, 40
  br i1 %5, label %6, label %12

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  store i32 11960320, ptr %7, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 9338880, ptr %8, align 4
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 -2260992, ptr %9, align 4
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 7
  store i32 -512, ptr %10, align 4
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 20480, ptr %11, align 4
  br label %12

12:                                               ; preds = %6, %3
  %13 = add i8 %4, -1
  %14 = icmp eq i8 %13, 0
  %15 = select i1 %14, i8 40, i8 %13
  store i8 %15, ptr getelementptr ([0 x i8], ptr @gMapBank5MotionCounters, i32 0, i32 2), align 1
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank5Preset876CC() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset876D0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143596220 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset876E8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143596259 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87700() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143595875 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87718() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143596015 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87730() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143596164 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87748() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143596136 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87760() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143596122 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87778() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143595861 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87790() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143596029 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset877A8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143596150 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset877C0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143595978 to ptr)) #10
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset877D8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143494155 to ptr)) #10
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackOscillateMapBank5Y2(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i8, ptr @gMapBank5AmbientPhase2, align 1
  %5 = zext i8 %4 to i32
  %6 = add nuw nsw i32 %5, 64
  %7 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %6
  %8 = load i16, ptr %7, align 2
  %9 = sext i16 %8 to i32
  %10 = shl nsw i32 %9, 10
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 %10, ptr %11, align 4
  %12 = add i8 %4, 2
  store i8 %12, ptr @gMapBank5AmbientPhase2, align 1
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank5Preset8784C() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143281965 to ptr)) #10
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143297785 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530388 to ptr)) #10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530414 to ptr)) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #10
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #10
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143281965 to ptr)) #10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset878D4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16D7C() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset1977C() #10
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16D7C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1977C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset878E4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationAndIndicator16D28() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B678() #10
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationAndIndicator16D28() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B678() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset878F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset1581C() #10
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439736 to ptr)) #10
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset1581C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset8794C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset1536C() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A968() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A9BC() #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset1536C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A968() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A9BC() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87960() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset153B4() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset199B8() #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset153B4() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset199B8() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank5Preset87970() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87974() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #10
  tail call arm_apcscc void @SetGraphicsAnimationPreset1533C() #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset1533C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset87988() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15B2C() #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143597190 to ptr)) #10
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15B2C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset879D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15384() #10
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143436752 to ptr)) #10
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15384() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank5Preset879EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorClassAnimationPreset136B8() #10
  tail call arm_apcscc void @ConfigureRenderSetupPreset192A4() #10
  ret void
}

declare dso_local arm_apcscc void @SetActorClassAnimationPreset136B8() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset192A4() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackPlaceMapBank5RandomSlot(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 6) #10
  %5 = trunc i16 %4 to i8
  %6 = and i16 %4, 255
  %7 = zext nneg i16 %6 to i32
  %8 = getelementptr [0 x [2 x i16]], ptr @gMapBank5SpawnPositions, i32 0, i32 %7
  %9 = load i16, ptr %8, align 2
  %10 = sext i16 %9 to i32
  %11 = shl nsw i32 %10, 16
  %12 = or disjoint i32 %11, 32768
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  store i32 %12, ptr %13, align 4
  %14 = getelementptr [0 x [2 x i16]], ptr @gMapBank5SpawnPositions, i32 0, i32 %7, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = sext i16 %15 to i32
  %17 = shl nsw i32 %16, 16
  %18 = or disjoint i32 %17, 32768
  %19 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 430), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 433), align 1
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackCountMapBank5Selections(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #4 {
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 432), align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %3
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 429), align 1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 430), align 1
  %9 = icmp eq i8 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %6
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 434), align 1
  %12 = add i8 %11, 1
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 434), align 1
  %13 = icmp ugt i8 %12, 2
  %14 = select i1 %13, i8 2, i8 1
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 433), align 1
  br label %15

15:                                               ; preds = %10, %6, %3
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackClearMapBank5SlotResources(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 2
  %5 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 21
  %6 = ptrtoint ptr %4 to i32
  %7 = ptrtoint ptr %5 to i32
  store i32 0, ptr %4, align 4
  store i16 0, ptr %5, align 2
  %8 = add i32 %6, 4
  %9 = inttoptr i32 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add i32 %7, 2
  %11 = inttoptr i32 %10 to ptr
  store i16 0, ptr %11, align 2
  %12 = add i32 %6, 8
  %13 = inttoptr i32 %12 to ptr
  store i32 0, ptr %13, align 4
  %14 = add i32 %7, 4
  %15 = inttoptr i32 %14 to ptr
  store i16 0, ptr %15, align 2
  %16 = add i32 %6, 12
  %17 = inttoptr i32 %16 to ptr
  store i32 0, ptr %17, align 4
  %18 = add i32 %7, 6
  %19 = inttoptr i32 %18 to ptr
  store i16 0, ptr %19, align 2
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackStartMapBank5GraphicsScript(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143597458) #10
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClampMapBank5Slot13Depth() local_unnamed_addr #5 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 13, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = lshr i32 %3, 16
  %5 = trunc i32 %4 to i16
  %6 = icmp slt i32 %3, 4718592
  %7 = select i1 %6, i16 72, i16 %5
  %8 = add i16 %7, -88
  %9 = icmp ult i16 %8, 40
  %10 = select i1 %9, i16 88, i16 %7
  %11 = add i16 %10, -128
  %12 = icmp ult i16 %11, 96
  %13 = tail call i16 @llvm.smin.i16(i16 %10, i16 240)
  %14 = select i1 %12, i16 224, i16 %13
  %15 = zext i16 %14 to i32
  %16 = shl nuw i32 %15, 16
  %17 = or disjoint i32 %16, 32768
  store i32 %17, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #9

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nobuiltin nounwind "no-builtins" }
attributes #11 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i32 0, i32 2}
