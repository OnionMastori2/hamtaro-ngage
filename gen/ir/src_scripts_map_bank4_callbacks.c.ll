; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MapBank4JumpPosition = type { i32, i32 }
%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i16 }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gMapBank4FacingAnimations165C = external dso_local global [0 x ptr], align 4
@gMapBank4FacingAnimations166C = external dso_local global [0 x ptr], align 4
@gMapBank4FacingAnimations167C = external dso_local global [0 x ptr], align 4
@gMapBank4FacingAnimations168C = external dso_local global [0 x ptr], align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gMapBank4JumpPositions = external dso_local constant [6 x %struct.MapBank4JumpPosition], align 4
@gMapBank4FacingAnimations169C = external dso_local global [0 x ptr], align 4
@gMapBank4FacingAnimations16AC = external dso_local global [0 x ptr], align 4
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gGameCounterTextGraphicsBuffer = external dso_local global [0 x i8], align 1
@gMapBank4CounterX = external dso_local local_unnamed_addr constant [50 x i8], align 1
@gMapBank4CounterInitialAnimations = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gMapBank4CounterKinds = external dso_local local_unnamed_addr constant [10 x i8], align 1
@gMapBank4CounterSelectedAnimations = external dso_local local_unnamed_addr constant [6 x ptr], align 4
@gMapBank4CounterCompletedAnimations = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gAudioPlayerContext50A0 = external dso_local global [0 x i8], align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gAudioPlayerContext4E90 = external dso_local global [0 x i8], align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4
@gMapBank4DistancePlayers = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gRenderLayerOffsets = external dso_local local_unnamed_addr global [4 x %struct.RenderLayerOffset], align 4
@gMapBank4SavedLayerX = external dso_local local_unnamed_addr global i32, align 4
@gMapBank4SavedLayerY = external dso_local local_unnamed_addr global i32, align 4
@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMapBank4Half114C = external dso_local local_unnamed_addr global i16, align 2
@gMapBank4PathAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMapBank4PathOverlayAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMapBank4DirectionalPathAnimations = external dso_local local_unnamed_addr constant [24 x i8], align 1
@gMapBank4BlockedPathAnimations = external dso_local local_unnamed_addr constant [24 x i8], align 1
@gMapChoiceField60Animations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gAudioPlayerContext5120 = external dso_local global [0 x i8], align 1
@switch.table.GetMapBank4PathBlockingBounds = private unnamed_addr constant [4 x i16] [i16 -28, i16 -28, i16 -34, i16 26], align 2
@switch.table.GetMapBank4PathBlockingBounds.1 = private unnamed_addr constant [4 x i16] [i16 28, i16 28, i16 -26, i16 34], align 2
@switch.table.GetMapBank4PathBlockingBounds.2 = private unnamed_addr constant [4 x i16] [i16 -36, i16 10, i16 -24, i16 -24], align 2
@switch.table.GetMapBank4PathBlockingBounds.3 = private unnamed_addr constant [4 x i16] [i16 16, i16 26, i16 20, i16 20], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Slots9And11Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Slots12And14Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Slots15And17Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Slots18And20Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Slots28And30Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67938() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143289550 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143307661 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536111 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536165 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536202 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536239 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143289550 to ptr)) #14
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67A10() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285524 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143302285 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285524 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67A44() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528875) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143528931) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 6, i8 noundef zeroext 1, i32 noundef 143528939) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143289315 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143307011 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535441 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535626 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535596 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535761 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535936 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535916 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536091 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143289315 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67BA4() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 8
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef nonnull inttoptr (i32 143471873 to ptr)) #14
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67BD8() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 8
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef nonnull inttoptr (i32 143471894 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67C0C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143472822 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143473077 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536111 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536165 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536202 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536239 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143472822 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67CE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143471572 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67CFC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143471195 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143471634 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67D4C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143471761 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67D64() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143471740 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67D7C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143471231 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143471634 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67DCC() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  switch i8 %1, label %2 [
    i8 8, label %3
    i8 10, label %3
  ]

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %0, %0, %2
  %4 = phi i8 [ 15, %2 ], [ 18, %0 ], [ 18, %0 ]
  %5 = phi i8 [ 17, %2 ], [ 20, %0 ], [ 20, %0 ]
  %6 = phi i8 [ 16, %2 ], [ 19, %0 ], [ 19, %0 ]
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %5, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %6, ptr noundef nonnull inttoptr (i32 143471657 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67E04() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 8
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef nonnull inttoptr (i32 143471195 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67E38() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 10
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  %6 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %5, i8 noundef zeroext 10) #14
  %7 = shl i32 %6, 2
  %8 = and i32 %7, 1020
  %9 = add i32 %8, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations165C to i32), i32 -4)
  %10 = inttoptr i32 %9 to ptr
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef %11) #14
  %12 = add nsw i8 %5, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143472136 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #14
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67EBC() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 10
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  %6 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %5, i8 noundef zeroext 10) #14
  %7 = shl i32 %6, 2
  %8 = and i32 %7, 1020
  %9 = add i32 %8, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations166C to i32), i32 -4)
  %10 = inttoptr i32 %9 to ptr
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef %11) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67F00() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472323 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472323 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67F24() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472413 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472413 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67F48() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 8
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  %6 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %5, i8 noundef zeroext 10) #14
  %7 = shl i32 %6, 2
  %8 = and i32 %7, 1020
  %9 = add i32 %8, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations167C to i32), i32 -4)
  %10 = inttoptr i32 %9 to ptr
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef %11) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67F8C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 10
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  %6 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %5, i8 noundef zeroext 10) #14
  %7 = shl i32 %6, 2
  %8 = and i32 %7, 1020
  %9 = add i32 %8, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations165C to i32), i32 -4)
  %10 = inttoptr i32 %9 to ptr
  %11 = load ptr, ptr %10, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef %11) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset67FD0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 16, i8 noundef zeroext 10) #14
  %2 = shl i32 %1, 2
  %3 = and i32 %2, 1020
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations165C to i32), i32 -4)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef %6) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143471634 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68034() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143471782 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6804C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 8
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef nonnull inttoptr (i32 143471915 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68080() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143471981 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143472004 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset680D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143472213 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset680E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143472054 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68100() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143472580 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143472580 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68124() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  switch i8 %1, label %2 [
    i8 8, label %3
    i8 10, label %3
  ]

2:                                                ; preds = %0
  br label %3

3:                                                ; preds = %0, %0, %2
  %4 = phi i8 [ 15, %2 ], [ 18, %0 ], [ 18, %0 ]
  %5 = phi i8 [ 17, %2 ], [ 20, %0 ], [ 20, %0 ]
  %6 = phi i8 [ 16, %2 ], [ 19, %0 ], [ 19, %0 ]
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %5, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %6, ptr noundef nonnull inttoptr (i32 143471957 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6815C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 130), align 1
  %2 = icmp eq i8 %1, 8
  %3 = select i1 %2, i8 18, i8 15
  %4 = select i1 %2, i8 20, i8 17
  %5 = select i1 %2, i8 19, i8 16
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %5, ptr noundef nonnull inttoptr (i32 143472151 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68194() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143448746 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143448758 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset681D8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472124 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143472136 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68228() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471861 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68240() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143448891 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68258() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528875) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143448912 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143448939 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471219 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset682B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143443830 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471782 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset682E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471728 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset682F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143448962 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143448962 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6831C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143448766 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143448778 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143448786 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68384() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471219 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6839C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505610 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505622 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset683EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143504860 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68404() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505633 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6841C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528843) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505725 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505754 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6846C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 29, ptr noundef nonnull inttoptr (i32 143571586 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143571594 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 28, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 29) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset684BC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505787 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505799 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6850C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505822 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68524() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505787 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505799 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472163 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68584() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143509153 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471195 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143509153 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset685B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505883 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset685D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472213 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset685E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472234 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68600() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143436638 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471219 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68628() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449031 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143449052 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143449083 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset686A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449135 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143449147 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143449164 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68718() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449181 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143449193 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68768() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #14
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 29, i8 noundef zeroext 10) #14
  %2 = shl i32 %1, 2
  %3 = and i32 %2, 1020
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations168C to i32), i32 -4)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 29, ptr noundef %6) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68794() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528875) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143528931) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 6, i8 noundef zeroext 1, i32 noundef 143528939) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449225 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472642 to ptr)) #14
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 19, i32 noundef 128, i32 noundef 0, i32 noundef 72) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535441 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535626 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535596 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143449353 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535761 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535936 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143535916 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536091 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 24, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449225 to ptr)) #14
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68924() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471969 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6893C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 19, i32 noundef 128, i32 noundef 0, i32 noundef 72) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472533 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68960() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472559 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68978() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471572 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143471611 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset689BC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528875) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449213 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143448939 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472450 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472450 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68A28() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472450 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143472450 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68A4C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449114 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68A64() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354527 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 13, i8 noundef zeroext 2) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68A84() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 29, ptr noundef nonnull inttoptr (i32 143571555 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143571568 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 28, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 29) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68AD4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143471243 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68B08() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143471231 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareMapBank4Jump() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr @gRasterScriptControlBytes, align 1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 422), align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 425), align 1
  %7 = tail call ptr asm "", "=l,0"(ptr nonnull @gRasterScriptControlBytes) #15, !srcloc !4
  %8 = icmp eq i8 %5, %4
  br i1 %8, label %37, label %9

9:                                                ; preds = %0
  %10 = zext i8 %5 to i32
  br label %11

11:                                               ; preds = %11, %9
  %12 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 6) #14
  %13 = and i16 %12, 255
  %14 = zext nneg i16 %13 to i32
  %15 = icmp eq i32 %14, %3
  br i1 %15, label %11, label %16

16:                                               ; preds = %11
  %17 = zext i8 %4 to i32
  %18 = sub nsw i32 %17, %10
  %19 = icmp ult i16 %13, 3
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 423), align 1
  %22 = trunc i16 %12 to i8
  %23 = or i8 %21, %22
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 423), align 1
  br label %24

24:                                               ; preds = %20, %16
  %25 = icmp slt i32 %18, 3
  br i1 %25, label %26, label %37

26:                                               ; preds = %24
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 423), align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 3
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = and i32 %28, 1
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 1, i32 2
  %35 = trunc i32 %34 to i8
  %36 = or i8 %27, %35
  store i8 %36, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 423), align 1
  br label %37

37:                                               ; preds = %24, %31, %26, %0
  %38 = phi ptr [ %7, %0 ], [ @gRasterScriptControlBytes, %26 ], [ @gRasterScriptControlBytes, %31 ], [ @gRasterScriptControlBytes, %24 ]
  %39 = phi i32 [ 0, %0 ], [ %14, %26 ], [ %34, %31 ], [ %14, %24 ]
  %40 = freeze i32 %39
  %41 = shl nuw nsw i32 %3, 3
  %42 = shl nuw nsw i32 %40, 3
  %43 = add i32 %42, ptrtoint (ptr @gMapBank4JumpPositions to i32)
  %44 = inttoptr i32 %43 to ptr
  %45 = load i32, ptr %44, align 4
  %46 = add i32 %41, ptrtoint (ptr @gMapBank4JumpPositions to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %42, add (i32 ptrtoint (ptr @gMapBank4JumpPositions to i32), i32 4)
  %50 = inttoptr i32 %49 to ptr
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %41, add (i32 ptrtoint (ptr @gMapBank4JumpPositions to i32), i32 4)
  %53 = inttoptr i32 %52 to ptr
  %54 = load i32, ptr %53, align 4
  %55 = sub i32 %51, %54
  %56 = icmp eq i8 %2, 0
  %57 = add i32 %55, -1835008
  %58 = icmp eq i32 %40, 0
  %59 = add i32 %55, 1572864
  %60 = select i1 %58, i32 %59, i32 %55
  %61 = select i1 %56, i32 %57, i32 %60
  %62 = sub i32 %45, %48
  %63 = tail call i8 @llvm.umin.i8(i8 %6, i8 11)
  %64 = lshr i8 %63, 1
  %65 = shl nuw nsw i8 %64, 3
  %66 = sub nuw nsw i8 96, %65
  %67 = zext nneg i8 %66 to i32
  %68 = sdiv i32 %62, %67
  %69 = getelementptr %struct.RenderSlot, ptr %1, i32 30, i32 6
  store i32 %68, ptr %69, align 4
  %70 = sdiv i32 %61, %67
  %71 = getelementptr %struct.RenderSlot, ptr %1, i32 30, i32 6, i32 2
  store i32 %70, ptr %71, align 4
  %72 = getelementptr %struct.RenderSlot, ptr %1, i32 30, i32 6, i32 1
  store i32 -327680, ptr %72, align 4
  %73 = uitofp i8 %66 to double
  %74 = fdiv double 3.200000e+01, %73
  %75 = fmul double %74, 2.048000e+04
  %76 = fptosi double %75 to i32
  %77 = getelementptr %struct.RenderSlot, ptr %1, i32 30, i32 7, i32 1
  store i32 %76, ptr %77, align 4
  %78 = getelementptr %struct.RenderSlot, ptr %1, i32 31, i32 6
  store i32 %68, ptr %78, align 4
  %79 = sdiv i32 %55, %67
  %80 = getelementptr %struct.RenderSlot, ptr %1, i32 31, i32 6, i32 2
  store i32 %79, ptr %80, align 4
  %81 = trunc i32 %40 to i8
  %82 = getelementptr i8, ptr %38, i32 421
  store i8 %81, ptr %82, align 1
  %83 = getelementptr i8, ptr %38, i32 426
  store i8 %64, ptr %83, align 1
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank4Jump() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 143332171
  br i1 %5, label %20, label %6

6:                                                ; preds = %0
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 13, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 143360677
  br i1 %9, label %20, label %10

10:                                               ; preds = %6
  %11 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1, i8 noundef zeroext 1) #14
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %10
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %15 = icmp eq i8 %14, 1
  %16 = icmp ugt i8 %14, 3
  %17 = or i1 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143332171 to ptr)) #14
  br label %20

19:                                               ; preds = %13
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143360677 to ptr)) #14
  br label %20

20:                                               ; preds = %18, %19, %10, %6, %0
  %21 = shl i8 %1, 3
  %22 = sub i8 96, %21
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %24 = add i8 %23, 1
  store i8 %24, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %25 = icmp ugt i8 %24, %22
  %26 = zext i1 %25 to i8
  store i8 %26, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank4JumpWithLimit(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 10, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 143332171
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr %struct.RenderSlot, ptr %3, i32 13, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 143360677
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1, i8 noundef zeroext 1) #14
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %16 = icmp eq i8 %15, 1
  %17 = icmp ugt i8 %15, 3
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143332171 to ptr)) #14
  br label %21

20:                                               ; preds = %14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143360677 to ptr)) #14
  br label %21

21:                                               ; preds = %19, %20, %11, %7, %1
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %23 = add i8 %22, 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %24 = icmp ugt i8 %23, %2
  %25 = zext i1 %24 to i8
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackTriggerMapBank4JumpAnimation() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 10, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 143332171
  br i1 %4, label %19, label %5

5:                                                ; preds = %0
  %6 = getelementptr %struct.RenderSlot, ptr %1, i32 13, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 143360677
  br i1 %8, label %19, label %9

9:                                                ; preds = %5
  %10 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1, i8 noundef zeroext 1) #14
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %14 = icmp eq i8 %13, 1
  %15 = icmp ugt i8 %13, 3
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143332171 to ptr)) #14
  br label %19

18:                                               ; preds = %12
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143360677 to ptr)) #14
  br label %19

19:                                               ; preds = %17, %18, %9, %5, %0
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank4JumpWindow() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %2 = shl i8 %1, 3
  %3 = sub i8 96, %2
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %34

6:                                                ; preds = %0
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 10, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 143332171
  br i1 %10, label %34, label %11

11:                                               ; preds = %6
  %12 = getelementptr %struct.RenderSlot, ptr %7, i32 13, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 143360677
  br i1 %14, label %34, label %15

15:                                               ; preds = %11
  %16 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1, i8 noundef zeroext 1) #14
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %34, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  %20 = icmp eq i8 %19, 1
  %21 = icmp ugt i8 %19, 3
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143332171 to ptr)) #14
  br label %25

24:                                               ; preds = %18
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143360677 to ptr)) #14
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %27 = zext i8 %26 to i32
  %28 = zext i8 %3 to i32
  %29 = add nsw i32 %28, -16
  %30 = icmp sle i32 %29, %27
  %31 = icmp ult i8 %26, %3
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 420), align 1
  br label %34

34:                                               ; preds = %6, %11, %15, %33, %25, %0
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %36 = add i8 %35, 1
  store i8 %36, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %37 = icmp ugt i8 %36, %3
  %38 = zext i1 %37 to i8
  store i8 %38, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4AdjacentSlotsField60(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #14
  %3 = add i8 %0, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68F60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505939 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68F7C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 19, i8 noundef zeroext 10) #14
  %2 = shl i32 %1, 2
  %3 = and i32 %2, 1020
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations169C to i32), i32 -4)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef %6) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143506835 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset68FE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505960 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69000() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 19, i8 noundef zeroext 10) #14
  %2 = shl i32 %1, 2
  %3 = and i32 %2, 1020
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations169C to i32), i32 -4)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef %6) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69030() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506002 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6904C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505725 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505754 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69090() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506823 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143506835 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset690E4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528843) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505633 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505654 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69138() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506034 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69154() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506059 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69170() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505883 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6918C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505610 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505622 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset691E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506080 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset691FC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506136 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69218() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506148 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143506160 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6926C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143316545 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143350157 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 10, i8 noundef zeroext 2) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 13, i8 noundef zeroext 2) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6929C() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset692A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143504794 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143506835 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset692F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506195 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143506216 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69348() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6934C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143504794 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143504817 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset693A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506239 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset693C8() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset693CC() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset693D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506251 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset693EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449474 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143435257 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143435257 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6942C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143452303 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143452303 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143452303 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69468() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  switch i8 %1, label %3 [
    i8 1, label %4
    i8 2, label %2
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi i8 [ 21, %2 ], [ 24, %3 ], [ 15, %0 ]
  %6 = phi i8 [ 23, %2 ], [ 26, %3 ], [ 17, %0 ]
  %7 = phi i8 [ 22, %2 ], [ 25, %3 ], [ 16, %0 ]
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %5, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %6, i8 noundef zeroext 0) #14
  %8 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %7, i8 noundef zeroext 10) #14
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %14 [
    i8 1, label %12
    i8 2, label %12
    i8 3, label %10
    i8 4, label %11
  ]

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %4, %4, %10, %11
  %13 = phi ptr [ inttoptr (i32 143449502 to ptr), %11 ], [ inttoptr (i32 143449510 to ptr), %10 ], [ inttoptr (i32 143449494 to ptr), %4 ], [ inttoptr (i32 143449494 to ptr), %4 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %7, ptr noundef nonnull %13) #14
  br label %14

14:                                               ; preds = %12, %4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset694F8() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  switch i8 %1, label %3 [
    i8 1, label %4
    i8 2, label %2
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi i8 [ 21, %2 ], [ 24, %3 ], [ 15, %0 ]
  %6 = phi i8 [ 23, %2 ], [ 26, %3 ], [ 17, %0 ]
  %7 = phi i8 [ 22, %2 ], [ 25, %3 ], [ 16, %0 ]
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %5, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %6, i8 noundef zeroext 0) #14
  %8 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %7, i8 noundef zeroext 10) #14
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %14 [
    i8 1, label %12
    i8 2, label %12
    i8 3, label %10
    i8 4, label %11
  ]

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %4, %4, %10, %11
  %13 = phi ptr [ inttoptr (i32 143449538 to ptr), %11 ], [ inttoptr (i32 143449546 to ptr), %10 ], [ inttoptr (i32 143449530 to ptr), %4 ], [ inttoptr (i32 143449530 to ptr), %4 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %7, ptr noundef nonnull %13) #14
  br label %14

14:                                               ; preds = %12, %4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69588() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  switch i8 %1, label %3 [
    i8 1, label %4
    i8 2, label %2
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi i8 [ 21, %2 ], [ 24, %3 ], [ 15, %0 ]
  %6 = phi i8 [ 23, %2 ], [ 26, %3 ], [ 17, %0 ]
  %7 = phi i8 [ 22, %2 ], [ 25, %3 ], [ 16, %0 ]
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %5, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %6, i8 noundef zeroext 0) #14
  %8 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %7, i8 noundef zeroext 10) #14
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %14 [
    i8 1, label %12
    i8 2, label %12
    i8 3, label %10
    i8 4, label %11
  ]

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %4, %4, %10, %11
  %13 = phi ptr [ inttoptr (i32 143449574 to ptr), %11 ], [ inttoptr (i32 143449582 to ptr), %10 ], [ inttoptr (i32 143449566 to ptr), %4 ], [ inttoptr (i32 143449566 to ptr), %4 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %7, ptr noundef nonnull %13) #14
  br label %14

14:                                               ; preds = %12, %4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69618() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143436956 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6966C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143440271 to ptr)) #14
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  switch i8 %1, label %6 [
    i8 1, label %4
    i8 2, label %2
    i8 4, label %3
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi ptr [ inttoptr (i32 143449676 to ptr), %3 ], [ inttoptr (i32 143449689 to ptr), %2 ], [ inttoptr (i32 143449702 to ptr), %0 ]
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #14
  br label %6

6:                                                ; preds = %4, %0
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69700() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  switch i8 %1, label %7 [
    i8 1, label %4
    i8 2, label %2
    i8 3, label %3
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi ptr [ inttoptr (i32 143449715 to ptr), %3 ], [ inttoptr (i32 143449715 to ptr), %2 ], [ inttoptr (i32 143449723 to ptr), %0 ]
  %6 = phi ptr [ inttoptr (i32 143449715 to ptr), %3 ], [ inttoptr (i32 143449723 to ptr), %2 ], [ inttoptr (i32 143449723 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull %5) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull %6) #14
  br label %7

7:                                                ; preds = %4, %0
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 24, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 25) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset697DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143436968 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436989 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143437014 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69854() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143450493 to ptr)) #14
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  switch i8 %1, label %7 [
    i8 1, label %4
    i8 2, label %2
    i8 3, label %3
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi ptr [ inttoptr (i32 143449660 to ptr), %3 ], [ inttoptr (i32 143449660 to ptr), %2 ], [ inttoptr (i32 143449668 to ptr), %0 ]
  %6 = phi ptr [ inttoptr (i32 143449660 to ptr), %3 ], [ inttoptr (i32 143449668 to ptr), %2 ], [ inttoptr (i32 143449668 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull %5) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull %6) #14
  br label %7

7:                                                ; preds = %4, %0
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset698F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143442916 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6990C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143449731 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69928() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  switch i8 %1, label %3 [
    i8 1, label %4
    i8 2, label %2
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi i8 [ 21, %2 ], [ 24, %3 ], [ 15, %0 ]
  %6 = phi i8 [ 23, %2 ], [ 26, %3 ], [ 17, %0 ]
  %7 = phi i8 [ 22, %2 ], [ 25, %3 ], [ 16, %0 ]
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %5, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %6, i8 noundef zeroext 0) #14
  %8 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %7, i8 noundef zeroext 10) #14
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %14 [
    i8 1, label %12
    i8 2, label %12
    i8 3, label %10
    i8 4, label %11
  ]

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %4, %4, %10, %11
  %13 = phi ptr [ inttoptr (i32 143449502 to ptr), %11 ], [ inttoptr (i32 143449510 to ptr), %10 ], [ inttoptr (i32 143449494 to ptr), %4 ], [ inttoptr (i32 143449494 to ptr), %4 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %7, ptr noundef nonnull %13) #14
  br label %14

