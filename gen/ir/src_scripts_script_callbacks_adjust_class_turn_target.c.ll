; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdjustClassTurnTarget(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = ashr i32 %6, 16
  %8 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %9 = zext i16 %8 to i32
  %10 = sub nsw i32 %9, %7
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ult i8 %11, 5
  %14 = ashr i32 %10, %12
  %15 = add nsw i32 %12, -4
  %16 = shl i32 %10, %15
  %17 = select i1 %13, i32 %14, i32 %16
  %18 = trunc i32 %17 to i16
  %19 = sub i16 %8, %18
  store i16 %19, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %20 = tail call arm_apcscc i32 @ScriptCallbackSetClassTurnVelocity(ptr noundef null) #3
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScriptCallbackSetClassTurnVelocity(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadClassScreenYSide(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 18), align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 18
  %8 = load i16, ptr %7, align 4
  %9 = zext i16 %8 to i32
  %10 = add nsw i32 %9, -71
  %11 = icmp ult i8 %2, 8
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %12
  %16 = zext i8 %13 to i32
  %17 = getelementptr %struct.RenderSlot, ptr %4, i32 %16, i32 18
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %9, -142
  %21 = add nsw i32 %20, %19
  br label %30

22:                                               ; preds = %1
  %23 = add i16 %8, -64
  %24 = icmp ult i16 %23, 7
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = getelementptr %struct.RenderSlot, ptr %4, i32 %3, i32 18
  %27 = load i16, ptr %26, align 4
  %28 = zext i16 %27 to i32
  %29 = add nsw i32 %28, -71
  br label %30

30:                                               ; preds = %12, %15, %22, %25
  %31 = phi i32 [ %29, %25 ], [ %10, %22 ], [ %21, %15 ], [ %10, %12 ]
  %32 = icmp sgt i32 %31, 0
  %33 = select i1 %32, i8 1, i8 2
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreClassScreenYSide(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 18), align 1
  %3 = zext i8 %2 to i32
  %4 = icmp ult i8 %2, 8
  %5 = load ptr, ptr @gRenderSlots, align 4
  br i1 %4, label %6, label %26

6:                                                ; preds = %1
  %7 = load i8, ptr @gRenderClassSlots0, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %5, i32 %8, i32 18
  %10 = load i16, ptr %9, align 4
  %11 = zext i16 %10 to i32
  %12 = add nsw i32 %11, -71
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %6
  %16 = zext i8 %13 to i32
  %17 = getelementptr %struct.RenderSlot, ptr %5, i32 %16, i32 18
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = add nsw i32 %11, -142
  %21 = add nsw i32 %20, %19
  br label %22

22:                                               ; preds = %6, %15
  %23 = phi i32 [ %21, %15 ], [ %12, %6 ]
  %24 = icmp sgt i32 %23, 0
  %25 = select i1 %24, i8 1, i8 2
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %26

26:                                               ; preds = %22, %1
  %27 = getelementptr %struct.RenderSlot, ptr %5, i32 %3, i32 18
  %28 = load i16, ptr %27, align 4
  %29 = icmp eq i16 %28, 71
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load i8, ptr @gRenderClassSlots0, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr %struct.RenderSlot, ptr %5, i32 %32, i32 18
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = add nsw i32 %35, -71
  br i1 %4, label %37, label %47

37:                                               ; preds = %30
  %38 = load i8, ptr @gRenderClassSlots1, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37
  %41 = zext i8 %38 to i32
  %42 = getelementptr %struct.RenderSlot, ptr %5, i32 %41, i32 18
  %43 = load i16, ptr %42, align 4
  %44 = zext i16 %43 to i32
  %45 = add nsw i32 %35, -142
  %46 = add nsw i32 %45, %44
  br label %51

47:                                               ; preds = %30
  %48 = add i16 %34, -64
  %49 = icmp ult i16 %48, 7
  %50 = select i1 %49, i32 0, i32 %36
  br label %51

51:                                               ; preds = %47, %37, %40
  %52 = phi i32 [ %46, %40 ], [ %36, %37 ], [ %50, %47 ]
  %53 = icmp sgt i32 %52, 0
  %54 = select i1 %53, i8 1, i8 2
  store i8 %54, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %55 = zext nneg i8 %54 to i16
  br label %59

56:                                               ; preds = %26
  %57 = icmp ugt i16 %28, 71
  %58 = select i1 %57, i16 1, i16 2
  br label %59

59:                                               ; preds = %56, %51
  %60 = phi i16 [ %55, %51 ], [ %58, %56 ]
  store i16 %60, ptr @gScriptResult, align 2
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
