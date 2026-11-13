; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioSongCallbacks = type { [3 x ptr] }
%struct.AudioSongRecord = type { ptr, i16, i16 }
%struct.AudioPlayerRecord = type { ptr, i32, i32 }

@gAudioSongCallbacksE758 = external dso_local local_unnamed_addr constant %struct.AudioSongCallbacks, align 4
@gMainScriptArgumentWords5E8 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gAudioSongRecordsAE34 = external dso_local local_unnamed_addr constant [0 x %struct.AudioSongRecord], align 4
@gAudioFadeBytes40 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAudioSongIds20 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gAudioPlayerRecordsADEC = external dso_local local_unnamed_addr constant [0 x %struct.AudioPlayerRecord], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gAudioPlayerPointers120 = external dso_local local_unnamed_addr global [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptStartSong(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  store i8 %2, ptr @gMainScriptArgumentWords5E8, align 4
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %7 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %8 = add i16 %7, -200
  %9 = icmp ult i16 %8, 100
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i16 %7, ptr getelementptr inbounds ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 15), align 2
  br label %11

11:                                               ; preds = %10, %1
  %12 = zext i16 %7 to i32
  %13 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %12, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = zext i16 %14 to i32
  %16 = getelementptr [0 x i8], ptr @gAudioFadeBytes40, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = icmp ult i8 %6, 2
  %20 = select i1 %18, i1 true, i1 %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %11
  %22 = tail call i8 @llvm.umin.i8(i8 %6, i8 2)
  %23 = zext nneg i8 %22 to i32
  %24 = getelementptr [3 x ptr], ptr @gAudioSongCallbacksE758, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  tail call arm_apcscc void %25(i16 noundef zeroext %7) #3
  br label %35

26:                                               ; preds = %11
  %27 = getelementptr [0 x i16], ptr @gAudioSongIds20, i32 0, i32 %15
  %28 = load i16, ptr %27, align 2
  %29 = icmp eq i16 %7, %28
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call arm_apcscc void @StartSong(i16 noundef zeroext %7) #3
  br label %35

31:                                               ; preds = %26
  %32 = getelementptr [0 x %struct.AudioPlayerRecord], ptr @gAudioPlayerRecordsADEC, i32 0, i32 %15
  %33 = load ptr, ptr %32, align 4
  %34 = zext i8 %17 to i16
  tail call arm_apcscc void @FadeInAudioPlayer(ptr noundef %33, i16 noundef zeroext %34) #3
  br label %35

35:                                               ; preds = %30, %31, %21
  %36 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %37 = getelementptr [0 x i16], ptr @gAudioSongIds20, i32 0, i32 %15
  store i16 %36, ptr %37, align 2
  store i8 0, ptr %16, align 1
  store i32 3, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @FadeInAudioPlayer(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptStopSong(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  store i8 %2, ptr @gMainScriptArgumentWords5E8, align 4
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %7 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %8 = zext i16 %7 to i32
  %9 = icmp eq i16 %7, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  tail call arm_apcscc void @StopAllSongs() #3
  br label %22

11:                                               ; preds = %1
  %12 = icmp eq i8 %6, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %11
  %14 = getelementptr [0 x %struct.AudioSongRecord], ptr @gAudioSongRecordsAE34, i32 0, i32 %8, i32 1
  %15 = load i16, ptr %14, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr [0 x i8], ptr @gAudioFadeBytes40, i32 0, i32 %16
  store i8 %6, ptr %17, align 1
  %18 = getelementptr [0 x %struct.AudioPlayerRecord], ptr @gAudioPlayerRecordsADEC, i32 0, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = zext i8 %6 to i16
  tail call arm_apcscc void @FadeOutAudioPlayer(ptr noundef %19, i16 noundef zeroext %20) #3
  br label %22

21:                                               ; preds = %11
  tail call arm_apcscc void @StopSong(i16 noundef zeroext %7) #3
  br label %22

22:                                               ; preds = %13, %21, %10
  store i32 3, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @StopAllSongs() local_unnamed_addr #1

declare dso_local arm_apcscc void @FadeOutAudioPlayer(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @StopSong(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptChangeAudioPlayer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  store i8 %2, ptr @gMainScriptArgumentWords5E8, align 4
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  store i8 %6, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %8 = tail call i32 asm "", "=r,0"(i32 %7) #4, !srcloc !4
  %9 = getelementptr i8, ptr %0, i32 3
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  store i8 %10, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 3), align 1
  %12 = tail call i32 asm "", "=r,0"(i32 %11) #4, !srcloc !5
  %13 = and i32 %8, 255
  %14 = icmp eq i32 %13, 0
  %15 = and i32 %12, 255
  %16 = icmp eq i32 %15, 0
  br i1 %14, label %42, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr @gAudioPlayerPointers120, align 4
  br i1 %16, label %21, label %19

19:                                               ; preds = %17
  %20 = zext i8 %10 to i16
  tail call arm_apcscc void @ConfigureAudioPlayerFade(ptr noundef %18, i16 noundef zeroext %20) #3
  br label %22

21:                                               ; preds = %17
  tail call arm_apcscc void @StopAudioPlayer(ptr noundef %18) #3
  br label %22

22:                                               ; preds = %21, %19
  %23 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call arm_apcscc void @StartSongOrContinue(i16 noundef zeroext %23) #3
  br label %41

26:                                               ; preds = %22
  %27 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 3), align 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %26
  %30 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 3) #3
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gAudioFadeBytes40, i32 0, i32 1), align 1
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr getelementptr ([0 x ptr], ptr @gAudioPlayerPointers120, i32 0, i32 1), align 4
  %37 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 3), align 1
  %38 = zext i8 %37 to i16
  tail call arm_apcscc void @FadeInAudioPlayer(ptr noundef %36, i16 noundef zeroext %38) #3
  br label %41

39:                                               ; preds = %32, %29, %26
  %40 = load i16, ptr getelementptr inbounds ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 15), align 2
  tail call arm_apcscc void @StartSongOrContinue(i16 noundef zeroext %40) #3
  br label %41

41:                                               ; preds = %35, %39, %25
  store i8 0, ptr getelementptr ([0 x i8], ptr @gAudioFadeBytes40, i32 0, i32 1), align 1
  br label %49

42:                                               ; preds = %1
  %43 = load ptr, ptr getelementptr ([0 x ptr], ptr @gAudioPlayerPointers120, i32 0, i32 1), align 4
  br i1 %16, label %47, label %44

44:                                               ; preds = %42
  %45 = zext i8 %10 to i16
  tail call arm_apcscc void @FadeOutAudioPlayer(ptr noundef %43, i16 noundef zeroext %45) #3
  %46 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  tail call arm_apcscc void @StartSong(i16 noundef zeroext %46) #3
  store i8 1, ptr getelementptr ([0 x i8], ptr @gAudioFadeBytes40, i32 0, i32 1), align 1
  br label %49

47:                                               ; preds = %42
  tail call arm_apcscc void @StopAudioPlayer(ptr noundef %43) #3
  %48 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  tail call arm_apcscc void @StartSong(i16 noundef zeroext %48) #3
  br label %49

49:                                               ; preds = %44, %47, %41
  store i32 4, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @ConfigureAudioPlayerFade(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @StopAudioPlayer(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @StartSongOrContinue(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 3279}
!5 = !{i64 3429}
