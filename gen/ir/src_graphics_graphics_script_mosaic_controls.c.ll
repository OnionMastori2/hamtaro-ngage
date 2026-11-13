; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @GraphicsEnableObjectMosaicRange(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  %7 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %8 = add i8 %7, -1
  %9 = select i1 %6, i8 %8, i8 %5
  %10 = icmp ugt i8 %4, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %2, %11
  %12 = phi i8 [ %18, %11 ], [ %4, %2 ]
  %13 = zext i8 %12 to i32
  %14 = load ptr, ptr @gRenderSlots, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %14, i32 %13, i32 23, i32 1
  %16 = load i8, ptr %15, align 1
  %17 = or i8 %16, 16
  store i8 %17, ptr %15, align 1
  %18 = add i8 %12, 1
  %19 = icmp ugt i8 %18, %9
  br i1 %19, label %20, label %11

20:                                               ; preds = %11, %2
  %21 = getelementptr i8, ptr %1, i32 2
  %22 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %21, ptr %22, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsSetMosaicFlags(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  store i8 %4, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 1), align 2
  tail call arm_apcscc void @UpdateMosaic() #3
  %5 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %3, ptr %5, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @UpdateMosaic() local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
