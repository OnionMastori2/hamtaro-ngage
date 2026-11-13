; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gGameCounterAnimationCountdown1130 = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterAnimationSteps37EC = external dso_local local_unnamed_addr global i32, align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gGameCounterAnimationDelta1128 = external dso_local local_unnamed_addr global i32, align 4
@gGameCounterAnimationDelay112C = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateGameCounter(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @gGameCounterAnimationCountdown1130, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr @gGameCounterAnimationCountdown1130, align 4
  %6 = icmp eq i32 %4, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %3
  %8 = load i32, ptr @gGameCounterAnimationSteps37EC, align 4
  %9 = icmp eq i32 %8, 0
  %10 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  %11 = zext i16 %10 to i32
  br i1 %9, label %25, label %12

12:                                               ; preds = %7
  %13 = add i32 %8, -1
  store i32 %13, ptr @gGameCounterAnimationSteps37EC, align 4
  %14 = load i32, ptr @gGameCounterAnimationDelta1128, align 4
  %15 = mul i32 %14, %13
  %16 = sub i32 %11, %15
  %17 = load i32, ptr @gGameCounterAnimationDelay112C, align 4
  store i32 %17, ptr @gGameCounterAnimationCountdown1130, align 4
  %18 = icmp slt i32 %14, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 333) #2
  %20 = load i32, ptr @gGameCounterAnimationDelta1128, align 4
  br label %21

21:                                               ; preds = %19, %12
  %22 = phi i32 [ %20, %19 ], [ %14, %12 ]
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 332) #2
  br label %33

25:                                               ; preds = %7
  store i32 0, ptr @gGameCounterAnimationCountdown1130, align 4
  br label %33

26:                                               ; preds = %3
  %27 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 7), align 2
  %28 = zext i16 %27 to i32
  %29 = load i32, ptr @gGameCounterAnimationDelta1128, align 4
  %30 = load i32, ptr @gGameCounterAnimationSteps37EC, align 4
  %31 = mul i32 %30, %29
  %32 = sub i32 %28, %31
  br label %33

33:                                               ; preds = %21, %24, %25, %26
  %34 = phi i32 [ %11, %25 ], [ %32, %26 ], [ %16, %24 ], [ %16, %21 ]
  tail call arm_apcscc void @RenderGameCounterDigits(i32 noundef %34) #2
  store i8 1, ptr %2, align 1
  ret i32 0
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @RenderGameCounterDigits(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
