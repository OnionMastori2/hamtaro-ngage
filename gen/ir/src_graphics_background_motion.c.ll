; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderLayerOffset = type { i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRenderLayerOffsets = external dso_local global [4 x %struct.RenderLayerOffset], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateBackgroundMotion(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 5
  %3 = load i16, ptr %2, align 2
  %4 = add i16 %3, -1
  store i16 %4, ptr %2, align 2
  %5 = tail call arm_apcscc ptr @GetVideoState() #2
  %6 = getelementptr inbounds %struct.VideoState, ptr %5, i32 0, i32 12
  %7 = load i16, ptr %6, align 4
  %8 = and i16 %7, 15
  %9 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  store i32 %13, ptr %11, align 4
  %14 = load i32, ptr %0, align 4
  %15 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, %14
  store i32 %17, ptr %15, align 4
  %18 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 12
  %19 = load i8, ptr %18, align 2
  %20 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 13
  %21 = load i8, ptr %20, align 1
  %22 = add i8 %21, %19
  store i8 %22, ptr %20, align 1
  %23 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 14
  %24 = load i16, ptr %23, align 4
  %25 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 15
  %26 = load i16, ptr %25, align 2
  %27 = add i16 %26, %24
  store i16 %27, ptr %25, align 2
  %28 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 16
  %29 = load i16, ptr %28, align 4
  %30 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 17
  %31 = load i16, ptr %30, align 2
  %32 = add i16 %31, %29
  store i16 %32, ptr %30, align 2
  %33 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 18
  %34 = load i16, ptr %33, align 4
  %35 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 19
  %36 = load i16, ptr %35, align 2
  %37 = add i16 %36, %34
  store i16 %37, ptr %35, align 2
  %38 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 20
  %39 = load i16, ptr %38, align 4
  %40 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 21
  %41 = load i16, ptr %40, align 2
  %42 = add i16 %41, %39
  store i16 %42, ptr %40, align 2
  %43 = getelementptr inbounds %struct.BackgroundRenderState, ptr %0, i32 0, i32 9
  %44 = icmp eq i16 %8, 0
  %45 = icmp eq i16 %8, 1
  br label %46

46:                                               ; preds = %1, %86
  %47 = phi i32 [ 0, %1 ], [ %87, %86 ]
  %48 = load i8, ptr %43, align 4
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 1, %47
  %51 = and i32 %50, %49
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %86, label %53

53:                                               ; preds = %46
  %54 = icmp ult i32 %47, 2
  %55 = and i1 %45, %54
  %56 = or i1 %44, %55
  %57 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %47
  %58 = load i32, ptr %57, align 4
  %59 = add i32 %58, %13
  store i32 %59, ptr %57, align 4
  %60 = trunc i32 %47 to i8
  %61 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %47, i32 1
  br i1 %56, label %62, label %65

62:                                               ; preds = %53
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext %60, ptr noundef nonnull %57, i8 noundef zeroext 0) #2
  %63 = load i32, ptr %61, align 4
  %64 = add i32 %63, %17
  store i32 %64, ptr %61, align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext %60, ptr noundef nonnull %61, i8 noundef zeroext 1) #2
  br label %85

65:                                               ; preds = %53
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext %60, ptr noundef nonnull %57, i8 noundef zeroext 2) #2
  %66 = load i32, ptr %61, align 4
  %67 = add i32 %66, %17
  store i32 %67, ptr %61, align 4
  tail call arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext %60, ptr noundef nonnull %61, i8 noundef zeroext 3) #2
  %68 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %47, i32 8
  %69 = load i16, ptr %68, align 4
  %70 = trunc i16 %69 to i8
  %71 = add i8 %22, %70
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %68, align 4
  %73 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %47, i32 6
  %74 = load i16, ptr %73, align 4
  %75 = add i16 %74, %27
  store i16 %75, ptr %73, align 4
  %76 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %47, i32 7
  %77 = load i16, ptr %76, align 2
  %78 = add i16 %77, %32
  store i16 %78, ptr %76, align 2
  %79 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %47, i32 9
  %80 = load i16, ptr %79, align 2
  %81 = add i16 %80, %37
  store i16 %81, ptr %79, align 2
  %82 = getelementptr [4 x %struct.RenderLayerOffset], ptr @gRenderLayerOffsets, i32 0, i32 %47, i32 10
  %83 = load i16, ptr %82, align 4
  %84 = add i16 %83, %42
  store i16 %84, ptr %82, align 4
  br label %85

85:                                               ; preds = %62, %65
  tail call arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext %60) #2
  br label %86

86:                                               ; preds = %85, %46
  %87 = add nuw nsw i32 %47, 1
  %88 = icmp eq i32 %87, 4
  br i1 %88, label %89, label %46

89:                                               ; preds = %86
  ret void
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @ApplyBackgroundLayer(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
