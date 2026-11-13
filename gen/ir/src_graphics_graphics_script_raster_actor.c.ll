; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @PositionRasterAtActor() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc ptr @GetVideoState() #2
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 347) #2
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, i32 10, i32 13
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = lshr i32 %7, 16
  %9 = getelementptr %struct.VideoState, ptr %1, i32 0, i32 14, i32 1, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = zext i16 %10 to i32
  %12 = add nuw nsw i32 %8, %11
  %13 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %14, 16
  %16 = getelementptr %struct.VideoState, ptr %1, i32 0, i32 14, i32 1, i32 2
  %17 = load i16, ptr %16, align 4
  %18 = zext i16 %17 to i32
  %19 = add nuw nsw i32 %15, %18
  %20 = trunc i32 %12 to i8
  %21 = add i8 %20, 20
  %22 = load ptr, ptr @gRasterEffect, align 4
  %23 = getelementptr i8, ptr %22, i32 3
  store i8 %21, ptr %23, align 1
  %24 = trunc i32 %19 to i8
  %25 = add i8 %24, 20
  %26 = load ptr, ptr @gRasterEffect, align 4
  %27 = getelementptr i8, ptr %26, i32 4
  store i8 %25, ptr %27, align 1
  ret void
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
