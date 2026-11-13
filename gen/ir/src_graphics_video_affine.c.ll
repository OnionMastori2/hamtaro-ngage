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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetBackgroundAffine(i32 noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  switch i32 %0, label %19 [
    i32 2, label %9
    i32 3, label %8
  ]

8:                                                ; preds = %7
  br label %9

9:                                                ; preds = %7, %8
  %10 = phi ptr [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 3), %8 ], [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 3), %7 ]
  %11 = phi ptr [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 4), %8 ], [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 4), %7 ]
  %12 = phi ptr [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 5), %8 ], [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 5), %7 ]
  %13 = phi ptr [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 6), %8 ], [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 6), %7 ]
  %14 = phi ptr [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 8), %8 ], [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 8), %7 ]
  %15 = phi ptr [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 9), %8 ], [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 9), %7 ]
  %16 = phi i32 [ 32, %8 ], [ 16, %7 ]
  store i16 %1, ptr %10, align 2
  store i16 %2, ptr %11, align 4
  store i16 %3, ptr %12, align 2
  store i16 %4, ptr %13, align 4
  store i32 %5, ptr %14, align 4
  store i32 %6, ptr %15, align 4
  %17 = load i32, ptr @gVideoState, align 4
  %18 = or i32 %17, %16
  store i32 %18, ptr @gVideoState, align 4
  br label %19

19:                                               ; preds = %9, %7
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
