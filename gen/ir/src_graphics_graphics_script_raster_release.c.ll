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
%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsReleaseRasterEffect(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRasterEffect, align 4
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  %6 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %7 = select i1 %5, i16 -8193, i16 -16385
  %8 = and i16 %7, %6
  store i16 %8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %9 = load i32, ptr @gVideoState, align 4
  %10 = or i32 %9, 1
  store i32 %10, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #2
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %11 = load ptr, ptr @gRasterEffect, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %11) #2
  store ptr null, ptr @gRasterEffect, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %1, ptr %16, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
