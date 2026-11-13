; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceState = external dso_local local_unnamed_addr global i16, align 2
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptConditionalCursor084C0(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gMainScriptArgumentWords5E8, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %12 = getelementptr i8, ptr %0, i32 6
  %13 = load i8, ptr %10, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %14 = getelementptr i8, ptr %0, i32 7
  %15 = load i8, ptr %12, align 1
  store i8 %15, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %16 = load i8, ptr %14, align 1
  store i8 %16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %17 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %17
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr @gMainScriptArgumentWords5E8, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ %21, %19 ], [ %17, %1 ]
  %24 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %25 = icmp ult i32 %24, 16
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %24
  %28 = load i32, ptr %27, align 4
  store i32 %28, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %29

29:                                               ; preds = %26, %22
  %30 = tail call arm_apcscc i32 @EvaluateWordExpression(i32 noundef %23) #2
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %34 = inttoptr i32 %33 to ptr
  store ptr %34, ptr @gScriptCursor, align 4
  br label %35

35:                                               ; preds = %29, %32
  %36 = phi i32 [ 0, %32 ], [ 8, %29 ]
  store i32 %36, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc i32 @EvaluateWordExpression(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptInvoke086AC(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gMainScriptArgumentWords5E8, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %12 = getelementptr i8, ptr %0, i32 6
  %13 = load i8, ptr %10, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %14 = getelementptr i8, ptr %0, i32 7
  %15 = load i8, ptr %12, align 1
  store i8 %15, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %16 = load i8, ptr %14, align 1
  store i8 %16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %17 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %17
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr @gMainScriptArgumentWords5E8, align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ %21, %19 ], [ %17, %1 ]
  %24 = tail call arm_apcscc i32 @UpdateWordExpression(i32 noundef %23) #2
  store i32 4, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc i32 @UpdateWordExpression(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptAwaitWordChoice(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr @gMainScriptArgumentWords5E8, align 4
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %7 = getelementptr i8, ptr %0, i32 3
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %11 = getelementptr i8, ptr %0, i32 5
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %13 = getelementptr i8, ptr %0, i32 6
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %15 = getelementptr i8, ptr %0, i32 7
  %16 = load i8, ptr %15, align 1
  store i8 %16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %17 = getelementptr i8, ptr %0, i32 8
  %18 = load i8, ptr %17, align 1
  store i8 %18, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %19 = zext i8 %2 to i32
  %20 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %21 = icmp ult i32 %20, 16
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %20
  %24 = load i32, ptr %23, align 4
  store i32 %24, ptr @gMainScriptArgumentWords5E8, align 4
  br label %25

25:                                               ; preds = %22, %1
  %26 = phi i32 [ %24, %22 ], [ %20, %1 ]
  %27 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %28 = icmp ult i32 %27, 16
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %27
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = phi i32 [ %31, %29 ], [ %27, %25 ]
  %34 = load i16, ptr @gWordChoiceState, align 2
  %35 = icmp ult i16 %34, 3
  %36 = inttoptr i32 %26 to ptr
  %37 = tail call arm_apcscc i32 @UpdateWordChoiceDialog(i32 noundef %19, ptr noundef %36, i32 noundef %33) #2
  br i1 %35, label %38, label %40

38:                                               ; preds = %32
  %39 = trunc i32 %37 to i16
  store i16 %39, ptr @gScriptResult, align 2
  br label %40

40:                                               ; preds = %32, %38
  %41 = load i16, ptr @gWordChoiceState, align 2
  %42 = icmp eq i16 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i16 0, ptr @gWordChoiceState, align 2
  store i32 9, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %45

44:                                               ; preds = %40
  store i8 1, ptr @gScriptYielded, align 1
  br label %45

45:                                               ; preds = %44, %43
  ret void
}

declare dso_local arm_apcscc i32 @UpdateWordChoiceDialog(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
