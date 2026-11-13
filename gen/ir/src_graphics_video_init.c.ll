; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.DisplayStatus = type { i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gDisplayStatus = external dso_local local_unnamed_addr global %struct.DisplayStatus, align 1
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @InitializeVideoState() local_unnamed_addr #0 {
  %1 = load i16, ptr @gDisplayStatus, align 1
  %2 = and i16 %1, 7
  %3 = or disjoint i16 %2, 72
  store i16 %3, ptr @gDisplayStatus, align 1
  store i32 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 2), align 4
  store i32 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 1), align 4
  store i8 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 3), align 4
  store i8 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 4), align 1
  store i32 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 7), align 4
  store i32 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 6), align 4
  store i32 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 11), align 4
  store i32 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 10), align 4
  store i32 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 9), align 4
  store i32 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 8), align 4
  store i8 -128, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %4 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %5 = and i16 %4, 255
  %6 = or disjoint i16 %5, 4352
  store i16 %6, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  store i16 13825, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14), align 4
  store i16 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 0, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 0, i32 2), align 4
  store i16 14081, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1), align 4
  store i16 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 1, i32 2), align 4
  store i16 -2043, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2), align 4
  store i16 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 2, i32 2), align 4
  store i16 -1019, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3), align 4
  store i16 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 1), align 2
  store i16 0, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 14, i32 3, i32 2), align 4
  store i32 -1, ptr @gVideoState, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
