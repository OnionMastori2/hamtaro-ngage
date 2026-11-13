; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptCopyValuesByWidth(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %18 = zext i16 %17 to i32
  %19 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %18
  %20 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %21
  %23 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %24 = zext i16 %23 to i32
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %19, ptr noundef %22, i32 noundef %24) #3
  br label %45

25:                                               ; preds = %1
  %26 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %27 = zext i16 %26 to i32
  %28 = icmp eq i16 %26, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %25
  %30 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %31 = zext i16 %30 to i32
  %32 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %31
  %33 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %34 = zext i16 %33 to i32
  %35 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %34
  br label %36

36:                                               ; preds = %29, %36
  %37 = phi ptr [ %42, %36 ], [ %32, %29 ]
  %38 = phi ptr [ %40, %36 ], [ %35, %29 ]
  %39 = phi i32 [ %43, %36 ], [ 0, %29 ]
  %40 = getelementptr i8, ptr %38, i32 1
  %41 = load i8, ptr %38, align 1
  %42 = getelementptr i8, ptr %37, i32 1
  store i8 %41, ptr %37, align 1
  %43 = add nuw nsw i32 %39, 1
  %44 = icmp eq i32 %43, %27
  br i1 %44, label %45, label %36

45:                                               ; preds = %36, %25, %16
  store i32 7, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptJumpValuesEqual(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
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
  %19 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %20 = icmp ult i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %19
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i32 [ %23, %21 ], [ %19, %1 ]
  %26 = icmp eq i8 %2, 0
  %27 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %28 = zext i16 %27 to i32
  br i1 %26, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %28
  %31 = load i16, ptr %30, align 2
  %32 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %33 = icmp eq i16 %31, %32
  br i1 %33, label %39, label %41

34:                                               ; preds = %24
  %35 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %28
  %36 = load i8, ptr %35, align 1
  %37 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %38 = icmp eq i8 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %29
  %40 = inttoptr i32 %25 to ptr
  store ptr %40, ptr @gScriptCursor, align 4
  br label %41

41:                                               ; preds = %34, %29, %39
  %42 = phi i32 [ 0, %39 ], [ 9, %29 ], [ 9, %34 ]
  store i32 %42, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptJumpValuesAtLeast(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
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
  %19 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %20 = icmp ult i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %19
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i32 [ %23, %21 ], [ %19, %1 ]
  %26 = icmp eq i8 %2, 0
  %27 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %28 = zext i16 %27 to i32
  br i1 %26, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %28
  %31 = load i16, ptr %30, align 2
  %32 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %33 = icmp ult i16 %31, %32
  br i1 %33, label %41, label %39

34:                                               ; preds = %24
  %35 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %28
  %36 = load i8, ptr %35, align 1
  %37 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %38 = icmp ult i8 %36, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %34, %29
  %40 = inttoptr i32 %25 to ptr
  store ptr %40, ptr @gScriptCursor, align 4
  br label %41

41:                                               ; preds = %34, %29, %39
  %42 = phi i32 [ 0, %39 ], [ 9, %29 ], [ 9, %34 ]
  store i32 %42, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptJumpValuesBelow(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
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
  %19 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %20 = icmp ult i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %19
  %23 = load i32, ptr %22, align 4
  store i32 %23, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i32 [ %23, %21 ], [ %19, %1 ]
  %26 = icmp eq i8 %2, 0
  %27 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %28 = zext i16 %27 to i32
  br i1 %26, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %28
  %31 = load i16, ptr %30, align 2
  %32 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %33 = icmp ult i16 %31, %32
  br i1 %33, label %39, label %41

34:                                               ; preds = %24
  %35 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %28
  %36 = load i8, ptr %35, align 1
  %37 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %38 = icmp ult i8 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34, %29
  %40 = inttoptr i32 %25 to ptr
  store ptr %40, ptr @gScriptCursor, align 4
  br label %41

41:                                               ; preds = %34, %29, %39
  %42 = phi i32 [ 0, %39 ], [ 9, %29 ], [ 9, %34 ]
  store i32 %42, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