14:                                               ; preds = %12, %4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset699B8() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  switch i8 %1, label %3 [
    i8 1, label %4
    i8 2, label %2
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi i8 [ 21, %2 ], [ 24, %3 ], [ 15, %0 ]
  %6 = phi i8 [ 23, %2 ], [ 26, %3 ], [ 17, %0 ]
  %7 = phi i8 [ 22, %2 ], [ 25, %3 ], [ 16, %0 ]
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %5, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %6, i8 noundef zeroext 0) #14
  %8 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %7, i8 noundef zeroext 10) #14
  %9 = trunc i32 %8 to i8
  switch i8 %9, label %14 [
    i8 1, label %12
    i8 2, label %12
    i8 3, label %10
    i8 4, label %11
  ]

10:                                               ; preds = %4
  br label %12

11:                                               ; preds = %4
  br label %12

12:                                               ; preds = %4, %4, %10, %11
  %13 = phi ptr [ inttoptr (i32 143449538 to ptr), %11 ], [ inttoptr (i32 143449546 to ptr), %10 ], [ inttoptr (i32 143449530 to ptr), %4 ], [ inttoptr (i32 143449530 to ptr), %4 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %7, ptr noundef nonnull %13) #14
  br label %14

14:                                               ; preds = %12, %4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69A48() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506136 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69A6C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143504771 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69A88() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506329 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143506216 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69ADC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506742 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69AF8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506763 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69B14() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505787 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69B30() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506034 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 30, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143571925 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 30, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69B74() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 24, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 26, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143450430 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143450430 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 25, ptr noundef nonnull inttoptr (i32 143450430 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69BB0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506034 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69BD4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143436638 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436706 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436729 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 88, i32 noundef 0, i32 noundef 136, ptr noundef nonnull inttoptr (i32 143435389 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 136, i32 noundef 0, i32 noundef 104, ptr noundef nonnull inttoptr (i32 143435389 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143435413 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143435405 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 24, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 25) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 23, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 26, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 25) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69D04() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143504860 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69D20() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143450430 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69D3C() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 417), align 1
  switch i8 %1, label %3 [
    i8 1, label %4
    i8 2, label %2
  ]

2:                                                ; preds = %0
  br label %4

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %2, %3
  %5 = phi i8 [ 21, %2 ], [ 24, %3 ], [ 15, %0 ]
  %6 = phi i8 [ 23, %2 ], [ 26, %3 ], [ 17, %0 ]
  %7 = phi i8 [ 22, %2 ], [ 25, %3 ], [ 16, %0 ]
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %5, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %6, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %7, ptr noundef nonnull inttoptr (i32 143449775 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69D88() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143435201 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69DA4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143436638 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436706 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436729 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69E10() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 16, i8 noundef zeroext 10) #14
  %2 = shl i32 %1, 2
  %3 = and i32 %2, 1020
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations16AC to i32), i32 -4)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef %6) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset69E38() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 19, i8 noundef zeroext 10) #14
  %2 = shl i32 %1, 2
  %3 = and i32 %2, 1020
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations16AC to i32), i32 -4)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef %6) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCompareMapBank4SlotZ() local_unnamed_addr #4 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 10, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %1, i32 16, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %3, %5
  %7 = zext i1 %6 to i16
  store i16 %7, ptr @gScriptResult, align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset69E98() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285357 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143302108 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285357 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset69EC4() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 16, i8 noundef zeroext 10) #14
  %2 = shl i32 %1, 2
  %3 = and i32 %2, 1020
  %4 = add i32 %3, add (i32 ptrtoint (ptr @gMapBank4FacingAnimations16AC to i32), i32 -4)
  %5 = inttoptr i32 %4 to ptr
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef %6) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset69EEC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143481366 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset69F28() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143481164 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset69F44() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143481042 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143481063 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset69F80() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143484343 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset69F94() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143481676 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143481833 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143481676 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset69FC8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143480892 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143480892 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareMapBank4CounterTilemap() local_unnamed_addr #0 {
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull inttoptr (i32 135193740 to ptr), ptr noundef nonnull @gGameCounterTextGraphicsBuffer) #14
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i32 [ %7, %1 ], [ 0, %0 ]
  %3 = getelementptr i16, ptr getelementptr ([0 x i8], ptr @gGameCounterTextGraphicsBuffer, i32 0, i32 68), i32 %2
  store i16 163, ptr %3, align 2
  %4 = getelementptr i16, ptr getelementptr ([0 x i8], ptr @gGameCounterTextGraphicsBuffer, i32 0, i32 132), i32 %2
  store i16 163, ptr %4, align 2
  %5 = getelementptr i16, ptr getelementptr ([0 x i8], ptr @gGameCounterTextGraphicsBuffer, i32 0, i32 196), i32 %2
  store i16 163, ptr %5, align 2
  %6 = getelementptr i16, ptr getelementptr ([0 x i8], ptr @gGameCounterTextGraphicsBuffer, i32 0, i32 260), i32 %2
  store i16 163, ptr %6, align 2
  %7 = add nuw nsw i32 %2, 1
  %8 = icmp eq i32 %7, 26
  br i1 %8, label %9, label %1

9:                                                ; preds = %1
  ret i32 0
}

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDrawMapBank4Counter() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %25, label %3

3:                                                ; preds = %0, %3
  %4 = phi i32 [ %19, %3 ], [ 0, %0 ]
  %5 = trunc i32 %4 to i8
  %6 = add i8 %5, 30
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 10
  %10 = getelementptr i8, ptr @gMapBank4CounterX, i32 %9
  %11 = getelementptr i8, ptr %10, i32 %4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr [10 x i8], ptr @gMapBank4CounterKinds, i32 0, i32 %4
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr ptr, ptr @gMapBank4CounterInitialAnimations, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %13, i32 noundef 0, i32 noundef 176, ptr noundef %18) #14
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %6, i8 noundef zeroext 0) #14
  %19 = add nuw nsw i32 %4, 1
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %21 = zext i8 %20 to i32
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %3, label %23

23:                                               ; preds = %3
  %24 = trunc i32 %19 to i8
  br label %25

25:                                               ; preds = %23, %0
  %26 = phi i8 [ 0, %0 ], [ %24, %23 ]
  %27 = zext i8 %26 to i32
  %28 = add i8 %26, 30
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %30 = zext i8 %29 to i32
  %31 = mul nuw nsw i32 %30, 10
  %32 = getelementptr i8, ptr @gMapBank4CounterX, i32 %31
  %33 = getelementptr i8, ptr %32, i32 %27
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr [6 x ptr], ptr @gMapBank4CounterSelectedAnimations, i32 0, i32 %37
  %39 = load ptr, ptr %38, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %28, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %35, i32 noundef 0, i32 noundef 224, ptr noundef %39) #14
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %28, i8 noundef zeroext 0) #14
  %40 = add i8 %26, 1
  %41 = icmp ult i8 %40, 10
  br i1 %41, label %42, label %48

42:                                               ; preds = %25, %42
  %43 = phi i8 [ %46, %42 ], [ %40, %25 ]
  %44 = phi i8 [ %43, %42 ], [ %26, %25 ]
  %45 = add nsw i8 %44, 31
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %45, i8 noundef zeroext 0) #14
  %46 = add nuw nsw i8 %43, 1
  %47 = icmp ult i8 %43, 9
  br i1 %47, label %42, label %48

48:                                               ; preds = %42, %25
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 132, ptr noundef nonnull inttoptr (i32 143574533 to ptr)) #14
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdvanceMapBank4Counter() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %2 = zext i8 %1 to i32
  %3 = getelementptr i8, ptr @gMapBank4CounterKinds, i32 %2
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %5 = zext i8 %4 to i32
  %6 = tail call i32 asm "", "={r3},{r3}"(i32 %5) #15, !srcloc !5
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %6, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = add i8 %1, 1
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %12 = icmp eq i8 %11, 10
  br i1 %12, label %13, label %40

13:                                               ; preds = %10
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  br label %39

14:                                               ; preds = %0
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143574793) #14
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %33, label %17

17:                                               ; preds = %14, %17
  %18 = phi i32 [ %26, %17 ], [ 0, %14 ]
  %19 = trunc i32 %18 to i8
  %20 = add i8 %19, 30
  %21 = getelementptr [10 x i8], ptr @gMapBank4CounterKinds, i32 0, i32 %18
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr [5 x ptr], ptr @gMapBank4CounterCompletedAnimations, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %20, ptr noundef %25) #14
  %26 = add nuw nsw i32 %18, 1
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  %28 = zext i8 %27 to i32
  %29 = icmp ult i32 %26, %28
  br i1 %29, label %17, label %30

30:                                               ; preds = %17
  %31 = trunc i32 %26 to i8
  %32 = add i8 %31, 30
  br label %33

33:                                               ; preds = %30, %14
  %34 = phi i8 [ 30, %14 ], [ %32, %30 ]
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 105), align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr [5 x ptr], ptr @gMapBank4CounterCompletedAnimations, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %34, ptr noundef %38) #14
  br label %39

39:                                               ; preds = %33, %13
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 419), align 1
  br label %40

40:                                               ; preds = %39, %10
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A1F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 132, ptr noundef nonnull inttoptr (i32 143574547 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A20C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext50A0, i32 noundef 255, i32 noundef 0) #14
  ret i32 0
}

declare dso_local arm_apcscc void @SetAudioTrackVolume(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A224() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext50A0, i32 noundef 255, i32 noundef 64) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A23C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext50A0, i32 noundef 255, i32 noundef 256) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackSetMapBank4SongVolumeByZ(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext 44) #14
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 8388607
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext4E90, i32 noundef 255, i32 noundef 256) #14
  br label %11

11:                                               ; preds = %10, %3
  store i32 1, ptr %2, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @StartSongOrChange(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackSetMapBank4SongHalfVolume(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext 44) #14
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext4E90, i32 noundef 255, i32 noundef 128) #14
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A2C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523063 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A2D4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523405 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A2E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523478 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A2FC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524118 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A310() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523106 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A324() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523384 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A338() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524157 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A34C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523063 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143537392 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A388() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523017 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A39C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143355835 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A3B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143317558 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143317588 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143317558, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A404() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %8 [
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
  %7 = phi ptr [ inttoptr (i32 143311101 to ptr), %5 ], [ inttoptr (i32 143311156 to ptr), %4 ], [ inttoptr (i32 143311046 to ptr), %3 ], [ inttoptr (i32 143310991 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull %7) #14
  br label %8

8:                                                ; preds = %6, %0
  %9 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 13, i8 noundef zeroext 10) #14
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %16 [
    i8 2, label %14
    i8 1, label %11
    i8 4, label %12
    i8 3, label %13
  ]

11:                                               ; preds = %8
  br label %14

12:                                               ; preds = %8
  br label %14

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %8, %11, %12, %13
  %15 = phi ptr [ inttoptr (i32 143343756 to ptr), %13 ], [ inttoptr (i32 143343811 to ptr), %12 ], [ inttoptr (i32 143343701 to ptr), %11 ], [ inttoptr (i32 143343618 to ptr), %8 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %15) #14
  br label %16

16:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A4B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420257 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A4C4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420383 to ptr)) #14
  store i8 19, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143420383, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A4EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 19, i8 noundef zeroext 10) #14
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %8 [
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
  %7 = phi ptr [ inttoptr (i32 143419959 to ptr), %5 ], [ inttoptr (i32 143419971 to ptr), %4 ], [ inttoptr (i32 143419947 to ptr), %3 ], [ inttoptr (i32 143419935 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull %7) #14
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A54C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420269 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A560() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420202 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A574() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420052 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A588() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420064 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A59C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420348 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A5B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143349020 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A5C4() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 13, i8 noundef zeroext 19) #14
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %8 [
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
  %7 = phi ptr [ inttoptr (i32 143343756 to ptr), %5 ], [ inttoptr (i32 143343811 to ptr), %4 ], [ inttoptr (i32 143343701 to ptr), %3 ], [ inttoptr (i32 143343618 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %7) #14
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A61C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420040 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A630() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420360 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143420372 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A66C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420269 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143420281 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A6A8() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 19) #14
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %8 [
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
  %7 = phi ptr [ inttoptr (i32 143311101 to ptr), %5 ], [ inttoptr (i32 143311156 to ptr), %4 ], [ inttoptr (i32 143311046 to ptr), %3 ], [ inttoptr (i32 143310991 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull %7) #14
  br label %8

8:                                                ; preds = %6, %0
  %9 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 13, i8 noundef zeroext 19) #14
  %10 = trunc i32 %9 to i8
  switch i8 %10, label %16 [
    i8 2, label %14
    i8 1, label %11
    i8 4, label %12
    i8 3, label %13
  ]

11:                                               ; preds = %8
  br label %14

12:                                               ; preds = %8
  br label %14

13:                                               ; preds = %8
  br label %14

14:                                               ; preds = %8, %11, %12, %13
  %15 = phi ptr [ inttoptr (i32 143343756 to ptr), %13 ], [ inttoptr (i32 143343811 to ptr), %12 ], [ inttoptr (i32 143343701 to ptr), %11 ], [ inttoptr (i32 143343618 to ptr), %8 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %15) #14
  br label %16

16:                                               ; preds = %14, %8
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A754() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143316545 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143350169 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A774() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %8 [
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
  %7 = phi ptr [ inttoptr (i32 143311101 to ptr), %5 ], [ inttoptr (i32 143311156 to ptr), %4 ], [ inttoptr (i32 143311046 to ptr), %3 ], [ inttoptr (i32 143310991 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull %7) #14
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A7CC() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 13, i8 noundef zeroext 10) #14
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %8 [
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
  %7 = phi ptr [ inttoptr (i32 143343756 to ptr), %5 ], [ inttoptr (i32 143343811 to ptr), %4 ], [ inttoptr (i32 143343701 to ptr), %3 ], [ inttoptr (i32 143343618 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %7) #14
  br label %8

8:                                                ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A824() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354461 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A838() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354527 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143322280 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A858() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143313748 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143355970 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6A878() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143350197 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Neighbors6A88C(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #14
  %3 = add i8 %0, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A8B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143288626 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143306400 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143288626 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A8EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282483 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143298127 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282483 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A924() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143404839 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A940() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403088 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A95C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143404770 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A978() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143402988 to ptr)) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A994() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A998() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403029 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A9B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143404818 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A9D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403228 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6A9EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143403249 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 25) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AA2C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403277 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AA48() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143403249 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 25) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AA88() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143409351 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AAA4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403216 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AAC0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143404794 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AADC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143409339 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AAF8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143316737 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354461 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AB24() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354527 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AB40() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143355835 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AB5C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403442 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403442 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AB84() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143310991 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ABA0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403298 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143403310 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ABE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143399384 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403341 to ptr)) #14
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 19, i8 noundef zeroext 1) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403341 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AC24() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403329 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AC40() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143396287 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AC5C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143399396 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AC78() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143398171 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AC94() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143399442 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403477 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143399442 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ACCC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143403165 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ACE8() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143403177 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AD28() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143396263 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AD44() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143539039 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AD8C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143350197 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350209 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350226 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ADF8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143399567 to ptr)) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AE14() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AE18() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143316737 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AE34() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143310991 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AE50() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143402834 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AE6C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143403000 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AEB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143311156 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AED0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143399408 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143399425 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6AF3C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143311156 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143343756 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStepMapBank4SongPitch() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = zext i8 %1 to i32
  %3 = mul nuw nsw i32 %2, 30
  tail call arm_apcscc void @SetAudioTrackPitch(ptr noundef nonnull @gAudioPlayerContext4E90, i16 noundef zeroext 3, i32 noundef %3) #14
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext 27) #14
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %5 = add i8 %4, 1
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

declare dso_local arm_apcscc void @SetAudioTrackPitch(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStepMapBank4SongVolume() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 3
  %4 = sub nsw i32 256, %3
  %5 = and i32 %4, 65528
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext4E90, i32 noundef 255, i32 noundef %5) #14
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %7 = add i8 %6, 1
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6AFD0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143576640 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6AFE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143576673 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6AFF8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143576704 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B00C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143576730 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143536382 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  store i8 19, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143576730, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B060() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482102 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Slots15And17And18Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B078() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482581 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482637 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143482581, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B0D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482110 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482133 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143482110, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B128() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482180 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B140() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143483281 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B158() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143483281 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143483293 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B198() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482374 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482394 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482411 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B200() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482374 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482386 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482394 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482411 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B28C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143483301 to ptr)) #14
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 137), align 1
  %2 = icmp ugt i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143483313 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B2DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482561 to ptr)) #14
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 137), align 1
  %2 = icmp ugt i8 %1, 4
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482573 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B32C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143483301 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143537392 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Slot22Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 22, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B39C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143523490 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B3B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482428 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482449 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B3F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143523519 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B404() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482651 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482663 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B444() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143523519 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143523502 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 22, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B480() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482428 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482449 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482457 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B4E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143523094 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143523502 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 22, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B524() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 22, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528947) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143482671 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143523600 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482818 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143482885 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143482671, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B5C4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143311156 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143350197 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350209 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350226 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B634() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143311156 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354805 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143354908 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143354967 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B6A4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143523094 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143523502 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 22, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B6E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143576660 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143576660 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B700() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143577079 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B714() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143577092 to ptr)) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143577092, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B73C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143577113 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B750() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143577121 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B764() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143577144 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B778() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143577152 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530428 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143577152, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B7CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143577079 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143577198 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6B808() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143317518 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143317588 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143347519 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Neighbors6B850(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #14
  %3 = add i8 %0, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B878() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523063 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B894() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143523075 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B8DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523405 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B8F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524118 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B914() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524157 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B930() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523478 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B94C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524184 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B968() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143524266 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B984() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143310991 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143343618 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143523075 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6B9E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143311046 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank4DistanceSongVolume(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = icmp sgt i32 %2, %3
  br i1 %7, label %16, label %8

8:                                                ; preds = %6
  %9 = and i32 %4, 65535
  %10 = and i32 %5, 65535
  %11 = sub nsw i32 %9, %10
  %12 = mul i32 %11, %2
  %13 = sdiv i32 %12, %3
  %14 = sub i32 %4, %13
  %15 = and i32 %14, 65535
  br label %16

16:                                               ; preds = %6, %8
  %17 = phi i32 [ %15, %8 ], [ 0, %6 ]
  %18 = trunc i32 %1 to i16
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext %18) #14
  %19 = and i32 %0, 255
  %20 = getelementptr [0 x ptr], ptr @gMapBank4DistancePlayers, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef %21, i32 noundef 255, i32 noundef %17) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @CheckMapBank4ProjectedPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = icmp sgt i32 %6, 3702784
  %13 = icmp slt i32 %11, 8945664
  %14 = select i1 %12, i1 %13, i1 false
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = icmp slt i32 %6, -2654208
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext 7) #14
  br label %18

18:                                               ; preds = %15, %17, %1
  %19 = phi i32 [ 1, %1 ], [ 0, %17 ], [ 0, %15 ]
  ret i32 %19
}

declare dso_local arm_apcscc void @SetCoreScriptHalf2A80AndSaveFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @ScriptCallbackCompareMapBank4Depth(ptr nocapture noundef readonly %0) local_unnamed_addr #5 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = mul nuw nsw i32 %3, 104
  %6 = ptrtoint ptr %4 to i32
  %7 = add i32 %5, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr @gRenderClassSlots2, align 1
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 104
  %12 = add i32 %11, %6
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %15, %17
  %19 = select i1 %18, i32 6, i32 1
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @MapBank4ReturnZero6BAD4() local_unnamed_addr #3 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local arm_apcscc noundef i32 @AnimationCallbackYieldMapBank4NoOp(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackScaleMapBank4SongByX(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr i8, ptr %1, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %1, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr i8, ptr %1, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr i8, ptr %1, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %1, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr i8, ptr %1, i32 6
  %21 = load i8, ptr %20, align 1
  %22 = load ptr, ptr @gRenderSlots, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %22, i32 %5, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = shl nuw i32 %14, 24
  %26 = shl nuw nsw i32 %17, 16
  %27 = or disjoint i32 %25, %26
  %28 = or disjoint i32 %27, 32768
  %29 = sub i32 %28, %24
  %30 = icmp slt i32 %28, %24
  %31 = sub i32 %24, %28
  %32 = select i1 %30, i32 %31, i32 %29
  %33 = zext i8 %19 to i32
  %34 = shl nuw i32 %33, 24
  %35 = zext i8 %21 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or disjoint i32 %34, %36
  %38 = or disjoint i32 %37, 32768
  %39 = icmp sgt i32 %32, %38
  br i1 %39, label %62, label %40

40:                                               ; preds = %3
  %41 = getelementptr i8, ptr %1, i32 9
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = getelementptr i8, ptr %1, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or disjoint i32 %44, %47
  %49 = getelementptr i8, ptr %1, i32 11
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = getelementptr i8, ptr %1, i32 10
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or disjoint i32 %52, %55
  %57 = sub nsw i32 %48, %56
  %58 = mul i32 %57, %32
  %59 = sdiv i32 %58, %38
  %60 = sub i32 %48, %59
  %61 = and i32 %60, 65535
  br label %62

62:                                               ; preds = %3, %40
  %63 = phi i32 [ %61, %40 ], [ 0, %3 ]
  %64 = zext i8 %7 to i32
  %65 = zext i8 %9 to i16
  %66 = shl nuw i16 %65, 8
  %67 = zext i8 %11 to i16
  %68 = or disjoint i16 %66, %67
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext %68) #14
  %69 = getelementptr [0 x ptr], ptr @gMapBank4DistancePlayers, i32 0, i32 %64
  %70 = load ptr, ptr %69, align 4
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef %70, i32 noundef 255, i32 noundef %63) #14
  store i32 1, ptr %2, align 4
  ret i32 12
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackScaleMapBank4SongByZ(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr i8, ptr %1, i32 3
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %1, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr i8, ptr %1, i32 5
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr i8, ptr %1, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %1, i32 7
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr i8, ptr %1, i32 6
  %21 = load i8, ptr %20, align 1
  %22 = load ptr, ptr @gRenderSlots, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %22, i32 %5, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = shl nuw i32 %14, 24
  %26 = shl nuw nsw i32 %17, 16
  %27 = or disjoint i32 %25, %26
  %28 = or disjoint i32 %27, 32768
  %29 = sub i32 %28, %24
  %30 = icmp slt i32 %28, %24
  %31 = sub i32 %24, %28
  %32 = select i1 %30, i32 %31, i32 %29
  %33 = zext i8 %19 to i32
  %34 = shl nuw i32 %33, 24
  %35 = zext i8 %21 to i32
  %36 = shl nuw nsw i32 %35, 16
  %37 = or disjoint i32 %34, %36
  %38 = or disjoint i32 %37, 32768
  %39 = icmp sgt i32 %32, %38
  br i1 %39, label %62, label %40

40:                                               ; preds = %3
  %41 = getelementptr i8, ptr %1, i32 9
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw nsw i32 %43, 8
  %45 = getelementptr i8, ptr %1, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = or disjoint i32 %44, %47
  %49 = getelementptr i8, ptr %1, i32 11
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = getelementptr i8, ptr %1, i32 10
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or disjoint i32 %52, %55
  %57 = sub nsw i32 %48, %56
  %58 = mul i32 %57, %32
  %59 = sdiv i32 %58, %38
  %60 = sub i32 %48, %59
  %61 = and i32 %60, 65535
  br label %62

62:                                               ; preds = %3, %40
  %63 = phi i32 [ %61, %40 ], [ 0, %3 ]
  %64 = zext i8 %7 to i32
  %65 = zext i8 %9 to i16
  %66 = shl nuw i16 %65, 8
  %67 = zext i8 %11 to i16
  %68 = or disjoint i16 %66, %67
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext %68) #14
  %69 = getelementptr [0 x ptr], ptr @gMapBank4DistancePlayers, i32 0, i32 %64
  %70 = load ptr, ptr %69, align 4
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef %70, i32 noundef 255, i32 noundef %63) #14
  store i32 1, ptr %2, align 4
  ret i32 12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackWriteMapBank4Halfword(ptr nocapture noundef readonly %0) local_unnamed_addr #7 {
  %2 = alloca %union.anon, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %3 = ptrtoint ptr %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %0, align 1
  store i8 %5, ptr %2, align 4
  %6 = getelementptr i8, ptr %0, i32 2
  %7 = load i8, ptr %4, align 1
  %8 = or disjoint i32 %3, 1
  %9 = inttoptr i32 %8 to ptr
  store i8 %7, ptr %9, align 1
  %10 = getelementptr i8, ptr %0, i32 3
  %11 = load i8, ptr %6, align 1
  %12 = or disjoint i32 %3, 2
  %13 = inttoptr i32 %12 to ptr
  store i8 %11, ptr %13, align 2
  %14 = getelementptr i8, ptr %0, i32 4
  %15 = load i8, ptr %10, align 1
  %16 = or disjoint i32 %3, 3
  %17 = inttoptr i32 %16 to ptr
  store i8 %15, ptr %17, align 1
  %18 = getelementptr i8, ptr %0, i32 5
  %19 = load i8, ptr %14, align 1
  %20 = add nuw i32 %3, 4
  %21 = inttoptr i32 %20 to ptr
  store i8 %19, ptr %21, align 4
  %22 = load i8, ptr %18, align 1
  %23 = add nuw i32 %3, 5
  %24 = inttoptr i32 %23 to ptr
  store i8 %22, ptr %24, align 1
  %25 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %26 = load i16, ptr %25, align 4
  %27 = load ptr, ptr %2, align 4
  store i16 %26, ptr %27, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  ret i32 6
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPickMapBank4SlotZ(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 7, i16 noundef zeroext 20) #14
  %8 = and i16 %7, 255
  %9 = zext nneg i16 %8 to i32
  %10 = shl nuw nsw i32 %9, 19
  %11 = or disjoint i32 %10, 32768
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  store i32 %11, ptr %12, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 2654208
  br i1 %15, label %16, label %29

