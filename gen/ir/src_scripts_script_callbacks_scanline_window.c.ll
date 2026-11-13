; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScanlineTransitionBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScanlinePhaseBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScanlineWindowValues = external dso_local global [2 x i16], align 2
@gScanlineRadiusAccumulator = external dso_local local_unnamed_addr global i16, align 2
@gScanlineRadiusProfile = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdjustScanlineWindowParameters(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  switch i8 %2, label %33 [
    i8 0, label %3
    i8 1, label %8
    i8 2, label %13
    i8 3, label %18
    i8 4, label %23
    i8 5, label %28
  ]

3:                                                ; preds = %1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %5 = icmp ugt i8 %4, 4
  br i1 %5, label %6, label %33

6:                                                ; preds = %3
  %7 = add i8 %4, -4
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  br label %33

8:                                                ; preds = %1
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %10 = icmp ult i8 %9, -20
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = add nuw i8 %9, 4
  store i8 %12, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  br label %33

13:                                               ; preds = %1
  %14 = load i8, ptr @gScanlineTransitionBytes, align 1
  %15 = icmp ugt i8 %14, 4
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = add i8 %14, -4
  store i8 %17, ptr @gScanlineTransitionBytes, align 1
  br label %33

18:                                               ; preds = %1
  %19 = load i8, ptr @gScanlineTransitionBytes, align 1
  %20 = icmp ult i8 %19, -20
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  %22 = add nuw i8 %19, 4
  store i8 %22, ptr @gScanlineTransitionBytes, align 1
  br label %33

23:                                               ; preds = %1
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  %25 = icmp ugt i8 %24, 2
  br i1 %25, label %26, label %33

26:                                               ; preds = %23
  %27 = add i8 %24, -2
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  br label %33

28:                                               ; preds = %1
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  %30 = icmp ult i8 %29, -58
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = add nuw i8 %29, 2
  store i8 %32, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  br label %33

33:                                               ; preds = %28, %31, %23, %26, %18, %21, %13, %16, %8, %11, %3, %6, %1
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @ResetScanlineWindowPhase() local_unnamed_addr #1 {
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureScanlineWindow(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #4
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  switch i8 %2, label %53 [
    i8 0, label %3
    i8 1, label %7
    i8 2, label %12
    i8 3, label %18
    i8 4, label %24
    i8 5, label %31
    i8 6, label %38
    i8 7, label %43
    i8 8, label %48
  ]

3:                                                ; preds = %1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  store i8 %4, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i8 0, ptr @gScanlineTransitionBytes, align 1
  store i16 0, ptr @gScanlineWindowValues, align 2
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  br label %53

7:                                                ; preds = %1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i8 0, ptr @gScanlineTransitionBytes, align 1
  store i16 0, ptr @gScanlineWindowValues, align 2
  %9 = load i8, ptr %0, align 1
  %10 = add i8 %9, 1
  %11 = zext i8 %10 to i32
  br label %53

12:                                               ; preds = %1
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  store i8 %14, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i8 0, ptr @gScanlineTransitionBytes, align 1
  store i16 0, ptr @gScanlineWindowValues, align 2
  %15 = load i8, ptr %0, align 1
  %16 = add i8 %15, 2
  %17 = zext i8 %16 to i32
  br label %53

18:                                               ; preds = %1
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i8 0, ptr @gScanlineTransitionBytes, align 1
  store i16 0, ptr @gScanlineWindowValues, align 2
  %21 = load i8, ptr %0, align 1
  %22 = add i8 %21, 3
  %23 = zext i8 %22 to i32
  br label %53

24:                                               ; preds = %1
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %26 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  store i8 %26, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 2), align 1
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i16 0, ptr @gScanlineWindowValues, align 2
  store i16 0, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %28 = load i8, ptr %0, align 1
  %29 = add i8 %28, 4
  %30 = zext i8 %29 to i32
  br label %53

31:                                               ; preds = %1
  %32 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  store i8 %32, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  store i8 %33, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 2), align 1
  %34 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  store i8 %34, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i16 0, ptr @gScanlineWindowValues, align 2
  store i16 0, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %35 = load i8, ptr %0, align 1
  %36 = add i8 %35, 5
  %37 = zext i8 %36 to i32
  br label %53

