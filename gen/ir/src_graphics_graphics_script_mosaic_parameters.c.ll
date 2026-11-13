; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
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

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsResetMosaic(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeMosaic() #2
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 15) #2
  %3 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %2, %5
  %6 = phi i32 [ %11, %5 ], [ 0, %2 ]
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %7, i32 %6, i32 23, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = and i8 %9, -17
  store i8 %10, ptr %8, align 1
  %11 = add nuw nsw i32 %6, 1
  %12 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %13 = zext i8 %12 to i32
  %14 = icmp ult i32 %11, %13
  br i1 %14, label %5, label %15

15:                                               ; preds = %5, %2
  %16 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %1, ptr %16, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @InitializeMosaic() local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsSetMosaicRegisters(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr i8, ptr %1, i32 2
  %6 = load i8, ptr %3, align 1
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %5, align 1
  tail call arm_apcscc void @SetSelectedMosaicRegisters(i8 noundef zeroext %4, i8 noundef zeroext %6, i8 noundef zeroext %8) #2
  %9 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 1), align 2
  %10 = or i8 %9, 1
  store i8 %10, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 1), align 2
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 15) #2
  tail call arm_apcscc void @UpdateMosaic() #2
  %11 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %7, ptr %11, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @SetSelectedMosaicRegisters(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @UpdateMosaic() local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsSetMosaicSizes(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr i8, ptr %1, i32 2
  %6 = load i8, ptr %3, align 1
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %5, align 1
  tail call arm_apcscc void @SetSelectedMosaicSizes(i8 noundef zeroext %4, i8 noundef zeroext %6, i8 noundef zeroext %8) #2
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 15) #2
  tail call arm_apcscc void @UpdateMosaic() #2
  %9 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %7, ptr %9, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @SetSelectedMosaicSizes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
