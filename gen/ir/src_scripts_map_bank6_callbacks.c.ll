; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapBank6KeyStep = type { i16, i16 }
%struct.MapBank6TargetSet = type { ptr, ptr, i16, i16, i16, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.MapBank6TargetRange = type { i16, i16, i8, [3 x i8] }

@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup3Block1EE40 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gMapBank6OscillatorSteps = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gMapBank6OrbitSteps = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gMapBank6ActorFacingAnimations = external dso_local global [0 x ptr], align 4
@gMapBank6NextFacingAnimations = external dso_local global [0 x ptr], align 4
@gMapBank6PreviousFacingAnimations = external dso_local global [0 x ptr], align 4
@gMapBank6LeaderFacingAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMapBank6FollowerFacingAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gMapBank6KeySteps = external dso_local constant [0 x %struct.MapBank6KeyStep], align 2
@gMapBank6TargetSets = external dso_local constant [0 x %struct.MapBank6TargetSet], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gMapBank6TaskPatternsFirst = external dso_local constant [0 x ptr], align 4
@gTaskFlagsFirst = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMapBank6TaskPatternsSecond = external dso_local constant [0 x ptr], align 4
@gMapBank6TaskPatternsThird = external dso_local constant [0 x ptr], align 4
@gAffineUsage = external dso_local global [32 x i8], align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FE40() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FE58() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FE70() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FE88() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FEA0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank6Preset9FEB8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285595 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143302446 to ptr)) #9
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285595 to ptr)) #9
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FEEC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143482004 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FF08() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143476090 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FF24() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143484671 to ptr)) #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FF48() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143480968 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FF64() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143476893 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FF80() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143482025 to ptr)) #9
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  store i8 %2, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143482025, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FFB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538724 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #9
  ret void
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Preset9FFF8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538787 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA003C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528804) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538817 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0080() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538797 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA00C4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA00D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143315754 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA00EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA00F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143348505 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0114() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528804) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143480989 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0158() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0170() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0188() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA01A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA01B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA01D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143471657 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA01EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143520476 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0208() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143522308 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0224() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143522852 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0250() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143521593 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA026C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143520917 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0288() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143522876 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA02AC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143522708 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA02C8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143521373 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA02E4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143522009 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0300() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143522112 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA031C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143521462 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0338() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143521490 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0354() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143521696 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0370() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143467776 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0394() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143467800 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA03B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538724 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA03F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143541133 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143521373 to ptr)) #9
  store i8 15, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143541133, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0450() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0454() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA046C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0484() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA049C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA04B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA04CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143434778 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA04E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143457258 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA050C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143434814 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0528() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143449114 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0544() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143448994 to ptr)) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0560() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0564() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143437039 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0580() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143451236 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA059C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143448766 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA05B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143467752 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA05DC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143471219 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA05F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143470128 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0610() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143471657 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA062C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #9
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143472213 to ptr)) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0648() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA064C() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538724 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA068C() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0690() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0694() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538724 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA06D4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143457330 to ptr)) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA06F8() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA06FC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597908 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0718() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597950 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA072C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597916 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0740() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597942 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0754() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597929 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0768() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597966 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA077C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597974 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0790() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597990 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA07A4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597998 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA07B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143598011 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA07CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597982 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA07E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143598024 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA07F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143597958 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0808() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143598037 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143542457 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #9
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 21, ptr noundef nonnull inttoptr (i32 143542457 to ptr)) #9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackFindMapBank6SavedIdentifier(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  br label %6

3:                                                ; preds = %6
  %4 = add nuw nsw i32 %7, 1
  %5 = icmp eq i32 %4, 32
  br i1 %5, label %11, label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ 0, %1 ], [ %4, %3 ]
  %8 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, %2
  br i1 %10, label %11, label %3

11:                                               ; preds = %6, %3
  %12 = phi i8 [ 0, %3 ], [ 1, %6 ]
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveMapBank6SavedIdentifier(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  br label %3

3:                                                ; preds = %1, %19
  %4 = phi i32 [ 0, %1 ], [ %20, %19 ]
  %5 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  %7 = icmp eq i8 %6, %2
  br i1 %7, label %8, label %19

8:                                                ; preds = %3
  %9 = trunc i32 %4 to i8
  %10 = icmp ult i8 %9, 31
  br i1 %10, label %11, label %18

11:                                               ; preds = %8, %11
  %12 = phi i32 [ %13, %11 ], [ %4, %8 ]
  %13 = add nuw nsw i32 %12, 1
  %14 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %13
  %15 = load i8, ptr %14, align 1
  %16 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %12
  store i8 %15, ptr %16, align 1
  %17 = icmp eq i32 %13, 31
  br i1 %17, label %18, label %11

18:                                               ; preds = %11, %8
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 31), align 1
  br label %22

19:                                               ; preds = %3
  %20 = add nuw nsw i32 %4, 1
  %21 = icmp eq i32 %20, 32
  br i1 %21, label %22, label %3

22:                                               ; preds = %19, %18
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA08D8() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA08DC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143454975 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA08F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 88, i32 noundef 0, i32 noundef 24, ptr noundef nonnull inttoptr (i32 143598391 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 88, i32 noundef 0, i32 noundef 24, ptr noundef nonnull inttoptr (i32 143598414 to ptr)) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0934() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0938() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 160, i32 noundef 0, i32 noundef 24, ptr noundef nonnull inttoptr (i32 143598360 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 160, i32 noundef 0, i32 noundef 24, ptr noundef nonnull inttoptr (i32 143598383 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA0978() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143598430 to ptr)) #9
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %4, ptr noundef nonnull inttoptr (i32 143598430 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA09B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetActorAnimationPreset12DC4() #9
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12DC4() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA09CC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143455008 to ptr)) #9
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143455008 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank6Oscillators() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %2 = icmp eq i8 %1, 0
  %3 = load ptr, ptr @gRenderSlots, align 4
  br i1 %2, label %4, label %18

4:                                                ; preds = %0
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %5, 2600
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr [0 x i16], ptr @gMapBank6OscillatorSteps, i32 0, i32 %9
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %13, %15
  store i32 %16, ptr %14, align 4
  %17 = icmp sgt i32 %16, 9961471
  br i1 %17, label %29, label %31

18:                                               ; preds = %0
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr [0 x i16], ptr @gMapBank6OscillatorSteps, i32 0, i32 %20
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = getelementptr %struct.RenderSlot, ptr %3, i32 25, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = sub i32 %26, %24
  store i32 %27, ptr %25, align 4
  %28 = icmp slt i32 %27, 2621441
  br i1 %28, label %29, label %31

29:                                               ; preds = %18, %4
  %30 = phi i8 [ 1, %4 ], [ 0, %18 ]
  store i8 %30, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  br label %31

31:                                               ; preds = %29, %18, %4
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  switch i8 %32, label %55 [
    i8 0, label %33
    i8 1, label %43
  ]

33:                                               ; preds = %31
  %34 = load ptr, ptr @gRenderSlots, align 4
  %35 = getelementptr %struct.RenderSlot, ptr %34, i32 13, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 65536
  store i32 %37, ptr %35, align 4
  %38 = icmp sgt i32 %37, 8912895
  br i1 %38, label %39, label %55

39:                                               ; preds = %33
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #9
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 19), align 1
  %41 = icmp eq i8 %40, 3
  %42 = select i1 %41, ptr inttoptr (i32 143505193 to ptr), ptr inttoptr (i32 143344304 to ptr)
  br label %53

43:                                               ; preds = %31
  %44 = load ptr, ptr @gRenderSlots, align 4
  %45 = getelementptr %struct.RenderSlot, ptr %44, i32 13, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = add i32 %46, -65536
  store i32 %47, ptr %45, align 4
  %48 = icmp slt i32 %47, 3670017
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #9
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %50 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 19), align 1
  %51 = icmp eq i8 %50, 3
  %52 = select i1 %51, ptr inttoptr (i32 143505256 to ptr), ptr inttoptr (i32 143344463 to ptr)
  br label %53

53:                                               ; preds = %49, %39
  %54 = phi ptr [ %42, %39 ], [ %52, %49 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %54) #9
  br label %55

55:                                               ; preds = %53, %43, %31, %33
  br label %56

56:                                               ; preds = %55, %56
  %57 = phi i32 [ %105, %56 ], [ 0, %55 ]
  %58 = add nuw nsw i32 %57, 26
  %59 = shl nuw i32 %57, 1
  %60 = and i32 %59, 130622
  %61 = add i32 %60, add (i32 ptrtoint (ptr @gAnimationClassValues to i32), i32 448)
  %62 = inttoptr i32 %61 to ptr
  %63 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %64 = zext i8 %63 to i32
  %65 = mul nuw nsw i32 %64, 3
  %66 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %67 = zext i8 %66 to i32
  %68 = getelementptr i16, ptr @gMapBank6OrbitSteps, i32 %65
  %69 = getelementptr i16, ptr %68, i32 %67
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = load i16, ptr %62, align 2
  %73 = zext i16 %72 to i32
  %74 = add nuw nsw i32 %73, %71
  %75 = trunc i32 %74 to i16
  %76 = shl i32 %74, 16
  %77 = icmp ugt i32 %76, -268500992
  %78 = select i1 %77, i16 1023, i16 %75
  %79 = icmp ugt i16 %78, 1023
  %80 = select i1 %79, i16 0, i16 %78
  store i16 %80, ptr %62, align 2
  %81 = lshr i16 %80, 2
  %82 = zext nneg i16 %81 to i32
  %83 = getelementptr i16, ptr @gRenderSineTable, i32 %82
  %84 = getelementptr i16, ptr %83, i32 64
  %85 = load i16, ptr %84, align 2
  %86 = sext i16 %85 to i32
  tail call void asm sideeffect "", "r"(i32 %73) #10, !srcloc !4
  %87 = load i16, ptr %83, align 2
  %88 = sext i16 %87 to i32
  %89 = add nsw i32 %88, %86
  %90 = sdiv i32 %89, 8
  %91 = load ptr, ptr @gRenderSlots, align 4
  %92 = getelementptr i8, ptr %91, i32 2626
  %93 = load i16, ptr %92, align 2
  %94 = trunc i32 %90 to i16
  %95 = add i16 %93, %94
  %96 = zext i16 %95 to i32
  %97 = sub nsw i32 %88, %86
  %98 = sdiv i32 %97, 8
  %99 = getelementptr i8, ptr %91, i32 2634
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = add nsw i32 %98, %101
  %103 = shl nuw i32 %96, 16
  %104 = shl i32 %102, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %58, i32 noundef %103, i32 noundef 0, i32 noundef %104) #9
  %105 = add nuw nsw i32 %57, 1
  %106 = icmp eq i32 %105, 4
  br i1 %106, label %107, label %56

