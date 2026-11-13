; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundBounds = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gBackgroundBounds = external dso_local local_unnamed_addr global [4 x %struct.BackgroundBounds], align 2
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderTurnAnimationDirections42A8 = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreSlot10ZHalfSide(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = ashr i32 %6, 16
  %8 = load i16, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 0, i32 3), align 2
  %9 = ashr i16 %8, 1
  %10 = sext i16 %9 to i32
  %11 = icmp slt i32 %7, %10
  %12 = select i1 %11, i8 2, i8 1
  %13 = zext i8 %4 to i32
  %14 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %13
  store i8 %12, ptr %14, align 1
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateActorTurnControl(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr @gRasterScriptControlBytes, i32 %3
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  switch i8 %6, label %12 [
    i8 -127, label %7
    i8 -128, label %10
  ]

7:                                                ; preds = %1
  %8 = load i8, ptr @gRenderClassSlots1, align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %34, label %12

10:                                               ; preds = %1
  %11 = load i8, ptr @gRenderClassSlots0, align 1
  br label %12

12:                                               ; preds = %7, %1, %10
  %13 = phi i8 [ %11, %10 ], [ %6, %1 ], [ %8, %7 ]
  %14 = zext i8 %13 to i32
  %15 = load i8, ptr %4, align 1
  %16 = add i8 %15, -1
  store i8 %16, ptr %4, align 1
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %17, i32 %14, i32 23
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 7
  %21 = zext nneg i8 %20 to i32
  %22 = add nsw i32 %21, -1
  %23 = getelementptr [0 x i8], ptr @gRenderTurnAnimationDirections42A8, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = getelementptr i8, ptr %4, i32 1
  store i8 %24, ptr %25, align 1
  %26 = sub i8 %16, %24
  %27 = and i8 %26, 7
  %28 = icmp ult i8 %27, 4
  br i1 %28, label %31, label %29

29:                                               ; preds = %12
  %30 = icmp eq i8 %27, 4
  br i1 %30, label %34, label %31

31:                                               ; preds = %29, %12
  %32 = phi i8 [ 1, %12 ], [ 2, %29 ]
  %33 = getelementptr i8, ptr %4, i32 2
  store i8 %32, ptr %33, align 1
  br label %34

34:                                               ; preds = %29, %31, %7
  %35 = phi i32 [ 2, %7 ], [ 3, %31 ], [ 3, %29 ]
  %36 = getelementptr i8, ptr %4, i32 %35
  store i8 0, ptr %36, align 1
  ret i32 2
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
