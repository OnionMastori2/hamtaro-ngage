; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gGameCounterAnimationCountdown1130 = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterAnimationDelta1128 = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterAnimationSteps37EC = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterAnimationDelay112C = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterRenderAnimationF6BE = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSubtractGameCounterBank2(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 10), align 2
  %4 = zext i16 %3 to i32
  tail call arm_apcscc void @RenderGameCounterBank2(i32 noundef %4) #2
  store i32 0, ptr @gGameCounterAnimationCountdown1130, align 4
  %5 = icmp ugt i16 %2, %3
  %6 = select i1 %5, i16 0, i16 %2
  %7 = zext i16 %6 to i32
  %8 = add i16 %6, -1
  %9 = icmp ult i16 %8, 31
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  store i32 -1, ptr @gGameCounterAnimationDelta1128, align 4
  store i32 %7, ptr @gGameCounterAnimationSteps37EC, align 4
  %11 = tail call arm_apcscc i32 @BiosDiv(i32 noundef 32, i32 noundef %7) #2
  br label %15

12:                                               ; preds = %1
  %13 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %7, i32 noundef 32) #2
  %14 = sub i32 0, %13
  store i32 %14, ptr @gGameCounterAnimationDelta1128, align 4
  store i32 32, ptr @gGameCounterAnimationSteps37EC, align 4
  br label %15

15:                                               ; preds = %12, %10
  %16 = phi i32 [ 1, %12 ], [ %11, %10 ]
  store i32 %16, ptr @gGameCounterAnimationDelay112C, align 4
  %17 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 10), align 2
  %18 = sub i16 %17, %6
  store i16 %18, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 10), align 2
  store i16 %6, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  store i16 %18, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 176, i32 noundef -16, i32 noundef 0, ptr noundef nonnull @gGameCounterRenderAnimationF6BE) #2
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 2, i8 noundef zeroext 0) #2
  ret i32 0
}

declare dso_local arm_apcscc void @RenderGameCounterBank2(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAddGameCounterBank2(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 10), align 2
  %4 = zext i16 %3 to i32
  tail call arm_apcscc void @RenderGameCounterBank2(i32 noundef %4) #2
  %5 = zext i16 %2 to i32
  %6 = sub nsw i32 50, %4
  %7 = icmp slt i32 %6, %5
  %8 = trunc i32 %6 to i16
  %9 = select i1 %7, i16 %8, i16 %2
  store i32 0, ptr @gGameCounterAnimationCountdown1130, align 4
  %10 = zext i16 %9 to i32
  %11 = add i16 %9, -1
  %12 = icmp ult i16 %11, 31
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  store i32 1, ptr @gGameCounterAnimationDelta1128, align 4
  store i32 %10, ptr @gGameCounterAnimationSteps37EC, align 4
  %14 = tail call arm_apcscc i32 @BiosDiv(i32 noundef 32, i32 noundef %10) #2
  %15 = add i32 %14, -1
  br label %18

16:                                               ; preds = %1
  %17 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %10, i32 noundef 32) #2
  store i32 %17, ptr @gGameCounterAnimationDelta1128, align 4
  store i32 32, ptr @gGameCounterAnimationSteps37EC, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = phi i32 [ 0, %16 ], [ %15, %13 ]
  store i32 %19, ptr @gGameCounterAnimationDelay112C, align 4
  %20 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 10), align 2
  %21 = add i16 %20, %9
  store i16 %21, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 10), align 2
  store i16 %9, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 6), align 2
  store i16 %21, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 176, i32 noundef -16, i32 noundef 0, ptr noundef nonnull @gGameCounterRenderAnimationF6BE) #2
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 2, i8 noundef zeroext 0) #2
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