16:                                               ; preds = %1
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %11, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = add nuw nsw i32 %10, 1605632
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %26, label %29

23:                                               ; preds = %16
  %24 = add nsw i32 %18, 1540096
  %25 = icmp slt i32 %10, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %23, %20
  %27 = phi i32 [ -1540096, %20 ], [ 1605632, %23 ]
  %28 = add nsw i32 %10, %27
  store i32 %28, ptr %12, align 4
  br label %29

29:                                               ; preds = %26, %20, %23, %1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPickMapBank4SlotXZ(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 7, i16 noundef zeroext 20) #14
  %6 = and i16 %5, 255
  %7 = zext nneg i16 %6 to i32
  %8 = shl nuw nsw i32 %7, 19
  %9 = or disjoint i32 %8, 32768
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  store i32 %9, ptr %10, align 4
  %11 = icmp ult i16 %6, 17
  %12 = select i1 %11, i16 7, i16 17
  %13 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 5, i16 noundef zeroext %12) #14
  %14 = and i16 %13, 255
  %15 = zext nneg i16 %14 to i32
  %16 = shl nuw nsw i32 %15, 19
  %17 = or disjoint i32 %16, 32768
  %18 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  store i32 %17, ptr %18, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank4Slot19X() local_unnamed_addr #8 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 19, i32 3
  store i32 32768, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BCF0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143420868 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BD04() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143288081 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143308417 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143288081 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BD30() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505960 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BD44() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505725 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BD58() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505633 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BD6C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143507772 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BD80() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505883 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BD94() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143507813 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143507813 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BDB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143506742 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BDC8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505737 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143505737 to ptr)) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ClearMapBank4Slot10Velocity(ptr nocapture noundef readnone %0) local_unnamed_addr #8 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 6
  store i32 0, ptr %3, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 6, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 6, i32 2
  store i32 0, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPanMapBank4Background(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i8, ptr %0, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = getelementptr i8, ptr %0, i32 4
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl nuw i32 %9, 24
  %17 = shl nuw nsw i32 %6, 16
  %18 = or disjoint i32 %17, %16
  %19 = or disjoint i32 %18, 32768
  %20 = shl nuw i32 %15, 24
  %21 = shl nuw nsw i32 %12, 16
  %22 = or disjoint i32 %21, %20
  %23 = or disjoint i32 %22, 32768
  %24 = load i32, ptr @gRenderLayerOffsets, align 4
  store i32 %24, ptr @gMapBank4SavedLayerX, align 4
  %25 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 0, i32 1), align 4
  store i32 %25, ptr @gMapBank4SavedLayerY, align 4
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 131, ptr noundef nonnull inttoptr (i32 143578195 to ptr)) #14
  %26 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1), align 4
  %27 = sub i32 %19, %26
  %28 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %27, i32 noundef %3) #14
  %29 = load ptr, ptr @gRenderStates, align 4
  %30 = getelementptr %struct.BackgroundRenderState, ptr %29, i32 5, i32 3
  store i32 %28, ptr %30, align 4
  %31 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 1), align 4
  %32 = sub i32 %23, %31
  %33 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %32, i32 noundef %3) #14
  %34 = load ptr, ptr @gRenderStates, align 4
  %35 = getelementptr %struct.BackgroundRenderState, ptr %34, i32 5, i32 1
  store i32 %33, ptr %35, align 4
  ret i32 5
}

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturnMapBank4Background(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 5, i32 noundef 131, ptr noundef nonnull inttoptr (i32 143578195 to ptr)) #14
  %4 = load i32, ptr @gMapBank4SavedLayerX, align 4
  %5 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1), align 4
  %6 = sub i32 %4, %5
  %7 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %6, i32 noundef %3) #14
  %8 = load ptr, ptr @gRenderStates, align 4
  %9 = getelementptr %struct.BackgroundRenderState, ptr %8, i32 5, i32 3
  store i32 %7, ptr %9, align 4
  %10 = load i32, ptr @gMapBank4SavedLayerY, align 4
  %11 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 1, i32 1), align 4
  %12 = sub i32 %10, %11
  %13 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %12, i32 noundef %3) #14
  %14 = load ptr, ptr @gRenderStates, align 4
  %15 = getelementptr %struct.BackgroundRenderState, ptr %14, i32 5, i32 1
  store i32 %13, ptr %15, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Neighbors6BEF8(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #14
  %3 = add i8 %0, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF20() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF2C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF38() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF44() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF50() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF5C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF68() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF74() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BF80() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143310991 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143343618 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BFAC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BFB8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BFC4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143423312 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BFDC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143423435 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6BFF4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143423447 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C00C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  store i16 40, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 44), align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143423918 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C030() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143420856 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 143538581 to ptr)) #14
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C094() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143420880 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C0AC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143420901 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C0C4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143420901 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 143420913 to ptr)) #14
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C118() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577803 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C130() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577816 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C148() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577824 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 143578137 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C190() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #14
  %3 = add i8 %1, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Neighbors6C1A4(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #14
  %3 = add i8 %0, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C1CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143507784 to ptr)) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143507784, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C1FC() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505633 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505654 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C248() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505725 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C25C() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143506823 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143506835 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C2A8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143504771 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C2C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143507932 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C2D8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505193 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C2F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505256 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C304() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143506059 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C318() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505787 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505799 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C354() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143506002 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C368() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143506899 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C37C() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505610 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505622 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C3C8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505843 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C3E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143506784 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C3F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471915 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C410() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143471314 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C428() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143470407 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C440() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143470209 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C458() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #14
  %3 = add i8 %1, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C46C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143355835 to ptr)) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreMapBank4DepthExtent() local_unnamed_addr #4 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = mul nuw nsw i32 %2, 104
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = add i32 %3, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr @gRenderClassSlots1, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = sub i32 4751360, %11
  %13 = add i32 %11, -4751360
  %14 = icmp slt i32 %12, 0
  %15 = select i1 %14, i32 %13, i32 %12
  %16 = getelementptr %struct.RenderSlot, ptr %4, i32 %9, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 4751360, %17
  %19 = add i32 %17, -4751360
  %20 = icmp slt i32 %18, 0
  %21 = select i1 %20, i32 %19, i32 %18
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 %15)
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackMoveMapBank4WithinXBounds(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #9 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 10, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 %6, %8
  %10 = tail call i32 @llvm.abs.i32(i32 %9, i1 false)
  %11 = getelementptr %struct.RenderSlot, ptr %4, i32 10, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = sub i32 %12, %14
  %16 = icmp slt i32 %10, 0
  %17 = sub i32 0, %15
  %18 = select i1 %16, i32 %17, i32 %15
  %19 = icmp slt i32 %18, 1572864
  %20 = icmp slt i32 %10, 2621440
  %21 = and i1 %20, %19
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  br i1 %21, label %32, label %23

23:                                               ; preds = %3
  %24 = load i32, ptr %22, align 4
  %25 = icmp eq i32 %24, 0
  %26 = add i32 %8, -7897089
  %27 = icmp ult i32 %26, -2097153
  %28 = select i1 %25, i1 true, i1 %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = icmp sgt i32 %8, 7897088
  %31 = select i1 %30, i32 -16384, i32 16384
  br label %32

32:                                               ; preds = %3, %29
  %33 = phi i32 [ %31, %29 ], [ 0, %3 ]
  store i32 %33, ptr %22, align 4
  br label %34

34:                                               ; preds = %32, %23
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackStopMapBank4Class2X(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #8 {
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = zext i8 %4 to i32
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = mul nuw nsw i32 %5, 104
  %8 = ptrtoint ptr %6 to i32
  %9 = add i32 %7, %8
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %10, i32 0, i32 6
  store i32 0, ptr %11, align 4
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackChooseMapBank4DepthAnimations() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %2, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = load i8, ptr @gRenderClassSlots3, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr %struct.RenderSlot, ptr %3, i32 %7, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, 1572864
  %11 = icmp sgt i32 %10, %5
  %12 = select i1 %11, ptr inttoptr (i32 143420699 to ptr), ptr inttoptr (i32 143420654 to ptr)
  %13 = select i1 %11, ptr inttoptr (i32 143423622 to ptr), ptr inttoptr (i32 143423614 to ptr)
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %6, ptr noundef nonnull %12) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull %13) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank4Slot29DepthAnimation() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 29, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 18874367
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 29, ptr noundef nonnull inttoptr (i32 143579151 to ptr)) #14
  br label %6

6:                                                ; preds = %5, %0
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackSetMapBank4Class2DepthAnimation(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = zext i8 %4 to i32
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %6, i32 %5, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, 17825791
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  store i16 1, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 44), align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 11, ptr noundef nonnull inttoptr (i32 143579615 to ptr)) #14
  br label %11

11:                                               ; preds = %10, %3
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @AnimationCallbackWrapMapBank4X(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #10 {
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = icmp sgt i32 %5, 20971520
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  store i32 -8388608, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %3
  store i32 0, ptr %2, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C68C() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143529002) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282409 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143298050 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530618 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530667 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282409 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C714() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 18), align 1
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = icmp eq i8 %1, %2
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143421409 to ptr)) #14
  br label %7

5:                                                ; preds = %0
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %6, ptr noundef nonnull inttoptr (i32 143421421 to ptr)) #14
  br label %7

7:                                                ; preds = %5, %4
  %8 = phi ptr [ inttoptr (i32 143423630 to ptr), %5 ], [ inttoptr (i32 143423622 to ptr), %4 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull %8) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C768() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143420654 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143420654 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C794() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143421397 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538929 to ptr)) #14
  %4 = load i8, ptr @gRenderClassSlots3, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #14
  %6 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %6, ptr noundef nonnull inttoptr (i32 143421397 to ptr)) #14
  %7 = load i8, ptr @gRenderClassSlots2, align 1
  %8 = add i8 %7, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538939 to ptr)) #14
  %9 = load i8, ptr @gRenderClassSlots2, align 1
  %10 = add i8 %9, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %10, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %9) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C824() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143421433 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143421451 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C850() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143423622 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538949 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C88C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143421598 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143423630 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538989 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C8DC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143421063 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143421350 to ptr)) #14
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C92C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538714 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143539029 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 21, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 22) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538591 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538591 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6C9D8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143420868 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143421063 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143423886 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CA20() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143421397 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  %3 = add i8 %2, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %3, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538571 to ptr)) #14
  %4 = load i8, ptr @gRenderClassSlots2, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CA70() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143421545 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CA88() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143412305 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CAA0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143421792 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 168, i32 noundef 0, i32 noundef 96, ptr noundef nonnull inttoptr (i32 143423480 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 22, i8 noundef zeroext 0) #14
  %3 = load i8, ptr @gRenderClassSlots3, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530618 to ptr)) #14
  %5 = load i8, ptr @gRenderClassSlots3, align 1
  %6 = add i8 %5, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #14
  %7 = load i8, ptr @gRenderClassSlots2, align 1
  %8 = add i8 %7, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143423557 to ptr)) #14
  %9 = load i8, ptr @gRenderClassSlots2, align 1
  %10 = add i8 %9, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %10, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %9) #14
  %11 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %11, ptr noundef nonnull inttoptr (i32 143421792 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CB5C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143423622 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CB70() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143316749 to ptr)) #14
  tail call arm_apcscc void @SetActorClassAnimationPreset136A0() #14
  ret void
}

declare dso_local arm_apcscc void @SetActorClassAnimationPreset136A0() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CB88() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143284742 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = zext i8 %3 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %4, ptr noundef nonnull inttoptr (i32 143301344 to ptr)) #14
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %5, ptr noundef nonnull inttoptr (i32 143284742 to ptr)) #14
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CBC0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 25, ptr noundef nonnull inttoptr (i32 143580250 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CBD4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143580274 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CBE8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 27, ptr noundef nonnull inttoptr (i32 143580298 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CBFC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 25, ptr noundef nonnull inttoptr (i32 143580242 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CC10() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 26, ptr noundef nonnull inttoptr (i32 143580266 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CC24() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 27, ptr noundef nonnull inttoptr (i32 143580290 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CC38() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext %1, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143507784 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143507784 to ptr)) #14
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CC60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143505725 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CC74() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143504771 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CC88() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143506034 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CC9C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143506742 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CCB0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 4, ptr noundef nonnull inttoptr (i32 143504860 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CCC4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143505960 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CCD8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143506854 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CCEC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143580314 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CD00() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143505787 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CD14() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528804) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143317558 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143317588 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143317558 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143350197 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350209 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350226 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143580396 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull inttoptr (i32 143580503 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CDDC() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143316691 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143316703 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143316720 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143350243 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350255 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143350272 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CEA0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143580226 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CEB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143504883 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CED8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143506920 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CEEC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143505843 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CF00() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 22, i8 noundef zeroext 4, ptr noundef nonnull inttoptr (i32 143580306 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CF14() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528843) #14
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143505633 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505654 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CF60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143505883 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CF74() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 19, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143507772 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CF88() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432460 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432481 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143432499 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6CFD0() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull inttoptr (i32 143317518 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538529 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143349265 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538529 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D048() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D04C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 22, i8 noundef zeroext 4, ptr noundef nonnull inttoptr (i32 143580314 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D060() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432435 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432447 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D080() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432435 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432447 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538420 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Facing8Preset6D0D8() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext 16, i8 noundef zeroext 10) #14
  %2 = and i32 %1, 255
  %3 = icmp ult i32 %2, 5
  %4 = icmp ult i32 %2, 7
  %5 = select i1 %4, ptr inttoptr (i32 143432435 to ptr), ptr inttoptr (i32 143432606 to ptr)
  %6 = select i1 %4, ptr inttoptr (i32 143432447 to ptr), ptr inttoptr (i32 143432618 to ptr)
  %7 = select i1 %3, ptr inttoptr (i32 143432631 to ptr), ptr %5
  %8 = select i1 %3, ptr inttoptr (i32 143432643 to ptr), ptr %6
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull %7) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull %8) #14
  ret void
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D13C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432529 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432550 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D15C() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432435 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432447 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538529 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D1B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432517 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432447 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D1D4() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432656 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432668 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538420 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D22C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432681 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432447 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D24C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432693 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432705 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D26C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432788 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432835 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143432788 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D298() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143432743 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull inttoptr (i32 143432764 to ptr)) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D2B8() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D2BC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143310991 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = zext i8 %3 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %4, ptr noundef nonnull inttoptr (i32 143343618 to ptr)) #14
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = zext i8 %5 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %6, ptr noundef nonnull inttoptr (i32 143580338 to ptr)) #14
  %7 = load i8, ptr @gRenderClassSlots3, align 1
  %8 = zext i8 %7 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %8, ptr noundef nonnull inttoptr (i32 143580314 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull inttoptr (i32 143580445 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6D318() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018D9C() #14
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143318246 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = zext i8 %3 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %4, ptr noundef nonnull inttoptr (i32 143349178 to ptr)) #14
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = zext i8 %5 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %6, ptr noundef nonnull inttoptr (i32 143580322 to ptr)) #14
  %7 = load i8, ptr @gRenderClassSlots3, align 1
  %8 = zext i8 %7 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %8, ptr noundef nonnull inttoptr (i32 143580314 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull inttoptr (i32 143580429 to ptr)) #14
  ret void
}

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018D9C() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank4Half114C() local_unnamed_addr #11 {
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackFollowMapBank4Path(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr %1, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr @gRenderClassSlots0, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr i8, ptr %1, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr i8, ptr %1, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = or disjoint i32 %15, %11
  %17 = add i32 %16, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %18 = inttoptr i32 %17 to ptr
  %19 = getelementptr i8, ptr %1, i32 3
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr i8, ptr %1, i32 4
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = shl nuw nsw i32 %24, 9
  %26 = shl nuw nsw i32 %21, 1
  %27 = or disjoint i32 %25, %26
  %28 = add i32 %27, ptrtoint (ptr @gAnimationClassValues to i32)
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr i8, ptr %1, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr i8, ptr %1, i32 8
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 8
  %37 = or disjoint i32 %36, %32
  %38 = getelementptr i8, ptr %1, i32 9
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = or disjoint i32 %37, %41
  %43 = getelementptr i8, ptr %1, i32 10
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 %45, 24
  %47 = or disjoint i32 %42, %46
  %48 = inttoptr i32 %47 to ptr
  %49 = getelementptr i8, ptr %1, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i16
  %52 = getelementptr i8, ptr %1, i32 6
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i16
  %55 = shl nuw i16 %54, 8
  %56 = or disjoint i16 %55, %51
  %57 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %56) #14
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %3
  %60 = load i8, ptr %49, align 1
  %61 = zext i8 %60 to i16
  %62 = load i8, ptr %52, align 1
  %63 = zext i8 %62 to i16
  %64 = shl nuw i16 %63, 8
  %65 = or disjoint i16 %64, %61
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %65, i32 noundef 1) #14
  store i8 0, ptr %18, align 1
  %66 = getelementptr i8, ptr %18, i32 1
  store i8 0, ptr %66, align 1
  %67 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = lshr i32 %68, 16
  %70 = trunc i32 %69 to i16
  store i16 %70, ptr %29, align 2
  %71 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %72 = load i32, ptr %71, align 4
  %73 = lshr i32 %72, 16
  %74 = trunc i32 %73 to i16
  %75 = getelementptr i16, ptr %29, i32 1
  store i16 %74, ptr %75, align 2
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  br label %76

76:                                               ; preds = %59, %3
  %77 = getelementptr i8, ptr %18, i32 1
  %78 = load i8, ptr %77, align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %76
  %81 = add i8 %78, -1
  store i8 %81, ptr %77, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %348

83:                                               ; preds = %80
  %84 = load i8, ptr %18, align 1
  %85 = add i8 %84, 2
  store i8 %85, ptr %18, align 1
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 1
  %88 = add i32 %87, %47
  %89 = inttoptr i32 %88 to ptr
  %90 = load i16, ptr %89, align 2
  %91 = icmp eq i16 %90, -1
  %92 = select i1 %91, i8 0, i8 %85
  store i8 %92, ptr %18, align 1
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  br label %93

93:                                               ; preds = %83, %76
  %94 = getelementptr %struct.RenderSlot, ptr %4, i32 %8, i32 3
  %95 = load i32, ptr %94, align 4
  %96 = lshr i32 %95, 16
  %97 = getelementptr %struct.RenderSlot, ptr %4, i32 %8, i32 5
  %98 = load i32, ptr %97, align 4
  %99 = lshr i32 %98, 16
  %100 = add nuw nsw i32 %99, 24
  %101 = add nuw nsw i32 %96, 34
  %102 = add nuw nsw i32 %96, 26
  %103 = add nuw nsw i32 %96, 28
  %104 = add nuw nsw i32 %99, 32
  %105 = getelementptr i16, ptr %29, i32 1
  br label %109

106:                                              ; preds = %295, %318, %329, %246, %268, %279, %226, %194, %164, %132
  %107 = phi i16 [ -32768, %132 ], [ -32768, %164 ], [ -32768, %194 ], [ -32768, %226 ], [ -32768, %279 ], [ -32768, %268 ], [ %254, %246 ], [ -32768, %329 ], [ -32768, %318 ], [ %302, %295 ]
  store i16 %107, ptr @gMapBank4Half114C, align 2
  br label %108

108:                                              ; preds = %106, %109
  br label %109

109:                                              ; preds = %108, %93
  %110 = load i8, ptr %18, align 1
  %111 = zext i8 %110 to i32
  %112 = getelementptr i16, ptr %48, i32 %111
  %113 = load i16, ptr %112, align 2
  %114 = lshr i16 %113, 12
  switch i16 %114, label %108 [
    i16 0, label %115
    i16 1, label %145
    i16 2, label %177
    i16 3, label %207
    i16 4, label %239
    i16 5, label %243
    i16 6, label %292
    i16 7, label %342
  ]

115:                                              ; preds = %109
  %116 = load i16, ptr %29, align 2
  %117 = zext i16 %116 to i32
  %118 = icmp ult i32 %103, %117
  %119 = add nuw nsw i32 %117, 28
  %120 = icmp ugt i32 %96, %119
  %121 = select i1 %118, i1 true, i1 %120
  %122 = load i16, ptr %105, align 2
  br i1 %121, label %128, label %123

123:                                              ; preds = %115
  %124 = zext i16 %122 to i32
  %125 = icmp ult i32 %104, %124
  %126 = icmp ugt i32 %100, %124
  %127 = select i1 %125, i1 true, i1 %126
  br i1 %127, label %128, label %348

128:                                              ; preds = %123, %115
  %129 = getelementptr i16, ptr %112, i32 1
  %130 = load i16, ptr %129, align 2
  %131 = icmp ugt i16 %122, %130
  br i1 %131, label %142, label %132

132:                                              ; preds = %128
  store i16 %130, ptr %105, align 2
  %133 = load i8, ptr %18, align 1
  %134 = add i8 %133, 2
  store i8 %134, ptr %18, align 1
  %135 = zext i8 %134 to i32
  %136 = shl nuw nsw i32 %135, 1
  %137 = add i32 %136, %47
  %138 = inttoptr i32 %137 to ptr
  %139 = load i16, ptr %138, align 2
  %140 = icmp eq i16 %139, -1
  %141 = select i1 %140, i8 0, i8 %134
  store i8 %141, ptr %18, align 1
  br label %106

142:                                              ; preds = %128
  %143 = add i16 %122, -1
  store i16 %143, ptr %105, align 2
  %144 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 23
  store i8 1, ptr %144, align 4
  br label %348

145:                                              ; preds = %109
  %146 = load i16, ptr %29, align 2
  %147 = zext i16 %146 to i32
  %148 = icmp ult i32 %103, %147
  %149 = add nuw nsw i32 %147, 28
  %150 = icmp ugt i32 %96, %149
  %151 = select i1 %148, i1 true, i1 %150
  %152 = load i16, ptr %105, align 2
  br i1 %151, label %160, label %153

153:                                              ; preds = %145
  %154 = zext i16 %152 to i32
  %155 = add nuw nsw i32 %154, 10
  %156 = icmp ult i32 %99, %155
  %157 = add nuw nsw i32 %154, 18
  %158 = icmp ugt i32 %99, %157
  %159 = select i1 %156, i1 true, i1 %158
  br i1 %159, label %160, label %348

