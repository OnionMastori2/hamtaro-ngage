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

@gRasterEffectKind = external dso_local local_unnamed_addr global i8, align 1
@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScanlineValue = external dso_local global i16, align 2
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsBeginRasterEffect(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @gRasterEffectKind, align 1
  switch i8 %3, label %51 [
    i8 1, label %4
    i8 2, label %4
    i8 6, label %4
    i8 3, label %12
    i8 4, label %12
    i8 7, label %12
    i8 5, label %21
    i8 8, label %30
  ]

4:                                                ; preds = %2, %2, %2
  %5 = load ptr, ptr @gRasterEffect, align 4
  %6 = getelementptr i8, ptr %5, i32 5
  store i8 0, ptr %6, align 1
  %7 = load ptr, ptr @gRasterEffect, align 4
  %8 = getelementptr i8, ptr %7, i32 6
  store i8 0, ptr %8, align 1
  %9 = load i8, ptr @gRasterEffectKind, align 1
  %10 = add i8 %9, 11
  %11 = zext i8 %10 to i32
  br label %51

12:                                               ; preds = %2, %2, %2
  %13 = load ptr, ptr @gRasterEffect, align 4
  %14 = getelementptr i8, ptr %13, i32 6
  store i8 0, ptr %14, align 1
  %15 = load ptr, ptr @gRasterEffect, align 4
  %16 = getelementptr i8, ptr %15, i32 7
  store i8 0, ptr %16, align 1
  %17 = getelementptr i8, ptr %15, i32 8
  store i8 0, ptr %17, align 1
  %18 = load i8, ptr @gRasterEffectKind, align 1
  %19 = add i8 %18, 11
  %20 = zext i8 %19 to i32
  br label %51

21:                                               ; preds = %2
  %22 = load ptr, ptr @gRasterEffect, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  store i8 0, ptr %23, align 1
  %24 = load ptr, ptr @gRasterEffect, align 4
  %25 = getelementptr i8, ptr %24, i32 13
  store i8 0, ptr %25, align 1
  %26 = getelementptr i8, ptr %24, i32 14
  store i8 0, ptr %26, align 1
  tail call arm_apcscc void @UpdateRasterRadiusProfile() #2
  %27 = load i8, ptr @gRasterEffectKind, align 1
  %28 = add i8 %27, 11
  %29 = zext i8 %28 to i32
  br label %51

30:                                               ; preds = %2
  store i8 -82, ptr %0, align 4
  %31 = load ptr, ptr @gRasterEffect, align 4
  %32 = getelementptr i8, ptr %31, i32 5
  %33 = getelementptr i8, ptr %31, i32 3
  %34 = load i8, ptr %33, align 1
  %35 = icmp sgt i8 %34, -1
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr i8, ptr %31, i32 4
  %38 = load i8, ptr %37, align 1
  %39 = icmp eq i8 %38, 0
  %40 = select i1 %39, i8 120, i8 80
  br label %41

41:                                               ; preds = %36, %30
  %42 = phi i8 [ %40, %36 ], [ 0, %30 ]
  store i8 %42, ptr %32, align 1
  %43 = load ptr, ptr @gRasterEffect, align 4
  %44 = getelementptr i8, ptr %43, i32 4
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store volatile i16 160, ptr inttoptr (i32 67108932 to ptr), align 4
  br label %49

48:                                               ; preds = %41
  store volatile i16 240, ptr inttoptr (i32 67108928 to ptr), align 64
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i8, ptr @gRasterEffectKind, align 1
  br label %51

51:                                               ; preds = %49, %2, %21, %12, %4
  %52 = phi i8 [ %50, %49 ], [ %3, %2 ], [ %27, %21 ], [ %18, %12 ], [ %9, %4 ]
  %53 = phi i32 [ 0, %49 ], [ undef, %2 ], [ %29, %21 ], [ %20, %12 ], [ %11, %4 ]
  %54 = icmp eq i8 %52, 8
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load ptr, ptr @gRasterEffect, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  %58 = load i8, ptr %57, align 1
  %59 = icmp eq i8 %58, 0
  %60 = select i1 %59, i32 0, i32 2
  br label %61

61:                                               ; preds = %51, %55
  %62 = phi i32 [ %60, %55 ], [ 0, %51 ]
  store volatile i32 ptrtoint (ptr @gRasterScanlineValue to i32), ptr inttoptr (i32 67109040 to ptr), align 16
  %63 = load ptr, ptr @gRasterEffect, align 4
  %64 = load i8, ptr %63, align 1
  %65 = icmp ne i8 %64, 0
  %66 = zext i1 %65 to i32
  %67 = or disjoint i32 %62, %66
  %68 = shl nuw nsw i32 %67, 1
  %69 = or disjoint i32 %68, 67108928
  store volatile i32 %69, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i16 1, ptr inttoptr (i32 67109048 to ptr), align 8
  %70 = load i8, ptr @gRasterEffectKind, align 1
  %71 = icmp eq i8 %70, 8
  %72 = select i1 %71, i16 -27840, i16 -23744
  store volatile i16 %72, ptr inttoptr (i32 67109050 to ptr), align 2
  %73 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %74 = load ptr, ptr @gRasterEffect, align 4
  %75 = getelementptr i8, ptr %74, i32 1
  %76 = load i8, ptr %75, align 1
  %77 = load i8, ptr %74, align 1
  %78 = icmp eq i8 %77, 0
  %79 = select i1 %78, i16 8192, i16 16384
  %80 = zext i8 %76 to i16
  %81 = shl nuw i16 %80, 8
  %82 = or i16 %81, %73
  %83 = and i16 %82, 7936
  %84 = and i16 %73, -7937
  %85 = or i16 %79, %84
  %86 = or disjoint i16 %85, %83
  store i16 %86, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %87 = load i32, ptr @gVideoState, align 4
  %88 = or i32 %87, 1
  store i32 %88, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef %53) #2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %89 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %1, ptr %89, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @UpdateRasterRadiusProfile() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