107:                                              ; preds = %56
  ret i32 0
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank6OrbitPosition(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl i32 %1, 1
  %4 = and i32 %3, 131070
  %5 = add i32 %4, ptrtoint (ptr @gAnimationClassValues to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 418), align 1
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 3
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i16, ptr @gMapBank6OrbitSteps, i32 %9
  %13 = getelementptr i16, ptr %12, i32 %11
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = load i16, ptr %6, align 2
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %17, %15
  %19 = trunc i32 %18 to i16
  %20 = shl i32 %18, 16
  %21 = icmp ugt i32 %20, -268500992
  %22 = select i1 %21, i16 1023, i16 %19
  %23 = icmp ugt i16 %22, 1023
  %24 = select i1 %23, i16 0, i16 %22
  store i16 %24, ptr %6, align 2
  %25 = and i32 %0, 255
  %26 = lshr i16 %24, 2
  %27 = zext nneg i16 %26 to i32
  %28 = getelementptr i16, ptr @gRenderSineTable, i32 %27
  %29 = getelementptr i16, ptr %28, i32 64
  %30 = load i16, ptr %29, align 2
  %31 = sext i16 %30 to i32
  tail call void asm sideeffect "", "r"(i32 %17) #10, !srcloc !4
  %32 = load i16, ptr %28, align 2
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, %31
  %35 = sdiv i32 %34, 8
  %36 = load ptr, ptr @gRenderSlots, align 4
  %37 = getelementptr i8, ptr %36, i32 2626
  %38 = load i16, ptr %37, align 2
  %39 = trunc i32 %35 to i16
  %40 = add i16 %38, %39
  %41 = zext i16 %40 to i32
  %42 = sub nsw i32 %33, %31
  %43 = sdiv i32 %42, 8
  %44 = getelementptr i8, ptr %36, i32 2634
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %43, %46
  %48 = shl nuw i32 %41, 16
  %49 = shl i32 %47, 16
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %25, i32 noundef %48, i32 noundef 0, i32 noundef %49) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAlignMapBank6FollowerX(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = icmp eq i8 %2, 0
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 13, i32 3
  %6 = load i32, ptr %5, align 4
  br i1 %3, label %7, label %71

7:                                                ; preds = %1
  %8 = getelementptr %struct.RenderSlot, ptr %4, i32 25, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = icmp sgt i32 %6, %9
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #9
  %11 = load ptr, ptr @gRenderSlots, align 4
  br i1 %10, label %12, label %38

12:                                               ; preds = %7
  %13 = getelementptr %struct.RenderSlot, ptr %11, i32 13, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %11, i32 25, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = ashr i32 %17, 18
  %19 = trunc i32 %18 to i16
  store i16 %19, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  %20 = and i32 %18, 65534
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %12
  %23 = load i32, ptr %13, align 4
  %24 = add i32 %23, 524288
  store i32 %24, ptr %13, align 4
  %25 = load ptr, ptr @gRenderSlots, align 4
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi ptr [ %25, %22 ], [ %11, %12 ]
  %28 = getelementptr %struct.RenderSlot, ptr %27, i32 13, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr %struct.RenderSlot, ptr %27, i32 25, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = sub i32 %29, %31
  %33 = and i32 %32, 458752
  %34 = sub i32 %29, %33
  store i32 %34, ptr %28, align 4
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 19), align 1
  %36 = icmp eq i8 %35, 3
  %37 = select i1 %36, ptr inttoptr (i32 143509493 to ptr), ptr inttoptr (i32 143364089 to ptr)
  br label %64

38:                                               ; preds = %7
  %39 = getelementptr %struct.RenderSlot, ptr %11, i32 25, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = getelementptr %struct.RenderSlot, ptr %11, i32 13, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = sub i32 %40, %42
  %44 = ashr i32 %43, 18
  %45 = trunc i32 %44 to i16
  store i16 %45, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  %46 = and i32 %44, 65534
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, ptr %41, align 4
  %50 = add i32 %49, -524288
  store i32 %50, ptr %41, align 4
  %51 = load ptr, ptr @gRenderSlots, align 4
  br label %52

52:                                               ; preds = %48, %38
  %53 = phi ptr [ %51, %48 ], [ %11, %38 ]
  %54 = getelementptr %struct.RenderSlot, ptr %53, i32 25, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr %struct.RenderSlot, ptr %53, i32 13, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = sub i32 %55, %57
  %59 = and i32 %58, 458752
  %60 = add i32 %59, %57
  store i32 %60, ptr %56, align 4
  %61 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 19), align 1
  %62 = icmp eq i8 %61, 3
  %63 = select i1 %62, ptr inttoptr (i32 143509453 to ptr), ptr inttoptr (i32 143364049 to ptr)
  br label %64

64:                                               ; preds = %52, %26
  %65 = phi ptr [ %37, %26 ], [ %63, %52 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %65) #9
  %66 = load ptr, ptr @gRenderSlots, align 4
  %67 = getelementptr %struct.RenderSlot, ptr %66, i32 25, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp sgt i32 %68, 6291455
  %70 = zext i1 %69 to i8
  br label %116

71:                                               ; preds = %1
  %72 = icmp sgt i32 %6, 6291456
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #9
  %73 = load ptr, ptr @gRenderSlots, align 4
  %74 = getelementptr %struct.RenderSlot, ptr %73, i32 13, i32 3
  %75 = load i32, ptr %74, align 4
  br i1 %72, label %76, label %94

76:                                               ; preds = %71
  %77 = add i32 %75, -6291456
  %78 = ashr i32 %77, 18
  %79 = trunc i32 %78 to i16
  store i16 %79, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  %80 = and i32 %78, 65534
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, ptr %74, align 4
  %84 = add i32 %83, 524288
  store i32 %84, ptr %74, align 4
  %85 = load ptr, ptr @gRenderSlots, align 4
  br label %86

86:                                               ; preds = %82, %76
  %87 = phi ptr [ %85, %82 ], [ %73, %76 ]
  %88 = getelementptr %struct.RenderSlot, ptr %87, i32 13, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -458753
  store i32 %90, ptr %88, align 4
  %91 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 19), align 1
  %92 = icmp eq i8 %91, 3
  %93 = select i1 %92, ptr inttoptr (i32 143509513 to ptr), ptr inttoptr (i32 143364109 to ptr)
  br label %114

94:                                               ; preds = %71
  %95 = sub i32 6291456, %75
  %96 = ashr i32 %95, 18
  %97 = trunc i32 %96 to i16
  store i16 %97, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  %98 = and i32 %96, 65534
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32, ptr %74, align 4
  %102 = add i32 %101, -524288
  store i32 %102, ptr %74, align 4
  %103 = load ptr, ptr @gRenderSlots, align 4
  br label %104

104:                                              ; preds = %100, %94
  %105 = phi ptr [ %103, %100 ], [ %73, %94 ]
  %106 = getelementptr %struct.RenderSlot, ptr %105, i32 13, i32 3
  %107 = load i32, ptr %106, align 4
  %108 = sub i32 0, %107
  %109 = and i32 %108, 458752
  %110 = add i32 %109, %107
  store i32 %110, ptr %106, align 4
  %111 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 19), align 1
  %112 = icmp eq i8 %111, 3
  %113 = select i1 %112, ptr inttoptr (i32 143509473 to ptr), ptr inttoptr (i32 143364069 to ptr)
  br label %114

114:                                              ; preds = %104, %86
  %115 = phi ptr [ %93, %86 ], [ %113, %104 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %115) #9
  br label %116

116:                                              ; preds = %64, %114
  %117 = phi i8 [ 0, %114 ], [ %70, %64 ]
  store i8 %117, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %118 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  %119 = and i16 %118, -2
  store i16 %119, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank6PresetA0DA8() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef 143528875) #9
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 19), align 1
  %2 = icmp eq i8 %1, 3
  %3 = select i1 %2, ptr inttoptr (i32 143506195 to ptr), ptr inttoptr (i32 143350054 to ptr)
  %4 = select i1 %2, ptr inttoptr (i32 143598755 to ptr), ptr inttoptr (i32 143598765 to ptr)
  %5 = select i1 %2, ptr inttoptr (i32 143598794 to ptr), ptr inttoptr (i32 143598804 to ptr)
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %3) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #9
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackApproachMapBank6PayloadPosition(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 1
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %1, i32 2
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %1, i32 3
  %11 = load i8, ptr %7, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %1, i32 4
  %14 = load i8, ptr %10, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw nsw i32 %15, 8
  %17 = or disjoint i32 %16, %12
  %18 = load i8, ptr %13, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = trunc i32 %22 to i16
  store i16 %23, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 38), align 2
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = lshr i32 %25, 16
  %27 = trunc i32 %26 to i16
  store i16 %27, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 39), align 2
  %28 = shl nuw i32 %9, 24
  %29 = shl nuw nsw i32 %6, 16
  %30 = or disjoint i32 %28, %29
  %31 = sub i32 %30, %21
  %32 = shl nuw i32 %17, 16
  %33 = tail call i32 asm "", "=r,r,0"(i32 %17, i32 %32) #11, !srcloc !5
  %34 = sub i32 %33, %25
  %35 = tail call ptr asm "", "=r,0"(ptr nonnull @gAnimationClassValues) #11, !srcloc !6
  %36 = tail call i32 @llvm.abs.i32(i32 %31, i1 false)
  %37 = tail call i32 @llvm.abs.i32(i32 %34, i1 false)
  %38 = icmp sgt i32 %36, %37
  %39 = shl nuw nsw i32 %19, 1
  %40 = ptrtoint ptr %35 to i32
  %41 = add i32 %39, %40
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr i16, ptr @gAnimationClassValues, i32 %19
  %44 = tail call i32 @llvm.smax.i32(i32 %36, i32 %37)
  %45 = select i1 %38, ptr %42, ptr %43
  %46 = ashr i32 %44, 16
  %47 = trunc i32 %46 to i16
  %48 = and i16 %47, -2
  store i16 %48, ptr %45, align 2
  %49 = tail call arm_apcscc i32 @__divsi3(i32 noundef %31, i32 noundef %46) #9
  %50 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %49, ptr %50, align 4
  %51 = tail call arm_apcscc i32 @__divsi3(i32 noundef %34, i32 noundef %46) #9
  %52 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  store i32 %51, ptr %52, align 4
  store i32 0, ptr %2, align 4
  ret i32 5
}

