; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPlayerRecord = type { ptr, i32, i32 }
%struct.AudioSongRecord = type { ptr, i16, i16 }

@gAudioPlayerRecordsADEC = external dso_local local_unnamed_addr constant [0 x %struct.AudioPlayerRecord], align 4
@gAudioSongRecordsAE34 = external dso_local local_unnamed_addr constant [0 x %struct.AudioSongRecord], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @StartSong(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i16 %0 to i32
  %3 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2
  %4 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.AudioPlayerRecord, ptr @gAudioPlayerRecordsADEC, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %3, align 4
  tail call arm_apcscc void @StartAudioPlayer(ptr noundef %8, ptr noundef %9) #2
  ret void
}

declare dso_local arm_apcscc void @StartAudioPlayer(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @StartSongOrChange(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i16 %0 to i32
  %3 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2
  %4 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.AudioPlayerRecord, ptr @gAudioPlayerRecordsADEC, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = getelementptr i32, ptr %8, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 65535
  %16 = icmp eq i32 %15, 0
  %17 = icmp slt i32 %14, 0
  %18 = or i1 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12, %1
  %20 = phi ptr [ %10, %1 ], [ %9, %12 ]
  tail call arm_apcscc void @StartAudioPlayer(ptr noundef nonnull %8, ptr noundef %20) #2
  br label %21

21:                                               ; preds = %19, %12
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @StartSongOrContinue(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i16 %0 to i32
  %3 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2
  %4 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.AudioPlayerRecord, ptr @gAudioPlayerRecordsADEC, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  tail call arm_apcscc void @StartAudioPlayer(ptr noundef nonnull %8, ptr noundef %10) #2
  br label %22

13:                                               ; preds = %1
  %14 = getelementptr i32, ptr %8, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  tail call arm_apcscc void @StartAudioPlayer(ptr noundef nonnull %8, ptr noundef %9) #2
  br label %22

18:                                               ; preds = %13
  %19 = load i32, ptr %14, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  tail call arm_apcscc void @ResumeAudioPlayerState(ptr noundef nonnull %8) #2
  br label %22

22:                                               ; preds = %17, %21, %18, %12
  ret void
}

declare dso_local arm_apcscc void @ResumeAudioPlayerState(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @StopSong(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i16 %0 to i32
  %3 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2
  %4 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.AudioPlayerRecord, ptr @gAudioPlayerRecordsADEC, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call arm_apcscc void @StopAudioPlayer(ptr noundef nonnull %8) #2
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

declare dso_local arm_apcscc void @StopAudioPlayer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ResumeSong(i16 noundef zeroext %0) local_unnamed_addr #0 {
  %2 = zext i16 %0 to i32
  %3 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2
  %4 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %2, i32 1
  %5 = load i16, ptr %4, align 4
  %6 = zext i16 %5 to i32
  %7 = getelementptr %struct.AudioPlayerRecord, ptr @gAudioPlayerRecordsADEC, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %3, align 4
  %11 = icmp eq ptr %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call arm_apcscc void @ResumeAudioPlayerState(ptr noundef nonnull %8) #2
  br label %13

13:                                               ; preds = %12, %1
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
