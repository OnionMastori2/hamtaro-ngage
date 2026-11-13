; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetBlendEffect(i32 noundef %0) local_unnamed_addr #0 {
  %2 = trunc i32 %0 to i16
  %3 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %4 = shl i16 %2, 6
  %5 = and i16 %4, 192
  %6 = and i16 %3, -193
  %7 = or disjoint i16 %6, %5
  store i16 %7, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %8 = load i32, ptr @gVideoState, align 4
  %9 = or i32 %8, 2
  store i32 %9, ptr @gVideoState, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetBlendTargets(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = icmp eq i8 %0, -1
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %6 = and i8 %0, 63
  %7 = zext nneg i8 %6 to i16
  %8 = and i16 %5, -64
  %9 = or disjoint i16 %8, %7
  store i16 %9, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  br label %10

10:                                               ; preds = %4, %2
  %11 = icmp eq i8 %1, -1
  br i1 %11, label %19, label %12

12:                                               ; preds = %10
  %13 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %14 = and i8 %1, 63
  %15 = zext nneg i8 %14 to i16
  %16 = shl nuw nsw i16 %15, 8
  %17 = and i16 %13, -16129
  %18 = or disjoint i16 %17, %16
  store i16 %18, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  br label %19

19:                                               ; preds = %12, %10
  %20 = load i32, ptr @gVideoState, align 4
  %21 = or i32 %20, 2
  store i32 %21, ptr @gVideoState, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @DisableBlend() local_unnamed_addr #0 {
  %1 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %2 = and i16 %1, -193
  store i16 %2, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %3 = load i32, ptr @gVideoState, align 4
  %4 = or i32 %3, 2
  store i32 %4, ptr @gVideoState, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetBlendScale(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = icmp eq i8 %0, 16
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %5 = and i16 %4, -193
  br label %12

6:                                                ; preds = %1
  %7 = and i8 %0, 15
  %8 = sub nuw nsw i8 16, %7
  %9 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %10 = and i16 %9, -193
  %11 = or disjoint i16 %10, 64
  br label %12

12:                                               ; preds = %6, %3
  %13 = phi i8 [ 0, %3 ], [ %8, %6 ]
  %14 = phi i8 [ 0, %3 ], [ %7, %6 ]
  %15 = phi i16 [ %5, %3 ], [ %11, %6 ]
  store i8 %0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 4), align 1
  store i8 %13, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 2), align 1
  store i8 %14, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 1), align 2
  store i16 %15, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %16 = load i32, ptr @gVideoState, align 4
  %17 = or i32 %16, 2
  store i32 %17, ptr @gVideoState, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetFadePhase(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i8 %0 to i32
  %3 = add nuw nsw i32 %2, 4
  %4 = lshr i32 %3, 3
  %5 = icmp ult i8 %0, 124
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %8 = or i16 %7, 192
  store i16 %8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %9 = load i32, ptr @gVideoState, align 4
  %10 = or i32 %9, 2
  store i32 %10, ptr @gVideoState, align 4
  %11 = trunc i32 %4 to i8
  %12 = sub nsw i8 16, %11
  br label %26

13:                                               ; preds = %1
  %14 = icmp ugt i8 %0, -125
  %15 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %16 = and i16 %15, -193
  br i1 %14, label %17, label %23

17:                                               ; preds = %13
  %18 = or disjoint i16 %16, 128
  store i16 %18, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %19 = load i32, ptr @gVideoState, align 4
  %20 = or i32 %19, 2
  store i32 %20, ptr @gVideoState, align 4
  %21 = trunc i32 %4 to i8
  %22 = add nsw i8 %21, -16
  br label %26

23:                                               ; preds = %13
  store i16 %16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  %24 = load i32, ptr @gVideoState, align 4
  %25 = or i32 %24, 2
  store i32 %25, ptr @gVideoState, align 4
  br label %26

26:                                               ; preds = %17, %23, %6
  %27 = phi i8 [ %22, %17 ], [ 0, %23 ], [ %12, %6 ]
  %28 = phi i16 [ %18, %17 ], [ %16, %23 ], [ %8, %6 ]
  store i8 %27, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 3), align 4
  %29 = or i16 %28, 63
  store i16 %29, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16), align 4
  store i8 %0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 5), align 2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @GetFadePhase() local_unnamed_addr #1 {
  %1 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 5), align 2
  ret i8 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @SetBlendCoefficients(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp sgt i8 %0, -1
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = and i8 %0, 31
  store i8 %6, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 1), align 2
  br label %7

7:                                                ; preds = %5, %3
  %8 = icmp sgt i8 %1, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %7
  %10 = and i8 %1, 31
  store i8 %10, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 2), align 1
  br label %11

11:                                               ; preds = %9, %7
  %12 = icmp sgt i8 %2, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %11
  %14 = and i8 %2, 31
  store i8 %14, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 16, i32 3), align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = load i32, ptr @gVideoState, align 4
  %17 = or i32 %16, 2
  store i32 %17, ptr @gVideoState, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
