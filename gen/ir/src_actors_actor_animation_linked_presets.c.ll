; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gActorPresetResource88A590A = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5AB7 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1D87 = external dso_local constant [0 x i8], align 1
@gScreenPairResource8E1DAD = external dso_local constant [0 x i8], align 1
@gScreenPairResource8A5ECC = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E1FD6 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E138B = external dso_local constant [0 x i8], align 1
@gActorPresetResource88A6AB9 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E2CF0 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E13AB = external dso_local constant [0 x i8], align 1
@gActorPresetResource88A6B7E = external dso_local constant [0 x i8], align 1
@gActorPresetResource88A6DC1 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88A6DDB = external dso_local constant [0 x i8], align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gActorPresetResource88B745B = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4F17 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B7F79 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4F23 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4F3F = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E1740 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B68F8 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4F90 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4FE1 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B50AB = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B50E3 = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationAndIndicator13014() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88A590A) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull @gActorPresetResource88A590A) #2
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureActorNeighborSlots13038() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gScreenPairResource8A5AB7) #2
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %2, ptr noundef nonnull @gScreenPairResource8A5AB7) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %4, i8 noundef zeroext %3, ptr noundef nonnull @gScreenPairResource8E1D87) #2
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = add i8 %5, 1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %6, i8 noundef zeroext %5, ptr noundef nonnull @gScreenPairResource8E1DAD) #2
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureActorPreviousSlotAndGraphics13084() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gScreenPairResource8A5ECC) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull @gScreenPairResource8A5ECC) #2
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %5, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88E1FD6) #2
  %6 = load i8, ptr @gRenderClassSlots0, align 1
  %7 = add i8 %6, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %7, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %6) #2
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gActorPresetResource88E138B to i32)) #2
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureActorPreviousSlotAndGraphics130EC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88A6AB9) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull @gActorPresetResource88A6AB9) #2
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  %5 = add i8 %4, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %5, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88E2CF0) #2
  %6 = load i8, ptr @gRenderClassSlots0, align 1
  %7 = add i8 %6, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %7, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %6) #2
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gActorPresetResource88E13AB to i32)) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationAndIndicator13154() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88A6B7E) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull @gActorPresetResource88A6B7E) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationAndIndicator13178() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88A6DC1) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull @gActorPresetResource88A6DC1) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationAndIndicator1319C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88A6DDB) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull @gActorPresetResource88A6DDB) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset131C0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B745B) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset131D8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4F17) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset131F0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4F17) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13208() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B7F79) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13220() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4F23) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13238() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4F23) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13250() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4F3F) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13268() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4F3F) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureFollowerPreviousSlot13280() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88E1740) #2
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset132C4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B68F8) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset132DC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4F90) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset132F4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4FE1) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset1330C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B4FE1) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13324() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B50AB) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset1333C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B50E3) #2
  ret void
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
