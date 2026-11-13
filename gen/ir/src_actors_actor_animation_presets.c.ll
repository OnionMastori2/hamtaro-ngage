; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gDirectionSlot10Animation2 = external dso_local constant [0 x i8], align 1
@gDirectionSlot10Animation1 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B0A5F = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ACAF7 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E1740 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ACC20 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88AECA8 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ACB54 = external dso_local constant [0 x i8], align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gActorPresetResource88AD1F9 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88AD381 = external dso_local constant [0 x i8], align 1
@gDirectionSlot10Animation4 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88AD98E = external dso_local constant [0 x i8], align 1
@gActorPresetResource88AD9DC = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ADA0E = external dso_local constant [0 x i8], align 1
@gActorPresetResource88ADE4C = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B0CA0 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B08D3 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88AD641 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88AD680 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88A5724 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88A5788 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E135C = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E1ADF = external dso_local constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ActorPresetNoop12D78() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12D7C() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gDirectionSlot10Animation2) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12D94() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gDirectionSlot10Animation1) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12DAC() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B0A5F) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12DC4() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88ACAF7) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureActorPreviousSlot12DDC() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88E1740) #3
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #3
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12E20() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88ACC20) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12E38() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88AECA8) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12E50() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88ACB54) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12E68() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88ACB54) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12E80() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88AD1F9) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12E98() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88AD381) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12EB0() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gDirectionSlot10Animation4) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12EC8() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88AD98E) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12EE0() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88AD9DC) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12EF8() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88ADA0E) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12F10() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88ADE4C) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12F28() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88B0CA0) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12F40() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B08D3) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12F58() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88AD641) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset12F70() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88AD680) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationAndIndicator12F88() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88A5724) #3
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull @gActorPresetResource88A5724) #3
  ret void
}

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureActorNextSlot12FAC() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88A5788) #3
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gActorPresetResource88E135C to i32)) #3
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88E1ADF) #3
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = add i8 %5, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #3
  %7 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %7, ptr noundef nonnull @gActorPresetResource88A5788) #3
  ret void
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

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