declare dso_local arm_apcscc i32 @__divsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackReturnToMapBank6ClassPosition(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 38), align 2
  %5 = zext i16 %4 to i32
  %6 = shl nuw i32 %5, 16
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 39), align 2
  %11 = zext i16 %10 to i32
  %12 = shl nuw i32 %11, 16
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = tail call ptr asm "", "=r,0,~{r1}"(ptr nonnull @gAnimationClassValues) #11, !srcloc !7
  %17 = tail call i32 @llvm.abs.i32(i32 %9, i1 false)
  %18 = tail call i32 @llvm.abs.i32(i32 %15, i1 false)
  %19 = icmp sgt i32 %17, %18
  tail call void asm sideeffect "", "{r0}"(i32 -2) #10
  %20 = tail call i32 asm "", "={r1},{r1}"(i32 -2) #11
  %21 = ashr i32 %18, 16
  %22 = lshr i32 %17, 16
  %23 = select i1 %19, i32 %22, i32 %21
  %24 = select i1 %19, i32 %22, i32 %21
  %25 = select i1 %19, ptr %16, ptr @gAnimationClassValues
  %26 = and i32 %20, %23
  %27 = trunc i32 %26 to i16
  %28 = getelementptr i16, ptr %25, i32 44
  store i16 %27, ptr %28, align 2
  %29 = tail call arm_apcscc i32 @__divsi3(i32 noundef %9, i32 noundef %24) #9
  %30 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = tail call arm_apcscc i32 @__divsi3(i32 noundef %15, i32 noundef %24) #9
  %32 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  store i32 %31, ptr %32, align 4
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_A1070() local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank6PresetA1074() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143492523 to ptr)) #9
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1090() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %1, i8 noundef zeroext %2) #9
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %11 [
    i8 3, label %7
    i8 4, label %5
    i8 1, label %6
  ]

5:                                                ; preds = %0
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %0, %5, %6
  %8 = phi ptr [ inttoptr (i32 143435377 to ptr), %6 ], [ inttoptr (i32 143451236 to ptr), %5 ], [ inttoptr (i32 143451224 to ptr), %0 ]
  %9 = load i8, ptr @gRenderClassSlots2, align 1
  %10 = zext i8 %9 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %10, ptr noundef nonnull %8) #9
  br label %11

11:                                               ; preds = %7, %0
  ret void
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA10F0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %1, i8 noundef zeroext %2) #9
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %11 [
    i8 3, label %7
    i8 4, label %5
    i8 2, label %6
  ]

5:                                                ; preds = %0
  br label %7

6:                                                ; preds = %0
  br label %7

7:                                                ; preds = %0, %5, %6
  %8 = phi ptr [ inttoptr (i32 143494492 to ptr), %6 ], [ inttoptr (i32 143492059 to ptr), %5 ], [ inttoptr (i32 143493222 to ptr), %0 ]
  %9 = load i8, ptr @gRenderClassSlots3, align 1
  %10 = zext i8 %9 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %10, ptr noundef nonnull %8) #9
  br label %11

11:                                               ; preds = %7, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1150() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureActorNextSlot12FAC() #9
  tail call arm_apcscc void @SetActorClassAnimationPreset138E0() #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureActorNextSlot12FAC() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorClassAnimationPreset138E0() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1160() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset1545C() #9
  tail call arm_apcscc void @SetDirectionalAnimationPreset16D10() #9
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset1545C() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16D10() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1170() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16330() #9
  tail call arm_apcscc void @SetDirectionalAnimationPreset16E7C() #9
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16330() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16E7C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1180() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureGraphicsAnimationSlots165D8() #9
  tail call arm_apcscc void @SetDirectionalAnimationPreset16F8C() #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureGraphicsAnimationSlots165D8() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16F8C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1190() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16348() #9
  tail call arm_apcscc void @SetDirectionalAnimationPreset16EAC() #9
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16348() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16EAC() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA11A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 36, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA11E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 27, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 26) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 29, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 29, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 28) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 31, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 31, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 30) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 33, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 33, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 32) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 35, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 35, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 34) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 36, ptr noundef nonnull inttoptr (i32 143601124 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 37, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 37, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 36) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA12E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143601304 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef nonnull inttoptr (i32 143601304 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull inttoptr (i32 143601304 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull inttoptr (i32 143601304 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef nonnull inttoptr (i32 143601304 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 36, ptr noundef nonnull inttoptr (i32 143601304 to ptr)) #9
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 26, ptr noundef nonnull inttoptr (i32 143601304 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6EvenSlotJump() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143601319 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef nonnull inttoptr (i32 143601319 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull inttoptr (i32 143601319 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull inttoptr (i32 143601319 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef nonnull inttoptr (i32 143601319 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 36, ptr noundef nonnull inttoptr (i32 143601319 to ptr)) #9
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 26, i32 4
  store i32 32768, ptr %2, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %1, i32 26, i32 6, i32 1
  store i32 0, ptr %3, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %1, i32 26, i32 7, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %1, i32 28, i32 4
  store i32 32768, ptr %5, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %1, i32 28, i32 6, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %1, i32 28, i32 7, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %1, i32 30, i32 4
  store i32 32768, ptr %8, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %1, i32 30, i32 6, i32 1
  store i32 0, ptr %9, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %1, i32 30, i32 7, i32 1
  store i32 0, ptr %10, align 4
  %11 = getelementptr %struct.RenderSlot, ptr %1, i32 32, i32 4
  store i32 32768, ptr %11, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %1, i32 32, i32 6, i32 1
  store i32 0, ptr %12, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %1, i32 32, i32 7, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %1, i32 34, i32 4
  store i32 32768, ptr %14, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %1, i32 34, i32 6, i32 1
  store i32 0, ptr %15, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %1, i32 34, i32 7, i32 1
  store i32 0, ptr %16, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %1, i32 36, i32 4
  store i32 32768, ptr %17, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %1, i32 36, i32 6, i32 1
  store i32 0, ptr %18, align 4
  %19 = getelementptr %struct.RenderSlot, ptr %1, i32 36, i32 7, i32 1
  store i32 0, ptr %19, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1390() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143601208 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef nonnull inttoptr (i32 143601208 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull inttoptr (i32 143601208 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull inttoptr (i32 143601208 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef nonnull inttoptr (i32 143601208 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 36, ptr noundef nonnull inttoptr (i32 143601208 to ptr)) #9
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 26, ptr noundef nonnull inttoptr (i32 143601208 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA13D8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143601223 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef nonnull inttoptr (i32 143601223 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull inttoptr (i32 143601223 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull inttoptr (i32 143601223 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef nonnull inttoptr (i32 143601223 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 36, ptr noundef nonnull inttoptr (i32 143601223 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1418() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 424), align 1
  %2 = icmp eq i8 %1, 0
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = select i1 %2, i8 %3, i8 38
  %5 = zext i8 %4 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %5, ptr noundef nonnull inttoptr (i32 143601490 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1450() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601490 to ptr)) #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset18F70() #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset18F70() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA146C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601490 to ptr)) #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset19878() #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19878() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1488() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 38, ptr noundef nonnull inttoptr (i32 143601498 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA149C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601514 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA14B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16120() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1906C() #9
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16120() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1906C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA14C4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601140 to ptr)) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA14DC() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA14E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143601132 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA14F4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601001 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA150C() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 45, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143457306 to ptr)) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1530() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1534() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601050 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA154C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 28, ptr noundef nonnull inttoptr (i32 143601132 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1560() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601098 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1578() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 45, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143457306 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA159C() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 45, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143457306 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA15C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull inttoptr (i32 143601132 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA15D4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601098 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA15EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset16270() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset19680() #9
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset16270() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19680() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA15FC() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 424), align 1
  %2 = icmp eq i8 %1, 0
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  %4 = select i1 %2, i8 %3, i8 32
  %5 = zext i8 %4 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %5, ptr noundef nonnull inttoptr (i32 143601001 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1634() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull inttoptr (i32 143601009 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1648() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 45, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143457306 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA166C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 32, ptr noundef nonnull inttoptr (i32 143601132 to ptr)) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1680() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1684() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationAndIndicator1599C() #9
  tail call arm_apcscc void @ConfigureGraphicsAnimationSlots15A10() #9
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator1599C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureGraphicsAnimationSlots15A10() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1694() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 45, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143457282 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA16B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 34, ptr noundef nonnull inttoptr (i32 143601132 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA16CC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601616 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA16E4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 36, ptr noundef nonnull inttoptr (i32 143601132 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA16F8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143600993 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1710() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16B90() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B5D0() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B624() #9
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16B90() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B5D0() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B624() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1724() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143601678 to ptr)) #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A028() #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A028() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1740() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143468559 to ptr)) #9
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull inttoptr (i32 143468559 to ptr)) #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A06C() #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A06C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1768() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16C08() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset19F3C() #9
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset16C08() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19F3C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1778() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16C08() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B5D0() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B624() #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538859 to ptr)) #9
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %1) #9
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 41, i32 23
  store i8 0, ptr %3, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA17DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset16EAC() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A0C0() #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A0C0() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA17EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 42, ptr noundef nonnull inttoptr (i32 143601600 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1800() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 42, ptr noundef nonnull inttoptr (i32 143601600 to ptr)) #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 41, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538919 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 41, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 42) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA184C() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6FacingNextSlot() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #9
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 424), align 1
  %2 = icmp eq i8 %1, 0
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = select i1 %2, i8 42, i8 %3
  %5 = zext i8 %4 to i32
  %6 = load i8, ptr @gRenderClassSlots0, align 1
  %7 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %4, i8 noundef zeroext %6) #9
  %8 = shl i32 %7, 2
  %9 = and i32 %8, 1020
  %10 = add i32 %9, add (i32 ptrtoint (ptr @gMapBank6ActorFacingAnimations to i32), i32 -4)
  %11 = inttoptr i32 %10 to ptr
  %12 = load ptr, ptr %11, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %5, ptr noundef %12) #9
  %13 = load i8, ptr @gRenderClassSlots0, align 1
  %14 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %4, i8 noundef zeroext %13) #9
  %15 = shl i32 %14, 2
  %16 = and i32 %15, 1020
  %17 = add i32 %16, add (i32 ptrtoint (ptr @gMapBank6NextFacingAnimations to i32), i32 -4)
  %18 = inttoptr i32 %17 to ptr
  %19 = add i8 %4, 1
  %20 = load ptr, ptr %18, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %19, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %20) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %19, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6FacingPreviousSlot() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %1, i8 noundef zeroext %3) #9
  %5 = shl i32 %4, 2
  %6 = and i32 %5, 1020
  %7 = add i32 %6, add (i32 ptrtoint (ptr @gMapBank6ActorFacingAnimations to i32), i32 -4)
  %8 = inttoptr i32 %7 to ptr
  %9 = load ptr, ptr %8, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef %9) #9
  %10 = load i8, ptr @gRenderClassSlots2, align 1
  %11 = load i8, ptr @gRenderClassSlots0, align 1
  %12 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %10, i8 noundef zeroext %11) #9
  %13 = tail call i32 asm "", "={r1},{r1}"(i32 %12) #11, !srcloc !8
  %14 = shl i32 %13, 2
  %15 = and i32 %14, 1020
  %16 = add i32 %15, add (i32 ptrtoint (ptr @gMapBank6PreviousFacingAnimations to i32), i32 -4)
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr @gRenderClassSlots2, align 1
  %19 = add i8 %18, -1
  %20 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %19, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %20) #9
  %21 = load i8, ptr @gRenderClassSlots2, align 1
  %22 = add i8 %21, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %22, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %21) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6DirectionalPreviousSlot() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %1, i8 noundef zeroext %2) #9
  %4 = trunc i32 %3 to i8
  switch i8 %4, label %25 [
    i8 1, label %5
    i8 2, label %8
    i8 3, label %11
    i8 4, label %18
  ]