160:                                              ; preds = %153, %145
  %161 = getelementptr i16, ptr %112, i32 1
  %162 = load i16, ptr %161, align 2
  %163 = icmp ult i16 %152, %162
  br i1 %163, label %174, label %164

164:                                              ; preds = %160
  store i16 %162, ptr %105, align 2
  %165 = load i8, ptr %18, align 1
  %166 = add i8 %165, 2
  store i8 %166, ptr %18, align 1
  %167 = zext i8 %166 to i32
  %168 = shl nuw nsw i32 %167, 1
  %169 = add i32 %168, %47
  %170 = inttoptr i32 %169 to ptr
  %171 = load i16, ptr %170, align 2
  %172 = icmp eq i16 %171, -1
  %173 = select i1 %172, i8 0, i8 %166
  store i8 %173, ptr %18, align 1
  br label %106

174:                                              ; preds = %160
  %175 = add nuw i16 %152, 1
  store i16 %175, ptr %105, align 2
  %176 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 23
  store i8 2, ptr %176, align 4
  br label %348

177:                                              ; preds = %109
  %178 = load i16, ptr %105, align 2
  %179 = zext i16 %178 to i32
  %180 = icmp ult i32 %100, %179
  %181 = add nuw nsw i32 %179, 20
  %182 = icmp ugt i32 %99, %181
  %183 = select i1 %180, i1 true, i1 %182
  %184 = load i16, ptr %29, align 2
  br i1 %183, label %190, label %185

185:                                              ; preds = %177
  %186 = zext i16 %184 to i32
  %187 = icmp ult i32 %101, %186
  %188 = icmp ugt i32 %102, %186
  %189 = select i1 %187, i1 true, i1 %188
  br i1 %189, label %190, label %348

190:                                              ; preds = %185, %177
  %191 = getelementptr i16, ptr %112, i32 1
  %192 = load i16, ptr %191, align 2
  %193 = icmp ugt i16 %184, %192
  br i1 %193, label %204, label %194

194:                                              ; preds = %190
  store i16 %192, ptr %29, align 2
  %195 = load i8, ptr %18, align 1
  %196 = add i8 %195, 2
  store i8 %196, ptr %18, align 1
  %197 = zext i8 %196 to i32
  %198 = shl nuw nsw i32 %197, 1
  %199 = add i32 %198, %47
  %200 = inttoptr i32 %199 to ptr
  %201 = load i16, ptr %200, align 2
  %202 = icmp eq i16 %201, -1
  %203 = select i1 %202, i8 0, i8 %196
  store i8 %203, ptr %18, align 1
  br label %106

204:                                              ; preds = %190
  %205 = add i16 %184, -1
  store i16 %205, ptr %29, align 2
  %206 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 23
  store i8 3, ptr %206, align 4
  br label %348

207:                                              ; preds = %109
  %208 = load i16, ptr %105, align 2
  %209 = zext i16 %208 to i32
  %210 = icmp ult i32 %100, %209
  %211 = add nuw nsw i32 %209, 20
  %212 = icmp ugt i32 %99, %211
  %213 = select i1 %210, i1 true, i1 %212
  %214 = load i16, ptr %29, align 2
  br i1 %213, label %222, label %215

215:                                              ; preds = %207
  %216 = zext i16 %214 to i32
  %217 = add nuw nsw i32 %216, 26
  %218 = icmp ult i32 %96, %217
  %219 = add nuw nsw i32 %216, 34
  %220 = icmp ugt i32 %96, %219
  %221 = select i1 %218, i1 true, i1 %220
  br i1 %221, label %222, label %348

222:                                              ; preds = %215, %207
  %223 = getelementptr i16, ptr %112, i32 1
  %224 = load i16, ptr %223, align 2
  %225 = icmp ult i16 %214, %224
  br i1 %225, label %236, label %226

226:                                              ; preds = %222
  store i16 %224, ptr %29, align 2
  %227 = load i8, ptr %18, align 1
  %228 = add i8 %227, 2
  store i8 %228, ptr %18, align 1
  %229 = zext i8 %228 to i32
  %230 = shl nuw nsw i32 %229, 1
  %231 = add i32 %230, %47
  %232 = inttoptr i32 %231 to ptr
  %233 = load i16, ptr %232, align 2
  %234 = icmp eq i16 %233, -1
  %235 = select i1 %234, i8 0, i8 %228
  store i8 %235, ptr %18, align 1
  br label %106

236:                                              ; preds = %222
  %237 = add nuw i16 %214, 1
  store i16 %237, ptr %29, align 2
  %238 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 23
  store i8 4, ptr %238, align 4
  br label %348

239:                                              ; preds = %109
  %240 = getelementptr i16, ptr %112, i32 1
  %241 = load i16, ptr %240, align 2
  %242 = trunc i16 %241 to i8
  store i8 %242, ptr %77, align 1
  br label %348

243:                                              ; preds = %109
  %244 = load i16, ptr @gMapBank4Half114C, align 2
  %245 = icmp eq i16 %244, -32768
  br i1 %245, label %246, label %255

246:                                              ; preds = %243
  %247 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 6) #14
  %248 = load i16, ptr %29, align 2
  %249 = shl i16 %247, 3
  %250 = sub i16 %248, %249
  %251 = tail call i16 @llvm.smax.i16(i16 %250, i16 0)
  store i16 %251, ptr @gMapBank4Half114C, align 2
  %252 = getelementptr i16, ptr %112, i32 1
  %253 = load i16, ptr %252, align 2
  %254 = tail call i16 @llvm.umax.i16(i16 %251, i16 %253)
  br label %106

255:                                              ; preds = %243
  %256 = load i16, ptr %105, align 2
  %257 = zext i16 %256 to i32
  %258 = icmp ult i32 %100, %257
  %259 = add nuw nsw i32 %257, 20
  %260 = icmp ugt i32 %99, %259
  %261 = select i1 %258, i1 true, i1 %260
  %262 = load i16, ptr %29, align 2
  br i1 %261, label %277, label %263

263:                                              ; preds = %255
  %264 = zext i16 %262 to i32
  %265 = icmp ult i32 %101, %264
  %266 = icmp ugt i32 %102, %264
  %267 = select i1 %265, i1 true, i1 %266
  br i1 %267, label %277, label %268

268:                                              ; preds = %263
  %269 = add i8 %110, 2
  store i8 %269, ptr %18, align 1
  %270 = zext i8 %269 to i32
  %271 = shl nuw nsw i32 %270, 1
  %272 = add i32 %271, %47
  %273 = inttoptr i32 %272 to ptr
  %274 = load i16, ptr %273, align 2
  %275 = icmp eq i16 %274, -1
  %276 = select i1 %275, i8 0, i8 %269
  store i8 %276, ptr %18, align 1
  br label %106

277:                                              ; preds = %263, %255
  %278 = icmp ugt i16 %262, %244
  br i1 %278, label %289, label %279

279:                                              ; preds = %277
  store i16 %244, ptr %29, align 2
  %280 = load i8, ptr %18, align 1
  %281 = add i8 %280, 2
  store i8 %281, ptr %18, align 1
  %282 = zext i8 %281 to i32
  %283 = shl nuw nsw i32 %282, 1
  %284 = add i32 %283, %47
  %285 = inttoptr i32 %284 to ptr
  %286 = load i16, ptr %285, align 2
  %287 = icmp eq i16 %286, -1
  %288 = select i1 %287, i8 0, i8 %281
  store i8 %288, ptr %18, align 1
  br label %106

289:                                              ; preds = %277
  %290 = add i16 %262, -1
  store i16 %290, ptr %29, align 2
  %291 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 23
  store i8 3, ptr %291, align 4
  br label %348

292:                                              ; preds = %109
  %293 = load i16, ptr @gMapBank4Half114C, align 2
  %294 = icmp eq i16 %293, -32768
  br i1 %294, label %295, label %303

295:                                              ; preds = %292
  %296 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 6) #14
  %297 = load i16, ptr %29, align 2
  %298 = shl i16 %296, 3
  %299 = add i16 %298, %297
  store i16 %299, ptr @gMapBank4Half114C, align 2
  %300 = getelementptr i16, ptr %112, i32 1
  %301 = load i16, ptr %300, align 2
  %302 = tail call i16 @llvm.umin.i16(i16 %299, i16 %301)
  br label %106

303:                                              ; preds = %292
  %304 = load i16, ptr %105, align 2
  %305 = zext i16 %304 to i32
  %306 = icmp ult i32 %100, %305
  %307 = add nuw nsw i32 %305, 20
  %308 = icmp ugt i32 %99, %307
  %309 = select i1 %306, i1 true, i1 %308
  %310 = load i16, ptr %29, align 2
  br i1 %309, label %327, label %311

311:                                              ; preds = %303
  %312 = zext i16 %310 to i32
  %313 = add nuw nsw i32 %312, 26
  %314 = icmp ult i32 %96, %313
  %315 = add nuw nsw i32 %312, 34
  %316 = icmp ugt i32 %96, %315
  %317 = select i1 %314, i1 true, i1 %316
  br i1 %317, label %327, label %318

318:                                              ; preds = %311
  %319 = add i8 %110, 2
  store i8 %319, ptr %18, align 1
  %320 = zext i8 %319 to i32
  %321 = shl nuw nsw i32 %320, 1
  %322 = add i32 %321, %47
  %323 = inttoptr i32 %322 to ptr
  %324 = load i16, ptr %323, align 2
  %325 = icmp eq i16 %324, -1
  %326 = select i1 %325, i8 0, i8 %319
  store i8 %326, ptr %18, align 1
  br label %106

327:                                              ; preds = %311, %303
  %328 = icmp ult i16 %310, %293
  br i1 %328, label %339, label %329

329:                                              ; preds = %327
  store i16 %293, ptr %29, align 2
  %330 = load i8, ptr %18, align 1
  %331 = add i8 %330, 2
  store i8 %331, ptr %18, align 1
  %332 = zext i8 %331 to i32
  %333 = shl nuw nsw i32 %332, 1
  %334 = add i32 %333, %47
  %335 = inttoptr i32 %334 to ptr
  %336 = load i16, ptr %335, align 2
  %337 = icmp eq i16 %336, -1
  %338 = select i1 %337, i8 0, i8 %331
  store i8 %338, ptr %18, align 1
  br label %106

339:                                              ; preds = %327
  %340 = add nuw i16 %310, 1
  store i16 %340, ptr %29, align 2
  %341 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 23
  store i8 4, ptr %341, align 4
  br label %348

342:                                              ; preds = %109
  %343 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 61) #14
  %344 = trunc i16 %343 to i8
  %345 = getelementptr i8, ptr %112, i32 2
  %346 = load i8, ptr %345, align 1
  %347 = add i8 %346, %344
  store i8 %347, ptr %77, align 1
  br label %348

348:                                              ; preds = %123, %153, %185, %215, %80, %239, %342, %142, %174, %204, %236, %289, %339
  %349 = load i8, ptr %18, align 1
  %350 = zext i8 %349 to i32
  %351 = getelementptr i16, ptr %48, i32 %350
  %352 = load i16, ptr %351, align 2
  %353 = lshr i16 %352, 8
  %354 = trunc i16 %353 to i8
  %355 = and i8 %354, 15
  %356 = load i8, ptr %1, align 1
  %357 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 1
  %358 = load i32, ptr %357, align 4
  %359 = and i16 %352, 255
  %360 = zext nneg i16 %359 to i32
  %361 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %360
  %362 = load ptr, ptr %361, align 4
  %363 = ptrtoint ptr %362 to i32
  %364 = icmp eq i32 %358, %363
  br i1 %364, label %375, label %365

365:                                              ; preds = %348
  %366 = getelementptr %struct.RenderSlot, ptr %4, i32 %6
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %366, ptr noundef %362) #14
  %367 = icmp eq i8 %355, 0
  %368 = add i8 %356, 1
  br i1 %367, label %374, label %369

369:                                              ; preds = %365
  %370 = zext nneg i8 %355 to i32
  %371 = add nsw i32 %370, -1
  %372 = getelementptr [0 x ptr], ptr @gMapBank4PathOverlayAnimations, i32 0, i32 %371
  %373 = load ptr, ptr %372, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %368, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %373) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %368, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %356) #14
  br label %375

374:                                              ; preds = %365
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %368, i8 noundef zeroext 0) #14
  br label %375

375:                                              ; preds = %348, %369, %374
  %376 = load i16, ptr %29, align 2
  %377 = zext i16 %376 to i32
  %378 = shl nuw i32 %377, 16
  %379 = or disjoint i32 %378, 32768
  %380 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 3
  store i32 %379, ptr %380, align 4
  %381 = getelementptr i16, ptr %29, i32 1
  %382 = load i16, ptr %381, align 2
  %383 = zext i16 %382 to i32
  %384 = shl nuw i32 %383, 16
  %385 = or disjoint i32 %384, 32768
  %386 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  store i32 %385, ptr %386, align 4
  store i32 1, ptr %2, align 4
  ret i32 11
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AdvanceMapBank4Path(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #12 {
  %3 = load i8, ptr %0, align 1
  %4 = add i8 %3, 2
  store i8 %4, ptr %0, align 1
  %5 = ptrtoint ptr %1 to i32
  %6 = zext i8 %4 to i32
  %7 = shl nuw nsw i32 %6, 1
  %8 = add i32 %7, %5
  %9 = inttoptr i32 %8 to ptr
  %10 = load i16, ptr %9, align 2
  %11 = icmp eq i16 %10, -1
  %12 = select i1 %11, i8 0, i8 %4
  store i8 %12, ptr %0, align 1
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank4PathAnimation(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = icmp eq i32 %6, %10
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %0, ptr noundef %9) #14
  %13 = icmp eq i8 %2, 0
  %14 = add i8 %3, 1
  br i1 %13, label %20, label %15

15:                                               ; preds = %12
  %16 = zext i8 %2 to i32
  %17 = add nsw i32 %16, -1
  %18 = getelementptr [0 x ptr], ptr @gMapBank4PathOverlayAnimations, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %19) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #14
  br label %21

20:                                               ; preds = %12
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %14, i8 noundef zeroext 0) #14
  br label %21

21:                                               ; preds = %15, %20, %4
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationByPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackFollowMapBank4ReversiblePath(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = load i8, ptr %1, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %8, i32 %10
  %12 = load i8, ptr @gRenderClassSlots0, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, ptr @gRenderClassSlots1, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr i8, ptr %1, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %1, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or disjoint i32 %22, %18
  %24 = add i32 %23, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr i8, ptr %1, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %1, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 9
  %33 = shl nuw nsw i32 %28, 1
  %34 = or disjoint i32 %32, %33
  %35 = add i32 %34, ptrtoint (ptr @gAnimationClassValues to i32)
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr i8, ptr %1, i32 7
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %1, i32 8
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 8
  %44 = or disjoint i32 %43, %39
  %45 = getelementptr i8, ptr %1, i32 9
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 16
  %49 = or disjoint i32 %44, %48
  %50 = getelementptr i8, ptr %1, i32 10
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw i32 %52, 24
  %54 = or disjoint i32 %49, %53
  %55 = inttoptr i32 %54 to ptr
  %56 = getelementptr i8, ptr %1, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i16
  %59 = getelementptr i8, ptr %1, i32 6
  %60 = load i8, ptr %59, align 1
  %61 = zext i8 %60 to i16
  %62 = shl nuw i16 %61, 8
  %63 = or disjoint i16 %62, %58
  %64 = getelementptr i8, ptr %1, i32 11
  %65 = load i8, ptr %64, align 1
  %66 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %63) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #16
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %79

68:                                               ; preds = %3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %63, i32 noundef 1) #14
  store i8 0, ptr %25, align 1
  %69 = getelementptr i8, ptr %25, i32 1
  store i8 0, ptr %69, align 1
  %70 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = lshr i32 %71, 16
  %73 = trunc i32 %72 to i16
  store i16 %73, ptr %36, align 2
  %74 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 5
  %75 = load i32, ptr %74, align 4
  %76 = lshr i32 %75, 16
  %77 = trunc i32 %76 to i16
  %78 = getelementptr i16, ptr %36, i32 1
  store i16 %77, ptr %78, align 2
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  br label %79

79:                                               ; preds = %68, %3
  %80 = getelementptr i8, ptr %25, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = add i16 %63, 1
  br label %121

85:                                               ; preds = %79
  %86 = add i8 %81, -1
  store i8 %86, ptr %80, align 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %762

88:                                               ; preds = %85
  %89 = add i16 %63, 1
  %90 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %89) #14
  %91 = icmp eq i32 %90, 0
  %92 = load i8, ptr %25, align 1
  br i1 %91, label %93, label %100

93:                                               ; preds = %88
  %94 = add i8 %92, 3
  store i8 %94, ptr %25, align 1
  %95 = zext i8 %94 to i32
  %96 = getelementptr i16, ptr %55, i32 %95
  %97 = load i16, ptr %96, align 2
  %98 = icmp eq i16 %97, -1
  %99 = select i1 %98, i8 0, i8 %94
  br label %117

100:                                              ; preds = %88
  %101 = icmp ult i8 %92, 3
  br i1 %101, label %102, label %114

102:                                              ; preds = %100
  %103 = zext nneg i8 %92 to i32
  %104 = getelementptr i16, ptr %55, i32 %103
  %105 = load i16, ptr %104, align 2
  %106 = icmp eq i16 %105, -1
  br i1 %106, label %114, label %107

107:                                              ; preds = %102, %107
  %108 = phi i8 [ %109, %107 ], [ %92, %102 ]
  %109 = add i8 %108, 3
  store i8 %109, ptr %25, align 1
  %110 = zext i8 %109 to i32
  %111 = getelementptr i16, ptr %55, i32 %110
  %112 = load i16, ptr %111, align 2
  %113 = icmp eq i16 %112, -1
  br i1 %113, label %114, label %107

114:                                              ; preds = %107, %102, %100
  %115 = phi i8 [ %92, %102 ], [ %92, %100 ], [ %109, %107 ]
  %116 = add i8 %115, -3
  br label %117

117:                                              ; preds = %93, %114
  %118 = phi i8 [ %116, %114 ], [ %99, %93 ]
  store i8 %118, ptr %25, align 1
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  %119 = load i8, ptr %80, align 1
  %120 = icmp eq i8 %119, 0
  br i1 %120, label %121, label %762

121:                                              ; preds = %83, %117
  %122 = phi i16 [ %84, %83 ], [ %89, %117 ]
  %123 = getelementptr %struct.RenderSlot, ptr %8, i32 %13, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = lshr i32 %124, 16
  %126 = trunc i32 %125 to i16
  %127 = getelementptr %struct.RenderSlot, ptr %8, i32 %13, i32 5
  %128 = load i32, ptr %127, align 4
  %129 = lshr i32 %128, 16
  %130 = trunc i32 %129 to i16
  %131 = getelementptr %struct.RenderSlot, ptr %8, i32 %15, i32 3
  %132 = load i32, ptr %131, align 4
  %133 = lshr i32 %132, 16
  %134 = trunc i32 %133 to i16
  %135 = getelementptr %struct.RenderSlot, ptr %8, i32 %15, i32 5
  %136 = load i32, ptr %135, align 4
  %137 = lshr i32 %136, 16
  %138 = trunc i32 %137 to i16
  %139 = add nuw nsw i32 %129, 24
  %140 = add nuw nsw i32 %125, 34
  %141 = add nuw nsw i32 %125, 26
  %142 = add nuw nsw i32 %125, 28
  %143 = add nuw nsw i32 %129, 32
  %144 = getelementptr i16, ptr %36, i32 1
  %145 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 23
  %146 = icmp sgt i8 %65, -1
  %147 = and i8 %65, 127
  %148 = icmp eq i8 %147, 0
  br label %149

149:                                              ; preds = %758, %121
  %150 = phi i32 [ %760, %758 ], [ 0, %121 ]
  %151 = load i8, ptr %25, align 1
  %152 = zext i8 %151 to i32
  %153 = getelementptr i16, ptr %55, i32 %152
  %154 = load i16, ptr %153, align 2
  %155 = lshr i16 %154, 12
  br label %156

156:                                              ; preds = %149, %156
  switch i16 %155, label %156 [
    i16 0, label %157
    i16 1, label %206
    i16 2, label %257
    i16 3, label %306
    i16 4, label %357
    i16 5, label %361
    i16 6, label %450
    i16 7, label %540
    i16 8, label %546
  ]

157:                                              ; preds = %156
  %158 = load i16, ptr %36, align 2
  %159 = zext i16 %158 to i32
  %160 = icmp ult i32 %142, %159
  %161 = add nuw nsw i32 %159, 28
  %162 = icmp ugt i32 %125, %161
  %163 = select i1 %160, i1 true, i1 %162
  %164 = load i16, ptr %144, align 2
  br i1 %163, label %170, label %165

165:                                              ; preds = %157
  %166 = zext i16 %164 to i32
  %167 = icmp ult i32 %143, %166
  %168 = icmp ugt i32 %139, %166
  %169 = select i1 %167, i1 true, i1 %168
  br i1 %169, label %170, label %762

170:                                              ; preds = %165, %157
  %171 = getelementptr i16, ptr %153, i32 1
  %172 = load i16, ptr %171, align 2
  %173 = icmp ugt i16 %164, %172
  br i1 %173, label %204, label %174

174:                                              ; preds = %170
  store i16 %172, ptr %144, align 2
  %175 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %176 = icmp eq i32 %175, 0
  %177 = load i8, ptr %25, align 1
  br i1 %176, label %178, label %185

178:                                              ; preds = %174
  %179 = add i8 %177, 3
  store i8 %179, ptr %25, align 1
  %180 = zext i8 %179 to i32
  %181 = getelementptr i16, ptr %55, i32 %180
  %182 = load i16, ptr %181, align 2
  %183 = icmp eq i16 %182, -1
  %184 = select i1 %183, i8 0, i8 %179
  br label %202

185:                                              ; preds = %174
  %186 = icmp ult i8 %177, 3
  br i1 %186, label %187, label %199

187:                                              ; preds = %185
  %188 = zext nneg i8 %177 to i32
  %189 = getelementptr i16, ptr %55, i32 %188
  %190 = load i16, ptr %189, align 2
  %191 = icmp eq i16 %190, -1
  br i1 %191, label %199, label %192

192:                                              ; preds = %187, %192
  %193 = phi i8 [ %194, %192 ], [ %177, %187 ]
  %194 = add i8 %193, 3
  store i8 %194, ptr %25, align 1
  %195 = zext i8 %194 to i32
  %196 = getelementptr i16, ptr %55, i32 %195
  %197 = load i16, ptr %196, align 2
  %198 = icmp eq i16 %197, -1
  br i1 %198, label %199, label %192

199:                                              ; preds = %192, %187, %185
  %200 = phi i8 [ %177, %187 ], [ %177, %185 ], [ %194, %192 ]
  %201 = add i8 %200, -3
  br label %202

202:                                              ; preds = %178, %199
  %203 = phi i8 [ %201, %199 ], [ %184, %178 ]
  store i8 %203, ptr %25, align 1
  br label %758

204:                                              ; preds = %170
  %205 = add i16 %164, -1
  store i16 %205, ptr %144, align 2
  store i8 1, ptr %145, align 4
  br label %762

206:                                              ; preds = %156
  %207 = load i16, ptr %36, align 2
  %208 = zext i16 %207 to i32
  %209 = icmp ult i32 %142, %208
  %210 = add nuw nsw i32 %208, 28
  %211 = icmp ugt i32 %125, %210
  %212 = select i1 %209, i1 true, i1 %211
  %213 = load i16, ptr %144, align 2
  br i1 %212, label %221, label %214

214:                                              ; preds = %206
  %215 = zext i16 %213 to i32
  %216 = add nuw nsw i32 %215, 10
  %217 = icmp ult i32 %129, %216
  %218 = add nuw nsw i32 %215, 18
  %219 = icmp ugt i32 %129, %218
  %220 = select i1 %217, i1 true, i1 %219
  br i1 %220, label %221, label %762

