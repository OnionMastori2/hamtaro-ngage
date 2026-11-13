; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInterpolateClassFacing(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 39), align 2
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %30, label %4

4:                                                ; preds = %1
  %5 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 41), align 2
  %6 = sext i16 %5 to i32
  %7 = sext i16 %2 to i32
  %8 = tail call arm_apcscc i32 @DivideFixed16(i32 noundef %6, i32 noundef %7) #2
  %9 = load i8, ptr %0, align 1
  %10 = icmp eq i8 %9, 0
  %11 = select i1 %10, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 17), ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 16)
  %12 = load i16, ptr %11, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 38), align 2
  %15 = zext i16 %14 to i32
  %16 = sub nsw i32 %13, %15
  %17 = mul i32 %16, %8
  %18 = ashr i32 %17, 16
  %19 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 40), align 2
  %20 = zext i16 %19 to i32
  %21 = tail call { i32, i32 } asm "", "={r0},={r4},{r0},{r4}"(i32 %18, i32 %20) #3, !srcloc !4
  %22 = extractvalue { i32, i32 } %21, 0
  %23 = extractvalue { i32, i32 } %21, 1
  %24 = add i32 %22, %23
  %25 = and i32 %24, 65528
  %26 = shl i32 %24, 1
  %27 = and i32 %26, 8
  %28 = add nuw nsw i32 %27, %25
  %29 = trunc i32 %28 to i16
  store i16 %29, ptr %11, align 2
  br label %30

30:                                               ; preds = %4, %1
  ret i32 1
}

declare dso_local arm_apcscc i32 @DivideFixed16(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 750}
