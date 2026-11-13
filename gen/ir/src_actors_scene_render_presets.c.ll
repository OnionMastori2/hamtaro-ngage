; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScenePresetResource088C97B7 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C97D4 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C97F5 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9809 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C980C = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9820 = external dso_local constant [0 x i8], align 1
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1
@gActorPresetResource88CABD0 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CC40C = external dso_local constant [0 x i8], align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gScenePresetResource088C4BA6 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C99F4 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E135C = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9A09 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9A23 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9A2F = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9A49 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9A55 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9A61 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88E13AB = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9A6D = external dso_local constant [0 x i8], align 1
@gScenePresetResource088C9A85 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4E2F = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4BFD = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4A9C = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4E12 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4A7A = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4E06 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4D0F = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4AE0 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4AF5 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4E44 = external dso_local constant [0 x i8], align 1
@gScenePresetResource088F4AA9 = external dso_local constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @SceneRenderNoopB9700() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneSlot16AndLinkedSlotB9704() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 16, i32 noundef 96, i32 noundef 0, i32 noundef 64) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull @gScenePresetResource088C97B7) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScenePresetResource088C97D4) #3
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSceneSlot16AnimationB974C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 16, i32 noundef 96, i32 noundef 0, i32 noundef 64) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull @gScenePresetResource088C97F5) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSceneSlot16AnimationAndIndicatorB976C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 16, i32 noundef 96, i32 noundef 0, i32 noundef 64) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull @gScenePresetResource088C9809) #3
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull @gScenePresetResource088C9809) #3
  ret void
}

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSceneSlot16AnimationB9798() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 16, i32 noundef 96, i32 noundef 0, i32 noundef 64) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull @gScenePresetResource088C980C) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSceneSlot16AnimationB97B8() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 16, i32 noundef 96, i32 noundef 0, i32 noundef 64) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull @gScenePresetResource088C9820) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSceneClass3IndicatorB97D8() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CABD0) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSceneClass3IndicatorB97F0() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots3, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CC40C) #3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @SceneRenderNoopB9808() local_unnamed_addr #0 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplySceneSecondaryPresetB980C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetSecondaryAnimationPreset13D90() #3
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A8C0() #3
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13D90() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A8C0() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplySceneSecondaryPresetB981C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetSecondaryAnimationPreset13DA8() #3
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A914() #3
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13DA8() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A914() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneClass2NeighborB982C() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetSecondaryAnimationPreset13E20() #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScenePresetResource088C4BA6) #3
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %4, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #3
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset13E20() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplySceneExtendedPresetB9874() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetExtendedAnimationPreset1499C() #3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset1499C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplySceneExtendedPresetB9880() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetExtendedAnimationPreset149E4() #3
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A4AC() #3
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A500() #3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset149E4() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A4AC() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A500() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplySceneExtendedPresetB9894() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetExtendedAnimationPreset14A2C() #3
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A554() #3
  ret void
}

declare dso_local arm_apcscc void @SetExtendedAnimationPreset14A2C() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A554() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetSceneClass2AnimationB98A4() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gScenePresetResource088C99F4) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneClass2AnimationAndIndicatorB98BC() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gActorPresetResource88E135C to i32)) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gScenePresetResource088C9A09) #3
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScenePresetResource088C9A23) #3
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = add i8 %5, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #3
  %7 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %7, ptr noundef nonnull @gScenePresetResource088C9A09) #3
  ret void
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneClass2AnimationAndIndicatorB9924() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gActorPresetResource88E135C to i32)) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gScenePresetResource088C9A2F) #3
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScenePresetResource088C9A49) #3
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = add i8 %5, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #3
  %7 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %7, ptr noundef nonnull @gScenePresetResource088C9A2F) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneClass2AnimationAndNeighborB998C() local_unnamed_addr #1 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gScenePresetResource088C9A55) #3
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScenePresetResource088C9A61) #3
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = add i8 %5, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneClass2AnimationAndNeighborB99DC() local_unnamed_addr #1 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gActorPresetResource88E13AB to i32)) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gScenePresetResource088C9A6D) #3
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScenePresetResource088C9A85) #3
  %5 = load i8, ptr @gRenderClassSlots2, align 1
  %6 = add i8 %5, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneBackgroundSlotsB9A3C() local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @gScenePresetResource088F4E2F) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull @gScenePresetResource088F4BFD) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gScenePresetResource088F4A9C) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 25, i32 noundef 0) #3
  ret void
}

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneBackgroundSlotsB9A70() local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @gScenePresetResource088F4E12) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull @gScenePresetResource088F4BFD) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gScenePresetResource088F4A7A) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 25, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyScenePrimaryPresetB9AA4() local_unnamed_addr #1 {
  tail call arm_apcscc void @SetActorAnimationPreset12EB0() #3
  tail call arm_apcscc void @SetActorAnimationPreset13474() #3
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12EB0() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetActorAnimationPreset13474() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneBackgroundSlotsB9AB4() local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @gScenePresetResource088F4E06) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull @gScenePresetResource088F4D0F) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gScenePresetResource088F4A7A) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 25, i32 noundef 0) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneBackgroundSlotsB9AE8() local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @gScenePresetResource088F4E2F) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull @gScenePresetResource088F4BFD) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gScenePresetResource088F4AE0) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gScenePresetResource088F4AF5) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSceneBackgroundSlotsB9B34() local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 4, i32 noundef 1, ptr noundef nonnull @gScenePresetResource088F4E44) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 30, ptr noundef nonnull @gScenePresetResource088F4BFD) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 24, ptr noundef nonnull @gScenePresetResource088F4AA9) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef 25, i32 noundef 0) #3
  ret void
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
