; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapBank2RenderCallback() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot19AnimationFB6B() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143391595 to ptr)) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank2LinkedSlotsE3BC() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143391623 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143391676 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143391707 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  ret void
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot19Animation01A0() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143393184 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank2LinkedSlotE440() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143393958 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538560 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank2LinkedSlotE47C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143393979 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538653 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot16AnimationEAC1() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143387329 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot19AnimationFDB5() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143392181 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot19AnimationFE1F() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143392287 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot13Animation6ADD() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354589 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot13Animation6A9F() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143354527 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot19AnimationFE54() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143392340 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot19AnimationFE70() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143392368 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank2LinkedSlotsE544() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143391074 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143391127 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143391158 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank2LinkedSlotsAndSetAnimationFAFE() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143391486 to ptr)) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot19AnimationFAE2() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143391458 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank2LinkedSlotsE5EC() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143387788 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143387809 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143387834 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank2LinkedSlotE650() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143391408 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143391436 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot19AnimationFAB0() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143391408 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot16IndicatorE6C0() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143386611 to ptr)) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143393237 to ptr)) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143386611 to ptr)) #3
  ret void
}

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank2Slot16AnimationEAF6() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143387382 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank2LinkedGroupsE700() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #3
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef 143528875) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143387958 to ptr)) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143393991 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143388302 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143388751 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143389200 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143389402 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143394341 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143394790 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143395239 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143395441 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143387958 to ptr)) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank2LinkedSlotE86C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143387922 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538684 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @CopyRenderSlotFromBytePairE8A8(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 %6
  %9 = getelementptr %struct.RenderSlot, ptr %7, i32 %3
  %10 = tail call arm_apcscc ptr @memcpy(ptr noundef %8, ptr noundef %9, i32 noundef 104) #3
  ret i32 2
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16AnimationE5CE() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143386062 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ClearMapBank2LinkedSlotsAndSetAnimationE5B2() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143386034 to ptr)) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ClearMapBank2LinkedSlotsAndSetAnimationE603() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143386115 to ptr)) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16AnimationE603() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143386115 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank2LinkedSlotsWithPriorityE940() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143386115 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143386143 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 15, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143386157 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 17, i8 noundef zeroext 1) #3
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16AnimationE686() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143386246 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16AnimationDD7F() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143383935 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank2LinkedSlotsAndIndicatorE9DC() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143384592 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531323 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531361 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143384592, ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank2LinkedSlotsEA54() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143384592 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531399 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531437 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SelectMapBank2AnimationsForDirectionsEAB8() local_unnamed_addr #1 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 16) #3
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %6 [
    i8 1, label %4
    i8 3, label %3
  ]

3:                                                ; preds = %0
  br label %4

4:                                                ; preds = %0, %3
  %5 = phi ptr [ inttoptr (i32 143311101 to ptr), %3 ], [ inttoptr (i32 143311046 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 10, ptr noundef nonnull %5) #3
  br label %6

6:                                                ; preds = %4, %0
  %7 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 13, i8 noundef zeroext 16) #3
  %8 = trunc i32 %7 to i8
  switch i8 %8, label %12 [
    i8 1, label %10
    i8 3, label %9
  ]

9:                                                ; preds = %6
  br label %10

10:                                               ; preds = %6, %9
  %11 = phi ptr [ inttoptr (i32 143343756 to ptr), %9 ], [ inttoptr (i32 143343701 to ptr), %6 ]
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull %11) #3
  br label %12

12:                                               ; preds = %10, %6
  %13 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 16, i8 noundef zeroext 10) #3
  %14 = trunc i32 %13 to i8
  switch i8 %14, label %18 [
    i8 2, label %16
    i8 4, label %15
  ]

15:                                               ; preds = %12
  br label %16

16:                                               ; preds = %12, %15
  %17 = phi ptr [ inttoptr (i32 143383991 to ptr), %15 ], [ inttoptr (i32 143383935 to ptr), %12 ]
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull %17) #3
  br label %18

18:                                               ; preds = %16, %12
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @CopyMapBank2BackgroundYToLayer2() local_unnamed_addr #1 {
  %1 = tail call arm_apcscc ptr @GetVideoState() #3
  %2 = getelementptr inbounds %struct.VideoState, ptr %1, i32 0, i32 14, i32 0, i32 2
  %3 = load i16, ptr %2, align 4
  %4 = getelementptr %struct.VideoState, ptr %1, i32 0, i32 14, i32 2, i32 2
  store i16 %3, ptr %4, align 4
  %5 = load i32, ptr %1, align 4
  %6 = or i32 %5, 16
  store i32 %6, ptr %1, align 4
  ret i32 0
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot10IndicatorEB78() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285043 to ptr)) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143301804 to ptr)) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143285043 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank2LinkedSlotEBA4() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143491730 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143491758 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16IndicatorEBF0() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143492523 to ptr)) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143492523 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank2LinkedSlotEC10() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143494746 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143494371 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16Animation8AA0() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143493792 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16Animation839E() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143491998 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16Animation90C5() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143495365 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapBank2LinkedSlotEC98() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143490749 to ptr)) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143491758 to ptr)) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16IndicatorECE4() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143494568 to ptr)) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143494568 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16Animation8CCE() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143494350 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot19Animation4A23() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143477283 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot19Animation519F() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143479199 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16IndicatorED40() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143492543 to ptr)) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143492543 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot19Animation4661() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143476321 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16IndicatorED74() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143494568 to ptr)) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143494568 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot16IndicatorED94() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143493598 to ptr)) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143480365 to ptr)) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 29, ptr noundef nonnull inttoptr (i32 143549897 to ptr)) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143493598 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot13IndicatorEDCC() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143297317 to ptr)) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143297317 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapBank2Slot13Animation4F17() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143347479 to ptr)) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SelectMapBank2Slot13AnimationForDirectionEE00() local_unnamed_addr #1 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 13, i8 noundef zeroext 10) #3
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %8 [
    i8 1, label %6
    i8 2, label %3
    i8 3, label %4
    i8 4, label %5
  ]

3:                                                ; preds = %0
  br label %6

4:                                                ; preds = %0
  br label %6

5:                                                ; preds = %0
  br label %6

6:                                                ; preds = %0, %3, %4, %5
  %7 = phi ptr [ inttoptr (i32 143343811 to ptr), %5 ], [ inttoptr (i32 143343756 to ptr), %4 ], [ inttoptr (i32 143343618 to ptr), %3 ], [ inttoptr (i32 143343701 to ptr), %0 ]
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull %7) #3
  br label %8

8:                                                ; preds = %6, %0
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