221:                                              ; preds = %214, %206
  %222 = getelementptr i16, ptr %153, i32 1
  %223 = load i16, ptr %222, align 2
  %224 = icmp ult i16 %213, %223
  br i1 %224, label %255, label %225

225:                                              ; preds = %221
  store i16 %223, ptr %144, align 2
  %226 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %227 = icmp eq i32 %226, 0
  %228 = load i8, ptr %25, align 1
  br i1 %227, label %229, label %236

229:                                              ; preds = %225
  %230 = add i8 %228, 3
  store i8 %230, ptr %25, align 1
  %231 = zext i8 %230 to i32
  %232 = getelementptr i16, ptr %55, i32 %231
  %233 = load i16, ptr %232, align 2
  %234 = icmp eq i16 %233, -1
  %235 = select i1 %234, i8 0, i8 %230
  br label %253

236:                                              ; preds = %225
  %237 = icmp ult i8 %228, 3
  br i1 %237, label %238, label %250

238:                                              ; preds = %236
  %239 = zext nneg i8 %228 to i32
  %240 = getelementptr i16, ptr %55, i32 %239
  %241 = load i16, ptr %240, align 2
  %242 = icmp eq i16 %241, -1
  br i1 %242, label %250, label %243

243:                                              ; preds = %238, %243
  %244 = phi i8 [ %245, %243 ], [ %228, %238 ]
  %245 = add i8 %244, 3
  store i8 %245, ptr %25, align 1
  %246 = zext i8 %245 to i32
  %247 = getelementptr i16, ptr %55, i32 %246
  %248 = load i16, ptr %247, align 2
  %249 = icmp eq i16 %248, -1
  br i1 %249, label %250, label %243

250:                                              ; preds = %243, %238, %236
  %251 = phi i8 [ %228, %238 ], [ %228, %236 ], [ %245, %243 ]
  %252 = add i8 %251, -3
  br label %253

253:                                              ; preds = %229, %250
  %254 = phi i8 [ %252, %250 ], [ %235, %229 ]
  store i8 %254, ptr %25, align 1
  br label %758

255:                                              ; preds = %221
  %256 = add nuw i16 %213, 1
  store i16 %256, ptr %144, align 2
  store i8 2, ptr %145, align 4
  br label %762

257:                                              ; preds = %156
  %258 = load i16, ptr %144, align 2
  %259 = zext i16 %258 to i32
  %260 = icmp ult i32 %139, %259
  %261 = add nuw nsw i32 %259, 20
  %262 = icmp ugt i32 %129, %261
  %263 = select i1 %260, i1 true, i1 %262
  %264 = load i16, ptr %36, align 2
  br i1 %263, label %270, label %265

265:                                              ; preds = %257
  %266 = zext i16 %264 to i32
  %267 = icmp ult i32 %140, %266
  %268 = icmp ugt i32 %141, %266
  %269 = select i1 %267, i1 true, i1 %268
  br i1 %269, label %270, label %762

270:                                              ; preds = %265, %257
  %271 = getelementptr i16, ptr %153, i32 1
  %272 = load i16, ptr %271, align 2
  %273 = icmp ugt i16 %264, %272
  br i1 %273, label %304, label %274

274:                                              ; preds = %270
  store i16 %272, ptr %36, align 2
  %275 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %276 = icmp eq i32 %275, 0
  %277 = load i8, ptr %25, align 1
  br i1 %276, label %278, label %285

278:                                              ; preds = %274
  %279 = add i8 %277, 3
  store i8 %279, ptr %25, align 1
  %280 = zext i8 %279 to i32
  %281 = getelementptr i16, ptr %55, i32 %280
  %282 = load i16, ptr %281, align 2
  %283 = icmp eq i16 %282, -1
  %284 = select i1 %283, i8 0, i8 %279
  br label %302

285:                                              ; preds = %274
  %286 = icmp ult i8 %277, 3
  br i1 %286, label %287, label %299

287:                                              ; preds = %285
  %288 = zext nneg i8 %277 to i32
  %289 = getelementptr i16, ptr %55, i32 %288
  %290 = load i16, ptr %289, align 2
  %291 = icmp eq i16 %290, -1
  br i1 %291, label %299, label %292

292:                                              ; preds = %287, %292
  %293 = phi i8 [ %294, %292 ], [ %277, %287 ]
  %294 = add i8 %293, 3
  store i8 %294, ptr %25, align 1
  %295 = zext i8 %294 to i32
  %296 = getelementptr i16, ptr %55, i32 %295
  %297 = load i16, ptr %296, align 2
  %298 = icmp eq i16 %297, -1
  br i1 %298, label %299, label %292

299:                                              ; preds = %292, %287, %285
  %300 = phi i8 [ %277, %287 ], [ %277, %285 ], [ %294, %292 ]
  %301 = add i8 %300, -3
  br label %302

302:                                              ; preds = %278, %299
  %303 = phi i8 [ %301, %299 ], [ %284, %278 ]
  store i8 %303, ptr %25, align 1
  br label %758

304:                                              ; preds = %270
  %305 = add i16 %264, -1
  store i16 %305, ptr %36, align 2
  store i8 3, ptr %145, align 4
  br label %762

306:                                              ; preds = %156
  %307 = load i16, ptr %144, align 2
  %308 = zext i16 %307 to i32
  %309 = icmp ult i32 %139, %308
  %310 = add nuw nsw i32 %308, 20
  %311 = icmp ugt i32 %129, %310
  %312 = select i1 %309, i1 true, i1 %311
  %313 = load i16, ptr %36, align 2
  br i1 %312, label %321, label %314

314:                                              ; preds = %306
  %315 = zext i16 %313 to i32
  %316 = add nuw nsw i32 %315, 26
  %317 = icmp ult i32 %125, %316
  %318 = add nuw nsw i32 %315, 34
  %319 = icmp ugt i32 %125, %318
  %320 = select i1 %317, i1 true, i1 %319
  br i1 %320, label %321, label %762

321:                                              ; preds = %314, %306
  %322 = getelementptr i16, ptr %153, i32 1
  %323 = load i16, ptr %322, align 2
  %324 = icmp ult i16 %313, %323
  br i1 %324, label %355, label %325

325:                                              ; preds = %321
  store i16 %323, ptr %36, align 2
  %326 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %327 = icmp eq i32 %326, 0
  %328 = load i8, ptr %25, align 1
  br i1 %327, label %329, label %336

329:                                              ; preds = %325
  %330 = add i8 %328, 3
  store i8 %330, ptr %25, align 1
  %331 = zext i8 %330 to i32
  %332 = getelementptr i16, ptr %55, i32 %331
  %333 = load i16, ptr %332, align 2
  %334 = icmp eq i16 %333, -1
  %335 = select i1 %334, i8 0, i8 %330
  br label %353

336:                                              ; preds = %325
  %337 = icmp ult i8 %328, 3
  br i1 %337, label %338, label %350

338:                                              ; preds = %336
  %339 = zext nneg i8 %328 to i32
  %340 = getelementptr i16, ptr %55, i32 %339
  %341 = load i16, ptr %340, align 2
  %342 = icmp eq i16 %341, -1
  br i1 %342, label %350, label %343

343:                                              ; preds = %338, %343
  %344 = phi i8 [ %345, %343 ], [ %328, %338 ]
  %345 = add i8 %344, 3
  store i8 %345, ptr %25, align 1
  %346 = zext i8 %345 to i32
  %347 = getelementptr i16, ptr %55, i32 %346
  %348 = load i16, ptr %347, align 2
  %349 = icmp eq i16 %348, -1
  br i1 %349, label %350, label %343

350:                                              ; preds = %343, %338, %336
  %351 = phi i8 [ %328, %338 ], [ %328, %336 ], [ %345, %343 ]
  %352 = add i8 %351, -3
  br label %353

353:                                              ; preds = %329, %350
  %354 = phi i8 [ %352, %350 ], [ %335, %329 ]
  store i8 %354, ptr %25, align 1
  br label %758

355:                                              ; preds = %321
  %356 = add nuw i16 %313, 1
  store i16 %356, ptr %36, align 2
  store i8 4, ptr %145, align 4
  br label %762

357:                                              ; preds = %156
  %358 = getelementptr i16, ptr %153, i32 1
  %359 = load i16, ptr %358, align 2
  %360 = trunc i16 %359 to i8
  store i8 %360, ptr %80, align 1
  br label %762

361:                                              ; preds = %156
  %362 = load i16, ptr @gMapBank4Half114C, align 2
  %363 = icmp eq i16 %362, -32768
  br i1 %363, label %364, label %373

364:                                              ; preds = %361
  %365 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 6) #14
  %366 = load i16, ptr %36, align 2
  %367 = shl i16 %365, 3
  %368 = sub i16 %366, %367
  %369 = call i16 @llvm.smax.i16(i16 %368, i16 0)
  store i16 %369, ptr @gMapBank4Half114C, align 2
  %370 = getelementptr i16, ptr %153, i32 1
  %371 = load i16, ptr %370, align 2
  %372 = call i16 @llvm.umax.i16(i16 %369, i16 %371)
  br label %758

373:                                              ; preds = %361
  %374 = load i16, ptr %144, align 2
  %375 = zext i16 %374 to i32
  %376 = icmp ult i32 %139, %375
  %377 = add nuw nsw i32 %375, 20
  %378 = icmp ugt i32 %129, %377
  %379 = select i1 %376, i1 true, i1 %378
  %380 = load i16, ptr %36, align 2
  br i1 %379, label %416, label %381

381:                                              ; preds = %373
  %382 = zext i16 %380 to i32
  %383 = icmp ult i32 %140, %382
  %384 = icmp ugt i32 %141, %382
  %385 = select i1 %383, i1 true, i1 %384
  br i1 %385, label %416, label %386

386:                                              ; preds = %381
  %387 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %388 = icmp eq i32 %387, 0
  %389 = load i8, ptr %25, align 1
  br i1 %388, label %390, label %397

390:                                              ; preds = %386
  %391 = add i8 %389, 3
  store i8 %391, ptr %25, align 1
  %392 = zext i8 %391 to i32
  %393 = getelementptr i16, ptr %55, i32 %392
  %394 = load i16, ptr %393, align 2
  %395 = icmp eq i16 %394, -1
  %396 = select i1 %395, i8 0, i8 %391
  br label %414

397:                                              ; preds = %386
  %398 = icmp ult i8 %389, 3
  br i1 %398, label %399, label %411

399:                                              ; preds = %397
  %400 = zext nneg i8 %389 to i32
  %401 = getelementptr i16, ptr %55, i32 %400
  %402 = load i16, ptr %401, align 2
  %403 = icmp eq i16 %402, -1
  br i1 %403, label %411, label %404

404:                                              ; preds = %399, %404
  %405 = phi i8 [ %406, %404 ], [ %389, %399 ]
  %406 = add i8 %405, 3
  store i8 %406, ptr %25, align 1
  %407 = zext i8 %406 to i32
  %408 = getelementptr i16, ptr %55, i32 %407
  %409 = load i16, ptr %408, align 2
  %410 = icmp eq i16 %409, -1
  br i1 %410, label %411, label %404

411:                                              ; preds = %404, %399, %397
  %412 = phi i8 [ %389, %399 ], [ %389, %397 ], [ %406, %404 ]
  %413 = add i8 %412, -3
  br label %414

414:                                              ; preds = %390, %411
  %415 = phi i8 [ %413, %411 ], [ %396, %390 ]
  store i8 %415, ptr %25, align 1
  br label %758

416:                                              ; preds = %381, %373
  %417 = icmp ugt i16 %380, %362
  br i1 %417, label %448, label %418

418:                                              ; preds = %416
  store i16 %362, ptr %36, align 2
  %419 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %420 = icmp eq i32 %419, 0
  %421 = load i8, ptr %25, align 1
  br i1 %420, label %422, label %429

422:                                              ; preds = %418
  %423 = add i8 %421, 3
  store i8 %423, ptr %25, align 1
  %424 = zext i8 %423 to i32
  %425 = getelementptr i16, ptr %55, i32 %424
  %426 = load i16, ptr %425, align 2
  %427 = icmp eq i16 %426, -1
  %428 = select i1 %427, i8 0, i8 %423
  br label %446

429:                                              ; preds = %418
  %430 = icmp ult i8 %421, 3
  br i1 %430, label %431, label %443

431:                                              ; preds = %429
  %432 = zext nneg i8 %421 to i32
  %433 = getelementptr i16, ptr %55, i32 %432
  %434 = load i16, ptr %433, align 2
  %435 = icmp eq i16 %434, -1
  br i1 %435, label %443, label %436

436:                                              ; preds = %431, %436
  %437 = phi i8 [ %438, %436 ], [ %421, %431 ]
  %438 = add i8 %437, 3
  store i8 %438, ptr %25, align 1
  %439 = zext i8 %438 to i32
  %440 = getelementptr i16, ptr %55, i32 %439
  %441 = load i16, ptr %440, align 2
  %442 = icmp eq i16 %441, -1
  br i1 %442, label %443, label %436

443:                                              ; preds = %436, %431, %429
  %444 = phi i8 [ %421, %431 ], [ %421, %429 ], [ %438, %436 ]
  %445 = add i8 %444, -3
  br label %446

446:                                              ; preds = %422, %443
  %447 = phi i8 [ %445, %443 ], [ %428, %422 ]
  store i8 %447, ptr %25, align 1
  br label %758

448:                                              ; preds = %416
  %449 = add i16 %380, -1
  store i16 %449, ptr %36, align 2
  store i8 3, ptr %145, align 4
  br label %762

450:                                              ; preds = %156
  %451 = load i16, ptr @gMapBank4Half114C, align 2
  %452 = icmp eq i16 %451, -32768
  br i1 %452, label %453, label %461

453:                                              ; preds = %450
  %454 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 6) #14
  %455 = load i16, ptr %36, align 2
  %456 = shl i16 %454, 3
  %457 = add i16 %456, %455
  store i16 %457, ptr @gMapBank4Half114C, align 2
  %458 = getelementptr i16, ptr %153, i32 1
  %459 = load i16, ptr %458, align 2
  %460 = call i16 @llvm.umin.i16(i16 %457, i16 %459)
  br label %758

461:                                              ; preds = %450
  %462 = load i16, ptr %144, align 2
  %463 = zext i16 %462 to i32
  %464 = icmp ult i32 %139, %463
  %465 = add nuw nsw i32 %463, 20
  %466 = icmp ugt i32 %129, %465
  %467 = select i1 %464, i1 true, i1 %466
  %468 = load i16, ptr %36, align 2
  br i1 %467, label %506, label %469

469:                                              ; preds = %461
  %470 = zext i16 %468 to i32
  %471 = add nuw nsw i32 %470, 26
  %472 = icmp ult i32 %125, %471
  %473 = add nuw nsw i32 %470, 34
  %474 = icmp ugt i32 %125, %473
  %475 = select i1 %472, i1 true, i1 %474
  br i1 %475, label %506, label %476

476:                                              ; preds = %469
  %477 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %478 = icmp eq i32 %477, 0
  %479 = load i8, ptr %25, align 1
  br i1 %478, label %480, label %487

480:                                              ; preds = %476
  %481 = add i8 %479, 3
  store i8 %481, ptr %25, align 1
  %482 = zext i8 %481 to i32
  %483 = getelementptr i16, ptr %55, i32 %482
  %484 = load i16, ptr %483, align 2
  %485 = icmp eq i16 %484, -1
  %486 = select i1 %485, i8 0, i8 %481
  br label %504

487:                                              ; preds = %476
  %488 = icmp ult i8 %479, 3
  br i1 %488, label %489, label %501

489:                                              ; preds = %487
  %490 = zext nneg i8 %479 to i32
  %491 = getelementptr i16, ptr %55, i32 %490
  %492 = load i16, ptr %491, align 2
  %493 = icmp eq i16 %492, -1
  br i1 %493, label %501, label %494

494:                                              ; preds = %489, %494
  %495 = phi i8 [ %496, %494 ], [ %479, %489 ]
  %496 = add i8 %495, 3
  store i8 %496, ptr %25, align 1
  %497 = zext i8 %496 to i32
  %498 = getelementptr i16, ptr %55, i32 %497
  %499 = load i16, ptr %498, align 2
  %500 = icmp eq i16 %499, -1
  br i1 %500, label %501, label %494

501:                                              ; preds = %494, %489, %487
  %502 = phi i8 [ %479, %489 ], [ %479, %487 ], [ %496, %494 ]
  %503 = add i8 %502, -3
  br label %504

504:                                              ; preds = %480, %501
  %505 = phi i8 [ %503, %501 ], [ %486, %480 ]
  store i8 %505, ptr %25, align 1
  br label %758

506:                                              ; preds = %469, %461
  %507 = icmp ult i16 %468, %451
  br i1 %507, label %538, label %508

508:                                              ; preds = %506
  store i16 %451, ptr %36, align 2
  %509 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %510 = icmp eq i32 %509, 0
  %511 = load i8, ptr %25, align 1
  br i1 %510, label %512, label %519

512:                                              ; preds = %508
  %513 = add i8 %511, 3
  store i8 %513, ptr %25, align 1
  %514 = zext i8 %513 to i32
  %515 = getelementptr i16, ptr %55, i32 %514
  %516 = load i16, ptr %515, align 2
  %517 = icmp eq i16 %516, -1
  %518 = select i1 %517, i8 0, i8 %513
  br label %536

519:                                              ; preds = %508
  %520 = icmp ult i8 %511, 3
  br i1 %520, label %521, label %533

521:                                              ; preds = %519
  %522 = zext nneg i8 %511 to i32
  %523 = getelementptr i16, ptr %55, i32 %522
  %524 = load i16, ptr %523, align 2
  %525 = icmp eq i16 %524, -1
  br i1 %525, label %533, label %526

526:                                              ; preds = %521, %526
  %527 = phi i8 [ %528, %526 ], [ %511, %521 ]
  %528 = add i8 %527, 3
  store i8 %528, ptr %25, align 1
  %529 = zext i8 %528 to i32
  %530 = getelementptr i16, ptr %55, i32 %529
  %531 = load i16, ptr %530, align 2
  %532 = icmp eq i16 %531, -1
  br i1 %532, label %533, label %526

533:                                              ; preds = %526, %521, %519
  %534 = phi i8 [ %511, %521 ], [ %511, %519 ], [ %528, %526 ]
  %535 = add i8 %534, -3
  br label %536

536:                                              ; preds = %512, %533
  %537 = phi i8 [ %535, %533 ], [ %518, %512 ]
  store i8 %537, ptr %25, align 1
  br label %758

538:                                              ; preds = %506
  %539 = add nuw i16 %468, 1
  store i16 %539, ptr %36, align 2
  store i8 4, ptr %145, align 4
  br label %762

540:                                              ; preds = %156
  %541 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 61) #14
  %542 = trunc i16 %541 to i8
  %543 = getelementptr i8, ptr %153, i32 2
  %544 = load i8, ptr %543, align 1
  %545 = add i8 %544, %542
  store i8 %545, ptr %80, align 1
  br label %762

546:                                              ; preds = %156
  %547 = load i16, ptr %36, align 2
  %548 = getelementptr i16, ptr %153, i32 1
  %549 = load i16, ptr %548, align 2
  %550 = icmp ugt i16 %547, %549
  br i1 %550, label %551, label %554

551:                                              ; preds = %546
  store i8 3, ptr %145, align 4
  %552 = load i16, ptr %36, align 2
  %553 = load i16, ptr %144, align 2
  br label %579

554:                                              ; preds = %546
  %555 = icmp ult i16 %547, %549
  br i1 %555, label %556, label %559

556:                                              ; preds = %554
  store i8 4, ptr %145, align 4
  %557 = load i16, ptr %36, align 2
  %558 = load i16, ptr %144, align 2
  br label %579

559:                                              ; preds = %554
  %560 = load i16, ptr %144, align 2
  %561 = getelementptr i16, ptr %153, i32 2
  %562 = load i16, ptr %561, align 2
  %563 = icmp ugt i16 %560, %562
  br i1 %563, label %564, label %567

564:                                              ; preds = %559
  store i8 1, ptr %145, align 4
  %565 = load i16, ptr %36, align 2
  %566 = load i16, ptr %144, align 2
  br label %579

567:                                              ; preds = %559
  %568 = icmp ult i16 %560, %562
  br i1 %568, label %569, label %572

569:                                              ; preds = %567
  store i8 2, ptr %145, align 4
  %570 = load i16, ptr %36, align 2
  %571 = load i16, ptr %144, align 2
  br label %579

572:                                              ; preds = %567
  %573 = load i8, ptr %145, align 4
  %574 = load i16, ptr %36, align 2
  %575 = load i16, ptr %144, align 2
  switch i8 %573, label %594 [
    i8 1, label %579
    i8 2, label %576
    i8 3, label %577
    i8 4, label %578
  ]

576:                                              ; preds = %572
  br label %579

577:                                              ; preds = %572
  br label %579

578:                                              ; preds = %572
  br label %579

579:                                              ; preds = %556, %551, %569, %564, %578, %577, %576, %572
  %580 = phi i16 [ %575, %572 ], [ %566, %564 ], [ %571, %569 ], [ %575, %576 ], [ %553, %551 ], [ %575, %577 ], [ %558, %556 ], [ %575, %578 ]
  %581 = phi i16 [ %574, %572 ], [ %565, %564 ], [ %570, %569 ], [ %574, %576 ], [ %552, %551 ], [ %574, %577 ], [ %557, %556 ], [ %574, %578 ]
  %582 = phi i16 [ 0, %572 ], [ 0, %564 ], [ 0, %569 ], [ 0, %576 ], [ -1, %551 ], [ 0, %577 ], [ 1, %556 ], [ 0, %578 ]
  %583 = phi i1 [ false, %572 ], [ false, %564 ], [ false, %569 ], [ false, %576 ], [ true, %551 ], [ false, %577 ], [ true, %556 ], [ false, %578 ]
  %584 = phi i16 [ 0, %572 ], [ -1, %564 ], [ 1, %569 ], [ 0, %576 ], [ 0, %551 ], [ 0, %577 ], [ 0, %556 ], [ 0, %578 ]
  %585 = phi i1 [ false, %572 ], [ true, %564 ], [ true, %569 ], [ false, %576 ], [ false, %551 ], [ false, %577 ], [ false, %556 ], [ false, %578 ]
  %586 = phi i16 [ -28, %572 ], [ -28, %564 ], [ -28, %569 ], [ -28, %576 ], [ -34, %551 ], [ -34, %577 ], [ 26, %556 ], [ 26, %578 ]
  %587 = phi i16 [ 28, %572 ], [ 28, %564 ], [ 28, %569 ], [ 28, %576 ], [ -26, %551 ], [ -26, %577 ], [ 34, %556 ], [ 34, %578 ]
  %588 = phi i16 [ -36, %572 ], [ -36, %564 ], [ 10, %569 ], [ 10, %576 ], [ -24, %551 ], [ -24, %577 ], [ -24, %556 ], [ -24, %578 ]
  %589 = phi i16 [ 16, %572 ], [ 16, %564 ], [ 26, %569 ], [ 26, %576 ], [ 20, %551 ], [ 20, %577 ], [ 20, %556 ], [ 20, %578 ]
  %590 = add i16 %586, %581
  store i16 %590, ptr %4, align 2
  %591 = add i16 %587, %581
  store i16 %591, ptr %5, align 2
  %592 = add i16 %588, %580
  store i16 %592, ptr %6, align 2
  %593 = add i16 %589, %580
  store i16 %593, ptr %7, align 2
  br label %594

