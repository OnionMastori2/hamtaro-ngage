; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioSongRecord = type { ptr, i16, i16 }
%struct.AudioPlayerRecord = type { ptr, i32, i32 }

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gAudioSongRecordsAE34 = external dso_local local_unnamed_addr constant [0 x %struct.AudioSongRecord], align 4
@gAudioPlayerRecordsADEC = external dso_local local_unnamed_addr constant [0 x %struct.AudioPlayerRecord], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetAudioParameters(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gMainScriptArgumentWords5E8, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %12 = getelementptr i8, ptr %0, i32 6
  %13 = load i8, ptr %10, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %14 = getelementptr i8, ptr %0, i32 7
  %15 = load i8, ptr %12, align 1
  store i8 %15, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %16 = getelementptr i8, ptr %0, i32 8
  %17 = load i8, ptr %14, align 1
  store i8 %17, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %18 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %19 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %20 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %21 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 3), align 2
  %22 = getelementptr i8, ptr %0, i32 9
  %23 = load i8, ptr %16, align 1
  store i8 %23, ptr @gMainScriptArgumentWords5E8, align 4
  %24 = getelementptr i8, ptr %0, i32 10
  %25 = load i8, ptr %22, align 1
  store i8 %25, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %26 = load i8, ptr %24, align 1
  store i8 %26, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %27 = zext i16 %20 to i32
  %28 = zext i16 %18 to i32
  %29 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %30 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %31 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %28, i32 1
  %32 = load i16, ptr %31, align 4
  %33 = zext i16 %32 to i32
  %34 = getelementptr [0 x %struct.AudioPlayerRecord], ptr @gAudioPlayerRecordsADEC, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  tail call arm_apcscc void @SetAudioTempoScale(ptr noundef %35, i16 noundef zeroext %21) #2
  %36 = zext i16 %19 to i32
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef %35, i32 noundef %36, i32 noundef %27) #2
  %37 = sext i16 %29 to i32
  tail call arm_apcscc void @SetAudioTrackPitch(ptr noundef %35, i16 noundef zeroext %19, i32 noundef %37) #2
  %38 = sext i8 %30 to i32
  tail call arm_apcscc void @SetAudioTrackPan(ptr noundef %35, i16 noundef zeroext %19, i32 noundef %38) #2
  store i32 11, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @SetAudioTempoScale(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetAudioTrackVolume(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetAudioTrackPitch(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetAudioTrackPan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
