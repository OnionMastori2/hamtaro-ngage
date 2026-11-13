; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gDirectionSlot13D70Animation1 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13D70Animation2 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13D70Animation3 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13D70Animation4 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13D74Animation1 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13D74Animation2 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13D74Animation3 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13D74Animation4 = external dso_local constant [0 x i8], align 1
@gDirectionSlot12Animation9F620 = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureDirectionSlot13D70(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
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
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef nonnull @gDirectionSlot13D70Animation1) #2
  br label %22

10:                                               ; preds = %1
  %11 = sext i16 %2 to i32
  %12 = sext i16 %3 to i32
  %13 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 2, i8 noundef zeroext 114, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef nonnull @gDirectionSlot13D70Animation2) #2
  br label %22

14:                                               ; preds = %1
  %15 = sext i16 %2 to i32
  %16 = sext i16 %3 to i32
  %17 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 3, i8 noundef zeroext 114, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef nonnull @gDirectionSlot13D70Animation3) #2
  br label %22

18:                                               ; preds = %1
  %19 = sext i16 %2 to i32
  %20 = sext i16 %3 to i32
  %21 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 4, i8 noundef zeroext 114, i32 noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef nonnull @gDirectionSlot13D70Animation4) #2
  br label %22

22:                                               ; preds = %1, %18, %14, %10, %6
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureDirectionSlots13D74And12(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
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
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef nonnull @gDirectionSlot13D74Animation1) #2
  br label %22

10:                                               ; preds = %1
  %11 = sext i16 %2 to i32
  %12 = sext i16 %3 to i32
  %13 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 2, i8 noundef zeroext 114, i32 noundef %11, i32 noundef %12, i32 noundef %13, ptr noundef nonnull @gDirectionSlot13D74Animation2) #2
  br label %22

14:                                               ; preds = %1
  %15 = sext i16 %2 to i32
  %16 = sext i16 %3 to i32
  %17 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 3, i8 noundef zeroext 114, i32 noundef %15, i32 noundef %16, i32 noundef %17, ptr noundef nonnull @gDirectionSlot13D74Animation3) #2
  br label %22

18:                                               ; preds = %1
  %19 = sext i16 %2 to i32
  %20 = sext i16 %3 to i32
  %21 = sext i16 %4 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 4, i8 noundef zeroext 114, i32 noundef %19, i32 noundef %20, i32 noundef %21, ptr noundef nonnull @gDirectionSlot13D74Animation4) #2
  br label %22

22:                                               ; preds = %1, %18, %14, %10, %6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gDirectionSlot12Animation9F620) #2
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #2
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
