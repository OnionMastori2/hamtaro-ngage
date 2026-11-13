; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gScreenPairResource8E137B = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5AB7 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1D87 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1DAD = external dso_local constant [0 x i8], align 1
@gGameFlags = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScreenPairResource8A9BE9 = external dso_local constant [0 x i8], align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4
@gScreenPairResource8A5AFB = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1D3B = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1D61 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A9C27 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5B33 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A9CAC = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5BC9 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1DD3 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A82D4 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5DAB = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1E37 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1EFC = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A9F78 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5ECC = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1FAD = external dso_local constant [0 x i8], align 1
@gScreenPairResource8AA090 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5F6A = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1FF0 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8AA128 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5FF6 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8AA1E8 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A6621 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8AB59D = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E308E = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E13F3 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A6659 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8AB5D2 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E309C = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A66E2 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8AB655 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E30FE = external dso_local constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F7D8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gScreenPairResource8E137B to i32)) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5AB7) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1D87) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1DAD) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gGameFlags, i32 0, i32 2), align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A9BE9) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1D87) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1DAD) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  br label %6

6:                                                ; preds = %5, %1
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5AB7 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F8B8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gScreenPairResource8E137B to i32)) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5AFB) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1D3B) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1D61) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A9C27) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1D3B) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1D61) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5AFB to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F994(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5B33) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A9CAC) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5B33 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F9CC(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5BC9) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1DD3) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A82D4) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1DD3) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  br label %5

5:                                                ; preds = %4, %1
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5BC9 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1FA54(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5DAB) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1E37) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1EFC) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A9F78) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1E37) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1EFC) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5DAB to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1FB20(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5ECC) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1FAD) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8AA090) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1FAD) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5ECC to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1FBA0(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5F6A) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1FF0) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8AA128) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1FF0) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5F6A to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1FC20(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5FF6) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8AA1E8) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5FF6 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1FC58(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A6621) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8AB59D) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E308E) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E308E) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A6621 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1FCD8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gScreenPairResource8E13F3 to i32)) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A6659) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8AB5D2) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E309C) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A6659 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1FD48(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A66E2) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8AB655) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E30FE) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E30FE) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #3
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A66E2 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSnapshotScreenPairPositions(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr i8, ptr %2, i32 1136
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, 15
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 116), align 1
  %6 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 16
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 46), align 2
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 4
  %11 = load i32, ptr %10, align 4
  %12 = lshr i32 %11, 16
  %13 = trunc i32 %12 to i16
  store i16 %13, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 48), align 2
  %14 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = lshr i32 %15, 16
  %17 = trunc i32 %16 to i16
  store i16 %17, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 50), align 2
  %18 = getelementptr i8, ptr %2, i32 1448
  %19 = load i8, ptr %18, align 1
  %20 = and i8 %19, 15
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 117), align 1
  %21 = getelementptr %struct.RenderSlot, ptr %2, i32 13, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = lshr i32 %22, 16
  %24 = trunc i32 %23 to i16
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 47), align 2
  %25 = getelementptr %struct.RenderSlot, ptr %2, i32 13, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 16
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 49), align 2
  %29 = getelementptr %struct.RenderSlot, ptr %2, i32 13, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = lshr i32 %30, 16
  %32 = trunc i32 %31 to i16
  store i16 %32, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 51), align 2
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
