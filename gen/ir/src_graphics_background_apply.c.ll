; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRenderLayerOffsets = external dso_local global [4 x %struct.RenderLayerOffset], align 4
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc ptr @GetVideoState() #2
  %3 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 12
  %4 = load i16, ptr %3, align 4
  %5 = and i16 %4, 15
  %6 = ptrtoint ptr %2 to i32
  %7 = zext i8 %0 to i32
  %8 = mul nuw nsw i32 %7, 48
  %9 = add i32 %8, %6
  %10 = inttoptr i32 %9 to ptr
  %11 = mul nuw nsw i32 %7, 44
  %12 = add i32 %11, ptrtoint (ptr @gRenderLayerOffsets to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %7, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  %18 = lshr i32 %17, 16
  %19 = trunc i32 %18 to i16
  %20 = getelementptr inbounds %struct.VideoState, ptr %10, i32 0, i32 14, i32 0, i32 1
  store i16 %19, ptr %20, align 2
  %21 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %7, i32 1
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %7, i32 5
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  %26 = lshr i32 %25, 16
  %27 = trunc i32 %26 to i16
  %28 = getelementptr inbounds %struct.VideoState, ptr %10, i32 0, i32 14, i32 0, i32 2
  store i16 %27, ptr %28, align 4
  %29 = shl nuw i32 1, %7
  %30 = trunc i32 %29 to i8
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext %30) #2
  %31 = icmp ne i16 %5, 0
  %32 = icmp ugt i8 %0, 1
  %33 = and i1 %32, %31
  br i1 %33, label %34, label %133

34:                                               ; preds = %1
  %35 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 8
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = add nuw nsw i32 %37, 64
  %39 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %38
  %40 = load i16, ptr %39, align 2
  %41 = sext i16 %40 to i32
  %42 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 6
  %43 = load i16, ptr %42, align 4
  %44 = sext i16 %43 to i32
  %45 = tail call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %44) #2
  %46 = shl i32 %45, 16
  %47 = ashr exact i32 %46, 16
  %48 = tail call arm_apcscc i32 @MultiplyFixed8(i32 noundef %41, i32 noundef %47) #2
  %49 = trunc i32 %48 to i16
  %50 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 11
  store i16 %49, ptr %50, align 2
  %51 = load i16, ptr %35, align 4
  %52 = zext i16 %51 to i32
  %53 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %52
  %54 = load i16, ptr %53, align 2
  %55 = sext i16 %54 to i32
  %56 = load i16, ptr %42, align 4
  %57 = sext i16 %56 to i32
  %58 = tail call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %57) #2
  %59 = shl i32 %58, 16
  %60 = ashr exact i32 %59, 16
  %61 = tail call arm_apcscc i32 @MultiplyFixed8(i32 noundef %55, i32 noundef %60) #2
  %62 = trunc i32 %61 to i16
  %63 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 12
  store i16 %62, ptr %63, align 4
  %64 = load i16, ptr %35, align 4
  %65 = zext i16 %64 to i32
  %66 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %65
  %67 = load i16, ptr %66, align 2
  %68 = sub i16 0, %67
  %69 = sext i16 %68 to i32
  %70 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 7
  %71 = load i16, ptr %70, align 2
  %72 = sext i16 %71 to i32
  %73 = tail call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %72) #2
  %74 = shl i32 %73, 16
  %75 = ashr exact i32 %74, 16
  %76 = tail call arm_apcscc i32 @MultiplyFixed8(i32 noundef %69, i32 noundef %75) #2
  %77 = trunc i32 %76 to i16
  %78 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 13
  store i16 %77, ptr %78, align 2
  %79 = load i16, ptr %35, align 4
  %80 = zext i16 %79 to i32
  %81 = add nuw nsw i32 %80, 64
  %82 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %81
  %83 = load i16, ptr %82, align 2
  %84 = sext i16 %83 to i32
  %85 = load i16, ptr %70, align 2
  %86 = sext i16 %85 to i32
  %87 = tail call arm_apcscc i32 @ReciprocalFixed8(i32 noundef %86) #2
  %88 = shl i32 %87, 16
  %89 = ashr exact i32 %88, 16
  %90 = tail call arm_apcscc i32 @MultiplyFixed8(i32 noundef %84, i32 noundef %89) #2
  %91 = trunc i32 %90 to i16
  %92 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 14
  store i16 %91, ptr %92, align 4
  %93 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %13, align 4
  %96 = sub i32 %94, %95
  %97 = getelementptr inbounds %struct.VideoState, ptr %2, i32 0, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 %98, %100
  %102 = ashr i32 %96, 8
  %103 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 9
  %104 = load i16, ptr %103, align 2
  %105 = sext i16 %104 to i32
  tail call void asm sideeffect "", "{r4}"(ptr nonnull %2) #3, !srcloc !4
  %106 = load i16, ptr %50, align 2
  %107 = xor i16 %106, -1
  %108 = sext i16 %107 to i32
  %109 = mul nsw i32 %108, %105
  %110 = add nsw i32 %109, %102
  %111 = load i16, ptr %63, align 4
  %112 = sext i16 %111 to i32
  %113 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 10
  %114 = load i16, ptr %113, align 4
  %115 = sext i16 %114 to i32
  %116 = mul nsw i32 %115, %112
  %117 = sub i32 %110, %116
  %118 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 2
  store i32 %117, ptr %118, align 4
  %119 = ashr i32 %101, 8
  %120 = load i16, ptr %78, align 2
  %121 = sext i16 %120 to i32
  %122 = load i16, ptr %103, align 2
  %123 = sext i16 %122 to i32
  %124 = load i16, ptr %92, align 4
  %125 = sext i16 %124 to i32
  %126 = mul nsw i32 %123, %121
  %127 = mul nsw i32 %125, %115
  %128 = add i32 %127, %126
  %129 = add i32 %128, %115
  %130 = sub i32 %119, %129
  %131 = getelementptr inbounds %struct.RenderLayerOffset, ptr %13, i32 0, i32 3
  store i32 %130, ptr %131, align 4
  %132 = sext i16 %106 to i32
  tail call arm_apcscc void @SetBackgroundAffine(i32 noundef %7, i32 noundef %132, i32 noundef %112, i32 noundef %121, i32 noundef %125, i32 noundef %117, i32 noundef %130) #2
  br label %133

133:                                              ; preds = %34, %1
  ret void
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @ReciprocalFixed8(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @MultiplyFixed8(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBackgroundAffine(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2403}
