; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gBootGate2170 = external dso_local local_unnamed_addr global i8, align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptConfigureRenderSlot(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef %4) #2
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %2, align 1
  %7 = zext i8 %6 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %4, i32 noundef %7) #2
  %8 = getelementptr i8, ptr %0, i32 3
  %9 = load i8, ptr %5, align 1
  %10 = zext i8 %9 to i32
  tail call arm_apcscc void @SetRenderField62(i32 noundef %4, i32 noundef %10) #2
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %4, i8 noundef zeroext 2) #2
  %11 = getelementptr i8, ptr %0, i32 4
  %12 = load i8, ptr %8, align 1
  store i8 %12, ptr @gMainScriptArgumentWords5E8, align 4
  %13 = getelementptr i8, ptr %0, i32 5
  %14 = load i8, ptr %11, align 1
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %15 = getelementptr i8, ptr %0, i32 6
  %16 = load i8, ptr %13, align 1
  store i8 %16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %17 = getelementptr i8, ptr %0, i32 7
  %18 = load i8, ptr %15, align 1
  store i8 %18, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %19 = getelementptr i8, ptr %0, i32 8
  %20 = load i8, ptr %17, align 1
  store i8 %20, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %21 = getelementptr i8, ptr %0, i32 9
  %22 = load i8, ptr %19, align 1
  store i8 %22, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %23 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %24 = zext i16 %23 to i32
  %25 = shl nuw i32 %24, 16
  %26 = or disjoint i32 %25, 32768
  %27 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %28 = zext i16 %27 to i32
  %29 = shl nuw i32 %28, 16
  %30 = or disjoint i32 %29, 32768
  %31 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %32 = zext i16 %31 to i32
  %33 = shl nuw i32 %32, 16
  %34 = or disjoint i32 %33, 32768
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %4, i32 noundef %26, i32 noundef %30, i32 noundef %34) #2
  %35 = getelementptr i8, ptr %0, i32 10
  %36 = load i8, ptr %21, align 1
  store i8 %36, ptr @gMainScriptArgumentWords5E8, align 4
  %37 = getelementptr i8, ptr %0, i32 11
  %38 = load i8, ptr %35, align 1
  store i8 %38, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %39 = getelementptr i8, ptr %0, i32 12
  %40 = load i8, ptr %37, align 1
  store i8 %40, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %41 = load i8, ptr %39, align 1
  store i8 %41, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %42 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %43 = icmp ult i32 %42, 16
  br i1 %43, label %44, label %48

44:                                               ; preds = %1
  %45 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %42
  %46 = load i32, ptr %45, align 4
  store i32 %46, ptr @gMainScriptArgumentWords5E8, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %1, %44
  %49 = phi i32 [ %46, %44 ], [ %42, %1 ]
  %50 = inttoptr i32 %49 to ptr
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %4, ptr noundef nonnull %50) #2
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8, ptr @gRenderClassSlots1, align 1
  %53 = icmp eq i8 %3, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i8 0, ptr @gBootGate2170, align 1
  br label %55

55:                                               ; preds = %54, %51
  store i32 13, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @ResetRenderSlot(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField62(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetRenderAnimation(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %11 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr @gMainScriptArgumentWords5E8, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1, %13
  %18 = phi i32 [ %15, %13 ], [ %11, %1 ]
  %19 = zext i8 %2 to i32
  %20 = inttoptr i32 %18 to ptr
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %19, ptr noundef nonnull %20) #2
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i8, ptr @gRenderClassSlots1, align 1
  %23 = icmp eq i8 %2, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i8 0, ptr @gBootGate2170, align 1
  br label %25

25:                                               ; preds = %24, %21
  store i32 5, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetRenderField60AndAnimation(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr @gMainScriptArgumentWords5E8, align 4
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %12 = load i8, ptr %10, align 1
  store i8 %12, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %13 = zext i8 %3 to i32
  %14 = zext i8 %5 to i32
  tail call arm_apcscc void @SetRenderField60(i32 noundef %13, i32 noundef %14) #2
  %15 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %16 = icmp ult i32 %15, 16
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %15
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr @gMainScriptArgumentWords5E8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1, %17
  %22 = phi i32 [ %19, %17 ], [ %15, %1 ]
  %23 = inttoptr i32 %22 to ptr
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %13, ptr noundef nonnull %23) #2
  br label %24

24:                                               ; preds = %21, %17
  %25 = load i8, ptr @gRenderClassSlots1, align 1
  %26 = icmp eq i8 %3, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8 0, ptr @gBootGate2170, align 1
  br label %28

28:                                               ; preds = %27, %24
  store i32 6, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
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
