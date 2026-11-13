; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".balign 4, 0"

@gWordChoiceScreenAnimationB8C6 = external dso_local constant [0 x i8], align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ResetScreenRenderSlot1() local_unnamed_addr #0 {
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef 1) #2
  ret void
}

declare dso_local arm_apcscc void @ResetRenderSlot(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeScreenTaskRenderSlot10() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 112, i32 noundef 160, i32 noundef 0, i32 noundef 76, ptr noundef nonnull @gWordChoiceScreenAnimationB8C6) #2
  store i8 10, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 ptrtoint (ptr @gWordChoiceScreenAnimationB8C6 to i32), ptr @gTaskRenderAnimationWordF7C, align 4
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 311) #2
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearScreenRenderSlot9And10Animations() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 9, i8 noundef zeroext 0, ptr noundef null) #2
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 10, i8 noundef zeroext 0, ptr noundef null) #2
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
