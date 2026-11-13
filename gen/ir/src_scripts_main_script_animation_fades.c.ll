; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gScriptCommandInitialized = external dso_local local_unnamed_addr global i8, align 1
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptJumpRenderAnimationBase(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %34 = load ptr, ptr @gRenderSlots, align 4
  %35 = getelementptr %struct.RenderSlot, ptr %34, i32 %19, i32 1
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %26
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = inttoptr i32 %33 to ptr
  store ptr %39, ptr @gScriptCursor, align 4
  br label %40

40:                                               ; preds = %32, %38
  %41 = phi i32 [ 0, %38 ], [ 9, %32 ]
  store i32 %41, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptFadePhaseToCenter(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = tail call arm_apcscc zeroext i8 @GetFadePhase() #4
  %4 = load i8, ptr @gScriptCommandInitialized, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8 1, ptr @gScriptCommandInitialized, align 1
  tail call arm_apcscc void @SetForcedBlank(i32 noundef 0) #4
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call i8 @llvm.abs.i8(i8 %2, i1 false)
  %9 = icmp eq i8 %3, -128
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 1, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %26

11:                                               ; preds = %7
  %12 = icmp eq i8 %2, -128
  br i1 %12, label %24, label %13

13:                                               ; preds = %11
  %14 = icmp sgt i8 %3, -1
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = add nuw i8 %3, %8
  %17 = tail call i8 asm "", "=r,0"(i8 %16) #5, !srcloc !4
  %18 = icmp ugt i8 %16, -128
  %19 = select i1 %18, i8 -128, i8 %17
  br label %24

20:                                               ; preds = %13
  %21 = sub nuw i8 %3, %8
  %22 = icmp slt i8 %21, 0
  %23 = select i1 %22, i8 %21, i8 -128
  br label %24

24:                                               ; preds = %11, %15, %20
  %25 = phi i8 [ %19, %15 ], [ %23, %20 ], [ -128, %11 ]
  tail call arm_apcscc void @SetFadePhase(i8 noundef zeroext %25) #4
  store i8 1, ptr @gScriptYielded, align 1
  br label %26

26:                                               ; preds = %24, %10
  ret void
}

declare dso_local arm_apcscc zeroext i8 @GetFadePhase() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetForcedBlank(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetFadePhase(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptFadePhaseByStep(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = load i8, ptr %0, align 1
  %3 = tail call arm_apcscc zeroext i8 @GetFadePhase() #4
  %4 = icmp sgt i8 %2, -1
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = sub i8 0, %2
  %7 = icmp ugt i8 %3, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store i32 1, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %22

9:                                                ; preds = %5
  %10 = zext i8 %6 to i32
  %11 = zext i8 %3 to i32
  %12 = sub nsw i32 %11, %10
  br label %19

13:                                               ; preds = %1
  %14 = zext nneg i8 %2 to i32
  %15 = zext i8 %3 to i32
  %16 = add nuw nsw i32 %15, %14
  %17 = icmp ugt i32 %16, 255
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  tail call arm_apcscc void @SetForcedBlank(i32 noundef 1) #4
  store i32 1, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %22

19:                                               ; preds = %13, %9
  %20 = phi i32 [ %12, %9 ], [ %16, %13 ]
  %21 = trunc i32 %20 to i8
  tail call arm_apcscc void @SetFadePhase(i8 noundef zeroext %21) #4
  store i8 1, ptr @gScriptYielded, align 1
  br label %22

22:                                               ; preds = %19, %18, %8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1746}
