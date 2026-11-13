; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gTaskTextVariables2BB0 = external dso_local global [0 x i32], align 4
@gScriptBytesConsumed = external dso_local global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetIrqUserCallback(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r5}"(ptr nonnull @gMainScriptArgumentWords5E8) #2, !srcloc !4
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gMainScriptArgumentWords5E8, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %8 = load i8, ptr %6, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %9 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %9
  %13 = load i32, ptr %12, align 4
  store i32 %13, ptr @gMainScriptArgumentWords5E8, align 4
  br label %14

14:                                               ; preds = %11, %1
  %15 = phi i32 [ %13, %11 ], [ %9, %1 ]
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 0, ptr @gMainScriptArgumentWords5E8, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = phi i32 [ 0, %17 ], [ %15, %14 ]
  %20 = inttoptr i32 %19 to ptr
  tail call arm_apcscc void @SetIrqUserCallback(ptr noundef %20) #3
  store i32 4, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @SetIrqUserCallback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptStoreRandomRange(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %15 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %16 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %17 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %18 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 3), align 2
  %19 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext %17, i16 noundef zeroext %18) #3
  %20 = icmp eq i8 %15, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = zext i16 %16 to i32
  %23 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %22
  store i16 %19, ptr %23, align 2
  br label %28

24:                                               ; preds = %1
  %25 = trunc i16 %19 to i8
  %26 = zext i16 %16 to i32
  %27 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %26
  store i8 %25, ptr %27, align 1
  br label %28

28:                                               ; preds = %24, %21
  store i32 7, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptDispatchArgumentWord(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r4},r"(ptr nonnull @gMainScriptArgumentWords5E8, ptr nonnull @gScriptBytesConsumed) #2, !srcloc !5
  %2 = load i8, ptr %0, align 1
  store i8 %2, ptr @gMainScriptArgumentWords5E8, align 4
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %7 = getelementptr i8, ptr %0, i32 3
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %9 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %10 = icmp ult i32 %9, 16
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = zext i8 %8 to i32
  %13 = inttoptr i32 %9 to ptr
  br label %19

14:                                               ; preds = %1
  %15 = shl nuw nsw i32 %9, 2
  %16 = add i32 %15, ptrtoint (ptr @gTaskTextVariables2BB0 to i32)
  %17 = inttoptr i32 %16 to ptr
  %18 = load i32, ptr %17, align 4
  store i32 %18, ptr @gMainScriptArgumentWords5E8, align 4
  br label %19

19:                                               ; preds = %11, %14
  %20 = phi ptr [ %13, %11 ], [ %17, %14 ]
  %21 = phi i32 [ %9, %11 ], [ %18, %14 ]
  %22 = phi i32 [ %12, %11 ], [ %18, %14 ]
  tail call void asm sideeffect "", "r"(i32 %21) #2, !srcloc !6
  tail call arm_apcscc void %20(i32 noundef %22) #3
  store i32 4, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 371}
!5 = !{i64 2190}
!6 = !{i64 2851}