5:                                                ; preds = %0
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  %7 = zext i8 %6 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %7, ptr noundef nonnull inttoptr (i32 143601608 to ptr)) #9
  br label %25

8:                                                ; preds = %0
  %9 = load i8, ptr @gRenderClassSlots2, align 1
  %10 = zext i8 %9 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %10, ptr noundef nonnull inttoptr (i32 143601608 to ptr)) #9
  br label %25

11:                                               ; preds = %0
  %12 = load i8, ptr @gRenderClassSlots2, align 1
  %13 = zext i8 %12 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %13, ptr noundef nonnull inttoptr (i32 143518855 to ptr)) #9
  %14 = load i8, ptr @gRenderClassSlots2, align 1
  %15 = add i8 %14, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 143601774 to ptr)) #9
  %16 = load i8, ptr @gRenderClassSlots2, align 1
  %17 = add i8 %16, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %16) #9
  br label %25

18:                                               ; preds = %0
  %19 = load i8, ptr @gRenderClassSlots2, align 1
  %20 = zext i8 %19 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %20, ptr noundef nonnull inttoptr (i32 143518880 to ptr)) #9
  %21 = load i8, ptr @gRenderClassSlots2, align 1
  %22 = add i8 %21, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 143601782 to ptr)) #9
  %23 = load i8, ptr @gRenderClassSlots2, align 1
  %24 = add i8 %23, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %24, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %23) #9
  br label %25

25:                                               ; preds = %0, %18, %11, %8, %5
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1A5C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 42, ptr noundef nonnull inttoptr (i32 143601616 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1A70() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 42, ptr noundef nonnull inttoptr (i32 143601616 to ptr)) #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528875) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 43, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538859 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 43, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 42) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1AB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #9
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 42, ptr noundef nonnull inttoptr (i32 143601616 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 41, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538919 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 41, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 42) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1B00() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 42, ptr noundef nonnull inttoptr (i32 143601637 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1B14() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 42, ptr noundef nonnull inttoptr (i32 143601637 to ptr)) #9
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 41, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538919 to ptr)) #9
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 41, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 42) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1B58() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 424), align 1
  %2 = icmp eq i8 %1, 0
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = select i1 %2, i8 %3, i8 42
  %5 = zext i8 %4 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %5, ptr noundef nonnull inttoptr (i32 143601629 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1B90() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset12D7C() #9
  tail call arm_apcscc void @SetActorAnimationPreset134EC() #9
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12D7C() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorAnimationPreset134EC() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @FaceMapBank6LeaderPairToClass2() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %1, i8 noundef zeroext %3) #9
  %5 = and i32 %4, 255
  %6 = add nsw i32 %5, -1
  %7 = getelementptr [0 x ptr], ptr @gMapBank6LeaderFacingAnimations, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef %8) #9
  %9 = load i8, ptr @gRenderClassSlots1, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, ptr @gRenderClassSlots2, align 1
  %12 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %9, i8 noundef zeroext %11) #9
  %13 = and i32 %12, 255
  %14 = add nsw i32 %13, -1
  %15 = getelementptr [0 x ptr], ptr @gMapBank6FollowerFacingAnimations, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %10, ptr noundef %16) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @FaceMapBank6LeaderPairToClass3() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  %4 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %1, i8 noundef zeroext %3) #9
  %5 = and i32 %4, 255
  %6 = add nsw i32 %5, -1
  %7 = getelementptr [0 x ptr], ptr @gMapBank6LeaderFacingAnimations, i32 0, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef %8) #9
  %9 = load i8, ptr @gRenderClassSlots1, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, ptr @gRenderClassSlots3, align 1
  %12 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %9, i8 noundef zeroext %11) #9
  %13 = and i32 %12, 255
  %14 = add nsw i32 %13, -1
  %15 = getelementptr [0 x ptr], ptr @gMapBank6FollowerFacingAnimations, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %10, ptr noundef %16) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1C58() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset12EF8() #9
  tail call arm_apcscc void @SetActorClassAnimationPreset13610() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A1AC() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A2E8() #9
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12EF8() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorClassAnimationPreset13610() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A1AC() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A2E8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1C70() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018D38() #9
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018D9C() #9
  ret void
}

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018D38() local_unnamed_addr #1

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018D9C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1C80() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset12F58() #9
  tail call arm_apcscc void @SetActorAnimationPreset13220() #9
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12F58() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorAnimationPreset13220() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6LeaderNeighborPairs() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143316608 to ptr)) #9
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143316629 to ptr)) #9
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = add i8 %5, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #9
  %7 = load i8, ptr @gRenderClassSlots0, align 1
  %8 = add i8 %7, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143316660 to ptr)) #9
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  %10 = add i8 %9, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %10, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %9) #9
  %11 = load i8, ptr @gRenderClassSlots1, align 1
  %12 = zext i8 %11 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %12, ptr noundef nonnull inttoptr (i32 143350197 to ptr)) #9
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = add i8 %13, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350209 to ptr)) #9
  %15 = load i8, ptr @gRenderClassSlots1, align 1
  %16 = add i8 %15, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %16, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %15) #9
  %17 = load i8, ptr @gRenderClassSlots1, align 1
  %18 = add i8 %17, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350226 to ptr)) #9
  %19 = load i8, ptr @gRenderClassSlots1, align 1
  %20 = add i8 %19, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %19) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1D84() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset12EF8() #9
  tail call arm_apcscc void @SetActorAnimationPreset1342C() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A1AC() #9
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset1342C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1D98() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143324741 to ptr)) #9
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = zext i8 %3 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %4, ptr noundef nonnull inttoptr (i32 143354617 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1DC4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset134EC() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset19584() #9
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19584() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1DD4() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1DD8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143601936 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1DEC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %1, i8 noundef zeroext %2) #9
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 4
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  %7 = zext i8 %6 to i32
  %8 = select i1 %5, ptr inttoptr (i32 143506953 to ptr), ptr inttoptr (i32 143505960 to ptr)
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %7, ptr noundef nonnull %8) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1E2C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143601960 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStopAndFaceMapBank6Actor() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %2, i32 6
  store i32 0, ptr %4, align 4
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %3, i32 %6, i32 6, i32 2
  store i32 0, ptr %7, align 4
  %8 = load i8, ptr @gRenderClassSlots2, align 1
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  %10 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %8, i8 noundef zeroext %9) #9
  %11 = trunc i32 %10 to i8
  switch i8 %11, label %19 [
    i8 3, label %15
    i8 4, label %12
    i8 1, label %13
    i8 2, label %14
  ]

12:                                               ; preds = %0
  br label %15

13:                                               ; preds = %0
  br label %15

14:                                               ; preds = %0
  br label %15

15:                                               ; preds = %0, %12, %13, %14
  %16 = phi ptr [ inttoptr (i32 143504771 to ptr), %14 ], [ inttoptr (i32 143504794 to ptr), %13 ], [ inttoptr (i32 143504860 to ptr), %12 ], [ inttoptr (i32 143504837 to ptr), %0 ]
  %17 = load i8, ptr @gRenderClassSlots2, align 1
  %18 = zext i8 %17 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %18, ptr noundef nonnull %16) #9
  br label %19

19:                                               ; preds = %15, %0
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckMapBank6Facing1() local_unnamed_addr #0 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %1, i8 noundef zeroext %2) #9
  %4 = and i32 %3, 255
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %7

