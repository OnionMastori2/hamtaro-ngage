; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPlayerRecord = type { ptr, i32, i32 }

@gAudioPlayerCountAbs = external dso_local global [0 x i8], align 1
@gAudioPlayerRecordsADEC = external dso_local local_unnamed_addr constant [0 x %struct.AudioPlayerRecord], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ContinueAudioPlayer(ptr noundef %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @ResumeAudioPlayerState(ptr noundef %0) #2
  ret void
}

declare dso_local arm_apcscc void @ResumeAudioPlayerState(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ContinueAllSongs() local_unnamed_addr #0 {
  br i1 icmp ne (i16 ptrtoint (ptr @gAudioPlayerCountAbs to i16), i16 0), label %1, label %10

1:                                                ; preds = %0
  %2 = zext i16 ptrtoint (ptr @gAudioPlayerCountAbs to i16) to i32
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ @gAudioPlayerRecordsADEC, %1 ], [ %7, %3 ]
  %5 = phi i32 [ %2, %1 ], [ %8, %3 ]
  %6 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @ResumeAudioPlayerState(ptr noundef %6) #2
  %7 = getelementptr %struct.AudioPlayerRecord, ptr %4, i32 1
  %8 = add i32 %5, -1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %3

10:                                               ; preds = %3, %0
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
