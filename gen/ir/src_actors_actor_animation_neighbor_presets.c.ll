; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gActorPresetResource88B8840 = external dso_local constant [0 x i8], align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gActorPresetResource88B5325 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B5331 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B53A0 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B549D = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B6A36 = external dso_local constant [0 x i8], align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gActorPresetResource88B6A5D = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B6A83 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B408C = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B6A9F = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B6ADD = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B79D7 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4002 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4039 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4047 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B55BA = external dso_local constant [0 x i8], align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13354() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B8840) #2
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset1336C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B8840) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13384() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B5325) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset1339C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B5325) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset133B4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B5331) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset133CC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B53A0) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset133E4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88B549D) #2
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset133FC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B6A36) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13414() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B6A36) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset1342C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B6A5D) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13444() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B6A83) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset1345C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B408C) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset13474() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B6A9F) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset1348C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B6A9F) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset134A4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B6ADD) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset134BC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B6ADD) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset134D4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B79D7) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationPreset134EC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88B4002) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureActorNeighborSlots13504() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull @gActorPresetResource88B4002) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = add i8 %3, -1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88B4039) #2
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = add i8 %5, -1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #2
  %7 = load i8, ptr @gRenderClassSlots0, align 1
  %8 = add i8 %7, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %8, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gActorPresetResource88B4047) #2
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  %10 = add i8 %9, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %10, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %9) #2
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearActorNeighborField60_13584() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #2
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #2
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationAndIndicator135B0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B55BA) #2
  %2 = load i8, ptr @gRenderClassSlots1, align 1
  store i8 %2, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gActorPresetResource88B55BA to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetActorAnimationAndIndicator135E0() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88B55BA) #2
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  store i8 %2, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gActorPresetResource88B55BA to i32), ptr @gTaskRenderAnimationWordF7C, align 4
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
