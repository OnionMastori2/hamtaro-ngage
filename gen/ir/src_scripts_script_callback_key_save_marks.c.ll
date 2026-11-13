; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup01Block1CC20 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackMarkSaveRecordsFromKeys(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 2) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %10, label %4

4:                                                ; preds = %1
  %5 = tail call arm_apcscc i32 @ScriptCallbackReadKeyMask(ptr noundef null) #2
  %6 = load i16, ptr @gAnimationClassValues, align 2
  %7 = and i16 %6, 832
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 1), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 2), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 3), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 4), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 5), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 6), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 7), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 8), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 9), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 10), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 11), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 12), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 13), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 14), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 15), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 16), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 17), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 18), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 19), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 20), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 21), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 22), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 23), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 24), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 25), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 26), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 27), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 28), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 29), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 30), align 1
  br label %10

10:                                               ; preds = %9, %4, %1
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @ScriptCallbackReadKeyMask(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
