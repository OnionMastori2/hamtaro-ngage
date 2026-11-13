; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.AudioModulationTrack = type { i8, [21 x i8], i8, i8, i8, i8, i8, [53 x i8] }
%struct.AudioModulationPlayer = type { [8 x i8], i8, [35 x i8], ptr, i32, i32 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @ResetAudioTrackModulation(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.AudioModulationTrack, ptr %0, i32 0, i32 6
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.AudioModulationTrack, ptr %0, i32 0, i32 2
  store i8 0, ptr %3, align 1
  %4 = getelementptr inbounds %struct.AudioModulationTrack, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 0
  %7 = load i8, ptr %0, align 1
  %8 = select i1 %6, i8 12, i8 3
  %9 = or i8 %7, %8
  store i8 %9, ptr %0, align 1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetAudioPlayerTrackModulationDepth(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = trunc i32 %2 to i8
  %5 = getelementptr inbounds %struct.AudioModulationPlayer, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1752395091
  br i1 %7, label %8, label %44

8:                                                ; preds = %3
  store i32 1752395092, ptr %5, align 4
  %9 = getelementptr inbounds %struct.AudioModulationPlayer, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.AudioModulationPlayer, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = zext i8 %10 to i32
  %16 = and i32 %1, 65535
  %17 = and i32 %2, 255
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %12, %38
  %20 = phi i32 [ %39, %38 ], [ %15, %12 ]
  %21 = phi ptr [ %40, %38 ], [ %14, %12 ]
  %22 = phi i32 [ %41, %38 ], [ 1, %12 ]
  %23 = and i32 %16, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = load i8, ptr %21, align 1
  %27 = icmp sgt i8 %26, -1
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.AudioModulationTrack, ptr %21, i32 0, i32 3
  store i8 %4, ptr %29, align 1
  br i1 %18, label %30, label %38

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.AudioModulationTrack, ptr %21, i32 0, i32 6
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds %struct.AudioModulationTrack, ptr %21, i32 0, i32 2
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds %struct.AudioModulationTrack, ptr %21, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i8 12, i8 3
  %37 = or i8 %36, %26
  store i8 %37, ptr %21, align 1
  br label %38

38:                                               ; preds = %28, %30, %25, %19
  %39 = add nsw i32 %20, -1
  %40 = getelementptr %struct.AudioModulationTrack, ptr %21, i32 1
  %41 = shl i32 %22, 1
  %42 = icmp sgt i32 %20, 1
  br i1 %42, label %19, label %43

43:                                               ; preds = %38, %8
  store i32 1752395091, ptr %5, align 4
  br label %44

44:                                               ; preds = %43, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetAudioPlayerTrackLfoSpeed(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = trunc i32 %2 to i8
  %5 = getelementptr inbounds %struct.AudioModulationPlayer, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1752395091
  br i1 %7, label %8, label %44

8:                                                ; preds = %3
  store i32 1752395092, ptr %5, align 4
  %9 = getelementptr inbounds %struct.AudioModulationPlayer, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %43, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.AudioModulationPlayer, ptr %0, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = zext i8 %10 to i32
  %16 = and i32 %1, 65535
  %17 = and i32 %2, 255
  %18 = icmp eq i32 %17, 0
  br label %19

19:                                               ; preds = %12, %38
  %20 = phi i32 [ %39, %38 ], [ %15, %12 ]
  %21 = phi ptr [ %40, %38 ], [ %14, %12 ]
  %22 = phi i32 [ %41, %38 ], [ 1, %12 ]
  %23 = and i32 %16, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %19
  %26 = load i8, ptr %21, align 1
  %27 = icmp sgt i8 %26, -1
  br i1 %27, label %38, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.AudioModulationTrack, ptr %21, i32 0, i32 5
  store i8 %4, ptr %29, align 1
  br i1 %18, label %30, label %38

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.AudioModulationTrack, ptr %21, i32 0, i32 6
  store i8 0, ptr %31, align 1
  %32 = getelementptr inbounds %struct.AudioModulationTrack, ptr %21, i32 0, i32 2
  store i8 0, ptr %32, align 1
  %33 = getelementptr inbounds %struct.AudioModulationTrack, ptr %21, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i8 12, i8 3
  %37 = or i8 %36, %26
  store i8 %37, ptr %21, align 1
  br label %38

38:                                               ; preds = %28, %30, %25, %19
  %39 = add nsw i32 %20, -1
  %40 = getelementptr %struct.AudioModulationTrack, ptr %21, i32 1
  %41 = shl i32 %22, 1
  %42 = icmp sgt i32 %20, 1
  br i1 %42, label %19, label %43

43:                                               ; preds = %38, %8
  store i32 1752395091, ptr %5, align 4
  br label %44

44:                                               ; preds = %43, %3
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
