; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.AudioPlayerRecord = type { ptr, i32, i32 }

@gAudioMixerCopySourceAbs = external dso_local global [0 x i8], align 1
@gAudioMixerCodeBuffer1B48 = external dso_local global [0 x i8], align 1
@gAudioDriverState3EE0 = external dso_local global [0 x i8], align 1
@gAudioLegacyState4FA0 = external dso_local global [0 x i8], align 1
@gAudioPlayerCountAbs = external dso_local global [0 x i8], align 1
@gAudioPlayerRecordsADEC = external dso_local local_unnamed_addr constant [0 x %struct.AudioPlayerRecord], align 4
@gAudioPlayerContext5160 = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeAudioDriver() local_unnamed_addr #0 {
  %1 = and i32 ptrtoint (ptr @gAudioMixerCopySourceAbs to i32), -2
  %2 = inttoptr i32 %1 to ptr
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %2, ptr noundef nonnull @gAudioMixerCodeBuffer1B48, i32 noundef 67109120) #2
  tail call arm_apcscc void @InitializeAudioCore(ptr noundef nonnull @gAudioDriverState3EE0) #2
  tail call arm_apcscc void @InitializeAudioPsgState(ptr noundef nonnull @gAudioLegacyState4FA0) #2
  tail call arm_apcscc void @SetAudioCoreMode(i32 noundef 9689088) #2
  br i1 icmp ne (i16 ptrtoint (ptr @gAudioPlayerCountAbs to i16), i16 0), label %3, label %23

3:                                                ; preds = %0
  %4 = zext i16 ptrtoint (ptr @gAudioPlayerCountAbs to i16) to i32
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i32 [ %4, %3 ], [ %21, %5 ]
  %7 = phi ptr [ @gAudioPlayerRecordsADEC, %3 ], [ %20, %5 ]
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.AudioPlayerRecord, ptr %7, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = inttoptr i32 %10 to ptr
  %12 = getelementptr i8, ptr %7, i32 8
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  tail call arm_apcscc void @ConfigureAudioPlayer(ptr noundef %8, ptr noundef %11, i32 noundef %14) #2
  %15 = getelementptr i8, ptr %7, i32 10
  %16 = load i16, ptr %15, align 2
  %17 = trunc i16 %16 to i8
  %18 = getelementptr i8, ptr %8, i32 11
  store i8 %17, ptr %18, align 1
  %19 = getelementptr i8, ptr %8, i32 24
  store ptr @gAudioPlayerContext5160, ptr %19, align 4
  %20 = getelementptr %struct.AudioPlayerRecord, ptr %7, i32 1
  %21 = add i32 %6, -1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %5

23:                                               ; preds = %5, %0
  ret void
}

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeAudioCore(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeAudioPsgState(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetAudioCoreMode(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureAudioPlayer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ServiceAudioDriver() local_unnamed_addr #0 {
  tail call arm_apcscc void @RunAudioMixerAsm() #2
  ret void
}

declare dso_local arm_apcscc void @RunAudioMixerAsm() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
