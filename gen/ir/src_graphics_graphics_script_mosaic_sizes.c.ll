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

@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetSelectedMosaicSizes(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  switch i8 %0, label %9 [
    i8 0, label %4
    i8 1, label %5
    i8 2, label %6
  ]

4:                                                ; preds = %3
  store i8 %1, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 3), align 4
  br label %7

5:                                                ; preds = %3
  store i8 %1, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 5), align 2
  br label %7

6:                                                ; preds = %3
  store i8 %1, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 3), align 4
  store i8 %1, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 5), align 2
  store i8 %2, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 4), align 1
  br label %7

7:                                                ; preds = %4, %5, %6
  %8 = phi ptr [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 6), %6 ], [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 6), %5 ], [ getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 4), %4 ]
  store i8 %2, ptr %8, align 1
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
