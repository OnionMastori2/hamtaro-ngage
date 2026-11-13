; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAudioCorePointer7FF0 = external dso_local local_unnamed_addr global ptr, align 4
@gAudioDispatchWords4F10 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAudioMaxLinesAbs = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeAudioPsgState(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  store volatile i16 143, ptr inttoptr (i32 67108996 to ptr), align 4
  store volatile i16 0, ptr inttoptr (i32 67108992 to ptr), align 128
  store volatile i8 8, ptr inttoptr (i32 67108963 to ptr), align 1
  store volatile i8 8, ptr inttoptr (i32 67108969 to ptr), align 1
  store volatile i8 8, ptr inttoptr (i32 67108985 to ptr), align 1
  store volatile i8 -128, ptr inttoptr (i32 67108965 to ptr), align 1
  store volatile i8 -128, ptr inttoptr (i32 67108973 to ptr), align 1
  store volatile i8 -128, ptr inttoptr (i32 67108989 to ptr), align 1
  store volatile i8 0, ptr inttoptr (i32 67108976 to ptr), align 16
  store volatile i8 119, ptr inttoptr (i32 67108992 to ptr), align 128
  %3 = load ptr, ptr @gAudioCorePointer7FF0, align 4
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1752395091
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 1752395092, ptr %3, align 4
  store i32 ptrtoint (ptr @ExecuteAudioMemoryCommand to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 32), align 4
  store i32 ptrtoint (ptr @SetAudioTrackLfoSpeedAsm to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 68), align 4
  store i32 ptrtoint (ptr @SetAudioTrackModulationDepthAsm to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 76), align 4
  store i32 ptrtoint (ptr @ExecuteAudioExtendedCommand to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 112), align 4
  store i32 ptrtoint (ptr @EndAudioTrackTieAsm to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 116), align 4
  store i32 ptrtoint (ptr @SetAudioSampleFrequency to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 120), align 4
  store i32 ptrtoint (ptr @StopAudioTrack to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 124), align 4
  store i32 ptrtoint (ptr @ProcessAudioPlayerFade to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 128), align 4
  store i32 ptrtoint (ptr @UpdateAudioTrackVolumePitch to i32), ptr getelementptr ([0 x i8], ptr @gAudioDispatchWords4F10, i32 0, i32 132), align 4
  %7 = ptrtoint ptr %0 to i32
  %8 = getelementptr i32, ptr %3, i32 7
  store i32 %7, ptr %8, align 4
  %9 = getelementptr i32, ptr %3, i32 10
  store i32 ptrtoint (ptr @UpdateAudioPsgChannels to i32), ptr %9, align 4
  %10 = getelementptr i32, ptr %3, i32 11
  store i32 ptrtoint (ptr @StopAudioPsgOscillator to i32), ptr %10, align 4
  %11 = getelementptr i32, ptr %3, i32 12
  store i32 ptrtoint (ptr @CalculateAudioPsgFrequency to i32), ptr %11, align 4
  %12 = getelementptr i8, ptr %3, i32 12
  store i8 ptrtoint (ptr @gAudioMaxLinesAbs to i8), ptr %12, align 1
  store i32 0, ptr %2, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef %0, i32 noundef 83886144) #4
  %13 = getelementptr i8, ptr %0, i32 1
  store i8 1, ptr %13, align 1
  %14 = getelementptr i8, ptr %0, i32 28
  store i8 17, ptr %14, align 1
  %15 = getelementptr i8, ptr %0, i32 65
  store i8 2, ptr %15, align 1
  %16 = getelementptr i8, ptr %0, i32 92
  store i8 34, ptr %16, align 1
  %17 = getelementptr i8, ptr %0, i32 129
  store i8 3, ptr %17, align 1
  %18 = getelementptr i8, ptr %0, i32 156
  store i8 68, ptr %18, align 1
  %19 = getelementptr i8, ptr %0, i32 193
  store i8 4, ptr %19, align 1
  %20 = getelementptr i8, ptr %0, i32 220
  store i8 -120, ptr %20, align 1
  store i32 1752395091, ptr %3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  br label %21

21:                                               ; preds = %6, %1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @ExecuteAudioMemoryCommand(ptr noundef, ptr noundef) #2

declare dso_local arm_apcscc void @SetAudioTrackLfoSpeedAsm(ptr noundef, ptr noundef) #2

declare dso_local arm_apcscc void @SetAudioTrackModulationDepthAsm(ptr noundef, ptr noundef) #2

declare dso_local arm_apcscc void @ExecuteAudioExtendedCommand(ptr noundef, ptr noundef) #2

declare dso_local arm_apcscc void @EndAudioTrackTieAsm(ptr noundef, ptr noundef) #2

declare dso_local arm_apcscc void @SetAudioSampleFrequency(i32 noundef) #2

declare dso_local arm_apcscc void @StopAudioTrack(ptr noundef, ptr noundef) #2

declare dso_local arm_apcscc void @ProcessAudioPlayerFade(ptr noundef) #2

declare dso_local arm_apcscc void @UpdateAudioTrackVolumePitch(ptr noundef, ptr noundef) #2

declare dso_local arm_apcscc void @UpdateAudioPsgChannels() #2

declare dso_local arm_apcscc void @StopAudioPsgOscillator(i8 noundef zeroext) #2

declare dso_local arm_apcscc i32 @CalculateAudioPsgFrequency(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
