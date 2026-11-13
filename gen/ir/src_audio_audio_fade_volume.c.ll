; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioFadePlayerView = type { i32, i32, i8, [27 x i8], i16, i16, i16, i16, ptr }
%struct.AudioTrackBodyView = type { i8, [7 x i8], i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [55 x i8] }

; Function Attrs: nounwind
define dso_local arm_apcscc void @ProcessAudioPlayerFade(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.AudioFadePlayerView, ptr %0, i32 0, i32 4
  %3 = load i16, ptr %2, align 4
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %76, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.AudioFadePlayerView, ptr %0, i32 0, i32 5
  %7 = load i16, ptr %6, align 2
  %8 = add i16 %7, -1
  store i16 %8, ptr %6, align 2
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %76

10:                                               ; preds = %5
  store i16 %3, ptr %6, align 2
  %11 = getelementptr inbounds %struct.AudioFadePlayerView, ptr %0, i32 0, i32 6
  %12 = load i16, ptr %11, align 4
  %13 = and i16 %12, 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10
  %16 = add i16 %12, 16
  store i16 %16, ptr %11, align 4
  %17 = icmp ugt i16 %16, 255
  br i1 %17, label %18, label %53

18:                                               ; preds = %15
  store i16 256, ptr %11, align 4
  store i16 0, ptr %2, align 4
  br label %53

19:                                               ; preds = %10
  %20 = add i16 %12, -16
  store i16 %20, ptr %11, align 4
  %21 = icmp slt i16 %20, 1
  br i1 %21, label %22, label %53

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.AudioFadePlayerView, ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 4
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %43, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.AudioFadePlayerView, ptr %0, i32 0, i32 8
  %28 = load ptr, ptr %27, align 4
  %29 = zext i8 %24 to i32
  br label %30

30:                                               ; preds = %26, %37
  %31 = phi i32 [ %38, %37 ], [ %29, %26 ]
  %32 = phi ptr [ %39, %37 ], [ %28, %26 ]
  tail call arm_apcscc void @StopAudioTrack(ptr noundef nonnull %0, ptr noundef %32) #4
  %33 = load i16, ptr %11, align 4
  %34 = and i16 %33, 1
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8 0, ptr %32, align 1
  br label %37

37:                                               ; preds = %36, %30
  %38 = add nsw i32 %31, -1
  %39 = getelementptr %struct.AudioTrackBodyView, ptr %32, i32 1
  %40 = icmp sgt i32 %31, 1
  br i1 %40, label %30, label %41

41:                                               ; preds = %37
  %42 = load i16, ptr %11, align 4
  br label %43

43:                                               ; preds = %41, %22
  %44 = phi i16 [ %42, %41 ], [ %20, %22 ]
  %45 = and i16 %44, 1
  %46 = icmp eq i16 %45, 0
  %47 = getelementptr inbounds %struct.AudioFadePlayerView, ptr %0, i32 0, i32 1
  br i1 %46, label %51, label %48

48:                                               ; preds = %43
  %49 = load i32, ptr %47, align 4
  %50 = or i32 %49, -2147483648
  br label %51

51:                                               ; preds = %43, %48
  %52 = phi i32 [ %50, %48 ], [ -2147483648, %43 ]
  store i32 %52, ptr %47, align 4
  store i16 0, ptr %2, align 4
  br label %76

53:                                               ; preds = %19, %15, %18
  %54 = getelementptr inbounds %struct.AudioFadePlayerView, ptr %0, i32 0, i32 2
  %55 = load i8, ptr %54, align 4
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.AudioFadePlayerView, ptr %0, i32 0, i32 8
  %59 = load ptr, ptr %58, align 4
  %60 = zext i8 %55 to i32
  br label %61

61:                                               ; preds = %57, %72
  %62 = phi i32 [ %73, %72 ], [ %60, %57 ]
  %63 = phi ptr [ %74, %72 ], [ %59, %57 ]
  %64 = load i8, ptr %63, align 1
  %65 = icmp sgt i8 %64, -1
  br i1 %65, label %72, label %66

66:                                               ; preds = %61
  %67 = load i16, ptr %11, align 4
  %68 = lshr i16 %67, 2
  %69 = trunc i16 %68 to i8
  %70 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %63, i32 0, i32 13
  store i8 %69, ptr %70, align 1
  %71 = or i8 %64, 3
  store i8 %71, ptr %63, align 1
  br label %72

72:                                               ; preds = %66, %61
  %73 = add nsw i32 %62, -1
  %74 = getelementptr %struct.AudioTrackBodyView, ptr %63, i32 1
  %75 = icmp sgt i32 %62, 1
  br i1 %75, label %61, label %76

76:                                               ; preds = %72, %53, %5, %1, %51
  ret void
}

