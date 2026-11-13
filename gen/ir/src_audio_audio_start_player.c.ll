; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPlayerPrefix = type { ptr, i32, i8, i8, i8, i8, i32, [12 x i8], i16, i16, i16, i16, i16, i16, i16, i16, ptr, ptr, i32 }
%struct.AudioHeaderPrefix = type { i8, i8, i8, i8, ptr, [0 x ptr] }
%struct.AudioTrackStride = type { i8, [31 x i8], i32, [28 x i8], ptr, [12 x i8] }

; Function Attrs: nounwind
define dso_local arm_apcscc void @StartAudioPlayer(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1752395091
  br i1 %5, label %6, label %91

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.AudioHeaderPrefix, ptr %1, i32 0, i32 2
  %10 = load i8, ptr %9, align 2
  %11 = zext i8 %10 to i32
  %12 = icmp eq i8 %8, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %6
  %14 = load ptr, ptr %0, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = load i8, ptr %18, align 4
  %20 = and i8 %19, 64
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16, %13
  %23 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 65535
  %26 = icmp eq i32 %25, 0
  %27 = icmp slt i32 %24, 0
  %28 = or i1 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %22, %16
  %30 = tail call i32 asm "", "={r0},{r0}"(i32 %11) #2, !srcloc !4
  %31 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 3
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %91, label %35

35:                                               ; preds = %22, %6, %29
  %36 = phi i32 [ %30, %29 ], [ %11, %22 ], [ %11, %6 ]
  store i32 1752395092, ptr %3, align 4
  %37 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 1
  store i32 0, ptr %37, align 4
  store ptr %1, ptr %0, align 4
  %38 = getelementptr inbounds %struct.AudioHeaderPrefix, ptr %1, i32 0, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 17
  store ptr %39, ptr %40, align 4
  %41 = trunc i32 %36 to i8
  %42 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 3
  store i8 %41, ptr %42, align 1
  %43 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 6
  store i32 0, ptr %43, align 4
  %44 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 8
  store i16 150, ptr %44, align 4
  %45 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 10
  store i16 150, ptr %45, align 4
  %46 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 9
  store i16 256, ptr %46, align 2
  %47 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 11
  store i16 0, ptr %47, align 2
  %48 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 12
  store i16 0, ptr %48, align 4
  %49 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 16
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.AudioPlayerPrefix, ptr %0, i32 0, i32 2
  %52 = load i8, ptr %1, align 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %70, label %54

54:                                               ; preds = %35, %60
  %55 = phi i32 [ %65, %60 ], [ 0, %35 ]
  %56 = phi ptr [ %66, %60 ], [ %50, %35 ]
  %57 = load i8, ptr %51, align 4
  %58 = zext i8 %57 to i32
  %59 = icmp ult i32 %55, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %54
  tail call arm_apcscc void @StopAudioTrack(ptr noundef nonnull %0, ptr noundef %56) #3
  store i8 -64, ptr %56, align 4
  %61 = getelementptr inbounds %struct.AudioTrackStride, ptr %56, i32 0, i32 2
  store i32 0, ptr %61, align 4
  %62 = getelementptr %struct.AudioHeaderPrefix, ptr %1, i32 0, i32 5, i32 %55
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.AudioTrackStride, ptr %56, i32 0, i32 4
  store ptr %63, ptr %64, align 4
  %65 = add nuw nsw i32 %55, 1
  %66 = getelementptr %struct.AudioTrackStride, ptr %56, i32 1
  %67 = load i8, ptr %1, align 4
  %68 = zext i8 %67 to i32
  %69 = icmp ult i32 %65, %68
  br i1 %69, label %54, label %70

70:                                               ; preds = %54, %60, %35
  %71 = phi ptr [ %50, %35 ], [ %66, %60 ], [ %56, %54 ]
  %72 = phi i32 [ 0, %35 ], [ %65, %60 ], [ %55, %54 ]
  %73 = load i8, ptr %51, align 4
  %74 = zext i8 %73 to i32
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %70, %76
  %77 = phi i32 [ %79, %76 ], [ %72, %70 ]
  %78 = phi ptr [ %80, %76 ], [ %71, %70 ]
  tail call arm_apcscc void @StopAudioTrack(ptr noundef nonnull %0, ptr noundef %78) #3
  store i8 0, ptr %78, align 4
  %79 = add nuw nsw i32 %77, 1
  %80 = getelementptr %struct.AudioTrackStride, ptr %78, i32 1
  %81 = load i8, ptr %51, align 4
  %82 = zext i8 %81 to i32
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %76, label %84

84:                                               ; preds = %76, %70
  %85 = getelementptr inbounds %struct.AudioHeaderPrefix, ptr %1, i32 0, i32 3
  %86 = load i8, ptr %85, align 1
  %87 = icmp sgt i8 %86, -1
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = zext i8 %86 to i32
  tail call arm_apcscc void @SetAudioCoreMode(i32 noundef %89) #3
  br label %90

90:                                               ; preds = %88, %84
  store i32 1752395091, ptr %3, align 4
  br label %91

91:                                               ; preds = %2, %29, %90
  ret void
}

declare dso_local arm_apcscc void @StopAudioTrack(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetAudioCoreMode(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1518}
