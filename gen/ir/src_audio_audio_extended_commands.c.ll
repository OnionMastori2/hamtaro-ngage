; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.AudioExtendedTrackView = type { [30 x i8], i8, i8, [4 x i8], i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], ptr }

@gAudioExtendedCallbacks9E54 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gAudioDispatchWords4F10 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @ExecuteAudioExtendedCommand(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  %8 = getelementptr [0 x ptr], ptr @gAudioExtendedCallbacks9E54, i32 0, i32 %6
  %9 = load ptr, ptr %8, align 4
  tail call arm_apcscc void %9(ptr noundef %0, ptr noundef %1) #2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @AudioCommandStopTrack(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gAudioDispatchWords4F10, align 1
  tail call arm_apcscc void %3(ptr noundef %0, ptr noundef %1) #2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteWaveWord(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr i8, ptr %4, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr i8, ptr %4, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %4, i32 3
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw i32 %12, 24
  %14 = zext i8 %9 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = zext i8 %7 to i32
  %17 = shl nuw nsw i32 %16, 8
  %18 = zext i8 %5 to i32
  %19 = or disjoint i32 %17, %18
  %20 = or disjoint i32 %19, %15
  %21 = or disjoint i32 %20, %13
  %22 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 8
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %4, i32 4
  store ptr %23, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteToneType(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 4
  store i8 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteAttack(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 9
  store i8 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteDecay(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 10
  store i8 %5, ptr %6, align 1
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteSustain(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 11
  store i8 %5, ptr %6, align 2
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteRelease(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 12
  store i8 %5, ptr %6, align 1
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteEchoVolume(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 1
  store i8 %5, ptr %6, align 2
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteEchoTicks(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 2
  store i8 %5, ptr %6, align 1
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteToneLength(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 6
  store i8 %5, ptr %6, align 2
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @AudioCommandWriteTonePan(ptr nocapture noundef readnone %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.AudioExtendedTrackView, ptr %1, i32 0, i32 7
  store i8 %5, ptr %6, align 1
  %7 = getelementptr i8, ptr %4, i32 1
  store ptr %7, ptr %3, align 4
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