declare dso_local arm_apcscc void @StopAudioTrack(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @UpdateAudioTrackVolumePitch(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = load i8, ptr %1, align 1
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %64, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 12
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 13
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = mul nuw nsw i32 %12, %9
  %14 = lshr i32 %13, 5
  %15 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 18
  %16 = load i8, ptr %15, align 1
  %17 = icmp eq i8 %16, 1
  br i1 %17, label %18, label %30

18:                                               ; preds = %6
  %19 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 16
  %20 = load i8, ptr %19, align 1
  %21 = sext i8 %20 to i32
  %22 = add nsw i32 %21, 128
  %23 = mul nuw nsw i32 %22, %14
  %24 = lshr i32 %23, 7
  %25 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 14
  %26 = load i8, ptr %25, align 1
  %27 = sext i8 %26 to i32
  %28 = shl nsw i32 %27, 1
  %29 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 15
  br label %42

30:                                               ; preds = %6
  %31 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 14
  %32 = load i8, ptr %31, align 1
  %33 = sext i8 %32 to i32
  %34 = shl nsw i32 %33, 1
  %35 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 15
  %36 = load i8, ptr %35, align 1
  %37 = sext i8 %36 to i32
  %38 = add nsw i32 %34, %37
  %39 = icmp eq i8 %16, 2
  br i1 %39, label %40, label %49

40:                                               ; preds = %30
  %41 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 16
  br label %42

42:                                               ; preds = %40, %18
  %43 = phi ptr [ %29, %18 ], [ %41, %40 ]
  %44 = phi i32 [ %28, %18 ], [ %38, %40 ]
  %45 = phi i32 [ %24, %18 ], [ %14, %40 ]
  %46 = load i8, ptr %43, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %44, %47
  br label %49

49:                                               ; preds = %42, %30
  %50 = phi i32 [ %14, %30 ], [ %45, %42 ]
  %51 = phi i32 [ %38, %30 ], [ %48, %42 ]
  %52 = tail call i32 @llvm.smin.i32(i32 %51, i32 127)
  %53 = tail call i32 @llvm.smax.i32(i32 %52, i32 -128)
  %54 = add nsw i32 %53, 128
  %55 = mul nuw nsw i32 %54, %50
  %56 = lshr i32 %55, 8
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 10
  store i8 %57, ptr %58, align 1
  %59 = sub nsw i32 127, %53
  %60 = mul nuw nsw i32 %59, %50
  %61 = lshr i32 %60, 8
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 11
  store i8 %62, ptr %63, align 1
  br label %64

64:                                               ; preds = %49, %2
  %65 = and i8 %3, 4
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %109, label %67

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 8
  %69 = load i8, ptr %68, align 1
  %70 = sext i8 %69 to i32
  %71 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 9
  %72 = load i8, ptr %71, align 1
  %73 = zext i8 %72 to i32
  %74 = mul nsw i32 %73, %70
  %75 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 6
  %76 = load i8, ptr %75, align 1
  %77 = sext i8 %76 to i32
  %78 = add nsw i32 %74, %77
  %79 = shl nsw i32 %78, 2
  %80 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 4
  %81 = load i8, ptr %80, align 1
  %82 = sext i8 %81 to i32
  %83 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 5
  %84 = load i8, ptr %83, align 1
  %85 = sext i8 %84 to i32
  %86 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 7
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = add nsw i32 %85, %82
  %90 = shl nsw i32 %89, 8
  %91 = add nsw i32 %79, %88
  %92 = add nsw i32 %91, %90
  %93 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 18
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %67
  %97 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 16
  %98 = load i8, ptr %97, align 1
  %99 = sext i8 %98 to i32
  %100 = shl nsw i32 %99, 4
  %101 = add nsw i32 %100, %92
  br label %102

102:                                              ; preds = %96, %67
  %103 = phi i32 [ %101, %96 ], [ %92, %67 ]
  %104 = lshr i32 %103, 8
  %105 = trunc i32 %104 to i8
  %106 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 2
  store i8 %105, ptr %106, align 1
  %107 = trunc i32 %103 to i8
  %108 = getelementptr inbounds %struct.AudioTrackBodyView, ptr %1, i32 0, i32 3
  store i8 %107, ptr %108, align 1
  br label %109

109:                                              ; preds = %102, %64
  %110 = and i8 %3, -6
  store i8 %110, ptr %1, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
