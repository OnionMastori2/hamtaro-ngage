; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gScanlineRadiusAccumulator = external dso_local local_unnamed_addr global i16, align 2
@gScanlinePhaseBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEnableScanlineWaveBlend(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 1) #2
  %2 = tail call arm_apcscc ptr @GetVideoState() #2
  %3 = getelementptr %struct.VideoState, ptr %2, i32 0, i32 14, i32 1, i32 2
  %4 = load i16, ptr %3, align 4
  store i16 %4, ptr @gScanlineRadiusAccumulator, align 2
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  store i8 45, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  ret i32 0
}

declare dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDisableScanlineWaveBlend(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateScanlineWaveBlend() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %3 = trunc i16 %1 to i8
  %4 = add i8 %2, %3
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = ashr i16 %7, 4
  store volatile i16 %8, ptr inttoptr (i32 67108888 to ptr), align 8
  %9 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %10 = load i16, ptr @gScanlineRadiusAccumulator, align 2
  %11 = add i16 %10, %9
  %12 = icmp sgt i16 %11, 112
  br i1 %12, label %28, label %13

13:                                               ; preds = %0
  %14 = icmp slt i16 %11, 56
  br i1 %14, label %28, label %15

15:                                               ; preds = %13
  %16 = icmp ult i16 %11, 65
  br i1 %16, label %28, label %17

17:                                               ; preds = %15
  %18 = icmp ult i16 %11, 73
  br i1 %18, label %28, label %19

19:                                               ; preds = %17
  %20 = icmp ult i16 %11, 81
  br i1 %20, label %28, label %21

21:                                               ; preds = %19
  %22 = icmp ult i16 %11, 89
  br i1 %22, label %28, label %23

23:                                               ; preds = %21
  %24 = icmp ult i16 %11, 97
  br i1 %24, label %28, label %25

25:                                               ; preds = %23
  %26 = icmp ult i16 %11, 105
  %27 = select i1 %26, i16 3586, i16 3841
  br label %28

28:                                               ; preds = %25, %23, %21, %19, %17, %15, %13, %0
  %29 = phi i16 [ 4096, %0 ], [ 2056, %13 ], [ 2311, %15 ], [ 2566, %17 ], [ 2821, %19 ], [ 3076, %21 ], [ 3331, %23 ], [ %27, %25 ]
  store volatile i16 %29, ptr inttoptr (i32 67108946 to ptr), align 2
  %30 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %31 = icmp eq i16 %30, 227
  br i1 %31, label %32, label %53

32:                                               ; preds = %28
  %33 = load i8, ptr @gScanlinePhaseBytes, align 1
  %34 = add i8 %33, 1
  store i8 %34, ptr @gScanlinePhaseBytes, align 1
  %35 = and i8 %33, 1
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %39 = add i8 %38, 1
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  br label %40

40:                                               ; preds = %37, %32
  %41 = tail call arm_apcscc ptr @GetVideoState() #2
  %42 = getelementptr %struct.VideoState, ptr %41, i32 0, i32 14, i32 1, i32 2
  %43 = load i16, ptr %42, align 4
  %44 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlinePhaseBytes, i32 0, i32 1), align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr i16, ptr @gRenderSineTable, i32 %45
  %47 = load i16, ptr %46, align 2
  %48 = zext i16 %47 to i32
  %49 = shl nuw i32 %48, 16
  %50 = ashr i32 %49, 19
  %51 = trunc i32 %50 to i16
  %52 = sub i16 %51, %43
  store i16 %52, ptr @gScanlineRadiusAccumulator, align 2
  br label %53

53:                                               ; preds = %40, %28
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
