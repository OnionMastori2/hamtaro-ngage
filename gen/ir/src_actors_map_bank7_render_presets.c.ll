; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gMapBank7Animation088CA4CC = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CACEF = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CB0AA = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CDBC7 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CBEEA = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CCF49 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CD4AC = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B4FE1 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B5325 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88B70A6 = external dso_local constant [0 x i8], align 1
@gMapBank7Animation088B5D66 = external dso_local constant [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank7Pair9And11Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 11, i8 noundef zeroext 0) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank7Pair12And14Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank7Pair15And17Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank7Pair18And20Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapBank7Pair28And30Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 28, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 30, i8 noundef zeroext 0) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB8FA8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gMapBank7Animation088CA4CC) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB8FC4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CACEF) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB8FE0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CB0AA) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB8FFC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CDBC7) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB9018() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CBEEA) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB9034() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CCF49) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB9050() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %1, ptr noundef nonnull @gActorPresetResource88CD4AC) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB906C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gActorPresetResource88B4FE1) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB9084() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gActorPresetResource88B5325) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB909C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gActorPresetResource88B70A6) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapBank7RenderPresetB90B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gMapBank7Animation088B5D66) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateMapBank7ActorHeight(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  %7 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 429) #3
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -5275648
  %13 = icmp ult i32 %12, 8388609
  br i1 %13, label %14, label %25

14:                                               ; preds = %9
  %15 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -1998848
  %18 = icmp ult i32 %17, 6422529
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add nsw i32 %21, -131072
  %23 = icmp sgt i32 %21, -819200
  %24 = select i1 %23, i32 %22, i32 -819200
  store i32 %24, ptr %20, align 4
  br label %31

25:                                               ; preds = %14, %9, %3
  %26 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 4
  %27 = load i32, ptr %26, align 4
  %28 = add nsw i32 %27, 131072
  %29 = icmp slt i32 %27, 32768
  %30 = select i1 %29, i32 %28, i32 32768
  store i32 %30, ptr %26, align 4
  br label %31

31:                                               ; preds = %19, %25
  %32 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #3
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %31
  %35 = load ptr, ptr @gRenderSlots, align 4
  %36 = load i8, ptr @gRenderClassSlots1, align 1
  %37 = zext i8 %36 to i32
  %38 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 429) #3
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = getelementptr %struct.RenderSlot, ptr %35, i32 %37, i32 3
  %42 = load i32, ptr %41, align 4
  %43 = add i32 %42, -5275648
  %44 = icmp ult i32 %43, 8388609
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = getelementptr %struct.RenderSlot, ptr %35, i32 %37, i32 5
  %47 = load i32, ptr %46, align 4
  %48 = add i32 %47, -1998848
  %49 = icmp ult i32 %48, 6422529
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = getelementptr %struct.RenderSlot, ptr %35, i32 %37, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = add nsw i32 %52, -131072
  %54 = icmp sgt i32 %52, -819200
  %55 = select i1 %54, i32 %53, i32 -819200
  store i32 %55, ptr %51, align 4
  br label %62

56:                                               ; preds = %45, %40, %34
  %57 = getelementptr %struct.RenderSlot, ptr %35, i32 %37, i32 4
  %58 = load i32, ptr %57, align 4
  %59 = add nsw i32 %58, 131072
  %60 = icmp slt i32 %58, 32768
  %61 = select i1 %60, i32 %59, i32 32768
  store i32 %61, ptr %57, align 4
  br label %62

62:                                               ; preds = %56, %50, %31
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapBank7ActorHeight(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 429) #3
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -5275648
  %8 = icmp ult i32 %7, 8388609
  br i1 %8, label %9, label %20

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, -1998848
  %13 = icmp ult i32 %12, 6422529
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add nsw i32 %16, -131072
  %18 = icmp sgt i32 %16, -819200
  %19 = select i1 %18, i32 %17, i32 -819200
  store i32 %19, ptr %15, align 4
  br label %26

20:                                               ; preds = %9, %4, %1
  %21 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %22 = load i32, ptr %21, align 4
  %23 = add nsw i32 %22, 131072
  %24 = icmp slt i32 %22, 32768
  %25 = select i1 %24, i32 %23, i32 32768
  store i32 %25, ptr %21, align 4
  br label %26

26:                                               ; preds = %20, %14
  ret void
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @LowerMapBank7ActorHeight(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = add nsw i32 %3, -131072
  %5 = icmp sgt i32 %3, -819200
  %6 = select i1 %5, i32 %4, i32 -819200
  store i32 %6, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @RestoreMapBank7ActorHeight(ptr nocapture noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = add nsw i32 %3, 131072
  %5 = icmp slt i32 %3, 32768
  %6 = select i1 %5, i32 %4, i32 32768
  store i32 %6, ptr %2, align 4
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
