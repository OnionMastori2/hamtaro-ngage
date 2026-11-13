; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gDirectionSlot13DB5Animation1 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13DB5Animation2 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13DB5Animation3 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13DB5Animation4 = external dso_local constant [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureDirectionSlot13DB5(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 47), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 49), align 2
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 51), align 2
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 117), align 1
  switch i8 %5, label %22 [
    i8 1, label %6
    i8 2, label %10
    i8 3, label %14
    i8 4, label %18
  ]

6:                                                ; preds = %1
  %7 = sext i16 %2 to i32
  %8 = sext i16 %3 to i32
  %9 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef nonnull @gDirectionSlot13DB5Animation1) #3
  br label %22

10:                                               ; preds = %1
  %11 = sext i16 %2 to i32
  %12 = sext i16 %3 to i32
  %13 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 2, i8 noundef zeroext 114, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef nonnull @gDirectionSlot13DB5Animation2) #3
  br label %22

14:                                               ; preds = %1
  %15 = sext i16 %2 to i32
  %16 = sext i16 %3 to i32
  %17 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 3, i8 noundef zeroext 114, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef nonnull @gDirectionSlot13DB5Animation3) #3
  br label %22

18:                                               ; preds = %1
  %19 = sext i16 %2 to i32
  %20 = sext i16 %3 to i32
  %21 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 4, i8 noundef zeroext 114, i32 noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef nonnull @gDirectionSlot13DB5Animation4) #3
  br label %22

22:                                               ; preds = %1, %18, %14, %10, %6
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackClearClassSlotVelocityAndAccelerationY(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #2 {
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 56), align 2
  %5 = zext i16 %4 to i32
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %6, i32 %5, i32 6
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %6, i32 %5, i32 6, i32 1
  store i32 0, ptr %8, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %6, i32 %5, i32 6, i32 2
  store i32 0, ptr %9, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %6, i32 %5, i32 7, i32 1
  store i32 0, ptr %10, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetIdleAndRefreshWordChoice(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetLeaderIdleRenderAnimations() #3
  %2 = load i8, ptr @gRenderClassSlots1, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %1
  %5 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #3
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call arm_apcscc void @RefreshWordChoiceAnimations() #3
  br label %8

8:                                                ; preds = %7, %4, %1
  ret i32 0
}

declare dso_local arm_apcscc void @SetLeaderIdleRenderAnimations() local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @RefreshWordChoiceAnimations() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEnableGameFlag5(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 5, i32 noundef 1) #3
  ret i32 0
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