594:                                              ; preds = %572, %579
  %595 = phi i16 [ 0, %572 ], [ %582, %579 ]
  %596 = phi i1 [ false, %572 ], [ %583, %579 ]
  %597 = phi i16 [ 0, %572 ], [ %584, %579 ]
  %598 = phi i1 [ false, %572 ], [ %585, %579 ]
  call void asm "", "=*m,=*m,=*m,=*m"(ptr nonnull elementtype(i16) %4, ptr nonnull elementtype(i16) %5, ptr nonnull elementtype(i16) %6, ptr nonnull elementtype(i16) %7) #16, !srcloc !6
  %599 = load i16, ptr %4, align 2
  %600 = load i16, ptr %5, align 2
  %601 = load i16, ptr %6, align 2
  %602 = load i16, ptr %7, align 2
  %603 = icmp ugt i16 %599, %126
  %604 = icmp ult i16 %600, %126
  %605 = or i1 %603, %604
  %606 = icmp ugt i16 %601, %130
  %607 = or i1 %605, %606
  %608 = icmp ult i16 %602, %130
  %609 = or i1 %607, %608
  br i1 %146, label %619, label %610

610:                                              ; preds = %594
  br i1 %609, label %611, label %620

611:                                              ; preds = %610
  %612 = icmp ugt i16 %599, %134
  %613 = icmp ult i16 %600, %134
  %614 = or i1 %612, %613
  %615 = icmp ugt i16 %601, %138
  %616 = or i1 %614, %615
  %617 = icmp ult i16 %602, %138
  %618 = or i1 %616, %617
  br i1 %618, label %707, label %620

619:                                              ; preds = %594
  br i1 %609, label %707, label %620

620:                                              ; preds = %611, %610, %619
  br i1 %148, label %687, label %621

621:                                              ; preds = %620
  %622 = icmp eq i32 %150, 0
  %623 = or i1 %598, %596
  %624 = and i1 %622, %623
  br i1 %624, label %645, label %625

625:                                              ; preds = %621
  %626 = load i8, ptr %153, align 1
  %627 = load i8, ptr %145, align 4
  %628 = add i8 %627, -1
  %629 = zext i8 %626 to i32
  %630 = shl nuw nsw i32 %629, 2
  %631 = zext i8 %628 to i32
  %632 = add nuw nsw i32 %630, %631
  %633 = getelementptr [24 x i8], ptr @gMapBank4BlockedPathAnimations, i32 0, i32 %632
  %634 = load i8, ptr %633, align 1
  %635 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %636 = load i32, ptr %635, align 4
  %637 = zext i8 %634 to i32
  %638 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %637
  %639 = load ptr, ptr %638, align 4
  %640 = ptrtoint ptr %639 to i32
  %641 = icmp eq i32 %636, %640
  br i1 %641, label %761, label %642

642:                                              ; preds = %625
  %643 = load i8, ptr %1, align 1
  call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %11, ptr noundef %639) #14
  %644 = add i8 %643, 1
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %644, i8 noundef zeroext 0) #14
  br label %761

645:                                              ; preds = %621
  %646 = load i16, ptr %153, align 2
  %647 = trunc i16 %646 to i8
  %648 = load i8, ptr %145, align 4
  %649 = add i8 %648, -1
  %650 = lshr i16 %646, 8
  %651 = trunc i16 %650 to i8
  %652 = and i8 %651, 15
  %653 = load i8, ptr %1, align 1
  %654 = zext i8 %653 to i32
  call arm_apcscc void @UpdateMapBank4DirectionalPathAnimation(ptr noundef %11, i8 noundef zeroext %647, i8 noundef zeroext %649, i8 noundef zeroext %652, i32 noundef %654) #17
  %655 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %656 = icmp eq i32 %655, 0
  %657 = zext i1 %656 to i32
  call arm_apcscc void @SetGameFlag(i16 noundef zeroext %122, i32 noundef %657) #14
  %658 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %659 = icmp eq i32 %658, 0
  %660 = load i8, ptr %25, align 1
  br i1 %659, label %661, label %668

661:                                              ; preds = %645
  %662 = add i8 %660, 3
  store i8 %662, ptr %25, align 1
  %663 = zext i8 %662 to i32
  %664 = getelementptr i16, ptr %55, i32 %663
  %665 = load i16, ptr %664, align 2
  %666 = icmp eq i16 %665, -1
  %667 = select i1 %666, i8 0, i8 %662
  br label %685

668:                                              ; preds = %645
  %669 = icmp ult i8 %660, 3
  br i1 %669, label %670, label %682

670:                                              ; preds = %668
  %671 = zext nneg i8 %660 to i32
  %672 = getelementptr i16, ptr %55, i32 %671
  %673 = load i16, ptr %672, align 2
  %674 = icmp eq i16 %673, -1
  br i1 %674, label %682, label %675

675:                                              ; preds = %670, %675
  %676 = phi i8 [ %677, %675 ], [ %660, %670 ]
  %677 = add i8 %676, 3
  store i8 %677, ptr %25, align 1
  %678 = zext i8 %677 to i32
  %679 = getelementptr i16, ptr %55, i32 %678
  %680 = load i16, ptr %679, align 2
  %681 = icmp eq i16 %680, -1
  br i1 %681, label %682, label %675

682:                                              ; preds = %675, %670, %668
  %683 = phi i8 [ %660, %670 ], [ %660, %668 ], [ %677, %675 ]
  %684 = add i8 %683, -3
  br label %685

685:                                              ; preds = %661, %682
  %686 = phi i8 [ %684, %682 ], [ %667, %661 ]
  store i8 %686, ptr %25, align 1
  br label %758

687:                                              ; preds = %620
  %688 = load i8, ptr %153, align 1
  %689 = load i8, ptr %145, align 4
  %690 = add i8 %689, -1
  %691 = zext i8 %688 to i32
  %692 = shl nuw nsw i32 %691, 2
  %693 = zext i8 %690 to i32
  %694 = add nuw nsw i32 %692, %693
  %695 = getelementptr [24 x i8], ptr @gMapBank4BlockedPathAnimations, i32 0, i32 %694
  %696 = load i8, ptr %695, align 1
  %697 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %698 = load i32, ptr %697, align 4
  %699 = zext i8 %696 to i32
  %700 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %699
  %701 = load ptr, ptr %700, align 4
  %702 = ptrtoint ptr %701 to i32
  %703 = icmp eq i32 %698, %702
  br i1 %703, label %761, label %704

704:                                              ; preds = %687
  %705 = load i8, ptr %1, align 1
  call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %11, ptr noundef %701) #14
  %706 = add i8 %705, 1
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %706, i8 noundef zeroext 0) #14
  br label %761

707:                                              ; preds = %611, %619
  %708 = getelementptr i16, ptr %153, i32 1
  %709 = load i16, ptr %153, align 2
  %710 = trunc i16 %709 to i8
  %711 = load i8, ptr %145, align 4
  %712 = add i8 %711, -1
  %713 = lshr i16 %709, 8
  %714 = trunc i16 %713 to i8
  %715 = and i8 %714, 15
  %716 = load i8, ptr %1, align 1
  %717 = zext i8 %716 to i32
  call arm_apcscc void @UpdateMapBank4DirectionalPathAnimation(ptr noundef %11, i8 noundef zeroext %710, i8 noundef zeroext %712, i8 noundef zeroext %715, i32 noundef %717) #17
  %718 = load i16, ptr %36, align 2
  %719 = add i16 %718, %595
  store i16 %719, ptr %36, align 2
  %720 = load i16, ptr %144, align 2
  %721 = add i16 %720, %597
  store i16 %721, ptr %144, align 2
  %722 = load i16, ptr %708, align 2
  %723 = icmp eq i16 %719, %722
  br i1 %723, label %724, label %761

724:                                              ; preds = %707
  %725 = getelementptr i16, ptr %153, i32 2
  %726 = load i16, ptr %725, align 2
  %727 = icmp eq i16 %721, %726
  br i1 %727, label %728, label %761

728:                                              ; preds = %724
  %729 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %122) #14
  %730 = icmp eq i32 %729, 0
  %731 = load i8, ptr %25, align 1
  br i1 %730, label %732, label %739

732:                                              ; preds = %728
  %733 = add i8 %731, 3
  store i8 %733, ptr %25, align 1
  %734 = zext i8 %733 to i32
  %735 = getelementptr i16, ptr %55, i32 %734
  %736 = load i16, ptr %735, align 2
  %737 = icmp eq i16 %736, -1
  %738 = select i1 %737, i8 0, i8 %733
  br label %756

739:                                              ; preds = %728
  %740 = icmp ult i8 %731, 3
  br i1 %740, label %741, label %753

741:                                              ; preds = %739
  %742 = zext nneg i8 %731 to i32
  %743 = getelementptr i16, ptr %55, i32 %742
  %744 = load i16, ptr %743, align 2
  %745 = icmp eq i16 %744, -1
  br i1 %745, label %753, label %746

746:                                              ; preds = %741, %746
  %747 = phi i8 [ %748, %746 ], [ %731, %741 ]
  %748 = add i8 %747, 3
  store i8 %748, ptr %25, align 1
  %749 = zext i8 %748 to i32
  %750 = getelementptr i16, ptr %55, i32 %749
  %751 = load i16, ptr %750, align 2
  %752 = icmp eq i16 %751, -1
  br i1 %752, label %753, label %746

753:                                              ; preds = %746, %741, %739
  %754 = phi i8 [ %731, %741 ], [ %731, %739 ], [ %748, %746 ]
  %755 = add i8 %754, -3
  br label %756

756:                                              ; preds = %732, %753
  %757 = phi i8 [ %755, %753 ], [ %738, %732 ]
  store i8 %757, ptr %25, align 1
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  br label %761

758:                                              ; preds = %202, %253, %302, %353, %414, %504, %446, %364, %536, %453, %685
  %759 = phi i16 [ -32768, %685 ], [ %460, %453 ], [ -32768, %536 ], [ %372, %364 ], [ -32768, %446 ], [ -32768, %504 ], [ -32768, %414 ], [ -32768, %353 ], [ -32768, %302 ], [ -32768, %253 ], [ -32768, %202 ]
  %760 = phi i32 [ 1, %685 ], [ %150, %453 ], [ %150, %536 ], [ %150, %364 ], [ %150, %446 ], [ %150, %504 ], [ %150, %414 ], [ %150, %353 ], [ %150, %302 ], [ %150, %253 ], [ %150, %202 ]
  store i16 %759, ptr @gMapBank4Half114C, align 2
  br label %149

761:                                              ; preds = %704, %687, %642, %625, %707, %724, %756
  call void asm sideeffect "", "l,~{r6}"(i32 1) #16, !srcloc !7
  br label %762

762:                                              ; preds = %165, %214, %265, %314, %204, %255, %304, %355, %357, %448, %538, %540, %117, %85, %761
  %763 = tail call i32 asm "", "=l,~{r5}"() #15, !srcloc !8
  %764 = icmp eq i32 %763, 0
  br i1 %764, label %765, label %791

765:                                              ; preds = %762
  %766 = load i8, ptr %25, align 1
  %767 = zext i8 %766 to i32
  %768 = getelementptr i16, ptr %55, i32 %767
  %769 = load i16, ptr %768, align 2
  %770 = lshr i16 %769, 8
  %771 = trunc i16 %770 to i8
  %772 = and i8 %771, 15
  %773 = load i8, ptr %1, align 1
  %774 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %775 = load i32, ptr %774, align 4
  %776 = and i16 %769, 255
  %777 = zext nneg i16 %776 to i32
  %778 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %777
  %779 = load ptr, ptr %778, align 4
  %780 = ptrtoint ptr %779 to i32
  %781 = icmp eq i32 %775, %780
  br i1 %781, label %791, label %782

782:                                              ; preds = %765
  call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %11, ptr noundef %779) #14
  %783 = icmp eq i8 %772, 0
  %784 = add i8 %773, 1
  br i1 %783, label %790, label %785

785:                                              ; preds = %782
  %786 = zext nneg i8 %772 to i32
  %787 = add nsw i32 %786, -1
  %788 = getelementptr [0 x ptr], ptr @gMapBank4PathOverlayAnimations, i32 0, i32 %787
  %789 = load ptr, ptr %788, align 4
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %784, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %789) #14
  call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %784, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %773) #14
  br label %791

790:                                              ; preds = %782
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %784, i8 noundef zeroext 0) #14
  br label %791

791:                                              ; preds = %790, %785, %765, %762
  %792 = load i16, ptr %36, align 2
  %793 = zext i16 %792 to i32
  %794 = shl nuw i32 %793, 16
  %795 = or disjoint i32 %794, 32768
  %796 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 3
  store i32 %795, ptr %796, align 4
  %797 = getelementptr i16, ptr %36, i32 1
  %798 = load i16, ptr %797, align 2
  %799 = zext i16 %798 to i32
  %800 = shl nuw i32 %799, 16
  %801 = or disjoint i32 %800, 32768
  %802 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 5
  store i32 %801, ptr %802, align 4
  store i32 1, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  ret i32 12
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @AdvanceMapBank4ReversiblePath(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i16 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %2) #14
  %5 = icmp eq i32 %4, 0
  %6 = load i8, ptr %0, align 1
  br i1 %5, label %7, label %14

7:                                                ; preds = %3
  %8 = add i8 %6, 3
  store i8 %8, ptr %0, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr i16, ptr %1, i32 %9
  %11 = load i16, ptr %10, align 2
  %12 = icmp eq i16 %11, -1
  %13 = select i1 %12, i8 0, i8 %8
  br label %31

14:                                               ; preds = %3
  %15 = icmp ult i8 %6, 3
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = zext nneg i8 %6 to i32
  %18 = getelementptr i16, ptr %1, i32 %17
  %19 = load i16, ptr %18, align 2
  %20 = icmp eq i16 %19, -1
  br i1 %20, label %28, label %21

21:                                               ; preds = %16, %21
  %22 = phi i8 [ %23, %21 ], [ %6, %16 ]
  %23 = add i8 %22, 3
  store i8 %23, ptr %0, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr i16, ptr %1, i32 %24
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %26, -1
  br i1 %27, label %28, label %21

28:                                               ; preds = %21, %16, %14
  %29 = phi i8 [ %6, %16 ], [ %6, %14 ], [ %23, %21 ]
  %30 = add i8 %29, -3
  br label %31

31:                                               ; preds = %7, %28
  %32 = phi i8 [ %30, %28 ], [ %13, %7 ]
  store i8 %32, ptr %0, align 1
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write)
define dso_local arm_apcscc void @GetMapBank4PathBlockingBounds(i8 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5, ptr nocapture noundef writeonly %6) local_unnamed_addr #6 {
  %8 = icmp ult i8 %0, 4
  br i1 %8, label %9, label %26

9:                                                ; preds = %7
  %10 = zext nneg i8 %0 to i32
  %11 = getelementptr inbounds [4 x i16], ptr @switch.table.GetMapBank4PathBlockingBounds, i32 0, i32 %10
  %12 = load i16, ptr %11, align 2
  %13 = zext nneg i8 %0 to i32
  %14 = getelementptr inbounds [4 x i16], ptr @switch.table.GetMapBank4PathBlockingBounds.1, i32 0, i32 %13
  %15 = load i16, ptr %14, align 2
  %16 = zext nneg i8 %0 to i32
  %17 = getelementptr inbounds [4 x i16], ptr @switch.table.GetMapBank4PathBlockingBounds.2, i32 0, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = zext nneg i8 %0 to i32
  %20 = getelementptr inbounds [4 x i16], ptr @switch.table.GetMapBank4PathBlockingBounds.3, i32 0, i32 %19
  %21 = load i16, ptr %20, align 2
  %22 = add i16 %12, %1
  store i16 %22, ptr %3, align 2
  %23 = add i16 %15, %1
  store i16 %23, ptr %4, align 2
  %24 = add i16 %18, %2
  store i16 %24, ptr %5, align 2
  %25 = add i16 %21, %2
  store i16 %25, ptr %6, align 2
  br label %26

26:                                               ; preds = %7, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc zeroext i8 @CheckMapBank4PathBlocked(i16 noundef zeroext %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5, i16 noundef zeroext %6, i16 noundef zeroext %7, i8 noundef zeroext %8) local_unnamed_addr #3 {
  %10 = icmp eq i8 %8, 0
  %11 = icmp ult i16 %0, %4
  %12 = icmp ugt i16 %0, %5
  %13 = or i1 %11, %12
  %14 = icmp ult i16 %1, %6
  %15 = or i1 %13, %14
  %16 = icmp ugt i16 %1, %7
  %17 = or i1 %15, %16
  br i1 %10, label %28, label %18

18:                                               ; preds = %9
  br i1 %17, label %19, label %27

19:                                               ; preds = %18
  %20 = icmp ult i16 %2, %4
  %21 = icmp ugt i16 %2, %5
  %22 = or i1 %20, %21
  %23 = icmp ult i16 %3, %6
  %24 = or i1 %22, %23
  %25 = icmp ugt i16 %3, %7
  %26 = or i1 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %19, %18
  br label %31

28:                                               ; preds = %9
  %29 = xor i1 %17, true
  %30 = zext i1 %29 to i8
  br label %31

31:                                               ; preds = %28, %19, %27
  %32 = phi i8 [ 1, %27 ], [ 0, %19 ], [ %30, %28 ]
  ret i8 %32
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank4BlockedPathAnimation(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = zext i8 %1 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = zext i8 %2 to i32
  %9 = add nuw nsw i32 %7, %8
  %10 = getelementptr [24 x i8], ptr @gMapBank4BlockedPathAnimations, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = zext i8 %11 to i32
  %15 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = trunc i32 %4 to i8
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %0, ptr noundef %16) #14
  %21 = add i8 %20, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %21, i8 noundef zeroext 0) #14
  br label %22

22:                                               ; preds = %5, %19
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank4DirectionalPathAnimation(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = trunc i32 %4 to i8
  %7 = zext i8 %1 to i32
  %8 = shl nuw nsw i32 %7, 2
  %9 = zext i8 %2 to i32
  %10 = add nuw nsw i32 %8, %9
  %11 = getelementptr [24 x i8], ptr @gMapBank4DirectionalPathAnimations, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = zext i8 %12 to i32
  %16 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = ptrtoint ptr %17 to i32
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %5
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %0, ptr noundef %17) #14
  %21 = icmp eq i8 %3, 0
  %22 = add i8 %6, 1
  br i1 %21, label %28, label %23

23:                                               ; preds = %20
  %24 = zext i8 %3 to i32
  %25 = add nsw i32 %24, -1
  %26 = getelementptr [0 x ptr], ptr @gMapBank4PathOverlayAnimations, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %27) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %22, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %6) #14
  br label %29

28:                                               ; preds = %20
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %22, i8 noundef zeroext 0) #14
  br label %29

29:                                               ; preds = %5, %23, %28
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackFollowMapBank4SteppedPath(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = load i8, ptr %1, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %8, i32 %10
  %12 = load i8, ptr @gRenderClassSlots0, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8, ptr @gRenderClassSlots1, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr i8, ptr %1, i32 1
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %1, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = or disjoint i32 %22, %18
  %24 = add i32 %23, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr i8, ptr %1, i32 3
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr i8, ptr %1, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 9
  %33 = shl nuw nsw i32 %28, 1
  %34 = or disjoint i32 %32, %33
  %35 = add i32 %34, ptrtoint (ptr @gAnimationClassValues to i32)
  %36 = inttoptr i32 %35 to ptr
  %37 = getelementptr i8, ptr %1, i32 12
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %1, i32 13
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 9
  %44 = shl nuw nsw i32 %39, 1
  %45 = or disjoint i32 %43, %44
  %46 = add i32 %45, ptrtoint (ptr @gAnimationClassValues to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = getelementptr i8, ptr %1, i32 7
  %49 = load i8, ptr %48, align 1
  %50 = zext i8 %49 to i32
  %51 = getelementptr i8, ptr %1, i32 8
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or disjoint i32 %54, %50
  %56 = getelementptr i8, ptr %1, i32 9
  %57 = load i8, ptr %56, align 1
  %58 = zext i8 %57 to i32
  %59 = shl nuw nsw i32 %58, 16
  %60 = or disjoint i32 %55, %59
  %61 = getelementptr i8, ptr %1, i32 10
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i32
  %64 = shl nuw i32 %63, 24
  %65 = or disjoint i32 %60, %64
  %66 = inttoptr i32 %65 to ptr
  %67 = getelementptr i8, ptr %1, i32 5
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i16
  %70 = getelementptr i8, ptr %1, i32 6
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i16
  %73 = shl nuw i16 %72, 8
  %74 = or disjoint i16 %73, %69
  %75 = getelementptr i8, ptr %1, i32 14
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr i8, ptr %1, i32 15
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = getelementptr i8, ptr %1, i32 11
  %82 = load i8, ptr %81, align 1
  %83 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %74) #14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #16
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %3
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %74, i32 noundef 1) #14
  store i8 0, ptr %25, align 1
  %86 = getelementptr i8, ptr %25, i32 1
  store i8 0, ptr %86, align 1
  %87 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 3
  %88 = load i32, ptr %87, align 4
  %89 = lshr i32 %88, 16
  %90 = trunc i32 %89 to i16
  store i16 %90, ptr %36, align 2
  %91 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = lshr i32 %92, 16
  %94 = trunc i32 %93 to i16
  %95 = getelementptr i16, ptr %36, i32 1
  store i16 %94, ptr %95, align 2
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  br label %96

96:                                               ; preds = %85, %3
  %97 = getelementptr i8, ptr %25, i32 1
  %98 = load i8, ptr %97, align 1
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = add i16 %74, 1
  br label %138

102:                                              ; preds = %96
  %103 = add i8 %98, -1
  store i8 %103, ptr %97, align 1
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %824

105:                                              ; preds = %102
  %106 = add i16 %74, 1
  %107 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %106) #14
  %108 = icmp eq i32 %107, 0
  %109 = load i8, ptr %25, align 1
  br i1 %108, label %110, label %117

110:                                              ; preds = %105
  %111 = add i8 %109, 3
  store i8 %111, ptr %25, align 1
  %112 = zext i8 %111 to i32
  %113 = getelementptr i16, ptr %66, i32 %112
  %114 = load i16, ptr %113, align 2
  %115 = icmp eq i16 %114, -1
  %116 = select i1 %115, i8 0, i8 %111
  br label %134

117:                                              ; preds = %105
  %118 = icmp ult i8 %109, 3
  br i1 %118, label %119, label %131

119:                                              ; preds = %117
  %120 = zext nneg i8 %109 to i32
  %121 = getelementptr i16, ptr %66, i32 %120
  %122 = load i16, ptr %121, align 2
  %123 = icmp eq i16 %122, -1
  br i1 %123, label %131, label %124

124:                                              ; preds = %119, %124
  %125 = phi i8 [ %126, %124 ], [ %109, %119 ]
  %126 = add i8 %125, 3
  store i8 %126, ptr %25, align 1
  %127 = zext i8 %126 to i32
  %128 = getelementptr i16, ptr %66, i32 %127
  %129 = load i16, ptr %128, align 2
  %130 = icmp eq i16 %129, -1
  br i1 %130, label %131, label %124

131:                                              ; preds = %124, %119, %117
  %132 = phi i8 [ %109, %119 ], [ %109, %117 ], [ %126, %124 ]
  %133 = add i8 %132, -3
  br label %134

134:                                              ; preds = %110, %131
  %135 = phi i8 [ %133, %131 ], [ %116, %110 ]
  store i8 %135, ptr %25, align 1
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  %136 = load i8, ptr %97, align 1
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %824

