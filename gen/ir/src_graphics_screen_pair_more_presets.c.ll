; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScreenPairResource8A509F = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1A24 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A8DBB = external dso_local constant [0 x i8], align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4
@gScreenPairResource8A525C = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A9166 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5438 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A937D = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5470 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A93B2 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1412 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A54AE = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1B67 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A93ED = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A949D = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1C3C = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A953A = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1403 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A56EF = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1CBF = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1C65 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A9628 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1D24 = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F4D0(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A509F) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1A24) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A8DBB) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1A24) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #2
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A509F to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F550(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A525C) #2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A9166) #2
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A525C to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F588(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5438) #2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A937D) #2
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5438 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F5C0(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A5470) #2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A93B2) #2
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A5470 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F5F8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gScreenPairResource8E1412 to i32)) #2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A54AE) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1B67) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A93ED) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1B67) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #2
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A54AE to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F684(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A949D) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1C3C) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #2
  store i8 13, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A949D to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F6D8(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A953A) #2
  store i8 13, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A953A to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackScreenPreset1F704(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gScreenPairResource8E1403 to i32)) #2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull @gScreenPairResource8A56EF) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1CBF) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1C65) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gScreenPairResource8A9628) #2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScreenPairResource8E1D24) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #2
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gScreenPairResource8A56EF to i32), ptr @gTaskRenderAnimationWordF7C, align 4
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
