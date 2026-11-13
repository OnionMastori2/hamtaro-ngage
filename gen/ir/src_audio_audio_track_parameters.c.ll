; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioPlayerParameterView = type { [8 x i8], i8, [35 x i8], ptr, i32, i32 }
%struct.AudioTrackParameterView = type { i8, [10 x i8], i8, i8, i8, [5 x i8], i8, i8, i8, [58 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @SetAudioTempoScale(ptr nocapture noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr i32, ptr %0, i32 13
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 1752395091
  br i1 %5, label %6, label %16

6:                                                ; preds = %2
  %7 = getelementptr i16, ptr %0, i32 15
  store i16 %1, ptr %7, align 2
  %8 = getelementptr i16, ptr %0, i32 14
  %9 = load i16, ptr %8, align 2
  %10 = zext i16 %9 to i32
  %11 = zext i16 %1 to i32
  %12 = mul nuw i32 %10, %11
  %13 = lshr i32 %12, 8
  %14 = trunc i32 %13 to i16
  %15 = getelementptr i16, ptr %0, i32 16
  store i16 %14, ptr %15, align 2
  br label %16

16:                                               ; preds = %6, %2
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetAudioTrackVolume(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1752395091
  br i1 %6, label %7, label %36

7:                                                ; preds = %3
  store i32 1752395092, ptr %4, align 4
  %8 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %0, i32 0, i32 1
  %9 = load i8, ptr %8, align 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %9 to i32
  %15 = and i32 %1, 65535
  %16 = lshr i32 %2, 2
  %17 = trunc i32 %16 to i8
  br label %18

18:                                               ; preds = %11, %30
  %19 = phi i32 [ %31, %30 ], [ %14, %11 ]
  %20 = phi ptr [ %32, %30 ], [ %13, %11 ]
  %21 = phi i32 [ %33, %30 ], [ 1, %11 ]
  %22 = and i32 %15, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8, ptr %20, align 1
  %26 = icmp sgt i8 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.AudioTrackParameterView, ptr %20, i32 0, i32 6
  store i8 %17, ptr %28, align 1
  %29 = or i8 %25, 3
  store i8 %29, ptr %20, align 1
  br label %30

30:                                               ; preds = %27, %24, %18
  %31 = add nsw i32 %19, -1
  %32 = getelementptr %struct.AudioTrackParameterView, ptr %20, i32 1
  %33 = shl i32 %21, 1
  %34 = icmp sgt i32 %19, 1
  br i1 %34, label %18, label %35

35:                                               ; preds = %30, %7
  store i32 1752395091, ptr %4, align 4
  br label %36

36:                                               ; preds = %35, %3
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetAudioTrackPitch(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr asm "", "=r,0"(ptr %0) #3, !srcloc !4
  %5 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1752395091
  br i1 %7, label %8, label %39

8:                                                ; preds = %3
  store i32 1752395092, ptr %5, align 4
  %9 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %4, i32 0, i32 1
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %38, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %4, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = zext i8 %10 to i32
  %16 = zext i16 %1 to i32
  %17 = lshr i32 %2, 8
  %18 = trunc i32 %17 to i8
  %19 = trunc i32 %2 to i8
  br label %20

20:                                               ; preds = %12, %33
  %21 = phi i32 [ %34, %33 ], [ %15, %12 ]
  %22 = phi ptr [ %35, %33 ], [ %14, %12 ]
  %23 = phi i32 [ %36, %33 ], [ 1, %12 ]
  %24 = and i32 %23, %16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %20
  %27 = load i8, ptr %22, align 1
  %28 = icmp sgt i8 %27, -1
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.AudioTrackParameterView, ptr %22, i32 0, i32 2
  store i8 %18, ptr %30, align 1
  %31 = getelementptr inbounds %struct.AudioTrackParameterView, ptr %22, i32 0, i32 4
  store i8 %19, ptr %31, align 1
  %32 = or i8 %27, 12
  store i8 %32, ptr %22, align 1
  br label %33

33:                                               ; preds = %29, %26, %20
  %34 = add nsw i32 %21, -1
  %35 = getelementptr %struct.AudioTrackParameterView, ptr %22, i32 1
  %36 = shl i32 %23, 1
  %37 = icmp sgt i32 %21, 1
  br i1 %37, label %20, label %38

38:                                               ; preds = %33, %8
  store i32 1752395091, ptr %5, align 4
  br label %39

39:                                               ; preds = %38, %3
  ret void
}

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SetAudioTrackPan(ptr noundef %0, i16 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call ptr asm "", "=r,0"(ptr %0) #3, !srcloc !5
  %5 = trunc i32 %2 to i8
  %6 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %4, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1752395091
  br i1 %8, label %9, label %36

9:                                                ; preds = %3
  store i32 1752395092, ptr %6, align 4
  %10 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %4, i32 0, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.AudioPlayerParameterView, ptr %4, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = zext i8 %11 to i32
  %17 = zext i16 %1 to i32
  br label %18

18:                                               ; preds = %13, %30
  %19 = phi i32 [ %31, %30 ], [ %16, %13 ]
  %20 = phi ptr [ %32, %30 ], [ %15, %13 ]
  %21 = phi i32 [ %33, %30 ], [ 1, %13 ]
  %22 = and i32 %21, %17
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8, ptr %20, align 1
  %26 = icmp sgt i8 %25, -1
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.AudioTrackParameterView, ptr %20, i32 0, i32 8
  store i8 %5, ptr %28, align 1
  %29 = or i8 %25, 3
  store i8 %29, ptr %20, align 1
  br label %30

30:                                               ; preds = %27, %24, %18
  %31 = add nsw i32 %19, -1
  %32 = getelementptr %struct.AudioTrackParameterView, ptr %20, i32 1
  %33 = shl i32 %21, 1
  %34 = icmp sgt i32 %19, 1
  br i1 %34, label %18, label %35

35:                                               ; preds = %30, %9
  store i32 1752395091, ptr %6, align 4
  br label %36

36:                                               ; preds = %35, %3
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1951}
!5 = !{i64 2971}