138:                                              ; preds = %100, %134
  %139 = phi i16 [ %101, %100 ], [ %106, %134 ]
  %140 = getelementptr %struct.RenderSlot, ptr %8, i32 %13, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = lshr i32 %141, 16
  %143 = trunc i32 %142 to i16
  %144 = getelementptr %struct.RenderSlot, ptr %8, i32 %13, i32 5
  %145 = load i32, ptr %144, align 4
  %146 = lshr i32 %145, 16
  %147 = trunc i32 %146 to i16
  %148 = getelementptr %struct.RenderSlot, ptr %8, i32 %15, i32 3
  %149 = load i32, ptr %148, align 4
  %150 = lshr i32 %149, 16
  %151 = trunc i32 %150 to i16
  %152 = getelementptr %struct.RenderSlot, ptr %8, i32 %15, i32 5
  %153 = load i32, ptr %152, align 4
  %154 = lshr i32 %153, 16
  %155 = trunc i32 %154 to i16
  %156 = add nuw nsw i32 %146, 24
  %157 = add nuw nsw i32 %142, 34
  %158 = add nuw nsw i32 %142, 26
  %159 = add nuw nsw i32 %142, 28
  %160 = add nuw nsw i32 %146, 32
  %161 = shl nuw nsw i32 %80, 16
  %162 = shl nuw nsw i32 %77, 8
  %163 = or disjoint i32 %161, %162
  %164 = getelementptr i16, ptr %36, i32 1
  %165 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 23
  %166 = icmp sgt i8 %82, -1
  %167 = and i8 %82, 127
  %168 = icmp eq i8 %167, 0
  br label %169

169:                                              ; preds = %820, %138
  %170 = phi i32 [ %822, %820 ], [ 0, %138 ]
  %171 = load i8, ptr %25, align 1
  %172 = zext i8 %171 to i32
  %173 = getelementptr i16, ptr %66, i32 %172
  %174 = load i16, ptr %173, align 2
  %175 = lshr i16 %174, 12
  br label %176

176:                                              ; preds = %169, %176
  switch i16 %175, label %176 [
    i16 0, label %177
    i16 1, label %232
    i16 2, label %289
    i16 3, label %344
    i16 4, label %401
    i16 5, label %405
    i16 6, label %500
    i16 7, label %596
    i16 8, label %602
  ]

177:                                              ; preds = %176
  %178 = load i16, ptr %47, align 2
  %179 = zext i16 %178 to i32
  %180 = add nuw nsw i32 %163, %179
  %181 = trunc i32 %180 to i16
  store i16 %181, ptr %47, align 2
  %182 = load i16, ptr %36, align 2
  %183 = zext i16 %182 to i32
  %184 = icmp ult i32 %159, %183
  %185 = add nuw nsw i32 %183, 28
  %186 = icmp ugt i32 %142, %185
  %187 = select i1 %184, i1 true, i1 %186
  %188 = load i16, ptr %164, align 2
  br i1 %187, label %194, label %189

189:                                              ; preds = %177
  %190 = zext i16 %188 to i32
  %191 = icmp ult i32 %160, %190
  %192 = icmp ugt i32 %156, %190
  %193 = select i1 %191, i1 true, i1 %192
  br i1 %193, label %194, label %824

194:                                              ; preds = %189, %177
  %195 = getelementptr i16, ptr %173, i32 1
  %196 = load i16, ptr %195, align 2
  %197 = icmp ugt i16 %188, %196
  br i1 %197, label %226, label %198

198:                                              ; preds = %194
  store i16 %196, ptr %164, align 2
  %199 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %200 = icmp eq i32 %199, 0
  %201 = load i8, ptr %25, align 1
  br i1 %200, label %202, label %209

202:                                              ; preds = %198
  %203 = add i8 %201, 3
  store i8 %203, ptr %25, align 1
  %204 = zext i8 %203 to i32
  %205 = getelementptr i16, ptr %66, i32 %204
  %206 = load i16, ptr %205, align 2
  %207 = icmp eq i16 %206, -1
  %208 = select i1 %207, i8 0, i8 %203
  br label %230

209:                                              ; preds = %198
  %210 = icmp ult i8 %201, 3
  br i1 %210, label %211, label %223

211:                                              ; preds = %209
  %212 = zext nneg i8 %201 to i32
  %213 = getelementptr i16, ptr %66, i32 %212
  %214 = load i16, ptr %213, align 2
  %215 = icmp eq i16 %214, -1
  br i1 %215, label %223, label %216

216:                                              ; preds = %211, %216
  %217 = phi i8 [ %218, %216 ], [ %201, %211 ]
  %218 = add i8 %217, 3
  store i8 %218, ptr %25, align 1
  %219 = zext i8 %218 to i32
  %220 = getelementptr i16, ptr %66, i32 %219
  %221 = load i16, ptr %220, align 2
  %222 = icmp eq i16 %221, -1
  br i1 %222, label %223, label %216

223:                                              ; preds = %216, %211, %209
  %224 = phi i8 [ %201, %211 ], [ %201, %209 ], [ %218, %216 ]
  %225 = add i8 %224, -3
  br label %230

226:                                              ; preds = %194
  %227 = lshr i32 %180, 16
  %228 = trunc i32 %227 to i16
  %229 = sub i16 %188, %228
  store i16 %229, ptr %164, align 2
  store i8 1, ptr %165, align 4
  br label %824

230:                                              ; preds = %223, %202
  %231 = phi i8 [ %225, %223 ], [ %208, %202 ]
  store i8 %231, ptr %25, align 1
  br label %820

232:                                              ; preds = %176
  %233 = load i16, ptr %47, align 2
  %234 = zext i16 %233 to i32
  %235 = add nuw nsw i32 %163, %234
  %236 = trunc i32 %235 to i16
  store i16 %236, ptr %47, align 2
  %237 = load i16, ptr %36, align 2
  %238 = zext i16 %237 to i32
  %239 = icmp ult i32 %159, %238
  %240 = add nuw nsw i32 %238, 28
  %241 = icmp ugt i32 %142, %240
  %242 = select i1 %239, i1 true, i1 %241
  %243 = load i16, ptr %164, align 2
  br i1 %242, label %251, label %244

244:                                              ; preds = %232
  %245 = zext i16 %243 to i32
  %246 = add nuw nsw i32 %245, 10
  %247 = icmp ult i32 %146, %246
  %248 = add nuw nsw i32 %245, 18
  %249 = icmp ugt i32 %146, %248
  %250 = select i1 %247, i1 true, i1 %249
  br i1 %250, label %251, label %824

251:                                              ; preds = %244, %232
  %252 = getelementptr i16, ptr %173, i32 1
  %253 = load i16, ptr %252, align 2
  %254 = icmp ult i16 %243, %253
  br i1 %254, label %283, label %255

255:                                              ; preds = %251
  store i16 %253, ptr %164, align 2
  %256 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %257 = icmp eq i32 %256, 0
  %258 = load i8, ptr %25, align 1
  br i1 %257, label %259, label %266

259:                                              ; preds = %255
  %260 = add i8 %258, 3
  store i8 %260, ptr %25, align 1
  %261 = zext i8 %260 to i32
  %262 = getelementptr i16, ptr %66, i32 %261
  %263 = load i16, ptr %262, align 2
  %264 = icmp eq i16 %263, -1
  %265 = select i1 %264, i8 0, i8 %260
  br label %287

266:                                              ; preds = %255
  %267 = icmp ult i8 %258, 3
  br i1 %267, label %268, label %280

268:                                              ; preds = %266
  %269 = zext nneg i8 %258 to i32
  %270 = getelementptr i16, ptr %66, i32 %269
  %271 = load i16, ptr %270, align 2
  %272 = icmp eq i16 %271, -1
  br i1 %272, label %280, label %273

273:                                              ; preds = %268, %273
  %274 = phi i8 [ %275, %273 ], [ %258, %268 ]
  %275 = add i8 %274, 3
  store i8 %275, ptr %25, align 1
  %276 = zext i8 %275 to i32
  %277 = getelementptr i16, ptr %66, i32 %276
  %278 = load i16, ptr %277, align 2
  %279 = icmp eq i16 %278, -1
  br i1 %279, label %280, label %273

280:                                              ; preds = %273, %268, %266
  %281 = phi i8 [ %258, %268 ], [ %258, %266 ], [ %275, %273 ]
  %282 = add i8 %281, -3
  br label %287

283:                                              ; preds = %251
  %284 = lshr i32 %235, 16
  %285 = trunc i32 %284 to i16
  %286 = add i16 %243, %285
  store i16 %286, ptr %164, align 2
  store i8 2, ptr %165, align 4
  br label %824

287:                                              ; preds = %280, %259
  %288 = phi i8 [ %282, %280 ], [ %265, %259 ]
  store i8 %288, ptr %25, align 1
  br label %820

289:                                              ; preds = %176
  %290 = load i16, ptr %47, align 2
  %291 = zext i16 %290 to i32
  %292 = add nuw nsw i32 %163, %291
  %293 = trunc i32 %292 to i16
  store i16 %293, ptr %47, align 2
  %294 = load i16, ptr %164, align 2
  %295 = zext i16 %294 to i32
  %296 = icmp ult i32 %156, %295
  %297 = add nuw nsw i32 %295, 20
  %298 = icmp ugt i32 %146, %297
  %299 = select i1 %296, i1 true, i1 %298
  %300 = load i16, ptr %36, align 2
  br i1 %299, label %306, label %301

301:                                              ; preds = %289
  %302 = zext i16 %300 to i32
  %303 = icmp ult i32 %157, %302
  %304 = icmp ugt i32 %158, %302
  %305 = select i1 %303, i1 true, i1 %304
  br i1 %305, label %306, label %824

306:                                              ; preds = %301, %289
  %307 = getelementptr i16, ptr %173, i32 1
  %308 = load i16, ptr %307, align 2
  %309 = icmp ugt i16 %300, %308
  br i1 %309, label %338, label %310

310:                                              ; preds = %306
  store i16 %308, ptr %36, align 2
  %311 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %312 = icmp eq i32 %311, 0
  %313 = load i8, ptr %25, align 1
  br i1 %312, label %314, label %321

314:                                              ; preds = %310
  %315 = add i8 %313, 3
  store i8 %315, ptr %25, align 1
  %316 = zext i8 %315 to i32
  %317 = getelementptr i16, ptr %66, i32 %316
  %318 = load i16, ptr %317, align 2
  %319 = icmp eq i16 %318, -1
  %320 = select i1 %319, i8 0, i8 %315
  br label %342

321:                                              ; preds = %310
  %322 = icmp ult i8 %313, 3
  br i1 %322, label %323, label %335

323:                                              ; preds = %321
  %324 = zext nneg i8 %313 to i32
  %325 = getelementptr i16, ptr %66, i32 %324
  %326 = load i16, ptr %325, align 2
  %327 = icmp eq i16 %326, -1
  br i1 %327, label %335, label %328

328:                                              ; preds = %323, %328
  %329 = phi i8 [ %330, %328 ], [ %313, %323 ]
  %330 = add i8 %329, 3
  store i8 %330, ptr %25, align 1
  %331 = zext i8 %330 to i32
  %332 = getelementptr i16, ptr %66, i32 %331
  %333 = load i16, ptr %332, align 2
  %334 = icmp eq i16 %333, -1
  br i1 %334, label %335, label %328

335:                                              ; preds = %328, %323, %321
  %336 = phi i8 [ %313, %323 ], [ %313, %321 ], [ %330, %328 ]
  %337 = add i8 %336, -3
  br label %342

338:                                              ; preds = %306
  %339 = lshr i32 %292, 16
  %340 = trunc i32 %339 to i16
  %341 = sub i16 %300, %340
  store i16 %341, ptr %36, align 2
  store i8 3, ptr %165, align 4
  br label %824

342:                                              ; preds = %335, %314
  %343 = phi i8 [ %337, %335 ], [ %320, %314 ]
  store i8 %343, ptr %25, align 1
  br label %820

344:                                              ; preds = %176
  %345 = load i16, ptr %47, align 2
  %346 = zext i16 %345 to i32
  %347 = add nuw nsw i32 %163, %346
  %348 = trunc i32 %347 to i16
  store i16 %348, ptr %47, align 2
  %349 = load i16, ptr %164, align 2
  %350 = zext i16 %349 to i32
  %351 = icmp ult i32 %156, %350
  %352 = add nuw nsw i32 %350, 20
  %353 = icmp ugt i32 %146, %352
  %354 = select i1 %351, i1 true, i1 %353
  %355 = load i16, ptr %36, align 2
  br i1 %354, label %363, label %356

356:                                              ; preds = %344
  %357 = zext i16 %355 to i32
  %358 = add nuw nsw i32 %357, 26
  %359 = icmp ult i32 %142, %358
  %360 = add nuw nsw i32 %357, 34
  %361 = icmp ugt i32 %142, %360
  %362 = select i1 %359, i1 true, i1 %361
  br i1 %362, label %363, label %824

363:                                              ; preds = %356, %344
  %364 = getelementptr i16, ptr %173, i32 1
  %365 = load i16, ptr %364, align 2
  %366 = icmp ult i16 %355, %365
  br i1 %366, label %395, label %367

367:                                              ; preds = %363
  store i16 %365, ptr %36, align 2
  %368 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %369 = icmp eq i32 %368, 0
  %370 = load i8, ptr %25, align 1
  br i1 %369, label %371, label %378

371:                                              ; preds = %367
  %372 = add i8 %370, 3
  store i8 %372, ptr %25, align 1
  %373 = zext i8 %372 to i32
  %374 = getelementptr i16, ptr %66, i32 %373
  %375 = load i16, ptr %374, align 2
  %376 = icmp eq i16 %375, -1
  %377 = select i1 %376, i8 0, i8 %372
  br label %399

378:                                              ; preds = %367
  %379 = icmp ult i8 %370, 3
  br i1 %379, label %380, label %392

380:                                              ; preds = %378
  %381 = zext nneg i8 %370 to i32
  %382 = getelementptr i16, ptr %66, i32 %381
  %383 = load i16, ptr %382, align 2
  %384 = icmp eq i16 %383, -1
  br i1 %384, label %392, label %385

385:                                              ; preds = %380, %385
  %386 = phi i8 [ %387, %385 ], [ %370, %380 ]
  %387 = add i8 %386, 3
  store i8 %387, ptr %25, align 1
  %388 = zext i8 %387 to i32
  %389 = getelementptr i16, ptr %66, i32 %388
  %390 = load i16, ptr %389, align 2
  %391 = icmp eq i16 %390, -1
  br i1 %391, label %392, label %385

392:                                              ; preds = %385, %380, %378
  %393 = phi i8 [ %370, %380 ], [ %370, %378 ], [ %387, %385 ]
  %394 = add i8 %393, -3
  br label %399

395:                                              ; preds = %363
  %396 = lshr i32 %347, 16
  %397 = trunc i32 %396 to i16
  %398 = add i16 %355, %397
  store i16 %398, ptr %36, align 2
  store i8 4, ptr %165, align 4
  br label %824

399:                                              ; preds = %392, %371
  %400 = phi i8 [ %394, %392 ], [ %377, %371 ]
  store i8 %400, ptr %25, align 1
  br label %820

401:                                              ; preds = %176
  %402 = getelementptr i16, ptr %173, i32 1
  %403 = load i16, ptr %402, align 2
  %404 = trunc i16 %403 to i8
  store i8 %404, ptr %97, align 1
  br label %824

405:                                              ; preds = %176
  %406 = load i16, ptr %47, align 2
  %407 = zext i16 %406 to i32
  %408 = add nuw nsw i32 %163, %407
  %409 = trunc i32 %408 to i16
  store i16 %409, ptr %47, align 2
  %410 = load i16, ptr @gMapBank4Half114C, align 2
  %411 = icmp eq i16 %410, -32768
  br i1 %411, label %412, label %421

412:                                              ; preds = %405
  %413 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 6) #14
  %414 = load i16, ptr %36, align 2
  %415 = shl i16 %413, 3
  %416 = sub i16 %414, %415
  %417 = call i16 @llvm.smax.i16(i16 %416, i16 0)
  store i16 %417, ptr @gMapBank4Half114C, align 2
  %418 = getelementptr i16, ptr %173, i32 1
  %419 = load i16, ptr %418, align 2
  %420 = call i16 @llvm.umax.i16(i16 %417, i16 %419)
  br label %820

421:                                              ; preds = %405
  %422 = load i16, ptr %164, align 2
  %423 = zext i16 %422 to i32
  %424 = icmp ult i32 %156, %423
  %425 = add nuw nsw i32 %423, 20
  %426 = icmp ugt i32 %146, %425
  %427 = select i1 %424, i1 true, i1 %426
  %428 = load i16, ptr %36, align 2
  br i1 %427, label %464, label %429

429:                                              ; preds = %421
  %430 = zext i16 %428 to i32
  %431 = icmp ult i32 %157, %430
  %432 = icmp ugt i32 %158, %430
  %433 = select i1 %431, i1 true, i1 %432
  br i1 %433, label %464, label %434

434:                                              ; preds = %429
  %435 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %436 = icmp eq i32 %435, 0
  %437 = load i8, ptr %25, align 1
  br i1 %436, label %438, label %445

438:                                              ; preds = %434
  %439 = add i8 %437, 3
  store i8 %439, ptr %25, align 1
  %440 = zext i8 %439 to i32
  %441 = getelementptr i16, ptr %66, i32 %440
  %442 = load i16, ptr %441, align 2
  %443 = icmp eq i16 %442, -1
  %444 = select i1 %443, i8 0, i8 %439
  br label %462

445:                                              ; preds = %434
  %446 = icmp ult i8 %437, 3
  br i1 %446, label %447, label %459

447:                                              ; preds = %445
  %448 = zext nneg i8 %437 to i32
  %449 = getelementptr i16, ptr %66, i32 %448
  %450 = load i16, ptr %449, align 2
  %451 = icmp eq i16 %450, -1
  br i1 %451, label %459, label %452

452:                                              ; preds = %447, %452
  %453 = phi i8 [ %454, %452 ], [ %437, %447 ]
  %454 = add i8 %453, 3
  store i8 %454, ptr %25, align 1
  %455 = zext i8 %454 to i32
  %456 = getelementptr i16, ptr %66, i32 %455
  %457 = load i16, ptr %456, align 2
  %458 = icmp eq i16 %457, -1
  br i1 %458, label %459, label %452

459:                                              ; preds = %452, %447, %445
  %460 = phi i8 [ %437, %447 ], [ %437, %445 ], [ %454, %452 ]
  %461 = add i8 %460, -3
  br label %462

462:                                              ; preds = %438, %459
  %463 = phi i8 [ %461, %459 ], [ %444, %438 ]
  store i8 %463, ptr %25, align 1
  br label %820

464:                                              ; preds = %429, %421
  %465 = icmp ugt i16 %428, %410
  br i1 %465, label %496, label %466

466:                                              ; preds = %464
  store i16 %410, ptr %36, align 2
  %467 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %468 = icmp eq i32 %467, 0
  %469 = load i8, ptr %25, align 1
  br i1 %468, label %470, label %477

470:                                              ; preds = %466
  %471 = add i8 %469, 3
  store i8 %471, ptr %25, align 1
  %472 = zext i8 %471 to i32
  %473 = getelementptr i16, ptr %66, i32 %472
  %474 = load i16, ptr %473, align 2
  %475 = icmp eq i16 %474, -1
  %476 = select i1 %475, i8 0, i8 %471
  br label %494

477:                                              ; preds = %466
  %478 = icmp ult i8 %469, 3
  br i1 %478, label %479, label %491

479:                                              ; preds = %477
  %480 = zext nneg i8 %469 to i32
  %481 = getelementptr i16, ptr %66, i32 %480
  %482 = load i16, ptr %481, align 2
  %483 = icmp eq i16 %482, -1
  br i1 %483, label %491, label %484

484:                                              ; preds = %479, %484
  %485 = phi i8 [ %486, %484 ], [ %469, %479 ]
  %486 = add i8 %485, 3
  store i8 %486, ptr %25, align 1
  %487 = zext i8 %486 to i32
  %488 = getelementptr i16, ptr %66, i32 %487
  %489 = load i16, ptr %488, align 2
  %490 = icmp eq i16 %489, -1
  br i1 %490, label %491, label %484

491:                                              ; preds = %484, %479, %477
  %492 = phi i8 [ %469, %479 ], [ %469, %477 ], [ %486, %484 ]
  %493 = add i8 %492, -3
  br label %494

494:                                              ; preds = %470, %491
  %495 = phi i8 [ %493, %491 ], [ %476, %470 ]
  store i8 %495, ptr %25, align 1
  br label %820

496:                                              ; preds = %464
  %497 = lshr i32 %408, 16
  %498 = trunc i32 %497 to i16
  %499 = sub i16 %428, %498
  store i16 %499, ptr %36, align 2
  store i8 3, ptr %165, align 4
  br label %824

500:                                              ; preds = %176
  %501 = load i16, ptr %47, align 2
  %502 = zext i16 %501 to i32
  %503 = add nuw nsw i32 %163, %502
  %504 = trunc i32 %503 to i16
  store i16 %504, ptr %47, align 2
  %505 = load i16, ptr @gMapBank4Half114C, align 2
  %506 = icmp eq i16 %505, -32768
  br i1 %506, label %507, label %515

507:                                              ; preds = %500
  %508 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 1, i16 noundef zeroext 6) #14
  %509 = load i16, ptr %36, align 2
  %510 = shl i16 %508, 3
  %511 = add i16 %510, %509
  store i16 %511, ptr @gMapBank4Half114C, align 2
  %512 = getelementptr i16, ptr %173, i32 1
  %513 = load i16, ptr %512, align 2
  %514 = call i16 @llvm.umin.i16(i16 %511, i16 %513)
  br label %820

515:                                              ; preds = %500
  %516 = load i16, ptr %164, align 2
  %517 = zext i16 %516 to i32
  %518 = icmp ult i32 %156, %517
  %519 = add nuw nsw i32 %517, 20
  %520 = icmp ugt i32 %146, %519
  %521 = select i1 %518, i1 true, i1 %520
  %522 = load i16, ptr %36, align 2
  br i1 %521, label %560, label %523

523:                                              ; preds = %515
  %524 = zext i16 %522 to i32
  %525 = add nuw nsw i32 %524, 26
  %526 = icmp ult i32 %142, %525
  %527 = add nuw nsw i32 %524, 34
  %528 = icmp ugt i32 %142, %527
  %529 = select i1 %526, i1 true, i1 %528
  br i1 %529, label %560, label %530

530:                                              ; preds = %523
  %531 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %532 = icmp eq i32 %531, 0
  %533 = load i8, ptr %25, align 1
  br i1 %532, label %534, label %541

534:                                              ; preds = %530
  %535 = add i8 %533, 3
  store i8 %535, ptr %25, align 1
  %536 = zext i8 %535 to i32
  %537 = getelementptr i16, ptr %66, i32 %536
  %538 = load i16, ptr %537, align 2
  %539 = icmp eq i16 %538, -1
  %540 = select i1 %539, i8 0, i8 %535
  br label %558

541:                                              ; preds = %530
  %542 = icmp ult i8 %533, 3
  br i1 %542, label %543, label %555

543:                                              ; preds = %541
  %544 = zext nneg i8 %533 to i32
  %545 = getelementptr i16, ptr %66, i32 %544
  %546 = load i16, ptr %545, align 2
  %547 = icmp eq i16 %546, -1
  br i1 %547, label %555, label %548

548:                                              ; preds = %543, %548
  %549 = phi i8 [ %550, %548 ], [ %533, %543 ]
  %550 = add i8 %549, 3
  store i8 %550, ptr %25, align 1
  %551 = zext i8 %550 to i32
  %552 = getelementptr i16, ptr %66, i32 %551
  %553 = load i16, ptr %552, align 2
  %554 = icmp eq i16 %553, -1
  br i1 %554, label %555, label %548

555:                                              ; preds = %548, %543, %541
  %556 = phi i8 [ %533, %543 ], [ %533, %541 ], [ %550, %548 ]
  %557 = add i8 %556, -3
  br label %558

558:                                              ; preds = %534, %555
  %559 = phi i8 [ %557, %555 ], [ %540, %534 ]
  store i8 %559, ptr %25, align 1
  br label %820

560:                                              ; preds = %523, %515
  %561 = icmp ult i16 %522, %505
  br i1 %561, label %592, label %562

562:                                              ; preds = %560
  store i16 %505, ptr %36, align 2
  %563 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %564 = icmp eq i32 %563, 0
  %565 = load i8, ptr %25, align 1
  br i1 %564, label %566, label %573