7:                                                ; preds = %6, %0
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA1F0C() local_unnamed_addr #0 {
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 77) #9
  ret void
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @ScriptCallbackCheckMapBank6LeaderDepth() local_unnamed_addr #4 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 11534335
  %7 = select i1 %6, i32 5, i32 0
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackBranchMapBank6SlotX(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %2, align 1
  %6 = zext i8 %5 to i32
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 %6, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %7, i32 %4, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 2
  %15 = getelementptr i8, ptr %0, i32 3
  %16 = load i8, ptr %14, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %0, i32 4
  %19 = load i8, ptr %15, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or disjoint i32 %21, %17
  %23 = getelementptr i8, ptr %0, i32 5
  %24 = load i8, ptr %18, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 16
  %27 = or disjoint i32 %22, %26
  %28 = load i8, ptr %23, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw i32 %29, 24
  %31 = or disjoint i32 %27, %30
  %32 = inttoptr i32 %31 to ptr
  store ptr %32, ptr @gScriptCursor, align 4
  br label %33

33:                                               ; preds = %1, %13
  %34 = phi i32 [ -4, %13 ], [ 6, %1 ]
  ret i32 %34
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank6ProjectedMotion(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %2, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr %5, align 1
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr i8, ptr %0, i32 3
  %12 = mul nuw nsw i32 %7, 104
  %13 = add i32 %12, %10
  %14 = inttoptr i32 %13 to ptr
  %15 = mul nuw nsw i32 %4, 104
  %16 = add i32 %15, %10
  %17 = inttoptr i32 %16 to ptr
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %14, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %14, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %0, i32 4
  %27 = load i8, ptr %11, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr %26, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  %32 = or disjoint i32 %31, %28
  %33 = sub i32 %19, %21
  %34 = sdiv i32 %33, 65536
  %35 = shl nsw i32 %34, 16
  %36 = mul nsw i32 %34, %34
  %37 = sub i32 %23, %25
  %38 = sdiv i32 %37, 65536
  %39 = zext i8 %8 to i32
  %40 = mul nuw nsw i32 %39, 104
  %41 = add i32 %40, %10
  %42 = inttoptr i32 %41 to ptr
  %43 = mul nsw i32 %38, %38
  %44 = add nuw i32 %43, %36
  %45 = sdiv i32 %44, 64
  %46 = tail call arm_apcscc i32 @BiosSqrt(i32 noundef %45) #9
  %47 = trunc i32 %46 to i16
  %48 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %32
  store i16 %47, ptr %48, align 2
  %49 = and i32 %46, 65535
  %50 = tail call arm_apcscc i32 @__divsi3(i32 noundef %35, i32 noundef %49) #9
  %51 = getelementptr inbounds %struct.RenderSlot, ptr %42, i32 0, i32 6
  store i32 %50, ptr %51, align 4
  %52 = shl nsw i32 %38, 16
  %53 = tail call arm_apcscc i32 @__divsi3(i32 noundef %52, i32 noundef %49) #9
  %54 = getelementptr %struct.RenderSlot, ptr %42, i32 0, i32 6, i32 2
  store i32 %53, ptr %54, align 4
  %55 = load ptr, ptr @gRenderSlots, align 4
  %56 = ptrtoint ptr %55 to i32
  %57 = add i32 %12, %56
  %58 = inttoptr i32 %57 to ptr
  %59 = getelementptr inbounds %struct.RenderSlot, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = mul i32 %50, %49
  %62 = sub i32 %60, %61
  %63 = add i32 %62, 1310720
  %64 = getelementptr inbounds %struct.RenderSlot, ptr %42, i32 0, i32 3
  store i32 %63, ptr %64, align 4
  %65 = getelementptr inbounds %struct.RenderSlot, ptr %58, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = mul i32 %53, %49
  %68 = sub i32 %66, %67
  %69 = add i32 %68, 1310720
  %70 = getelementptr inbounds %struct.RenderSlot, ptr %42, i32 0, i32 5
  store i32 %69, ptr %70, align 4
  ret i32 5
}

declare dso_local arm_apcscc i32 @BiosSqrt(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackCheckMapBank6Slot10Depth(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 10, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 4194304
  br i1 %7, label %8, label %9

8:                                                ; preds = %3
  tail call arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext 9) #9
  br label %9

9:                                                ; preds = %8, %3
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA20C4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset1889C() #9
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E2C() #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset1889C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E2C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA20D4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset188B4() #9
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %2, i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143518013 to ptr)) #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset188B4() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA20F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset189F8() #9
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E2C() #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset189F8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2108() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset18A58() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset19EE8() #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18A58() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19EE8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2118() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset18A70() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A818() #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18A70() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A818() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2128() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset18AA0() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset1B254() #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset18AA0() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1B254() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2138() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E2C() #9
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143288416 to ptr)) #9
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143306199 to ptr)) #9
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143288416 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2168() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143601960 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA217C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143601936 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2190() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143601968 to ptr)) #9
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143601968 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA21B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143602041 to ptr)) #9
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143602041 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackMoveMapBank6Cursor() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @ScriptCallbackReadKeyMask(ptr noundef null) #9
  %2 = load i16, ptr @gAnimationClassValues, align 2
  %3 = lshr i16 %2, 2
  %4 = and i16 %3, 60
  %5 = zext nneg i16 %4 to i32
  %6 = add i32 %5, ptrtoint (ptr @gMapBank6KeySteps to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i16, ptr %7, align 2
  %9 = add i32 %5, ptrtoint (ptr getelementptr inbounds ([0 x %struct.MapBank6KeyStep], ptr @gMapBank6KeySteps, i32 0, i32 0, i32 1) to i32)
  %10 = inttoptr i32 %9 to ptr
  %11 = load i16, ptr %10, align 2
  %12 = load ptr, ptr @gRenderSlots, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %12, i32 12, i32 17
  %14 = load i16, ptr %13, align 2
  %15 = icmp ult i16 %14, 9
  %16 = icmp ugt i16 %8, -4096
  %17 = select i1 %15, i1 %16, i1 false
  %18 = select i1 %17, i16 0, i16 %8
  %19 = icmp ugt i16 %14, 207
  %20 = icmp ult i16 %18, -4096
  %21 = select i1 %19, i1 %20, i1 false
  %22 = zext i16 %18 to i32
  %23 = getelementptr %struct.RenderSlot, ptr %12, i32 12, i32 18
  %24 = load i16, ptr %23, align 4
  %25 = icmp ult i16 %24, 9
  %26 = icmp ugt i16 %11, -4096
  %27 = select i1 %25, i1 %26, i1 false
  %28 = select i1 %27, i16 0, i16 %11
  %29 = icmp ugt i16 %24, 127
  %30 = icmp ult i16 %28, -4096
  %31 = select i1 %29, i1 %30, i1 false
  %32 = zext i16 %28 to i32
  %33 = shl nuw i32 %22, 16
  %34 = select i1 %21, i32 0, i32 %33
  %35 = getelementptr %struct.RenderSlot, ptr %12, i32 12, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %34, %36
  store i32 %37, ptr %35, align 4
  %38 = shl nuw i32 %32, 16
  %39 = select i1 %31, i32 0, i32 %38
  %40 = getelementptr %struct.RenderSlot, ptr %12, i32 12, i32 5
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %39, %41
  store i32 %42, ptr %40, align 4
  %43 = getelementptr %struct.RenderSlot, ptr %12, i32 10, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, 1572864
  %46 = getelementptr %struct.RenderSlot, ptr %12, i32 10, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, 1572864
  %49 = add i32 %37, 1048576
  %50 = add i32 %42, 1048576
  %51 = icmp ult i32 %49, %45
  %52 = icmp ult i32 %50, %48
  %53 = select i1 %52, ptr inttoptr (i32 143316950 to ptr), ptr inttoptr (i32 143316926 to ptr)
  %54 = select i1 %52, i8 3, i8 1
  %55 = select i1 %52, ptr inttoptr (i32 143316938 to ptr), ptr inttoptr (i32 143316914 to ptr)
  %56 = select i1 %52, i8 2, i8 0
  %57 = select i1 %51, ptr %55, ptr %53
  %58 = select i1 %51, i8 %56, i8 %54
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull %57) #9
  store i8 %58, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %59 = tail call arm_apcscc i32 @ScriptCallbackReadDirectionalHeldAndPressedKeyMask(ptr noundef null) #9
  %60 = load i16, ptr @gAnimationClassValues, align 2
  %61 = and i16 %60, 1
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %0
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 672, i32 noundef 1) #9
  %64 = load i16, ptr @gAnimationClassValues, align 2
  br label %65

65:                                               ; preds = %63, %0
  %66 = phi i16 [ %64, %63 ], [ %60, %0 ]
  %67 = and i16 %66, 2
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %65
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 688, i32 noundef 1) #9
  br label %70

70:                                               ; preds = %69, %65
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScriptCallbackReadKeyMask(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @ScriptCallbackReadDirectionalHeldAndPressedKeyMask(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackLaunchMapBank6CursorActor(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 672, i32 noundef 0) #9
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 12, ptr noundef nonnull inttoptr (i32 143259168 to ptr)) #9
  %4 = icmp eq i8 %2, 10
  %5 = select i1 %4, ptr inttoptr (i32 143604447 to ptr), ptr inttoptr (i32 143604469 to ptr)
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #9
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 11, i8 noundef zeroext 0) #9
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = mul nuw nsw i32 %3, 104
  %8 = ptrtoint ptr %6 to i32
  %9 = add i32 %7, %8
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %10, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %6, i32 12, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %6, i32 12, i32 5
  %18 = load i32, ptr %17, align 4
  br i1 %4, label %19, label %29

19:                                               ; preds = %1
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  switch i8 %20, label %27 [
    i8 0, label %24
    i8 1, label %21
    i8 2, label %22
    i8 3, label %23
  ]

21:                                               ; preds = %19
  br label %24

22:                                               ; preds = %19
  br label %24

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %19, %21, %22, %23
  %25 = phi ptr [ inttoptr (i32 143317302 to ptr), %23 ], [ inttoptr (i32 143317214 to ptr), %22 ], [ inttoptr (i32 143317126 to ptr), %21 ], [ inttoptr (i32 143317038 to ptr), %19 ]
  %26 = phi ptr [ inttoptr (i32 143317355 to ptr), %23 ], [ inttoptr (i32 143317267 to ptr), %22 ], [ inttoptr (i32 143317179 to ptr), %21 ], [ inttoptr (i32 143317091 to ptr), %19 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull %25) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %26) #9
  br label %27

27:                                               ; preds = %24, %19
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #9
  %28 = load ptr, ptr @gRenderSlots, align 4
  br label %29

29:                                               ; preds = %27, %1
  %30 = phi ptr [ %28, %27 ], [ %6, %1 ]
  %31 = sub i32 %16, %12
  %32 = add i32 %31, -524288
  %33 = sub i32 %18, %14
  %34 = add i32 %33, -458752
  %35 = sub i32 524288, %31
  %36 = icmp sgt i32 %32, 0
  %37 = select i1 %36, i32 %32, i32 %35
  %38 = sub i32 458752, %33
  %39 = icmp sgt i32 %34, 0
  %40 = select i1 %39, i32 %34, i32 %38
  %41 = tail call i32 @llvm.smax.i32(i32 %37, i32 %40)
  %42 = ashr i32 %41, 18
  %43 = trunc i32 %42 to i8
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  %44 = tail call arm_apcscc i32 @__divsi3(i32 noundef %32, i32 noundef %42) #9
  %45 = getelementptr %struct.RenderSlot, ptr %30, i32 11, i32 6
  store i32 %44, ptr %45, align 4
  %46 = tail call arm_apcscc i32 @__divsi3(i32 noundef %34, i32 noundef %42) #9
  %47 = getelementptr %struct.RenderSlot, ptr %30, i32 11, i32 6, i32 2
  store i32 %46, ptr %47, align 4
  %48 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %29
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  br label %51

