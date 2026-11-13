; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSineTable = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateRenderShake(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  %3 = add i8 %2, 1
  %4 = icmp ugt i8 %3, 63
  %5 = select i1 %4, i8 0, i8 %3
  store i8 %5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  %6 = shl nuw i8 %5, 2
  %7 = zext i8 %6 to i32
  %8 = add nuw nsw i32 %7, 64
  %9 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %8
  %10 = load i16, ptr %9, align 2
  %11 = sext i16 %10 to i32
  %12 = getelementptr [0 x i16], ptr @gRenderSineTable, i32 0, i32 %7
  %13 = load i16, ptr %12, align 2
  %14 = sext i16 %13 to i32
  %15 = add nsw i32 %14, %11
  %16 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %17 = zext i8 %16 to i32
  %18 = mul nsw i32 %15, %17
  %19 = sdiv i32 %18, 256
  %20 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %21 = trunc i32 %19 to i16
  %22 = add i16 %20, %21
  %23 = sub nsw i32 %14, %11
  %24 = mul nsw i32 %23, %17
  %25 = sdiv i32 %24, 256
  %26 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %27 = trunc i32 %25 to i16
  %28 = add i16 %26, %27
  %29 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = zext i16 %28 to i32
  %33 = zext i16 %22 to i32
  %34 = shl nuw i32 %33, 16
  %35 = shl nuw i32 %32, 16
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %37 = zext i8 %36 to i32
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %37, i32 noundef %34, i32 noundef %35, i32 noundef 0) #2
  br label %70

38:                                               ; preds = %1
  %39 = tail call arm_apcscc ptr @GetVideoState() #2
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %41 = getelementptr %struct.VideoState, ptr %39, i32 0, i32 14, i32 1, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = add i16 %42, %22
  %44 = getelementptr %struct.VideoState, ptr %39, i32 0, i32 14, i32 1, i32 2
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %45, %28
  %47 = sext i16 %43 to i32
  %48 = sext i16 %46 to i32
  %49 = and i8 %40, 1
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 1) #2
  %52 = getelementptr %struct.VideoState, ptr %39, i32 0, i32 14, i32 0, i32 1
  store i16 %43, ptr %52, align 2
  %53 = getelementptr %struct.VideoState, ptr %39, i32 0, i32 14, i32 0, i32 2
  store i16 %46, ptr %53, align 4
  tail call arm_apcscc void @SetBackgroundAnchor(i8 noundef zeroext 2, i32 noundef %47, i32 noundef %48) #2
  br label %54

54:                                               ; preds = %51, %38
  %55 = and i8 %40, 2
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 2) #2
  store i16 %43, ptr %41, align 2
  store i16 %46, ptr %44, align 4
  tail call arm_apcscc void @SetBackgroundAnchor(i8 noundef zeroext 2, i32 noundef %47, i32 noundef %48) #2
  br label %58

58:                                               ; preds = %57, %54
  %59 = and i8 %40, 4
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 4) #2
  %62 = getelementptr %struct.VideoState, ptr %39, i32 0, i32 14, i32 2, i32 1
  store i16 %43, ptr %62, align 2
  %63 = getelementptr %struct.VideoState, ptr %39, i32 0, i32 14, i32 2, i32 2
  store i16 %46, ptr %63, align 4
  tail call arm_apcscc void @SetBackgroundAnchor(i8 noundef zeroext 2, i32 noundef %47, i32 noundef %48) #2
  br label %64

64:                                               ; preds = %61, %58
  %65 = and i8 %40, 8
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext 8) #2
  %68 = getelementptr %struct.VideoState, ptr %39, i32 0, i32 14, i32 3, i32 1
  store i16 %43, ptr %68, align 2
  %69 = getelementptr %struct.VideoState, ptr %39, i32 0, i32 14, i32 3, i32 2
  store i16 %46, ptr %69, align 4
  tail call arm_apcscc void @SetBackgroundAnchor(i8 noundef zeroext 2, i32 noundef %47, i32 noundef %48) #2
  br label %70

70:                                               ; preds = %64, %67, %31
  %71 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  %72 = add i8 %71, 1
  store i8 %72, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  %73 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %74 = icmp eq i8 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 101), align 1
  %76 = icmp eq i8 %72, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %75
  %78 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = add i8 %78, -1
  store i8 %81, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  br label %82

82:                                               ; preds = %75, %77, %80, %70
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBackgroundAnchor(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
