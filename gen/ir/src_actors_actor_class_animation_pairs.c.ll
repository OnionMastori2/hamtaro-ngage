; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gSceneRenderResource088BA603 = external dso_local constant [0 x i8], align 1
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1
@gActorPresetResource88C5C60 = external dso_local constant [0 x i8], align 1
@gActorPairResource88BC543 = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21D30() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationAndIndicator12F88() #2
  tail call arm_apcscc void @SetActorClassAnimationPreset138C8() #2
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationAndIndicator12F88() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorClassAnimationPreset138C8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21D40() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureActorPreviousSlotAndGraphics130EC() #2
  tail call arm_apcscc void @ConfigureFollowerPreviousSlotAndGraphics139B4() #2
  ret void
}

declare dso_local arm_apcscc void @ConfigureActorPreviousSlotAndGraphics130EC() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureFollowerPreviousSlotAndGraphics139B4() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21D50() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationAndIndicator13154() #2
  tail call arm_apcscc void @SetActorClassAnimationPreset13A14() #2
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationAndIndicator13154() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorClassAnimationPreset13A14() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21D60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationAndIndicator13178() #2
  tail call arm_apcscc void @SetActorClassAnimationPreset13A2C() #2
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationAndIndicator13178() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorClassAnimationPreset13A2C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21D70() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationAndIndicator1319C() #2
  tail call arm_apcscc void @SetActorClassAnimationPreset13A44() #2
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationAndIndicator1319C() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorClassAnimationPreset13A44() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21D80() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset14810() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset19B5C() #2
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14810() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19B5C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21D90() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset14810() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset19E40() #2
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19E40() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21DA0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetSecondaryAnimationPreset14004() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset19A0C() #2
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14004() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19A0C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21DB0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetSecondaryAnimationPreset14094() #2
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E90() #2
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14094() local_unnamed_addr #1

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E90() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21DC0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetSecondaryAnimationPreset14004() #2
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E90() #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21DD0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetSecondaryAnimationPreset14064() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset194DC() #2
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14064() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset194DC() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureActorAnimationAndPreviousSlot21DE0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset14888() #2
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gSceneRenderResource088BA603) #2
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #2
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14888() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21E28() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset1499C() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A458() #2
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset1499C() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A458() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationTriple21E38() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset149E4() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A4AC() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A500() #2
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset149E4() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A4AC() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A500() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationAndIndicator21E4C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset14984() #2
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88C5C60) #2
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14984() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationTriple21E68() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationPreset14B58() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A5EC() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A638() #2
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14B58() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A5EC() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A638() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationTriple21E7C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetExtendedAnimationAndIndicator14960() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A6D8() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A72C() #2
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationAndIndicator14960() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A6D8() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A72C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyActorAnimationPair21E90() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorClassAnimationPreset136B8() #2
  tail call arm_apcscc void @ConfigureRenderSetupPreset192A4() #2
  ret void
}

declare dso_local arm_apcscc void @SetActorClassAnimationPreset136B8() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset192A4() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearActorAnimationNeighbors21EA0() local_unnamed_addr #0 {
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E64() #2
  ret void
}

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E64() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameFlag17AndActorAnimation21EAC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #2
  tail call arm_apcscc void @SetExtendedAnimationPreset14984() #2
  ret void
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimation21EC0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPairResource88BC543) #2
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetGameFlag17AndActorAnimation21ED8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #2
  tail call arm_apcscc void @SetGraphicsAnimationAndIndicator15084() #2
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationAndIndicator15084() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
