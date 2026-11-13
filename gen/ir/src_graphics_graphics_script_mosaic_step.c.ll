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

@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsMosaicStep(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 12
  %4 = load i16, ptr %3, align 2
  %5 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 10
  %6 = load i16, ptr %5, align 2
  %7 = add i16 %6, %4
  store i16 %7, ptr %5, align 2
  %8 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 13
  %9 = load i16, ptr %8, align 4
  %10 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 11
  %11 = load i16, ptr %10, align 4
  %12 = add i16 %11, %9
  store i16 %12, ptr %10, align 4
  %13 = lshr i16 %7, 8
  %14 = trunc i16 %13 to i8
  %15 = lshr i16 %12, 8
  %16 = trunc i16 %15 to i8
  %17 = load i8, ptr %0, align 4
  %18 = icmp eq i8 %17, -97
  %19 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  %20 = load i16, ptr %19, align 2
  %21 = trunc i16 %20 to i8
  br i1 %18, label %22, label %25

22:                                               ; preds = %2
  tail call arm_apcscc void @SetSelectedMosaicRegisters(i8 noundef zeroext %21, i8 noundef zeroext %14, i8 noundef zeroext %16) #2
  %23 = load i8, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 1), align 2
  %24 = or i8 %23, 1
  store i8 %24, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15, i32 1), align 2
  br label %26

25:                                               ; preds = %2
  tail call arm_apcscc void @SetSelectedMosaicSizes(i8 noundef zeroext %21, i8 noundef zeroext %14, i8 noundef zeroext %16) #2
  br label %26

26:                                               ; preds = %25, %22
  tail call arm_apcscc void @UpdateMosaic() #2
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 15) #2
  %27 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = add i8 %28, -1
  store i8 %29, ptr %27, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8 1, ptr %0, align 4
  br label %37

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  %34 = load i8, ptr %33, align 2
  %35 = zext i8 %34 to i16
  %36 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %32, %31
  ret i32 0
}

declare dso_local arm_apcscc void @SetSelectedMosaicRegisters(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @UpdateMosaic() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetSelectedMosaicSizes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
