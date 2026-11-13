; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

@gScanlinePhaseBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScanlineWindowValues = external dso_local global [2 x i16], align 2
@gScanlineTransitionBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateScanlineWindowSteps() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp eq i16 %1, 227
  %3 = add i16 %1, 1
  %4 = select i1 %2, i16 0, i16 %3
  %5 = icmp ult i16 %4, 161
  br i1 %5, label %6, label %32

6:                                                ; preds = %0
  %7 = zext nneg i16 %4 to i32
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %9 = zext i8 %8 to i32
  %10 = tail call arm_apcscc i32 @__modsi3(i32 noundef %7, i32 noundef %9) #2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %32

12:                                               ; preds = %6
  %13 = load i8, ptr @gScanlinePhaseBytes, align 1
  %14 = zext i8 %13 to i32
  %15 = load volatile i16, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %16 = zext i16 %15 to i32
  %17 = sub nsw i32 %16, %14
  %18 = trunc i32 %17 to i16
  store volatile i16 %18, ptr @gScanlineWindowValues, align 2
  %19 = and i32 %17, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  store volatile i16 0, ptr @gScanlineWindowValues, align 2
  br label %22

22:                                               ; preds = %21, %12
  %23 = load volatile i16, ptr @gScanlineWindowValues, align 2
  %24 = icmp ugt i16 %23, 240
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store volatile i16 240, ptr @gScanlineWindowValues, align 2
  br label %26

26:                                               ; preds = %25, %22
  %27 = load volatile i16, ptr @gScanlineWindowValues, align 2
  %28 = shl i16 %27, 8
  %29 = or disjoint i16 %28, 240
  store volatile i16 %29, ptr @gScanlineWindowValues, align 2
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 2), align 1
  %31 = add i8 %30, %13
  store i8 %31, ptr @gScanlinePhaseBytes, align 1
  br label %32

32:                                               ; preds = %6, %26, %0
  %33 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %34 = icmp eq i16 %33, 160
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load volatile i16, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %37 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %38 = zext i8 %37 to i16
  %39 = add i16 %36, %38
  store volatile i16 %39, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  %40 = load volatile i16, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %41 = zext i16 %40 to i32
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 2), align 1
  %43 = zext i8 %42 to i32
  %44 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %45 = zext i8 %44 to i32
  %46 = tail call arm_apcscc i32 @__divsi3(i32 noundef 160, i32 noundef %45) #2
  %47 = mul i32 %46, %43
  %48 = add i32 %47, 240
  %49 = icmp slt i32 %48, %41
  br i1 %49, label %50, label %52

50:                                               ; preds = %35
  %51 = trunc i32 %48 to i16
  store volatile i16 %51, ptr @gScanlineWindowValues, align 2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  br label %52

52:                                               ; preds = %35, %50, %32
  ret void
}

declare dso_local arm_apcscc i32 @__modsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @__divsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateScanlineScrolledSteps() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp eq i16 %1, 227
  %3 = add i16 %1, 1
  %4 = select i1 %2, i16 0, i16 %3
  %5 = icmp ult i16 %4, 161
  br i1 %5, label %6, label %35

6:                                                ; preds = %0
  %7 = zext nneg i16 %4 to i32
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %9 = zext i8 %8 to i32
  %10 = tail call arm_apcscc i32 @__modsi3(i32 noundef %7, i32 noundef %9) #2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %6
  %13 = load i8, ptr @gScanlinePhaseBytes, align 1
  %14 = zext i8 %13 to i32
  %15 = load volatile i16, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %16 = zext i16 %15 to i32
  %17 = sub nsw i32 %16, %14
  %18 = trunc i32 %17 to i16
  store volatile i16 %18, ptr @gScanlineWindowValues, align 2
  %19 = and i32 %17, 32768
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  store volatile i16 0, ptr @gScanlineWindowValues, align 2
  br label %22

22:                                               ; preds = %21, %12
  %23 = load volatile i16, ptr @gScanlineWindowValues, align 2
  %24 = icmp ugt i16 %23, 240
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store volatile i16 240, ptr @gScanlineWindowValues, align 2
  br label %26

26:                                               ; preds = %25, %22
  %27 = load volatile i16, ptr @gScanlineWindowValues, align 2
  %28 = sub i16 240, %27
  store volatile i16 %28, ptr inttoptr (i32 67108892 to ptr), align 4
  %29 = load volatile i16, ptr @gScanlineWindowValues, align 2
  %30 = shl i16 %29, 8
  %31 = or disjoint i16 %30, 240
  store volatile i16 %31, ptr @gScanlineWindowValues, align 2
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 2), align 1
  %33 = load i8, ptr @gScanlinePhaseBytes, align 1
  %34 = add i8 %33, %32
  store i8 %34, ptr @gScanlinePhaseBytes, align 1
  br label %35

35:                                               ; preds = %6, %26, %0
  %36 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %37 = icmp eq i16 %36, 160
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load volatile i16, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %41 = zext i8 %40 to i16
  %42 = add i16 %39, %41
  store volatile i16 %42, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  %43 = load volatile i16, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %44 = zext i16 %43 to i32
  %45 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 2), align 1
  %46 = zext i8 %45 to i32
  %47 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %48 = zext i8 %47 to i32
  %49 = tail call arm_apcscc i32 @__divsi3(i32 noundef 160, i32 noundef %48) #2
  %50 = mul i32 %49, %46
  %51 = add i32 %50, 240
  %52 = icmp slt i32 %51, %44
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = trunc i32 %51 to i16
  store volatile i16 %54, ptr @gScanlineWindowValues, align 2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  br label %55

55:                                               ; preds = %38, %53, %35
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
