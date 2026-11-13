; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPlayerRecord = type { ptr, i32, i32 }
%struct.AudioSongRecord = type { ptr, i16, i16 }

@gMainScriptArgumentWords5E8 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gAudioPlayerRecordsADEC = external dso_local local_unnamed_addr constant [0 x %struct.AudioPlayerRecord], align 4
@gAudioSongRecordsAE34 = external dso_local local_unnamed_addr constant [0 x %struct.AudioSongRecord], align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptWaitForSong(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %9 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %8
  %10 = getelementptr %struct.AudioSongRecord, ptr @gAudioSongRecordsAE34, i32 %8, i32 1
  %11 = load i16, ptr %10, align 4
  %12 = zext i16 %11 to i32
  %13 = getelementptr %struct.AudioPlayerRecord, ptr @gAudioPlayerRecordsADEC, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq i8 %6, 0
  %16 = getelementptr i32, ptr %14, i32 1
  %17 = load i32, ptr %16, align 4
  br i1 %15, label %20, label %18

18:                                               ; preds = %1
  %19 = icmp sgt i32 %17, -1
  br i1 %19, label %23, label %27

20:                                               ; preds = %1
  %21 = and i32 %17, -2147418113
  %22 = icmp eq i32 %21, -2147483648
  br i1 %22, label %27, label %23

23:                                               ; preds = %18, %20
  %24 = load ptr, ptr %9, align 4
  %25 = load ptr, ptr %14, align 4
  %26 = icmp eq ptr %24, %25
  br i1 %26, label %28, label %27

27:                                               ; preds = %18, %23, %20
  store i8 0, ptr @gScriptOpcode, align 1
  br label %29

28:                                               ; preds = %23
  store i8 1, ptr @gScriptYielded, align 1
  br label %29

29:                                               ; preds = %28, %27
  store i32 3, ptr @gScriptBytesConsumed, align 4
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
