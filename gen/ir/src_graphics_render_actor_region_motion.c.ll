; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gActorRegionZMovingAnimation0 = external dso_local constant [0 x i8], align 1
@gActorRegionXMovingAnimation0 = external dso_local constant [0 x i8], align 1
@gDirectionSlot10Animation1 = external dso_local constant [0 x i8], align 1
@gDirectionSlot10Animation3 = external dso_local constant [0 x i8], align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gActorRegionZMovingAnimation1 = external dso_local constant [0 x i8], align 1
@gActorRegionXMovingAnimation1 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13Animation1 = external dso_local constant [0 x i8], align 1
@gDirectionSlot13Animation3 = external dso_local constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackMoveActorPairAlongRegion(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6
  %8 = tail call arm_apcscc i32 @UpdateActorRegionRenderMotion(ptr noundef %7, ptr noundef nonnull @gActorRegionZMovingAnimation0, ptr noundef nonnull @gActorRegionXMovingAnimation0, ptr noundef nonnull @gDirectionSlot10Animation1, ptr noundef nonnull @gDirectionSlot10Animation3) #4, !range !4
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = load i8, ptr @gRenderClassSlots1, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr %struct.RenderSlot, ptr %9, i32 %11
  %13 = tail call arm_apcscc i32 @UpdateActorRegionRenderMotion(ptr noundef %12, ptr noundef nonnull @gActorRegionZMovingAnimation1, ptr noundef nonnull @gActorRegionXMovingAnimation1, ptr noundef nonnull @gDirectionSlot13Animation1, ptr noundef nonnull @gDirectionSlot13Animation3) #4, !range !4
  %14 = sub nsw i32 0, %13
  %15 = icmp eq i32 %8, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  store i8 0, ptr %17, align 4
  br label %18

18:                                               ; preds = %16, %3
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateActorRegionRenderMotion(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 126) #5
  %7 = icmp eq i32 %6, 0
  %8 = select i1 %7, i32 6291456, i32 1048576
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, %8
  %12 = icmp slt i32 %10, 7471104
  %13 = and i1 %12, %11
  br i1 %13, label %14, label %29

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 7077888
  br i1 %17, label %18, label %43

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = ptrtoint ptr %1 to i32
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  store i8 1, ptr %24, align 4
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %0, ptr noundef %1) #5
  %25 = load i32, ptr %15, align 4
  br label %26

26:                                               ; preds = %23, %18
  %27 = phi i32 [ %25, %23 ], [ %16, %18 ]
  %28 = add i32 %27, 131072
  store i32 %28, ptr %15, align 4
  br label %57

29:                                               ; preds = %5
  %30 = add nsw i32 %10, -7471104
  %31 = icmp ult i32 %30, 4128768
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = ptrtoint ptr %2 to i32
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  store i8 3, ptr %38, align 4
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %0, ptr noundef %2) #5
  %39 = load i32, ptr %9, align 4
  br label %40

40:                                               ; preds = %37, %32
  %41 = phi i32 [ %39, %37 ], [ %10, %32 ]
  %42 = add i32 %41, 131072
  store i32 %42, ptr %9, align 4
  br label %57

43:                                               ; preds = %14, %29
  %44 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  %45 = load i8, ptr %44, align 4
  %46 = icmp eq i8 %45, 1
  %47 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  br i1 %46, label %49, label %53

49:                                               ; preds = %43
  %50 = ptrtoint ptr %1 to i32
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %49
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %0, ptr noundef %3) #5
  br label %57

53:                                               ; preds = %43
  %54 = ptrtoint ptr %2 to i32
  %55 = icmp eq i32 %48, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  tail call arm_apcscc void @SetRenderAnimationByPointer(ptr noundef nonnull %0, ptr noundef %4) #5
  br label %57

57:                                               ; preds = %52, %49, %56, %53, %40, %26
  %58 = phi i32 [ 1, %26 ], [ 1, %40 ], [ 0, %53 ], [ 0, %56 ], [ 0, %49 ], [ 0, %52 ]
  ret i32 %58
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimationByPointer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreSlot10To13Separation(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 13, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = sub i32 %4, %6
  %8 = tail call i32 @llvm.abs.i32(i32 %7, i1 false)
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 13, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.RenderSlot, ptr %2, i32 10, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = sub i32 %10, %12
  %14 = tail call i32 @llvm.abs.i32(i32 %13, i1 false)
  %15 = icmp slt i32 %8, 2621441
  %16 = icmp slt i32 %14, 2621441
  br i1 %15, label %17, label %18

17:                                               ; preds = %1
  br i1 %16, label %27, label %22

18:                                               ; preds = %1
  br i1 %16, label %19, label %22

19:                                               ; preds = %18
  %20 = icmp slt i32 %6, %4
  %21 = select i1 %20, i8 2, i8 1
  br label %25

22:                                               ; preds = %18, %17
  %23 = icmp slt i32 %12, %10
  %24 = select i1 %23, i8 4, i8 3
  br label %25

25:                                               ; preds = %19, %22
  %26 = phi i8 [ %24, %22 ], [ %21, %19 ]
  store i8 %26, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %27

27:                                               ; preds = %25, %17
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin "no-builtins" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i32 0, i32 2}