51:                                               ; preds = %50, %29
  ret i32 1
}

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackHitMapBank6CursorRect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %2, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 3
  tail call void asm sideeffect "", "{r3},r"(i32 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96)) #10, !srcloc !9
  %11 = getelementptr i8, ptr %0, i32 4
  %12 = load i8, ptr %10, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, ptr %11, align 1
  %15 = zext i8 %14 to i32
  %16 = load ptr, ptr @gRenderSlots, align 4
  %17 = mul nuw nsw i32 %4, 104
  %18 = ptrtoint ptr %16 to i32
  %19 = add i32 %17, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr i8, ptr %20, i32 26
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %20, i32 34
  %25 = load i16, ptr %24, align 2
  %26 = zext i16 %25 to i32
  %27 = add i32 %18, 1248
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr i8, ptr %28, i32 26
  %30 = load i16, ptr %29, align 2
  %31 = sext i16 %30 to i32
  %32 = add nsw i32 %31, 16
  %33 = tail call i32 asm "", "=r,r,0"(i32 %9, i32 %32) #11, !srcloc !10
  %34 = add i32 %18, 1282
  %35 = inttoptr i32 %34 to ptr
  %36 = load i16, ptr %35, align 2
  %37 = add i16 %36, 16
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %20, i32 0, i32 23
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %1
  %42 = and i32 %33, 65535
  %43 = add nuw nsw i32 %23, %6
  %44 = icmp ugt i32 %42, %43
  %45 = add nuw nsw i32 %23, %13
  %46 = icmp ult i32 %42, %45
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %56

48:                                               ; preds = %41
  %49 = zext i16 %37 to i32
  %50 = add nuw nsw i32 %26, %9
  %51 = icmp ult i32 %50, %49
  %52 = add nuw nsw i32 %26, %15
  %53 = icmp ugt i32 %52, %49
  %54 = select i1 %51, i1 %53, i1 false
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %56

56:                                               ; preds = %55, %48, %41, %1
  tail call void asm sideeffect "", "{r4},{r5},{r6}"(i32 %23, i32 %26, i32 %13) #10, !srcloc !11
  ret i32 5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackHitMapBank6Slot11Rect(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = mul nuw nsw i32 %3, 104
  %6 = ptrtoint ptr %4 to i32
  %7 = add i32 %5, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 23
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %49, label %12

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %4, i32 1178
  %14 = load i16, ptr %13, align 2
  %15 = zext i16 %14 to i32
  %16 = getelementptr i8, ptr %4, i32 1170
  %17 = load i16, ptr %16, align 2
  %18 = zext i16 %17 to i32
  %19 = getelementptr i8, ptr %8, i32 34
  %20 = load i16, ptr %19, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %8, i32 26
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %0, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %0, i32 3
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %0, i32 2
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %0, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = add nuw nsw i32 %36, %24
  %38 = icmp ult i32 %37, %18
  %39 = add nuw nsw i32 %30, %24
  %40 = icmp ugt i32 %39, %18
  %41 = select i1 %38, i1 %40, i1 false
  %42 = add nuw nsw i32 %33, %21
  %43 = icmp ult i32 %42, %15
  %44 = select i1 %41, i1 %43, i1 false
  %45 = add nuw nsw i32 %27, %21
  %46 = icmp ugt i32 %45, %15
  %47 = select i1 %44, i1 %46, i1 false
  br i1 %47, label %48, label %49

48:                                               ; preds = %12
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %49

49:                                               ; preds = %48, %12, %1
  ret i32 5
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackApproachMapBank6RightEdge(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 16777216, %5
  %7 = tail call arm_apcscc i32 @__divsi3(i32 noundef %6, i32 noundef 40) #9
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %7, ptr %8, align 4
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackAnchorMapBank6Cursor(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc ptr @GetVideoState() #9
  %5 = getelementptr %struct.VideoState, ptr %4, i32 0, i32 14, i32 1, i32 1
  %6 = load i16, ptr %5, align 2
  %7 = sub i16 104, %6
  %8 = getelementptr %struct.VideoState, ptr %4, i32 0, i32 14, i32 1, i32 2
  %9 = load i16, ptr %8, align 4
  %10 = sub i16 64, %9
  %11 = sext i16 %7 to i32
  %12 = sext i16 %10 to i32
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 12, i32 noundef %11, i32 noundef 0, i32 noundef %12) #9
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank6TargetMotion(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = mul i32 %2, 104
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = add i32 %4, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = load i16, ptr %0, align 2
  %10 = getelementptr i16, ptr %0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 143543348
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %5, i32 %1, i32 3
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 5
  %19 = add i32 %16, 49152
  %20 = add i32 %16, 81920
  %21 = select i1 %14, i32 %20, i32 %19
  %22 = select i1 %14, i32 16384, i32 49152
  %23 = select i1 %14, i32 %20, i32 %19
  store i32 %21, ptr %17, align 4
  %24 = load i32, ptr %18, align 4
  %25 = add i32 %24, %22
  %26 = getelementptr %struct.RenderSlot, ptr %5, i32 %1, i32 5
  store i32 %25, ptr %26, align 4
  %27 = zext i16 %11 to i32
  %28 = shl nuw i32 %27, 16
  %29 = or disjoint i32 %28, 32768
  %30 = zext i16 %9 to i32
  %31 = shl nuw i32 %30, 16
  %32 = or disjoint i32 %31, 32768
  %33 = getelementptr %struct.RenderSlot, ptr %5, i32 %1, i32 3
  %34 = sub i32 %32, %23
  %35 = tail call arm_apcscc i32 @__divsi3(i32 noundef %34, i32 noundef 63) #9
  %36 = getelementptr %struct.RenderSlot, ptr %5, i32 %1, i32 6
  store i32 %35, ptr %36, align 4
  %37 = load i32, ptr %26, align 4
  %38 = sub i32 %29, %37
  %39 = tail call arm_apcscc i32 @__divsi3(i32 noundef %38, i32 noundef 63) #9
  %40 = getelementptr %struct.RenderSlot, ptr %5, i32 %1, i32 6, i32 2
  store i32 %39, ptr %40, align 4
  %41 = mul i32 %35, -63
  %42 = add i32 %41, %32
  store i32 %42, ptr %33, align 4
  %43 = mul i32 %39, -63
  %44 = add i32 %43, %29
  store i32 %44, ptr %26, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6TargetPosition(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = trunc i32 %1 to i8
  %4 = load i16, ptr %0, align 2
  %5 = sext i16 %4 to i32
  %6 = getelementptr i16, ptr %0, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = sext i16 %7 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %5, i32 noundef 0, i32 noundef %8, ptr noundef nonnull inttoptr (i32 143541350 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectMapBank6Targets() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 18), align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 104
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = add i32 %4, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = load i16, ptr getelementptr inbounds ([0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 0, i32 2), align 4
  %10 = zext i8 %1 to i16
  %11 = icmp eq i16 %9, %10
  br i1 %11, label %31, label %12

12:                                               ; preds = %0
  %13 = load i16, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 16) to ptr), i32 8), align 4
  %14 = icmp eq i16 %13, %10
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = load i16, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 32) to ptr), i32 8), align 4
  %17 = icmp eq i16 %16, %10
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 48) to ptr), i32 8), align 4
  %20 = icmp eq i16 %19, %10
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = load i16, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 64) to ptr), i32 8), align 4
  %23 = icmp eq i16 %22, %10
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load i16, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 80) to ptr), i32 8), align 4
  %26 = icmp eq i16 %25, %10
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i16, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 96) to ptr), i32 8), align 4
  %29 = icmp eq i16 %28, %10
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 679, i32 noundef 0) #9
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !12
  br label %182

31:                                               ; preds = %12, %15, %18, %21, %24, %27, %0
  %32 = phi ptr [ @gMapBank6TargetSets, %0 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 16) to ptr), %12 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 32) to ptr), %15 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 48) to ptr), %18 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 64) to ptr), %21 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 80) to ptr), %24 ], [ inttoptr (i32 add (i32 ptrtoint (ptr @gMapBank6TargetSets to i32), i32 96) to ptr), %27 ]
  %33 = getelementptr inbounds %struct.MapBank6TargetSet, ptr %32, i32 0, i32 3
  %34 = load i16, ptr %33, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp eq i16 %34, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.MapBank6TargetSet, ptr %32, i32 0, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.MapBank6TargetRange, ptr %39, i32 0, i32 2
  %41 = load i8, ptr %40, align 2
  %42 = icmp eq i8 %41, %2
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = ptrtoint ptr %39 to i32
  %45 = add nsw i32 %35, -1
  br label %46

46:                                               ; preds = %43, %49
  %47 = phi i32 [ %50, %49 ], [ 0, %43 ]
  %48 = icmp eq i32 %47, %45
  br i1 %48, label %61, label %49

49:                                               ; preds = %46
  %50 = add nuw nsw i32 %47, 1
  %51 = shl i32 %50, 3
  %52 = add i32 %51, %44
  %53 = inttoptr i32 %52 to ptr
  %54 = getelementptr inbounds %struct.MapBank6TargetRange, ptr %53, i32 0, i32 2
  %55 = load i8, ptr %54, align 2
  %56 = icmp eq i8 %55, %2
  br i1 %56, label %57, label %46

57:                                               ; preds = %49, %37, %31
  %58 = phi ptr [ undef, %31 ], [ %39, %37 ], [ %53, %49 ]
  %59 = phi i32 [ 0, %31 ], [ 0, %37 ], [ %50, %49 ]
  %60 = icmp eq i32 %59, %35
  br i1 %60, label %61, label %62

