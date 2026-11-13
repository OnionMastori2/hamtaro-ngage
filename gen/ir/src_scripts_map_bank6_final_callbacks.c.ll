; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3918() local_unnamed_addr #0 {
  tail call arm_apcscc void @SelectActorAnimationForXZDirection187F8() #5
  tail call arm_apcscc void @ConfigureRenderSetupPreset19824() #5
  ret void
}

declare dso_local arm_apcscc void @SelectActorAnimationForXZDirection187F8() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19824() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3928() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15138() #5
  tail call arm_apcscc void @ConfigureRenderSetupPreset19728() #5
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15138() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19728() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3938() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderSetupAnimationPreset17D74() #5
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E90() #5
  ret void
}

declare dso_local arm_apcscc void @SetRenderSetupAnimationPreset17D74() local_unnamed_addr #1

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E90() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3948() local_unnamed_addr #0 {
  tail call arm_apcscc void @SelectActorAnimationForXZDirection187F8() #5
  tail call arm_apcscc void @ConfigureRenderSetupPreset1977C() #5
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1977C() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3958() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15138() #5
  tail call arm_apcscc void @ConfigureRenderSetupPreset197D0() #5
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset197D0() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3968() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetActorAnimationPreset12F58() #5
  tail call arm_apcscc void @SetActorAnimationPreset13220() #5
  ret void
}

declare dso_local arm_apcscc void @SetActorAnimationPreset12F58() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetActorAnimationPreset13220() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @MapBank6ReturnZero() local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Slot22Animation() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143606167 to ptr)) #5
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @StartMapBank6Song79() local_unnamed_addr #0 {
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 79) #5
  ret void
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6Slot18Indicator() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143606433 to ptr)) #5
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 18, ptr noundef nonnull inttoptr (i32 143606433 to ptr)) #5
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapBank6Slot16Motion() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 695) #5
  %2 = icmp eq i32 %1, 0
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 22, i32 3
  %5 = load i32, ptr %4, align 4
  br i1 %2, label %6, label %30

6:                                                ; preds = %0
  %7 = icmp slt i32 %5, 12845056
  br i1 %7, label %8, label %14

8:                                                ; preds = %6
  %9 = getelementptr %struct.RenderSlot, ptr %3, i32 16, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 143505256
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143605975 to ptr)) #5
  %13 = load ptr, ptr @gRenderSlots, align 4
  br label %14

14:                                               ; preds = %12, %8, %6
  %15 = phi ptr [ %13, %12 ], [ %3, %8 ], [ %3, %6 ]
  %16 = getelementptr %struct.RenderSlot, ptr %15, i32 16, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %17, 11010048
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = getelementptr %struct.RenderSlot, ptr %15, i32 16, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 143505256
  br i1 %22, label %54, label %23

23:                                               ; preds = %19
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505256 to ptr)) #5
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 16, i16 noundef signext 256, i16 noundef signext 0, i16 noundef signext 0) #5
  br label %54

24:                                               ; preds = %14
  %25 = getelementptr %struct.RenderSlot, ptr %15, i32 22, i32 3
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 12845056
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 16, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143504860 to ptr)) #5
  br label %54

29:                                               ; preds = %24
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 695, i32 noundef 1) #5
  br label %54

30:                                               ; preds = %0
  %31 = icmp sgt i32 %5, 3932160
  br i1 %31, label %32, label %38

32:                                               ; preds = %30
  %33 = getelementptr %struct.RenderSlot, ptr %3, i32 16, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 143505193
  br i1 %35, label %38, label %36

36:                                               ; preds = %32
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull inttoptr (i32 143605993 to ptr)) #5
  %37 = load ptr, ptr @gRenderSlots, align 4
  br label %38

38:                                               ; preds = %36, %32, %30
  %39 = phi ptr [ %37, %36 ], [ %3, %32 ], [ %3, %30 ]
  %40 = getelementptr %struct.RenderSlot, ptr %39, i32 16, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = icmp sgt i32 %41, 5767168
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = getelementptr %struct.RenderSlot, ptr %39, i32 16, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 143505193
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 23, i32 noundef 1) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143505193 to ptr)) #5
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 16, i16 noundef signext -256, i16 noundef signext 0, i16 noundef signext 0) #5
  br label %54

48:                                               ; preds = %38
  %49 = getelementptr %struct.RenderSlot, ptr %39, i32 22, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 3932160
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 16, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #5
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143504837 to ptr)) #5
  br label %54

53:                                               ; preds = %48
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 695, i32 noundef 0) #5
  br label %54

54:                                               ; preds = %47, %43, %53, %52, %23, %19, %29, %28
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapBank6Slot19SineVelocity() local_unnamed_addr #3 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gRenderSineTable, i32 0, i32 103), align 2
  %3 = sext i16 %2 to i32
  %4 = mul nsw i32 %3, -96
  %5 = getelementptr %struct.RenderSlot, ptr %1, i32 19, i32 6
  store i32 %4, ptr %5, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %1, i32 19, i32 6, i32 1
  store i32 0, ptr %6, align 4
  %7 = load i16, ptr getelementptr ([0 x i16], ptr @gRenderSineTable, i32 0, i32 39), align 2
  %8 = sext i16 %7 to i32
  %9 = mul nsw i32 %8, -96
  %10 = getelementptr %struct.RenderSlot, ptr %1, i32 19, i32 6, i32 2
  store i32 %9, ptr %10, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @CheckMapBank6Slot19Z() local_unnamed_addr #4 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 19, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 3833856
  %5 = select i1 %4, i32 5, i32 0
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @ScriptCallbackCheckMapBank6LeaderZ() local_unnamed_addr #4 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = mul nuw nsw i32 %2, 104
  %5 = ptrtoint ptr %3 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr @gRenderClassSlots2, align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 104
  %11 = add i32 %10, %5
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %14, %16
  %18 = select i1 %17, i32 5, i32 0
  ret i32 %18
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3BDC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset150D8() #5
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #5
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset150D8() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3BFC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15138() #5
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %2, i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143538453 to ptr)) #5
  ret void
}

declare dso_local arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3C20() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset151E0() #5
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %2, i8 noundef zeroext 0) #5
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %4, i8 noundef zeroext 0) #5
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset151E0() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3C50() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset151F8() #5
  %1 = load i8, ptr @gRenderClassSlots2, align 1
  %2 = add i8 %1, -1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %2, i8 noundef zeroext %1, ptr noundef nonnull inttoptr (i32 143387809 to ptr)) #5
  %3 = load i8, ptr @gRenderClassSlots2, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @ConfigureRenderAuxiliarySlot(i8 noundef zeroext %4, i8 noundef zeroext %3, ptr noundef nonnull inttoptr (i32 143387834 to ptr)) #5
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset151F8() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3C8C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15210() #5
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #5
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15210() local_unnamed_addr #1

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E00() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapBank6PresetA3C9C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetGraphicsAnimationPreset15240() #5
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E00() #5
  ret void
}

declare dso_local arm_apcscc void @SetGraphicsAnimationPreset15240() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
