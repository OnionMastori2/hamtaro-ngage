; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundBounds = type { i16, i16, i16, i16, i8, [3 x i8] }

@gBackgroundBounds = external dso_local local_unnamed_addr global [4 x %struct.BackgroundBounds], align 2
@gActorPresetResource88BA51E = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA52A = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA536 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA54B = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA557 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA563 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA583 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA59E = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA5B2 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA5EB = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA456 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA462 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA46E = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA47A = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA486 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ABCC8 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ABD66 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E16A1 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E1348 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ABEE8 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ABFAE = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E16F9 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E1340 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA4A8 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA4B4 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88BA4C0 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ABE43 = external dso_local constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetBackground2RightBottom1024(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i16 1024, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 2, i32 1), align 2
  store i16 1024, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 2, i32 3), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset01() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA51E) #4
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset02() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA52A) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset03() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA536) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset04() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA54B) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset05() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA557) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset06() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA563) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset07WithSlot17() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA583) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88BA59E) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset08() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA5B2) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset09() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA5EB) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset0A() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA456) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset0B() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA462) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset0C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA46E) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset0D() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA47A) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset0E() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA486) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @Slot16PresetNoop0F() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @Slot16PresetNoop10() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @Slot16PresetNoop11() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @Slot16PresetNoop12() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16IndicatorPreset13() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABCC8) #4
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABCC8) #4
  ret void
}

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16IndicatorPreset14WithGraphics4() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABD66) #4
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABD66) #4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 17, ptr noundef nonnull @gActorPresetResource88E16A1) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gActorPresetResource88E1348 to i32)) #4
  ret void
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16IndicatorPreset15() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABEE8) #4
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABEE8) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16IndicatorPreset16WithSlot17() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABFAE) #4
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABFAE) #4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88E16F9) #4
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #4
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gActorPresetResource88E1340 to i32)) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset17() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA4A8) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset18() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA4B4) #4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16AnimationPreset19() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88BA4C0) #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @Slot16PresetNoop1A() local_unnamed_addr #3 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSlot16IndicatorPreset1B() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABE43) #4
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88ABE43) #4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