38:                                               ; preds = %1
  store i8 120, ptr @gScanlineTransitionBytes, align 1
  store i8 80, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 120, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 3), align 1
  store i16 0, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  store i16 0, ptr @gScanlineWindowValues, align 2
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i16 0, ptr @gScanlineRadiusAccumulator, align 2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  tail call arm_apcscc void @UpdateScanlineRadiusProfile() #4
  %39 = load i8, ptr %0, align 1
  %40 = add i8 %39, 6
  %41 = zext i8 %40 to i32
  %42 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef 240) #4
  store ptr %42, ptr @gScanlineRadiusProfile, align 4
  br label %53

43:                                               ; preds = %1
  store i8 120, ptr @gScanlineTransitionBytes, align 1
  store i8 -96, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  store i8 2, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 3), align 1
  store i16 0, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  store i16 0, ptr @gScanlineWindowValues, align 2
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i16 0, ptr @gScanlineRadiusAccumulator, align 2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  tail call arm_apcscc void @UpdateScanlineRadiusProfile() #4
  %44 = load i8, ptr %0, align 1
  %45 = add i8 %44, 6
  %46 = zext i8 %45 to i32
  %47 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef 240) #4
  store ptr %47, ptr @gScanlineRadiusProfile, align 4
  br label %53

48:                                               ; preds = %1
  store i8 120, ptr @gScanlineTransitionBytes, align 1
  store i8 -96, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  store i8 24, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 3), align 1
  store i16 0, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  store i16 0, ptr @gScanlineWindowValues, align 2
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i16 0, ptr @gScanlineRadiusAccumulator, align 2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  tail call arm_apcscc void @UpdateScanlineRadiusProfile() #4
  %49 = load i8, ptr %0, align 1
  %50 = add i8 %49, 6
  %51 = zext i8 %50 to i32
  %52 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef 240) #4
  store ptr %52, ptr @gScanlineRadiusProfile, align 4
  br label %53

53:                                               ; preds = %1, %48, %43, %38, %31, %24, %18, %12, %7, %3
  %54 = phi i32 [ undef, %1 ], [ %51, %48 ], [ %46, %43 ], [ %41, %38 ], [ %37, %31 ], [ %30, %24 ], [ %23, %18 ], [ %17, %12 ], [ %11, %7 ], [ %6, %3 ]
  store volatile i32 ptrtoint (ptr @gScanlineWindowValues to i32), ptr inttoptr (i32 67109040 to ptr), align 16
  tail call void asm sideeffect "", "r"(ptr nonnull inttoptr (i32 67109040 to ptr)) #5, !srcloc !4
  store volatile i32 67108928, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i16 1, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i16 -23744, ptr inttoptr (i32 67109050 to ptr), align 2
  %55 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %56 = or i16 %55, 8192
  store volatile i16 %56, ptr inttoptr (i32 67108864 to ptr), align 67108864
  store volatile i16 0, ptr inttoptr (i32 67108928 to ptr), align 64
  store volatile i16 160, ptr inttoptr (i32 67108932 to ptr), align 4
  store volatile i16 31, ptr inttoptr (i32 67108936 to ptr), align 8
  store volatile i16 16, ptr inttoptr (i32 67108938 to ptr), align 2
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef %54) #4
  ret i32 2
}

declare dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef) local_unnamed_addr #3

declare dso_local arm_apcscc void @UpdateScanlineRadiusProfile() local_unnamed_addr #3

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDisableScanlineWindow(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %3 = and i16 %2, 8191
  store volatile i16 %3, ptr inttoptr (i32 67108864 to ptr), align 67108864
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #4
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %4 = load ptr, ptr @gScanlineRadiusProfile, align 4
  %5 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %4) #4
  ret i32 0
}

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 6984}