61:                                               ; preds = %46, %57
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 679, i32 noundef 0) #9
  br label %182

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 143543295
  %66 = select i1 %65, ptr inttoptr (i32 143543348 to ptr), ptr inttoptr (i32 143543303 to ptr)
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %2, ptr noundef nonnull %66) #9
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 679, i32 noundef 1) #9
  %67 = load i16, ptr %58, align 2
  %68 = getelementptr inbounds %struct.MapBank6TargetRange, ptr %58, i32 0, i32 1
  %69 = load i16, ptr %68, align 2
  %70 = add i16 %69, 1
  %71 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext %67, i16 noundef zeroext %70) #9
  %72 = zext i16 %71 to i32
  %73 = shl nuw nsw i32 %72, 2
  %74 = load ptr, ptr %32, align 4
  %75 = ptrtoint ptr %74 to i32
  %76 = add i32 %73, %75
  %77 = inttoptr i32 %76 to ptr
  %78 = load ptr, ptr @gRenderSlots, align 4
  %79 = ptrtoint ptr %78 to i32
  %80 = add i32 %4, %79
  %81 = inttoptr i32 %80 to ptr
  %82 = load i16, ptr %77, align 2
  %83 = getelementptr i16, ptr %77, i32 1
  %84 = load i16, ptr %83, align 2
  %85 = getelementptr inbounds %struct.RenderSlot, ptr %81, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 143543348
  %88 = getelementptr inbounds %struct.RenderSlot, ptr %81, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = getelementptr %struct.RenderSlot, ptr %78, i32 25, i32 3
  %91 = getelementptr inbounds %struct.RenderSlot, ptr %81, i32 0, i32 5
  %92 = select i1 %87, i32 81920, i32 49152
  %93 = add i32 %92, %89
  %94 = select i1 %87, i32 16384, i32 49152
  store i32 %93, ptr %90, align 4
  %95 = load i32, ptr %91, align 4
  %96 = add i32 %95, %94
  %97 = getelementptr %struct.RenderSlot, ptr %78, i32 25, i32 5
  store i32 %96, ptr %97, align 4
  %98 = zext i16 %84 to i32
  %99 = shl nuw i32 %98, 16
  %100 = or disjoint i32 %99, 32768
  %101 = zext i16 %82 to i32
  %102 = shl nuw i32 %101, 16
  %103 = or disjoint i32 %102, 32768
  %104 = sub i32 %103, %93
  %105 = tail call arm_apcscc i32 @__divsi3(i32 noundef %104, i32 noundef 63) #9
  %106 = getelementptr %struct.RenderSlot, ptr %78, i32 25, i32 6
  store i32 %105, ptr %106, align 4
  %107 = load i32, ptr %97, align 4
  %108 = sub i32 %100, %107
  %109 = tail call arm_apcscc i32 @__divsi3(i32 noundef %108, i32 noundef 63) #9
  %110 = getelementptr %struct.RenderSlot, ptr %78, i32 25, i32 6, i32 2
  store i32 %109, ptr %110, align 4
  %111 = mul i32 %105, -63
  %112 = add i32 %111, %103
  store i32 %112, ptr %90, align 4
  %113 = mul i32 %109, -63
  %114 = add i32 %113, %100
  store i32 %114, ptr %97, align 4
  %115 = trunc i16 %71 to i8
  %116 = getelementptr inbounds %struct.MapBank6TargetSet, ptr %32, i32 0, i32 4
  %117 = load i16, ptr %116, align 4
  %118 = zext i16 %117 to i32
  %119 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %118
  store i8 %115, ptr %119, align 1
  %120 = load i16, ptr %68, align 2
  %121 = zext i16 %120 to i32
  %122 = load i16, ptr %58, align 2
  %123 = zext i16 %122 to i32
  %124 = sub nsw i32 %121, %123
  %125 = add nsw i32 %124, 1
  %126 = trunc i32 %125 to i16
  %127 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext %126) #9
  %128 = load i16, ptr %58, align 2
  %129 = zext i16 %128 to i32
  %130 = zext i16 %127 to i32
  %131 = add nuw nsw i32 %130, %72
  %132 = sub nsw i32 %131, %129
  %133 = tail call arm_apcscc i32 @__modsi3(i32 noundef %132, i32 noundef %125) #9
  %134 = add i32 %133, %129
  %135 = shl i32 %134, 2
  %136 = load ptr, ptr %32, align 4
  %137 = ptrtoint ptr %136 to i32
  %138 = add i32 %135, %137
  %139 = inttoptr i32 %138 to ptr
  %140 = load ptr, ptr @gRenderSlots, align 4
  %141 = ptrtoint ptr %140 to i32
  %142 = add i32 %4, %141
  %143 = inttoptr i32 %142 to ptr
  %144 = load i16, ptr %139, align 2
  %145 = getelementptr i16, ptr %139, i32 1
  %146 = load i16, ptr %145, align 2
  %147 = getelementptr inbounds %struct.RenderSlot, ptr %143, i32 0, i32 1
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 143543348
  %150 = getelementptr inbounds %struct.RenderSlot, ptr %143, i32 0, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr %struct.RenderSlot, ptr %140, i32 26, i32 3
  %153 = getelementptr inbounds %struct.RenderSlot, ptr %143, i32 0, i32 5
  %154 = select i1 %149, i32 81920, i32 49152
  %155 = add i32 %154, %151
  %156 = select i1 %149, i32 16384, i32 49152
  store i32 %155, ptr %152, align 4
  %157 = load i32, ptr %153, align 4
  %158 = add i32 %157, %156
  %159 = getelementptr %struct.RenderSlot, ptr %140, i32 26, i32 5
  store i32 %158, ptr %159, align 4
  %160 = zext i16 %146 to i32
  %161 = shl nuw i32 %160, 16
  %162 = or disjoint i32 %161, 32768
  %163 = zext i16 %144 to i32
  %164 = shl nuw i32 %163, 16
  %165 = or disjoint i32 %164, 32768
  %166 = sub i32 %165, %155
  %167 = tail call arm_apcscc i32 @__divsi3(i32 noundef %166, i32 noundef 63) #9
  %168 = getelementptr %struct.RenderSlot, ptr %140, i32 26, i32 6
  store i32 %167, ptr %168, align 4
  %169 = load i32, ptr %159, align 4
  %170 = sub i32 %162, %169
  %171 = tail call arm_apcscc i32 @__divsi3(i32 noundef %170, i32 noundef 63) #9
  %172 = getelementptr %struct.RenderSlot, ptr %140, i32 26, i32 6, i32 2
  store i32 %171, ptr %172, align 4
  %173 = mul i32 %167, -63
  %174 = add i32 %173, %165
  store i32 %174, ptr %152, align 4
  %175 = mul i32 %171, -63
  %176 = add i32 %175, %162
  store i32 %176, ptr %159, align 4
  %177 = trunc i32 %134 to i8
  %178 = getelementptr inbounds %struct.MapBank6TargetSet, ptr %32, i32 0, i32 5
  %179 = load i16, ptr %178, align 2
  %180 = zext i16 %179 to i32
  %181 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %180
  store i8 %177, ptr %181, align 1
  br label %182

