; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gAnimationClassValues = external dso_local global [0 x i16], align 2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptCopyPointerBytes(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %12 = getelementptr i8, ptr %0, i32 6
  %13 = load i8, ptr %10, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %14 = load i8, ptr %12, align 1
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %15 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %16 = icmp ult i32 %15, 16
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %15
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = phi i32 [ %19, %17 ], [ %15, %1 ]
  %22 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %20
  %25 = inttoptr i32 %21 to ptr
  %26 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %27 = zext i16 %26 to i32
  %28 = add i32 %27, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %29 = inttoptr i32 %28 to ptr
  br label %30

30:                                               ; preds = %24, %30
  %31 = phi ptr [ %34, %30 ], [ %25, %24 ]
  %32 = phi ptr [ %36, %30 ], [ %29, %24 ]
  %33 = phi i32 [ %37, %30 ], [ 0, %24 ]
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %31, align 1
  %36 = getelementptr i8, ptr %32, i32 1
  store i8 %35, ptr %32, align 1
  %37 = add nuw nsw i32 %33, 1
  %38 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %30, label %41

41:                                               ; preds = %30, %20
  store i32 7, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptCopyPointerHalfwords(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %12 = getelementptr i8, ptr %0, i32 6
  %13 = load i8, ptr %10, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %14 = load i8, ptr %12, align 1
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %15 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %16 = icmp ult i32 %15, 16
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %15
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = phi i32 [ %19, %17 ], [ %15, %1 ]
  %22 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %42, label %24

24:                                               ; preds = %20
  %25 = inttoptr i32 %21 to ptr
  %26 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %27 = zext i16 %26 to i32
  %28 = shl nuw nsw i32 %27, 1
  %29 = add i32 %28, ptrtoint (ptr @gAnimationClassValues to i32)
  %30 = inttoptr i32 %29 to ptr
  br label %31

31:                                               ; preds = %24, %31
  %32 = phi ptr [ %35, %31 ], [ %25, %24 ]
  %33 = phi ptr [ %37, %31 ], [ %30, %24 ]
  %34 = phi i32 [ %38, %31 ], [ 0, %24 ]
  %35 = getelementptr i16, ptr %32, i32 1
  %36 = load i16, ptr %32, align 2
  %37 = getelementptr i16, ptr %33, i32 1
  store i16 %36, ptr %33, align 2
  %38 = add nuw nsw i32 %34, 1
  %39 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %40 = zext i8 %39 to i32
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %31, label %42

42:                                               ; preds = %31, %20
  store i32 7, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