566:                                              ; preds = %562
  %567 = add i8 %565, 3
  store i8 %567, ptr %25, align 1
  %568 = zext i8 %567 to i32
  %569 = getelementptr i16, ptr %66, i32 %568
  %570 = load i16, ptr %569, align 2
  %571 = icmp eq i16 %570, -1
  %572 = select i1 %571, i8 0, i8 %567
  br label %590

573:                                              ; preds = %562
  %574 = icmp ult i8 %565, 3
  br i1 %574, label %575, label %587

575:                                              ; preds = %573
  %576 = zext nneg i8 %565 to i32
  %577 = getelementptr i16, ptr %66, i32 %576
  %578 = load i16, ptr %577, align 2
  %579 = icmp eq i16 %578, -1
  br i1 %579, label %587, label %580

580:                                              ; preds = %575, %580
  %581 = phi i8 [ %582, %580 ], [ %565, %575 ]
  %582 = add i8 %581, 3
  store i8 %582, ptr %25, align 1
  %583 = zext i8 %582 to i32
  %584 = getelementptr i16, ptr %66, i32 %583
  %585 = load i16, ptr %584, align 2
  %586 = icmp eq i16 %585, -1
  br i1 %586, label %587, label %580

587:                                              ; preds = %580, %575, %573
  %588 = phi i8 [ %565, %575 ], [ %565, %573 ], [ %582, %580 ]
  %589 = add i8 %588, -3
  br label %590

590:                                              ; preds = %566, %587
  %591 = phi i8 [ %589, %587 ], [ %572, %566 ]
  store i8 %591, ptr %25, align 1
  br label %820

592:                                              ; preds = %560
  %593 = lshr i32 %503, 16
  %594 = trunc i32 %593 to i16
  %595 = add i16 %522, %594
  store i16 %595, ptr %36, align 2
  store i8 4, ptr %165, align 4
  br label %824

596:                                              ; preds = %176
  %597 = call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 61) #14
  %598 = trunc i16 %597 to i8
  %599 = getelementptr i8, ptr %173, i32 2
  %600 = load i8, ptr %599, align 1
  %601 = add i8 %600, %598
  store i8 %601, ptr %97, align 1
  br label %824

602:                                              ; preds = %176
  %603 = load i16, ptr %47, align 2
  %604 = zext i16 %603 to i32
  %605 = add nuw nsw i32 %163, %604
  %606 = trunc i32 %605 to i16
  store i16 %606, ptr %47, align 2
  %607 = lshr i32 %605, 16
  %608 = trunc i32 %607 to i16
  %609 = load i16, ptr %36, align 2
  %610 = getelementptr i16, ptr %173, i32 1
  %611 = load i16, ptr %610, align 2
  %612 = icmp ugt i16 %609, %611
  br i1 %612, label %613, label %617

613:                                              ; preds = %602
  %614 = sub nsw i16 0, %608
  store i8 3, ptr %165, align 4
  %615 = load i16, ptr %36, align 2
  %616 = load i16, ptr %164, align 2
  br label %643

617:                                              ; preds = %602
  %618 = icmp ult i16 %609, %611
  br i1 %618, label %619, label %622

619:                                              ; preds = %617
  store i8 4, ptr %165, align 4
  %620 = load i16, ptr %36, align 2
  %621 = load i16, ptr %164, align 2
  br label %643

622:                                              ; preds = %617
  %623 = load i16, ptr %164, align 2
  %624 = getelementptr i16, ptr %173, i32 2
  %625 = load i16, ptr %624, align 2
  %626 = icmp ugt i16 %623, %625
  br i1 %626, label %627, label %631

627:                                              ; preds = %622
  %628 = sub nsw i32 0, %607
  store i8 1, ptr %165, align 4
  %629 = load i16, ptr %36, align 2
  %630 = load i16, ptr %164, align 2
  br label %643

631:                                              ; preds = %622
  %632 = icmp ult i16 %623, %625
  br i1 %632, label %633, label %636

633:                                              ; preds = %631
  store i8 2, ptr %165, align 4
  %634 = load i16, ptr %36, align 2
  %635 = load i16, ptr %164, align 2
  br label %643

636:                                              ; preds = %631
  %637 = load i8, ptr %165, align 4
  %638 = load i16, ptr %36, align 2
  %639 = load i16, ptr %164, align 2
  switch i8 %637, label %656 [
    i8 1, label %643
    i8 2, label %640
    i8 3, label %641
    i8 4, label %642
  ]

640:                                              ; preds = %636
  br label %643

641:                                              ; preds = %636
  br label %643

642:                                              ; preds = %636
  br label %643

643:                                              ; preds = %619, %613, %633, %627, %642, %641, %640, %636
  %644 = phi i16 [ %639, %636 ], [ %630, %627 ], [ %635, %633 ], [ %639, %640 ], [ %616, %613 ], [ %639, %641 ], [ %621, %619 ], [ %639, %642 ]
  %645 = phi i16 [ %638, %636 ], [ %629, %627 ], [ %634, %633 ], [ %638, %640 ], [ %615, %613 ], [ %638, %641 ], [ %620, %619 ], [ %638, %642 ]
  %646 = phi i16 [ 0, %636 ], [ 0, %627 ], [ 0, %633 ], [ 0, %640 ], [ %614, %613 ], [ 0, %641 ], [ %608, %619 ], [ 0, %642 ]
  %647 = phi i32 [ 0, %636 ], [ %628, %627 ], [ %607, %633 ], [ 0, %640 ], [ 0, %613 ], [ 0, %641 ], [ 0, %619 ], [ 0, %642 ]
  %648 = phi i16 [ -28, %636 ], [ -28, %627 ], [ -28, %633 ], [ -28, %640 ], [ -34, %613 ], [ -34, %641 ], [ 26, %619 ], [ 26, %642 ]
  %649 = phi i16 [ 28, %636 ], [ 28, %627 ], [ 28, %633 ], [ 28, %640 ], [ -26, %613 ], [ -26, %641 ], [ 34, %619 ], [ 34, %642 ]
  %650 = phi i16 [ -36, %636 ], [ -36, %627 ], [ 10, %633 ], [ 10, %640 ], [ -24, %613 ], [ -24, %641 ], [ -24, %619 ], [ -24, %642 ]
  %651 = phi i16 [ 16, %636 ], [ 16, %627 ], [ 26, %633 ], [ 26, %640 ], [ 20, %613 ], [ 20, %641 ], [ 20, %619 ], [ 20, %642 ]
  %652 = add i16 %648, %645
  store i16 %652, ptr %4, align 2
  %653 = add i16 %649, %645
  store i16 %653, ptr %5, align 2
  %654 = add i16 %650, %644
  store i16 %654, ptr %6, align 2
  %655 = add i16 %651, %644
  store i16 %655, ptr %7, align 2
  br label %656

656:                                              ; preds = %636, %643
  %657 = phi i16 [ 0, %636 ], [ %646, %643 ]
  %658 = phi i32 [ 0, %636 ], [ %647, %643 ]
  call void asm "", "=*m,=*m,=*m,=*m"(ptr nonnull elementtype(i16) %4, ptr nonnull elementtype(i16) %5, ptr nonnull elementtype(i16) %6, ptr nonnull elementtype(i16) %7) #16, !srcloc !9
  %659 = load i16, ptr %4, align 2
  %660 = load i16, ptr %5, align 2
  %661 = load i16, ptr %6, align 2
  %662 = load i16, ptr %7, align 2
  %663 = icmp ugt i16 %659, %143
  %664 = icmp ult i16 %660, %143
  %665 = or i1 %663, %664
  %666 = icmp ugt i16 %661, %147
  %667 = or i1 %665, %666
  %668 = icmp ult i16 %662, %147
  %669 = or i1 %667, %668
  br i1 %166, label %679, label %670

670:                                              ; preds = %656
  br i1 %669, label %671, label %680

671:                                              ; preds = %670
  %672 = icmp ugt i16 %659, %151
  %673 = icmp ult i16 %660, %151
  %674 = or i1 %672, %673
  %675 = icmp ugt i16 %661, %155
  %676 = or i1 %674, %675
  %677 = icmp ult i16 %662, %155
  %678 = or i1 %676, %677
  br i1 %678, label %765, label %680

679:                                              ; preds = %656
  br i1 %669, label %765, label %680

680:                                              ; preds = %671, %670, %679
  br i1 %168, label %745, label %681

681:                                              ; preds = %680
  %682 = icmp eq i32 %170, 0
  br i1 %682, label %703, label %683

683:                                              ; preds = %681
  %684 = load i8, ptr %173, align 1
  %685 = load i8, ptr %165, align 4
  %686 = add i8 %685, -1
  %687 = zext i8 %684 to i32
  %688 = shl nuw nsw i32 %687, 2
  %689 = zext i8 %686 to i32
  %690 = add nuw nsw i32 %688, %689
  %691 = getelementptr [24 x i8], ptr @gMapBank4BlockedPathAnimations, i32 0, i32 %690
  %692 = load i8, ptr %691, align 1
  %693 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %694 = load i32, ptr %693, align 4
  %695 = zext i8 %692 to i32
  %696 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %695
  %697 = load ptr, ptr %696, align 4
  %698 = ptrtoint ptr %697 to i32
  %699 = icmp eq i32 %694, %698
  br i1 %699, label %823, label %700

700:                                              ; preds = %683
  %701 = load i8, ptr %1, align 1
  call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %11, ptr noundef %697) #14
  %702 = add i8 %701, 1
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %702, i8 noundef zeroext 0) #14
  br label %823

703:                                              ; preds = %681
  %704 = load i16, ptr %173, align 2
  %705 = trunc i16 %704 to i8
  %706 = load i8, ptr %165, align 4
  %707 = add i8 %706, -1
  %708 = lshr i16 %704, 8
  %709 = trunc i16 %708 to i8
  %710 = and i8 %709, 15
  %711 = load i8, ptr %1, align 1
  %712 = zext i8 %711 to i32
  call arm_apcscc void @UpdateMapBank4DirectionalPathAnimation(ptr noundef %11, i8 noundef zeroext %705, i8 noundef zeroext %707, i8 noundef zeroext %710, i32 noundef %712) #17
  %713 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %714 = icmp eq i32 %713, 0
  %715 = zext i1 %714 to i32
  call arm_apcscc void @SetGameFlag(i16 noundef zeroext %139, i32 noundef %715) #14
  %716 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %717 = icmp eq i32 %716, 0
  %718 = load i8, ptr %25, align 1
  br i1 %717, label %719, label %726

719:                                              ; preds = %703
  %720 = add i8 %718, 3
  store i8 %720, ptr %25, align 1
  %721 = zext i8 %720 to i32
  %722 = getelementptr i16, ptr %66, i32 %721
  %723 = load i16, ptr %722, align 2
  %724 = icmp eq i16 %723, -1
  %725 = select i1 %724, i8 0, i8 %720
  br label %743

726:                                              ; preds = %703
  %727 = icmp ult i8 %718, 3
  br i1 %727, label %728, label %740

728:                                              ; preds = %726
  %729 = zext nneg i8 %718 to i32
  %730 = getelementptr i16, ptr %66, i32 %729
  %731 = load i16, ptr %730, align 2
  %732 = icmp eq i16 %731, -1
  br i1 %732, label %740, label %733

733:                                              ; preds = %728, %733
  %734 = phi i8 [ %735, %733 ], [ %718, %728 ]
  %735 = add i8 %734, 3
  store i8 %735, ptr %25, align 1
  %736 = zext i8 %735 to i32
  %737 = getelementptr i16, ptr %66, i32 %736
  %738 = load i16, ptr %737, align 2
  %739 = icmp eq i16 %738, -1
  br i1 %739, label %740, label %733

740:                                              ; preds = %733, %728, %726
  %741 = phi i8 [ %718, %728 ], [ %718, %726 ], [ %735, %733 ]
  %742 = add i8 %741, -3
  br label %743

743:                                              ; preds = %719, %740
  %744 = phi i8 [ %742, %740 ], [ %725, %719 ]
  store i8 %744, ptr %25, align 1
  br label %820

745:                                              ; preds = %680
  %746 = load i8, ptr %173, align 1
  %747 = load i8, ptr %165, align 4
  %748 = add i8 %747, -1
  %749 = zext i8 %746 to i32
  %750 = shl nuw nsw i32 %749, 2
  %751 = zext i8 %748 to i32
  %752 = add nuw nsw i32 %750, %751
  %753 = getelementptr [24 x i8], ptr @gMapBank4BlockedPathAnimations, i32 0, i32 %752
  %754 = load i8, ptr %753, align 1
  %755 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %756 = load i32, ptr %755, align 4
  %757 = zext i8 %754 to i32
  %758 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %757
  %759 = load ptr, ptr %758, align 4
  %760 = ptrtoint ptr %759 to i32
  %761 = icmp eq i32 %756, %760
  br i1 %761, label %823, label %762

762:                                              ; preds = %745
  %763 = load i8, ptr %1, align 1
  call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %11, ptr noundef %759) #14
  %764 = add i8 %763, 1
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %764, i8 noundef zeroext 0) #14
  br label %823

765:                                              ; preds = %671, %679
  %766 = getelementptr i16, ptr %173, i32 1
  %767 = and i32 %658, 65535
  %768 = load i16, ptr %173, align 2
  %769 = trunc i16 %768 to i8
  %770 = load i8, ptr %165, align 4
  %771 = add i8 %770, -1
  %772 = lshr i16 %768, 8
  %773 = trunc i16 %772 to i8
  %774 = and i8 %773, 15
  %775 = load i8, ptr %1, align 1
  %776 = zext i8 %775 to i32
  call arm_apcscc void @UpdateMapBank4DirectionalPathAnimation(ptr noundef %11, i8 noundef zeroext %769, i8 noundef zeroext %771, i8 noundef zeroext %774, i32 noundef %776) #17
  %777 = load i16, ptr %36, align 2
  %778 = add i16 %777, %657
  store i16 %778, ptr %36, align 2
  %779 = load i16, ptr %164, align 2
  %780 = zext i16 %779 to i32
  %781 = add nuw nsw i32 %767, %780
  %782 = call i32 asm "", "=l,0,~{r2}"(i32 %781) #15, !srcloc !10
  %783 = trunc i32 %782 to i16
  store i16 %783, ptr %164, align 2
  %784 = load i16, ptr %766, align 2
  %785 = icmp eq i16 %778, %784
  br i1 %785, label %786, label %823

786:                                              ; preds = %765
  %787 = getelementptr i16, ptr %173, i32 2
  %788 = load i16, ptr %787, align 2
  %789 = icmp eq i16 %788, %783
  br i1 %789, label %790, label %823

790:                                              ; preds = %786
  %791 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %139) #14
  %792 = icmp eq i32 %791, 0
  %793 = load i8, ptr %25, align 1
  br i1 %792, label %794, label %801

794:                                              ; preds = %790
  %795 = add i8 %793, 3
  store i8 %795, ptr %25, align 1
  %796 = zext i8 %795 to i32
  %797 = getelementptr i16, ptr %66, i32 %796
  %798 = load i16, ptr %797, align 2
  %799 = icmp eq i16 %798, -1
  %800 = select i1 %799, i8 0, i8 %795
  br label %818

801:                                              ; preds = %790
  %802 = icmp ult i8 %793, 3
  br i1 %802, label %803, label %815

803:                                              ; preds = %801
  %804 = zext nneg i8 %793 to i32
  %805 = getelementptr i16, ptr %66, i32 %804
  %806 = load i16, ptr %805, align 2
  %807 = icmp eq i16 %806, -1
  br i1 %807, label %815, label %808

808:                                              ; preds = %803, %808
  %809 = phi i8 [ %810, %808 ], [ %793, %803 ]
  %810 = add i8 %809, 3
  store i8 %810, ptr %25, align 1
  %811 = zext i8 %810 to i32
  %812 = getelementptr i16, ptr %66, i32 %811
  %813 = load i16, ptr %812, align 2
  %814 = icmp eq i16 %813, -1
  br i1 %814, label %815, label %808

815:                                              ; preds = %808, %803, %801
  %816 = phi i8 [ %793, %803 ], [ %793, %801 ], [ %810, %808 ]
  %817 = add i8 %816, -3
  br label %818

818:                                              ; preds = %794, %815
  %819 = phi i8 [ %817, %815 ], [ %800, %794 ]
  store i8 %819, ptr %25, align 1
  store i16 -32768, ptr @gMapBank4Half114C, align 2
  br label %823

820:                                              ; preds = %743, %230, %287, %342, %399, %462, %494, %412, %558, %590, %507
  %821 = phi i16 [ %514, %507 ], [ -32768, %590 ], [ -32768, %558 ], [ %420, %412 ], [ -32768, %494 ], [ -32768, %462 ], [ -32768, %399 ], [ -32768, %342 ], [ -32768, %287 ], [ -32768, %230 ], [ -32768, %743 ]
  %822 = phi i32 [ %170, %507 ], [ %170, %590 ], [ %170, %558 ], [ %170, %412 ], [ %170, %494 ], [ %170, %462 ], [ %170, %399 ], [ %170, %342 ], [ %170, %287 ], [ %170, %230 ], [ 1, %743 ]
  store i16 %821, ptr @gMapBank4Half114C, align 2
  br label %169

823:                                              ; preds = %762, %745, %700, %683, %765, %786, %818
  call void asm sideeffect "", "l,~{r6}"(i32 1) #16, !srcloc !11
  br label %824

824:                                              ; preds = %356, %301, %244, %189, %395, %338, %283, %226, %401, %596, %496, %592, %134, %102, %823
  %825 = tail call i32 asm "", "=l,~{r5}"() #15, !srcloc !12
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %827, label %853

827:                                              ; preds = %824
  %828 = load i8, ptr %25, align 1
  %829 = zext i8 %828 to i32
  %830 = getelementptr i16, ptr %66, i32 %829
  %831 = load i16, ptr %830, align 2
  %832 = lshr i16 %831, 8
  %833 = trunc i16 %832 to i8
  %834 = and i8 %833, 15
  %835 = load i8, ptr %1, align 1
  %836 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %837 = load i32, ptr %836, align 4
  %838 = and i16 %831, 255
  %839 = zext nneg i16 %838 to i32
  %840 = getelementptr [0 x ptr], ptr @gMapBank4PathAnimations, i32 0, i32 %839
  %841 = load ptr, ptr %840, align 4
  %842 = ptrtoint ptr %841 to i32
  %843 = icmp eq i32 %837, %842
  br i1 %843, label %853, label %844

844:                                              ; preds = %827
  call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %11, ptr noundef %841) #14
  %845 = icmp eq i8 %834, 0
  %846 = add i8 %835, 1
  br i1 %845, label %852, label %847

847:                                              ; preds = %844
  %848 = zext nneg i8 %834 to i32
  %849 = add nsw i32 %848, -1
  %850 = getelementptr [0 x ptr], ptr @gMapBank4PathOverlayAnimations, i32 0, i32 %849
  %851 = load ptr, ptr %850, align 4
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %846, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %851) #14
  call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %846, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %835) #14
  br label %853

852:                                              ; preds = %844
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %846, i8 noundef zeroext 0) #14
  br label %853

853:                                              ; preds = %824, %827, %847, %852
  %854 = load i16, ptr %36, align 2
  %855 = zext i16 %854 to i32
  %856 = shl nuw i32 %855, 16
  %857 = or disjoint i32 %856, 32768
  %858 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 3
  store i32 %857, ptr %858, align 4
  %859 = getelementptr i16, ptr %36, i32 1
  %860 = load i16, ptr %859, align 2
  %861 = zext i16 %860 to i32
  %862 = shl nuw i32 %861, 16
  %863 = or disjoint i32 %862, 32768
  %864 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 5
  store i32 %863, ptr %864, align 4
  store i32 1, ptr %2, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #16
  ret i32 16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc zeroext i16 @AccumulateMapBank4PathStep(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #10 {
  %3 = zext i16 %1 to i32
  %4 = shl nuw nsw i32 %3, 8
  %5 = load i16, ptr %0, align 2
  %6 = zext i16 %5 to i32
  %7 = add nuw nsw i32 %4, %6
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %0, align 2
  %9 = lshr i32 %7, 16
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @MapBank4PathNoop() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E56C() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143420654 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143420678 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E5B8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143354589 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E5D0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143349265 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E5E8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143317518 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E600() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143420868 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E614() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143420901 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RefreshMapBank4LeaderFacingAnimation() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %2, i32 23
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = add nsw i32 %6, -1
  %8 = getelementptr [0 x ptr], ptr @gMapChoiceField60Animations, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef %9) #14
  %10 = load i8, ptr @gRenderClassSlots0, align 1
  %11 = load ptr, ptr @gRenderSlots, align 4
  %12 = zext i8 %10 to i32
  %13 = getelementptr %struct.RenderSlot, ptr %11, i32 %12, i32 23
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = add nsw i32 %15, -1
  %17 = getelementptr [0 x ptr], ptr @gMapChoiceField60Animations, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %10, ptr noundef %18) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E684() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143421063 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143581506 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E6D0() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143421282 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143581528 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143581550 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E740() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528875) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143420856 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143421152 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E78C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143350169 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E7A4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143354527 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E7BC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143356070 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E7D4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143324851 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E7EC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143356082 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4Slots15And17Field60Word() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60(i32 noundef 15, i32 noundef 0) #14
  tail call arm_apcscc void @SetRenderField60(i32 noundef 17, i32 noundef 0) #14
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E81C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext %1, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143507784 to ptr)) #14
  %2 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull inttoptr (i32 143507784 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E844() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143505725 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E858() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143506823 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143506835 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E8A4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143505843 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E8B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143505610 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505622 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E904() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143504771 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E918() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143505883 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E92C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143505960 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E940() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143505822 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E954() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528827) #14
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143505633 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143505654 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E9A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143507932 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E9B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143505610 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E9C8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143421008 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E9DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @SetExtendedAnimationPreset14810() #14
  tail call arm_apcscc void @ConfigureRenderSetupPreset19EE8() #14
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14810() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19EE8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6E9F8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationAndIndicator148D0() #14
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A684() #14
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationAndIndicator148D0() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A684() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6EA08() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset14AF8() #14
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A598() #14
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14AF8() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A598() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank4Preset6EA18() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #14
  tail call arm_apcscc void @SetExtendedAnimationPreset14984() #14
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14984() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank4PathPresetNeighbors(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = add i8 %0, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #14
  %3 = add i8 %0, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %3, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EA54() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528955) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282149 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143297799 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530428 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530428 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143282149 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EAE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523370 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523370 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EB0C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523384 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EB28() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523405 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143523428 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EB7C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523478 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EB98() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523017 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143523041 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EBEC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143523017 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EC08() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577092 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577092 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EC30() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577079 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EC4C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577144 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6EC68() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577079 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143577198 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ECBC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577113 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ECD8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577144 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ECF4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528804) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143317518 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143317588 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143347519 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529792 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 10, i8 noundef zeroext 2) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 13, i8 noundef zeroext 2) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapBank4Preset6ED90() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577152 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143530428 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143577152 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackSetMapBank4MusicFlag(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 694, i32 noundef 1) #14
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext5120, i32 noundef 255, i32 noundef 128) #14
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext 36) #14
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackClearMapBank4MusicFlag(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 694, i32 noundef 0) #14
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackRestoreMapBank4Song38(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 694) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext5120, i32 noundef 255, i32 noundef 256) #14
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext 38) #14
  br label %7

7:                                                ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackRestoreMapBank4Song39(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 694) #14
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext5120, i32 noundef 255, i32 noundef 256) #14
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext 39) #14
  br label %7

7:                                                ; preds = %6, %3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #13

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind memory(none) }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 28509}
!5 = !{i64 57506}
!6 = !{i64 134617}
!7 = !{i64 137432}
!8 = !{i64 137572}
!9 = !{i64 145990}
!10 = !{i64 148798}
!11 = !{i64 149245}
!12 = !{i64 149385}
