; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderRegionAudioRecord = type { ptr, i16, i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderRegionAudioRecords42F8 = external dso_local local_unnamed_addr constant [0 x %struct.RenderRegionAudioRecord], align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackRegionAudio(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr %1, align 1
  %8 = and i8 %7, 127
  %9 = zext nneg i8 %8 to i32
  %10 = getelementptr [0 x %struct.RenderRegionAudioRecord], ptr @gRenderRegionAudioRecords42F8, i32 0, i32 %9
  %11 = getelementptr i8, ptr %1, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = getelementptr i8, ptr %1, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or disjoint i32 %14, %18
  %20 = or disjoint i32 %19, 32768
  %21 = getelementptr i8, ptr %1, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 16
  %25 = getelementptr i8, ptr %1, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = or disjoint i32 %24, %28
  %30 = or disjoint i32 %29, 32768
  %31 = getelementptr i8, ptr %1, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = getelementptr i8, ptr %1, i32 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = or disjoint i32 %34, %38
  %40 = or disjoint i32 %39, 32768
  %41 = getelementptr i8, ptr %1, i32 11
  %42 = load i8, ptr %41, align 1
  %43 = getelementptr i8, ptr %1, i32 12
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = icmp slt i32 %46, %20
  br i1 %47, label %94, label %48

48:                                               ; preds = %3
  %49 = getelementptr i8, ptr %1, i32 5
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 16
  %53 = getelementptr i8, ptr %1, i32 6
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw i32 %55, 24
  %57 = or disjoint i32 %52, %56
  %58 = or disjoint i32 %57, 32768
  %59 = icmp sgt i32 %46, %58
  br i1 %59, label %94, label %60

60:                                               ; preds = %48
  %61 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %62 = load i32, ptr %61, align 4
  %63 = icmp slt i32 %62, %30
  %64 = icmp sgt i32 %62, %40
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %94, label %66

66:                                               ; preds = %60
  %67 = getelementptr i8, ptr %1, i32 9
  %68 = load i8, ptr %67, align 1
  switch i8 %68, label %75 [
    i8 0, label %88
    i8 1, label %69
    i8 2, label %72
  ]

69:                                               ; preds = %66
  %70 = sub i32 %46, %20
  %71 = lshr i32 %70, 16
  br label %75

72:                                               ; preds = %66
  %73 = sub i32 %62, %30
  %74 = lshr i32 %73, 16
  br label %75

75:                                               ; preds = %66, %72, %69
  %76 = phi i32 [ %71, %69 ], [ %74, %72 ], [ undef, %66 ]
  %77 = getelementptr i8, ptr %1, i32 10
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = mul i32 %76, %79
  %81 = and i32 %80, 65535
  %82 = tail call i32 @llvm.umin.i32(i32 %81, i32 256)
  %83 = load ptr, ptr %10, align 4
  %84 = getelementptr [0 x %struct.RenderRegionAudioRecord], ptr @gRenderRegionAudioRecords42F8, i32 0, i32 %9, i32 1
  %85 = load i16, ptr %84, align 4
  %86 = zext i16 %85 to i32
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef %83, i32 noundef %86, i32 noundef %82) #3
  %87 = load i8, ptr %1, align 1
  br label %88

88:                                               ; preds = %66, %75
  %89 = phi i8 [ %7, %66 ], [ %87, %75 ]
  %90 = icmp sgt i8 %89, -1
  br i1 %90, label %91, label %110

91:                                               ; preds = %88
  %92 = getelementptr [0 x %struct.RenderRegionAudioRecord], ptr @gRenderRegionAudioRecords42F8, i32 0, i32 %9, i32 2
  %93 = load i16, ptr %92, align 2
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext %93) #3
  br label %110

94:                                               ; preds = %60, %48, %3
  %95 = getelementptr i8, ptr %1, i32 9
  %96 = load i8, ptr %95, align 1
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %94
  %99 = load ptr, ptr %10, align 4
  %100 = getelementptr [0 x %struct.RenderRegionAudioRecord], ptr @gRenderRegionAudioRecords42F8, i32 0, i32 %9, i32 1
  %101 = load i16, ptr %100, align 4
  %102 = zext i16 %101 to i32
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef %99, i32 noundef %102, i32 noundef 256) #3
  %103 = load i8, ptr %1, align 1
  br label %104

104:                                              ; preds = %98, %94
  %105 = phi i8 [ %103, %98 ], [ %7, %94 ]
  %106 = icmp sgt i8 %105, -1
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = getelementptr [0 x %struct.RenderRegionAudioRecord], ptr @gRenderRegionAudioRecords42F8, i32 0, i32 %9, i32 2
  %109 = load i16, ptr %108, align 2
  tail call arm_apcscc void @StopSong(i16 noundef zeroext %109) #3
  br label %110

110:                                              ; preds = %104, %107, %88, %91
  %111 = phi i8 [ 1, %91 ], [ 1, %88 ], [ 0, %107 ], [ 0, %104 ]
  %112 = zext i8 %44 to i32
  %113 = shl nuw nsw i32 %112, 8
  %114 = zext i8 %42 to i32
  %115 = or disjoint i32 %113, %114
  %116 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %115
  store i8 %111, ptr %116, align 1
  store i32 1, ptr %2, align 4
  ret i32 13
}

declare dso_local arm_apcscc void @SetAudioTrackVolume(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @StartSongOrChange(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @StopSong(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
