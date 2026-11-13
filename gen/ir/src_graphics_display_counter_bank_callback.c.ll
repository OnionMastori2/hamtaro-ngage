; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gGameCounterDisplayBank3798 = external dso_local local_unnamed_addr global i32, align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderCurrentCounterBank(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i32, ptr @gGameCounterDisplayBank3798, align 4
  switch i32 %4, label %14 [
    i32 0, label %5
    i32 1, label %8
    i32 2, label %11
  ]

5:                                                ; preds = %3
  %6 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  %7 = zext i16 %6 to i32
  tail call arm_apcscc void @RenderGameCounterBank0(i32 noundef %7) #2
  br label %14

8:                                                ; preds = %3
  %9 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 11), align 2
  %10 = zext i16 %9 to i32
  tail call arm_apcscc void @RenderGameCounterBank1(i32 noundef %10) #2
  br label %14

11:                                               ; preds = %3
  %12 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 10), align 2
  %13 = zext i16 %12 to i32
  tail call arm_apcscc void @RenderGameCounterBank2(i32 noundef %13) #2
  br label %14

14:                                               ; preds = %3, %11, %8, %5
  store i8 1, ptr %2, align 1
  ret i32 0
}

declare dso_local arm_apcscc void @RenderGameCounterBank0(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @RenderGameCounterBank1(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @RenderGameCounterBank2(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
