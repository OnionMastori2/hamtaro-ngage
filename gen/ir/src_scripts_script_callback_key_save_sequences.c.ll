; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup3Block1EE40 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackFillSaveRecordsFromKeys(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 2) #2
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %59, label %4

4:                                                ; preds = %1
  %5 = tail call arm_apcscc i32 @ScriptCallbackReadKeyMask(ptr noundef null) #2
  %6 = load i16, ptr @gAnimationClassValues, align 2
  %7 = zext i16 %6 to i32
  %8 = and i32 %7, 512
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %28

10:                                               ; preds = %4
  %11 = and i32 %7, 256
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %10
  %14 = and i32 %7, 64
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %13, %16
  %17 = phi i32 [ %23, %16 ], [ 0, %13 ]
  %18 = phi i8 [ %22, %16 ], [ 61, %13 ]
  %19 = icmp ult i8 %18, 81
  %20 = select i1 %19, i8 %18, i8 0
  %21 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %17
  store i8 %20, ptr %21, align 1
  %22 = add nuw nsw i8 %18, 1
  %23 = add nuw nsw i32 %17, 1
  %24 = icmp eq i32 %23, 30
  br i1 %24, label %59, label %16

25:                                               ; preds = %13
  %26 = and i32 %7, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %59, label %28

28:                                               ; preds = %25, %10, %4
  %29 = phi i8 [ 1, %4 ], [ 31, %10 ], [ 0, %25 ]
  %30 = phi i8 [ 2, %4 ], [ 32, %10 ], [ 0, %25 ]
  %31 = phi i8 [ 3, %4 ], [ 33, %10 ], [ 0, %25 ]
  %32 = phi i8 [ 4, %4 ], [ 34, %10 ], [ 0, %25 ]
  %33 = phi i8 [ 5, %4 ], [ 35, %10 ], [ 0, %25 ]
  %34 = phi i8 [ 6, %4 ], [ 36, %10 ], [ 0, %25 ]
  %35 = phi i8 [ 7, %4 ], [ 37, %10 ], [ 0, %25 ]
  %36 = phi i8 [ 8, %4 ], [ 38, %10 ], [ 0, %25 ]
  %37 = phi i8 [ 9, %4 ], [ 39, %10 ], [ 0, %25 ]
  %38 = phi i8 [ 10, %4 ], [ 40, %10 ], [ 0, %25 ]
  %39 = phi i8 [ 11, %4 ], [ 41, %10 ], [ 0, %25 ]
  %40 = phi i8 [ 12, %4 ], [ 42, %10 ], [ 0, %25 ]
  %41 = phi i8 [ 13, %4 ], [ 43, %10 ], [ 0, %25 ]
  %42 = phi i8 [ 14, %4 ], [ 44, %10 ], [ 0, %25 ]
  %43 = phi i8 [ 15, %4 ], [ 45, %10 ], [ 0, %25 ]
  %44 = phi i8 [ 16, %4 ], [ 46, %10 ], [ 0, %25 ]
  %45 = phi i8 [ 17, %4 ], [ 47, %10 ], [ 0, %25 ]
  %46 = phi i8 [ 18, %4 ], [ 48, %10 ], [ 0, %25 ]
  %47 = phi i8 [ 19, %4 ], [ 49, %10 ], [ 0, %25 ]
  %48 = phi i8 [ 20, %4 ], [ 50, %10 ], [ 0, %25 ]
  %49 = phi i8 [ 21, %4 ], [ 51, %10 ], [ 0, %25 ]
  %50 = phi i8 [ 22, %4 ], [ 52, %10 ], [ 0, %25 ]
  %51 = phi i8 [ 23, %4 ], [ 53, %10 ], [ 0, %25 ]
  %52 = phi i8 [ 24, %4 ], [ 54, %10 ], [ 0, %25 ]
  %53 = phi i8 [ 25, %4 ], [ 55, %10 ], [ 0, %25 ]
  %54 = phi i8 [ 26, %4 ], [ 56, %10 ], [ 0, %25 ]
  %55 = phi i8 [ 27, %4 ], [ 57, %10 ], [ 0, %25 ]
  %56 = phi i8 [ 28, %4 ], [ 58, %10 ], [ 0, %25 ]
  %57 = phi i8 [ 29, %4 ], [ 59, %10 ], [ 0, %25 ]
  %58 = phi i8 [ 30, %4 ], [ 60, %10 ], [ 0, %25 ]
  store i8 %29, ptr @gSaveGroup3Block1EE40, align 1
  store i8 %30, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 1), align 1
  store i8 %31, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 2), align 1
  store i8 %32, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 3), align 1
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 4), align 1
  store i8 %34, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 5), align 1
  store i8 %35, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 6), align 1
  store i8 %36, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 7), align 1
  store i8 %37, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 8), align 1
  store i8 %38, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 9), align 1
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 10), align 1
  store i8 %40, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 11), align 1
  store i8 %41, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 12), align 1
  store i8 %42, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 13), align 1
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 14), align 1
  store i8 %44, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 15), align 1
  store i8 %45, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 16), align 1
  store i8 %46, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 17), align 1
  store i8 %47, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 18), align 1
  store i8 %48, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 19), align 1
  store i8 %49, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 20), align 1
  store i8 %50, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 21), align 1
  store i8 %51, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 22), align 1
  store i8 %52, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 23), align 1
  store i8 %53, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 24), align 1
  store i8 %54, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 25), align 1
  store i8 %55, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 26), align 1
  store i8 %56, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 27), align 1
  store i8 %57, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 28), align 1
  store i8 %58, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 29), align 1
  br label %59

59:                                               ; preds = %16, %28, %25, %1
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
