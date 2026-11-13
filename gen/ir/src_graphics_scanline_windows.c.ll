; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

@gScanlinePhaseBytes = external dso_local global [0 x i8], align 1
@gScanlineTransitionBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScanlineWindowValues = external dso_local local_unnamed_addr global [2 x i16], align 2

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define dso_local arm_apcscc void @UpdateScanlineAlternatingWindow() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 227
  br i1 %5, label %6, label %21

6:                                                ; preds = %3, %0
  %7 = load i8, ptr @gScanlinePhaseBytes, align 1
  switch i8 %7, label %19 [
    i8 0, label %8
    i8 1, label %12
  ]

8:                                                ; preds = %6
  %9 = load i8, ptr @gScanlineTransitionBytes, align 1
  %10 = sub i8 -16, %9
  %11 = zext i8 %10 to i16
  br label %17

12:                                               ; preds = %6
  %13 = load i8, ptr @gScanlineTransitionBytes, align 1
  %14 = zext i8 %13 to i16
  %15 = shl nuw i16 %14, 8
  %16 = or disjoint i16 %15, 240
  br label %17

17:                                               ; preds = %12, %8
  %18 = phi i16 [ %11, %8 ], [ %16, %12 ]
  store i16 %18, ptr @gScanlineWindowValues, align 2
  br label %19

19:                                               ; preds = %17, %6
  %20 = xor i8 %7, 1
  store i8 %20, ptr @gScanlinePhaseBytes, align 1
  br label %21

21:                                               ; preds = %19, %3
  %22 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %23 = icmp eq i16 %22, 160
  br i1 %23, label %24, label %30

24:                                               ; preds = %21
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %26 = load i8, ptr @gScanlineTransitionBytes, align 1
  %27 = add i8 %26, %25
  store i8 %27, ptr @gScanlineTransitionBytes, align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  %28 = icmp ugt i8 %27, -16
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8 -16, ptr @gScanlineTransitionBytes, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  br label %30

30:                                               ; preds = %24, %29, %21
  ret void
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @UpdateScanlineScrolledWindow() local_unnamed_addr #1 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 227
  br i1 %5, label %6, label %32

6:                                                ; preds = %3, %0
  %7 = load i8, ptr @gScanlinePhaseBytes, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load i8, ptr @gScanlineTransitionBytes, align 1
  %11 = zext i8 %10 to i16
  %12 = sub nsw i16 240, %11
  store volatile i16 %12, ptr inttoptr (i32 67108892 to ptr), align 4
  %13 = load i8, ptr @gScanlineTransitionBytes, align 1
  %14 = sub i8 -16, %13
  %15 = zext i8 %14 to i16
  store i16 %15, ptr @gScanlineWindowValues, align 2
  %16 = load i8, ptr @gScanlinePhaseBytes, align 1
  br label %17

17:                                               ; preds = %9, %6
  %18 = phi i8 [ %16, %9 ], [ %7, %6 ]
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i8, ptr @gScanlineTransitionBytes, align 1
  %22 = zext i8 %21 to i16
  %23 = add nsw i16 %22, -240
  store volatile i16 %23, ptr inttoptr (i32 67108892 to ptr), align 4
  %24 = load i8, ptr @gScanlineTransitionBytes, align 1
  %25 = zext i8 %24 to i16
  %26 = shl nuw i16 %25, 8
  %27 = or disjoint i16 %26, 240
  store i16 %27, ptr @gScanlineWindowValues, align 2
  %28 = load i8, ptr @gScanlinePhaseBytes, align 1
  br label %29

29:                                               ; preds = %20, %17
  %30 = phi i8 [ %28, %20 ], [ %18, %17 ]
  %31 = xor i8 %30, 1
  store i8 %31, ptr @gScanlinePhaseBytes, align 1
  br label %32

32:                                               ; preds = %29, %3
  %33 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %34 = icmp eq i16 %33, 160
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %37 = load i8, ptr @gScanlineTransitionBytes, align 1
  %38 = add i8 %37, %36
  store i8 %38, ptr @gScanlineTransitionBytes, align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  %39 = icmp ugt i8 %38, -16
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i8 -16, ptr @gScanlineTransitionBytes, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  br label %41

