; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRenderLayerOffsets = external dso_local local_unnamed_addr global [4 x %struct.RenderLayerOffset], align 4
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMode1Background2(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #2
  %3 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 12
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, -16
  %6 = or disjoint i16 %5, 1
  store i16 %6, ptr %3, align 4
  %7 = load i32, ptr %2, align 4
  %8 = or i32 %7, 1
  store i32 %8, ptr %2, align 4
  %9 = getelementptr %struct.VideoState, ptr %2, i32 0, i32 14, i32 2, i32 3
  store i16 256, ptr %9, align 2
  %10 = getelementptr %struct.VideoState, ptr %2, i32 0, i32 14, i32 2, i32 6
  store i16 256, ptr %10, align 4
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 5) #2
  tail call arm_apcscc void @SetRenderActiveRange(i8 noundef zeroext 0, i8 noundef zeroext 46) #2
  ret i32 0
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderActiveRange(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackClearVideoModeAndDirtyBackground0(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #2
  %3 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 12
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, -16
  store i16 %5, ptr %3, align 4
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 1) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetBackground0Scroll240128(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #2
  %3 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 1
  store i16 240, ptr %3, align 2
  %4 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 14, i32 0, i32 2
  store i16 128, ptr %4, align 4
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 1) #2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackApplyBackground2Affine(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #2
  %3 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2), align 4
  %4 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 4), align 4
  %5 = add i32 %4, %3
  %6 = lshr i32 %5, 16
  %7 = trunc i32 %6 to i16
  %8 = getelementptr %struct.VideoState, ptr %2, i32 0, i32 14, i32 2, i32 1
  store i16 %7, ptr %8, align 2
  %9 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 1), align 4
  %10 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 5), align 4
  %11 = add i32 %10, %9
  %12 = lshr i32 %11, 16
  %13 = trunc i32 %12 to i16
  %14 = getelementptr %struct.VideoState, ptr %2, i32 0, i32 14, i32 2, i32 2
  store i16 %13, ptr %14, align 4
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 4) #2
  %15 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 8), align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr i16, ptr @gRenderSineTable, i32 %16
  %18 = getelementptr i16, ptr %17, i32 64
  %19 = load i16, ptr %18, align 2
  %20 = sext i16 %19 to i32
  %21 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 6), align 4
  %22 = sext i16 %21 to i32
  %23 = tail call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %22) #2
  %24 = shl i32 %23, 16
  %25 = ashr exact i32 %24, 16
  %26 = tail call arm_apcscc i32 @MultiplyFixed8(i32 noundef %20, i32 noundef %25) #2
  %27 = trunc i32 %26 to i16
  store i16 %27, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 11), align 2
  %28 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 8), align 4
  %29 = zext i16 %28 to i32
  %30 = getelementptr i16, ptr @gRenderSineTable, i32 %29
  %31 = load i16, ptr %30, align 2
  %32 = sext i16 %31 to i32
  %33 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 6), align 4
  %34 = sext i16 %33 to i32
  %35 = tail call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %34) #2
  %36 = shl i32 %35, 16
  %37 = ashr exact i32 %36, 16
  %38 = tail call arm_apcscc i32 @MultiplyFixed8(i32 noundef %32, i32 noundef %37) #2
  %39 = trunc i32 %38 to i16
  store i16 %39, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 12), align 4
  %40 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 8), align 4
  %41 = zext i16 %40 to i32
  %42 = getelementptr i16, ptr @gRenderSineTable, i32 %41
  %43 = load i16, ptr %42, align 2
  %44 = sub i16 0, %43
  %45 = sext i16 %44 to i32
  %46 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 7), align 2
  %47 = sext i16 %46 to i32
  %48 = tail call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %47) #2
  %49 = shl i32 %48, 16
  %50 = ashr exact i32 %49, 16
  %51 = tail call arm_apcscc i32 @MultiplyFixed8(i32 noundef %45, i32 noundef %50) #2
  %52 = trunc i32 %51 to i16
  store i16 %52, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 13), align 2
  %53 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 8), align 4
  %54 = zext i16 %53 to i32
  %55 = getelementptr i16, ptr @gRenderSineTable, i32 %54
  %56 = getelementptr i16, ptr %55, i32 64
  %57 = load i16, ptr %56, align 2
  %58 = sext i16 %57 to i32
  %59 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 7), align 2
  %60 = sext i16 %59 to i32
  %61 = tail call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %60) #2
  %62 = shl i32 %61, 16
  %63 = ashr exact i32 %62, 16
  %64 = tail call arm_apcscc i32 @MultiplyFixed8(i32 noundef %58, i32 noundef %63) #2
  %65 = trunc i32 %64 to i16
  store i16 %65, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 14), align 4
  %66 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2), align 4
  %69 = sub i32 %67, %68
  %70 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = load i32, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 1), align 4
  %73 = sub i32 %71, %72
  %74 = ashr i32 %69, 8
  %75 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 9), align 2
  %76 = sext i16 %75 to i32
  %77 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 11), align 2
  %78 = xor i16 %77, -1
  %79 = sext i16 %78 to i32
  %80 = mul nsw i32 %79, %76
  %81 = add nsw i32 %80, %74
  %82 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 12), align 4
  %83 = sext i16 %82 to i32
  %84 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 10), align 4
  %85 = sext i16 %84 to i32
  %86 = mul nsw i32 %85, %83
  %87 = sub i32 %81, %86
  store i32 %87, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 2), align 4
  %88 = ashr i32 %73, 8
  %89 = load i16, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 13), align 2
  %90 = sext i16 %89 to i32
  %91 = shl i32 %64, 16
  %92 = ashr exact i32 %91, 16
  %93 = mul nsw i32 %92, %85
  %94 = mul nsw i32 %90, %76
  %95 = add i32 %94, %93
  %96 = add i32 %95, %85
  %97 = sub i32 %88, %96
  store i32 %97, ptr getelementptr inbounds ([4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 2, i32 3), align 4
  %98 = sext i16 %77 to i32
  tail call arm_apcscc void @SetBackgroundAffine(i32 noundef 2, i32 noundef %98, i32 noundef %83, i32 noundef %90, i32 noundef %92, i32 noundef %87, i32 noundef %97) #2
  ret i32 0
}

declare dso_local arm_apcscc i32 @ReciprocalFixed8(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @MultiplyFixed8(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBackgroundAffine(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
