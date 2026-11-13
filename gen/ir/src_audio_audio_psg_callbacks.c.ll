; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPsgVolumePrefix = type { [2 x i8], i8, i8, [2 x i8], i8, [3 x i8], i8, [14 x i8], i8, i8, i8, i8 }

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @StopAudioPsgOscillator(i8 noundef zeroext %0) local_unnamed_addr #0 {
  switch i8 %0, label %4 [
    i8 1, label %5
    i8 2, label %2
    i8 3, label %3
  ]

2:                                                ; preds = %1
  br label %5

3:                                                ; preds = %1
  store volatile i8 0, ptr inttoptr (i32 67108976 to ptr), align 16
  br label %8

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %1, %4, %2
  %6 = phi ptr [ inttoptr (i32 67108985 to ptr), %4 ], [ inttoptr (i32 67108969 to ptr), %2 ], [ inttoptr (i32 67108963 to ptr), %1 ]
  %7 = phi ptr [ inttoptr (i32 67108989 to ptr), %4 ], [ inttoptr (i32 67108973 to ptr), %2 ], [ inttoptr (i32 67108965 to ptr), %1 ]
  store volatile i8 8, ptr %6, align 1
  store volatile i8 -128, ptr %7, align 1
  br label %8

8:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @UpdateAudioPsgVolume(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp ult i8 %3, %6
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = lshr i32 %4, 1
  %11 = icmp ult i32 %10, %7
  br i1 %11, label %15, label %23

12:                                               ; preds = %1
  %13 = lshr i32 %7, 1
  %14 = icmp ult i32 %13, %4
  br i1 %14, label %15, label %23

15:                                               ; preds = %12, %9
  %16 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 10
  store i8 -1, ptr %16, align 1
  %17 = zext i8 %3 to i16
  %18 = zext i8 %6 to i16
  %19 = add nuw nsw i16 %18, %17
  %20 = lshr i16 %19, 4
  %21 = trunc i16 %20 to i8
  %22 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 6
  store i8 %21, ptr %22, align 1
  br label %34

23:                                               ; preds = %12, %9
  %24 = phi i8 [ 15, %9 ], [ -16, %12 ]
  %25 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 10
  store i8 %24, ptr %25, align 1
  %26 = zext i8 %3 to i16
  %27 = zext i8 %6 to i16
  %28 = add nuw nsw i16 %27, %26
  %29 = lshr i16 %28, 4
  %30 = trunc i16 %29 to i8
  %31 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 6
  %32 = icmp ugt i16 %28, 255
  %33 = select i1 %32, i8 15, i8 %30
  store i8 %33, ptr %31, align 1
  br label %34

34:                                               ; preds = %23, %15
  %35 = phi i8 [ %24, %23 ], [ -1, %15 ]
  %36 = phi i8 [ %33, %23 ], [ %21, %15 ]
  %37 = zext nneg i8 %36 to i16
  %38 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i16
  %41 = mul nuw nsw i16 %40, %37
  %42 = add nuw nsw i16 %41, 15
  %43 = lshr i16 %42, 4
  %44 = trunc i16 %43 to i8
  %45 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 8
  store i8 %44, ptr %45, align 1
  %46 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 11
  %47 = load i8, ptr %46, align 1
  %48 = getelementptr inbounds %struct.AudioPsgVolumePrefix, ptr %0, i32 0, i32 10
  %49 = and i8 %35, %47
  store i8 %49, ptr %48, align 1
  ret void
}

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