41:                                               ; preds = %35, %40, %32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn
define dso_local arm_apcscc void @UpdateScanlineWindowBands() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 227
  br i1 %5, label %6, label %27

6:                                                ; preds = %3, %0
  %7 = load i8, ptr @gScanlinePhaseBytes, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i8, ptr @gScanlineTransitionBytes, align 1
  %11 = sub i8 -16, %10
  %12 = zext i8 %11 to i16
  store i16 %12, ptr @gScanlineWindowValues, align 2
  br label %13

13:                                               ; preds = %9, %6
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %15 = lshr i8 %14, 1
  %16 = icmp eq i8 %7, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i8, ptr @gScanlineTransitionBytes, align 1
  %19 = zext i8 %18 to i16
  %20 = shl nuw i16 %19, 8
  %21 = or disjoint i16 %20, 240
  store i16 %21, ptr @gScanlineWindowValues, align 2
  br label %22

22:                                               ; preds = %17, %13
  %23 = add i8 %7, 1
  store i8 %23, ptr @gScanlinePhaseBytes, align 1
  %24 = load volatile i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %25 = icmp ult i8 %23, %24
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  br label %27

27:                                               ; preds = %22, %26, %3
  %28 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %29 = icmp eq i16 %28, 160
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %32 = load i8, ptr @gScanlineTransitionBytes, align 1
  %33 = add i8 %32, %31
  store i8 %33, ptr @gScanlineTransitionBytes, align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  %34 = icmp ugt i8 %33, -16
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i8 -16, ptr @gScanlineTransitionBytes, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  br label %36

36:                                               ; preds = %30, %35, %27
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateScanlineScrolledBands() local_unnamed_addr #2 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 227
  br i1 %5, label %6, label %38

6:                                                ; preds = %3, %0
  %7 = load i8, ptr @gScanlinePhaseBytes, align 1
  switch i8 %7, label %16 [
    i8 0, label %8
    i8 1, label %12
  ]

8:                                                ; preds = %6
  %9 = load i8, ptr @gScanlineTransitionBytes, align 1
  %10 = sub i8 -16, %9
  %11 = zext i8 %10 to i16
  store i16 %11, ptr @gScanlineWindowValues, align 2
  br label %16

12:                                               ; preds = %6
  tail call void asm sideeffect "", "{r6}"(i32 65296) #3, !srcloc !4
  tail call void asm sideeffect "", "{r0}"(i32 65296) #3, !srcloc !5
  %13 = load i8, ptr @gScanlineTransitionBytes, align 1
  %14 = zext i8 %13 to i16
  %15 = add nsw i16 %14, -240
  store volatile i16 %15, ptr inttoptr (i32 67108892 to ptr), align 4
  br label %16

16:                                               ; preds = %6, %8, %12
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %18 = lshr i8 %17, 1
  %19 = icmp eq i8 %7, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load i8, ptr @gScanlineTransitionBytes, align 1
  %22 = zext i8 %21 to i16
  %23 = shl nuw i16 %22, 8
  %24 = or disjoint i16 %23, 240
  store i16 %24, ptr @gScanlineWindowValues, align 2
  br label %25

25:                                               ; preds = %20, %16
  %26 = load i8, ptr @gScanlinePhaseBytes, align 1
  %27 = add nuw i8 %18, 1
  %28 = icmp eq i8 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8, ptr @gScanlineTransitionBytes, align 1
  %31 = zext i8 %30 to i16
  %32 = sub nsw i16 240, %31
  store volatile i16 %32, ptr inttoptr (i32 67108892 to ptr), align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = add i8 %7, 1
  store i8 %34, ptr @gScanlinePhaseBytes, align 1
  %35 = load volatile i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %36 = icmp ult i8 %34, %35
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  br label %38

38:                                               ; preds = %33, %37, %3
  %39 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %40 = icmp eq i16 %39, 160
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %43 = load i8, ptr @gScanlineTransitionBytes, align 1
  %44 = add i8 %43, %42
  store i8 %44, ptr @gScanlineTransitionBytes, align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  %45 = icmp ugt i8 %44, -16
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i8 -16, ptr @gScanlineTransitionBytes, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  br label %47

47:                                               ; preds = %41, %46, %38
  ret void
}

attributes #0 = { mustprogress nofree norecurse nounwind willreturn "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 3473}
!5 = !{i64 3549}
