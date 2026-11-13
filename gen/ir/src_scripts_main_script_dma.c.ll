; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @MainScriptCopyDma(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %16 = getelementptr i8, ptr %0, i32 8
  %17 = load i8, ptr %14, align 1
  store i8 %17, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %18 = load i8, ptr %16, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr i8, ptr %0, i32 9
  %21 = load i8, ptr %20, align 1
  %22 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr @gMainScriptArgumentWords5E8, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi i32 [ %26, %24 ], [ %22, %1 ]
  %29 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %30 = icmp ult i32 %29, 16
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %29
  %33 = load i32, ptr %32, align 4
  store i32 %33, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i32 [ %33, %31 ], [ %29, %27 ]
  %36 = and i32 %28, 3
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %34
  %39 = and i32 %35, 3
  %40 = icmp eq i32 %39, 0
  %41 = and i32 %19, 3
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %40, i1 %42, i1 false
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = inttoptr i32 %28 to ptr
  store volatile ptr %45, ptr inttoptr (i32 67109076 to ptr), align 4
  br label %49

46:                                               ; preds = %38, %34
  %47 = inttoptr i32 %28 to ptr
  store volatile ptr %47, ptr inttoptr (i32 67109076 to ptr), align 4
  %48 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %49

49:                                               ; preds = %44, %46
  %50 = phi i32 [ %35, %44 ], [ %48, %46 ]
  %51 = phi i32 [ 2, %44 ], [ 1, %46 ]
  %52 = phi i32 [ -2080374784, %44 ], [ -2147483648, %46 ]
  %53 = zext i8 %21 to i32
  %54 = shl nuw nsw i32 %53, 8
  %55 = or disjoint i32 %54, %19
  %56 = inttoptr i32 %50 to ptr
  store volatile ptr %56, ptr inttoptr (i32 67109080 to ptr), align 8
  %57 = lshr i32 %55, %51
  %58 = or disjoint i32 %57, %52
  store volatile i32 %58, ptr inttoptr (i32 67109084 to ptr), align 4
  %59 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 10, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptCopyDmaQueued(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
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
  %16 = getelementptr i8, ptr %0, i32 8
  %17 = load i8, ptr %14, align 1
  store i8 %17, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %18 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %19 = icmp ult i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %18
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr @gMainScriptArgumentWords5E8, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i32 [ %22, %20 ], [ %18, %1 ]
  %25 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %26 = load i8, ptr %16, align 1
  store i8 %26, ptr @gMainScriptArgumentWords5E8, align 4
  %27 = getelementptr i8, ptr %0, i32 9
  %28 = load i8, ptr %27, align 1
  store i8 %28, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %29 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %30 = zext i16 %29 to i32
  %31 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %32 = and i16 %31, 128
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %23
  %35 = inttoptr i32 %24 to ptr
  store volatile ptr %35, ptr inttoptr (i32 67109076 to ptr), align 4
  %36 = inttoptr i32 %25 to ptr
  store volatile ptr %36, ptr inttoptr (i32 67109080 to ptr), align 8
  %37 = lshr i32 %30, 1
  %38 = or disjoint i32 %37, -2147483648
  store volatile i32 %38, ptr inttoptr (i32 67109084 to ptr), align 4
  %39 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  br label %41

40:                                               ; preds = %23
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %24, i32 noundef %25, i32 noundef %30) #3
  br label %41

41:                                               ; preds = %40, %34
  store i32 10, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