182:                                              ; preds = %30, %61, %62
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @__modsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreMapBank6Targets(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = tail call ptr asm "", "={r5}"() #11, !srcloc !13
  %4 = zext i8 %2 to i16
  %5 = load i16, ptr getelementptr inbounds ([0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 0, i32 2), align 4
  %6 = icmp eq i16 %5, %4
  br i1 %6, label %7, label %10

7:                                                ; preds = %25, %22, %19, %16, %13, %10, %1
  %8 = phi i32 [ 0, %1 ], [ 1, %10 ], [ 2, %13 ], [ 3, %16 ], [ 4, %19 ], [ 5, %22 ], [ 6, %25 ]
  %9 = getelementptr [0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 %8
  br label %28

10:                                               ; preds = %1
  %11 = load i16, ptr getelementptr ([0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 1, i32 2), align 4
  %12 = icmp eq i16 %11, %4
  br i1 %12, label %7, label %13

13:                                               ; preds = %10
  %14 = load i16, ptr getelementptr ([0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 2, i32 2), align 4
  %15 = icmp eq i16 %14, %4
  br i1 %15, label %7, label %16

16:                                               ; preds = %13
  %17 = load i16, ptr getelementptr ([0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 3, i32 2), align 4
  %18 = icmp eq i16 %17, %4
  br i1 %18, label %7, label %19

19:                                               ; preds = %16
  %20 = load i16, ptr getelementptr ([0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 4, i32 2), align 4
  %21 = icmp eq i16 %20, %4
  br i1 %21, label %7, label %22

22:                                               ; preds = %19
  %23 = load i16, ptr getelementptr ([0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 5, i32 2), align 4
  %24 = icmp eq i16 %23, %4
  br i1 %24, label %7, label %25

25:                                               ; preds = %22
  %26 = load i16, ptr getelementptr ([0 x %struct.MapBank6TargetSet], ptr @gMapBank6TargetSets, i32 0, i32 6, i32 2), align 4
  %27 = icmp eq i16 %26, %4
  br i1 %27, label %7, label %28

28:                                               ; preds = %25, %7
  %29 = phi ptr [ %9, %7 ], [ %3, %25 ]
  %30 = getelementptr inbounds %struct.MapBank6TargetSet, ptr %29, i32 0, i32 4
  %31 = load i16, ptr %30, align 4
  %32 = zext i16 %31 to i32
  %33 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %32
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %28
  %37 = zext i8 %34 to i32
  %38 = load ptr, ptr %29, align 4
  %39 = getelementptr [2 x i16], ptr %38, i32 %37
  %40 = load i16, ptr %39, align 2
  %41 = sext i16 %40 to i32
  %42 = getelementptr i16, ptr %39, i32 1
  %43 = load i16, ptr %42, align 2
  %44 = sext i16 %43 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %41, i32 noundef 0, i32 noundef %44, ptr noundef nonnull inttoptr (i32 143541350 to ptr)) #9
  br label %45

45:                                               ; preds = %36, %28
  %46 = getelementptr inbounds %struct.MapBank6TargetSet, ptr %29, i32 0, i32 5
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %48
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %45
  %53 = zext i8 %50 to i32
  %54 = load ptr, ptr %29, align 4
  %55 = getelementptr [2 x i16], ptr %54, i32 %53
  %56 = load i16, ptr %55, align 2
  %57 = sext i16 %56 to i32
  %58 = getelementptr i16, ptr %55, i32 1
  %59 = load i16, ptr %58, align 2
  %60 = sext i16 %59 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %57, i32 noundef 0, i32 noundef %60, ptr noundef nonnull inttoptr (i32 143541350 to ptr)) #9
  br label %61

61:                                               ; preds = %52, %45
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank6FallingAuxiliary(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 18), align 1
  %4 = zext i8 %3 to i32
  %5 = mul nuw nsw i32 %4, 104
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = add i32 %5, %7
  %9 = inttoptr i32 %8 to ptr
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %2, i8 noundef zeroext %3, ptr noundef nonnull inttoptr (i32 143605110 to ptr)) #9
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %9, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 143543295
  %13 = select i1 %12, i32 1343488, i32 819200
  %14 = select i1 %12, i32 6848512, i32 7372800
  %15 = zext i8 %2 to i32
  %16 = getelementptr %struct.RenderSlot, ptr %6, i32 %15, i32 3
  store i32 %13, ptr %16, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %6, i32 %15, i32 5
  store i32 %14, ptr %17, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %6, i32 %15, i32 4
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -6553600
  store i32 %20, ptr %18, align 4
  store i16 64, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 55), align 2
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackChooseMapBank6TaskPattern() local_unnamed_addr #0 {
  br i1 icmp ne (ptr @gDefaultTaskContextScript, ptr @gMapBank6TaskPatternsFirst), label %1, label %6

1:                                                ; preds = %0
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x ptr], ptr @gMapBank6TaskPatternsFirst, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  br label %6

6:                                                ; preds = %0, %1
  %7 = phi ptr [ %5, %1 ], [ @gDefaultTaskContextScript, %0 ]
  %8 = load i8, ptr @gTaskFlagsFirst, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6, %16
  %11 = phi i8 [ %20, %16 ], [ %8, %6 ]
  %12 = phi i32 [ %18, %16 ], [ 0, %6 ]
  %13 = phi ptr [ %17, %16 ], [ %7, %6 ]
  %14 = load i8, ptr %13, align 1
  %15 = icmp eq i8 %14, %11
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %13, i32 1
  %18 = add i32 %12, 1
  %19 = getelementptr [0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 %18
  %20 = load i8, ptr %19, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %10

22:                                               ; preds = %10, %16, %6
  %23 = phi ptr [ %7, %6 ], [ %17, %16 ], [ %13, %10 ]
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  %26 = zext i1 %25 to i32
  br i1 icmp ne (ptr @gDefaultTaskContextScript, ptr @gMapBank6TaskPatternsSecond), label %27, label %32

27:                                               ; preds = %22
  %28 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr [0 x ptr], ptr @gMapBank6TaskPatternsSecond, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %22, %27
  %33 = phi ptr [ %31, %27 ], [ @gDefaultTaskContextScript, %22 ]
  br i1 %9, label %46, label %34

34:                                               ; preds = %32, %40
  %35 = phi i8 [ %44, %40 ], [ %8, %32 ]
  %36 = phi i32 [ %42, %40 ], [ 0, %32 ]
  %37 = phi ptr [ %41, %40 ], [ %33, %32 ]
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, %35
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %37, i32 1
  %42 = add i32 %36, 1
  %43 = getelementptr [0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 %42
  %44 = load i8, ptr %43, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %34

46:                                               ; preds = %34, %40, %32
  %47 = phi ptr [ %33, %32 ], [ %41, %40 ], [ %37, %34 ]
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 2, i32 %26
  br i1 icmp ne (ptr @gDefaultTaskContextScript, ptr @gMapBank6TaskPatternsThird), label %51, label %56

51:                                               ; preds = %46
  %52 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr [0 x ptr], ptr @gMapBank6TaskPatternsThird, i32 0, i32 %53
  %55 = load ptr, ptr %54, align 4
  br label %56

56:                                               ; preds = %46, %51
  %57 = phi ptr [ %55, %51 ], [ @gMapBank6TaskPatternsThird, %46 ]
  br i1 %9, label %70, label %58

58:                                               ; preds = %56, %64
  %59 = phi i8 [ %68, %64 ], [ %8, %56 ]
  %60 = phi i32 [ %66, %64 ], [ 0, %56 ]
  %61 = phi ptr [ %65, %64 ], [ %57, %56 ]
  %62 = load i8, ptr %61, align 1
  %63 = icmp eq i8 %62, %59
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %61, i32 1
  %66 = add i32 %60, 1
  %67 = getelementptr [0 x i8], ptr @gTaskFlagsFirst, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %70, label %58

70:                                               ; preds = %58, %64, %56
  %71 = phi ptr [ %57, %56 ], [ %65, %64 ], [ %61, %58 ]
  %72 = load i8, ptr %71, align 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %73, i32 3, i32 %50
  %75 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 100) #9
  %76 = and i16 %75, 255
  %77 = zext nneg i16 %76 to i32
  %78 = icmp eq i32 %74, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = tail call arm_apcscc i32 @__umodsi3(i32 noundef %77, i32 noundef 3) #9
  %81 = and i32 %80, 255
  br label %88

82:                                               ; preds = %70
  %83 = and i32 %77, 1
  switch i32 %74, label %87 [
    i32 1, label %84
    i32 2, label %88
    i32 3, label %86
  ]

84:                                               ; preds = %82
  %85 = add nuw nsw i32 %83, 1
  br label %88

86:                                               ; preds = %82
  br label %88

87:                                               ; preds = %82
  unreachable

88:                                               ; preds = %82, %84, %86, %79
  %89 = phi i32 [ %83, %86 ], [ %85, %84 ], [ %81, %79 ], [ 0, %82 ]
  %90 = trunc i32 %89 to i8
  store i8 %90, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 437), align 1
  ret i32 0
}

declare dso_local arm_apcscc i32 @__umodsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackScaleMapBank6Auxiliary(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %12

7:                                                ; preds = %3
  %8 = tail call arm_apcscc zeroext i8 @FindUnusedAffineMatrix() #9
  store i8 %8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = add i32 %9, ptrtoint (ptr @gAffineUsage to i32)
  %11 = inttoptr i32 %10 to ptr
  store i8 1, ptr %11, align 1
  br label %12

12:                                               ; preds = %7, %3
  %13 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 55), align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = add i16 %13, -1
  store i16 %16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 55), align 2
  br label %17

17:                                               ; preds = %15, %12
  %18 = zext i16 %13 to i32
  %19 = mul nuw nsw i32 %18, 22
  %20 = mul i32 %19, %18
  %21 = lshr i32 %20, 8
  %22 = tail call i32 asm "", "={r0},r,{r0}"(i32 512, i32 512) #11, !srcloc !14
  %23 = sub i32 %22, %21
  %24 = trunc i32 %23 to i16
  %25 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 8
  store i16 %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 9
  store i16 %24, ptr %26, align 2
  store i32 0, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindUnusedAffineMatrix() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2B2C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #9
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetGraphicsAnimationAndIndicator15024() #9
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator15024() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2B5C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #9
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #9
  tail call arm_apcscc void @SetExtendedAnimationPreset14F0C() #9
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14F0C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2B8C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorClassAnimationPreset13610() #9
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext 12, i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143538550 to ptr)) #9
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2BA4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset17CE4() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset18EC8() #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17CE4() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset18EC8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2BB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset17D44() #9
  tail call arm_apcscc void @ConfigureRenderSetupPreset196D4() #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17D44() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset196D4() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2BC4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset131D8() #9
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext 12, i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143537371 to ptr)) #9
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset131D8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2BDC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset12E50() #9
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext 9, i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143537325 to ptr)) #9
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12E50() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA2BF4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset17D8C() #9
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext 12, i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143505698 to ptr)) #9
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17D8C() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @ApplyMapBank6PlanarTransform(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 {
  %6 = mul i32 %3, %2
  %7 = mul i32 %4, %1
  %8 = sub i32 %6, %7
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %8, %10
  store i32 %11, ptr %9, align 4
  %12 = mul i32 %3, %1
  %13 = mul i32 %4, %2
  %14 = add i32 %13, %12
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %14, %16
  store i32 %17, ptr %15, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank6ClassPositionPair() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %3 = sext i16 %2 to i32
  %4 = sext i16 %1 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %3, i32 noundef -96, i32 noundef %4, ptr noundef nonnull inttoptr (i32 143605258 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %3, i32 noundef -32, i32 noundef %4, ptr noundef nonnull inttoptr (i32 143605266 to ptr)) #9
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapBank6TaskPositionPair() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr (i16, ptr @gTaskTextVariables2BB0, i32 5), align 2
  %2 = load i16, ptr getelementptr (i16, ptr @gTaskTextVariables2BB0, i32 1), align 2
  %3 = sext i16 %2 to i32
  %4 = sext i16 %1 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %3, i32 noundef -96, i32 noundef %4, ptr noundef nonnull inttoptr (i32 143605624 to ptr)) #9
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %3, i32 noundef -32, i32 noundef %4, ptr noundef nonnull inttoptr (i32 143605699 to ptr)) #9
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackApproachMapBank6ClassPositionPair() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %2 = zext i16 %1 to i32
  %3 = shl nuw i32 %2, 16
  %4 = or disjoint i32 %3, 32768
  %5 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %6 = zext i16 %5 to i32
  %7 = shl nuw i32 %6, 16
  %8 = or disjoint i32 %7, 32768
  %9 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %10 = zext i16 %9 to i32
  %11 = shl nuw i32 %10, 16
  %12 = or disjoint i32 %11, 32768
  %13 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 37), align 2
  %14 = zext i16 %13 to i32
  %15 = shl nuw i32 %14, 16
  %16 = or disjoint i32 %15, 32768
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %17, i32 10, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %4, %19
  %21 = tail call arm_apcscc i32 @__divsi3(i32 noundef %20, i32 noundef 18) #9
  %22 = getelementptr %struct.RenderSlot, ptr %17, i32 10, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %17, i32 10, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %8, %24
  %26 = tail call arm_apcscc i32 @__divsi3(i32 noundef %25, i32 noundef 18) #9
  %27 = getelementptr %struct.RenderSlot, ptr %17, i32 10, i32 6, i32 2
  store i32 %26, ptr %27, align 4
  %28 = getelementptr %struct.RenderSlot, ptr %17, i32 13, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = sub i32 %12, %29
  %31 = tail call arm_apcscc i32 @__divsi3(i32 noundef %30, i32 noundef 23) #9
  %32 = getelementptr %struct.RenderSlot, ptr %17, i32 13, i32 6
  store i32 %31, ptr %32, align 4
  %33 = getelementptr %struct.RenderSlot, ptr %17, i32 13, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = sub i32 %16, %34
  %36 = tail call arm_apcscc i32 @__divsi3(i32 noundef %35, i32 noundef 23) #9
  %37 = getelementptr %struct.RenderSlot, ptr %17, i32 13, i32 6, i32 2
  store i32 %36, ptr %37, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackPlaceMapBank6Slot21AtClassPosition() local_unnamed_addr #7 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %3 = zext i16 %2 to i32
  %4 = shl nuw i32 %3, 16
  %5 = or disjoint i32 %4, 32768
  %6 = getelementptr %struct.RenderSlot, ptr %1, i32 21, i32 3
  store i32 %5, ptr %6, align 4
  %7 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %8 = zext i16 %7 to i32
  %9 = shl nuw i32 %8, 16
  %10 = or disjoint i32 %9, 32768
  %11 = getelementptr %struct.RenderSlot, ptr %1, i32 21, i32 5
  store i32 %10, ptr %11, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-builtins" }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 26880}
!5 = !{i64 28306}
!6 = !{i64 28404}
!7 = !{i64 29409}
!8 = !{i64 42826}
!9 = !{i64 60036}
!10 = !{i64 60538}
!11 = !{i64 60948}
!12 = !{i64 64830}
!13 = !{i64 68440}
!14 = !{i64 72119}
