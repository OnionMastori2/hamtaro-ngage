; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioCoreModePrefix = type { i32, i8, i8, i8, i8 }

@gAudioCorePointer7FF0 = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetAudioCoreMode(i32 noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gAudioCorePointer7FF0, align 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 1752395091
  br i1 %4, label %5, label %53

5:                                                ; preds = %1
  store i32 1752395092, ptr %2, align 4
  %6 = and i32 %0, 255
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %5
  %9 = trunc i32 %0 to i8
  %10 = and i8 %9, 127
  %11 = getelementptr inbounds %struct.AudioCoreModePrefix, ptr %2, i32 0, i32 2
  store i8 %10, ptr %11, align 1
  br label %12

12:                                               ; preds = %8, %5
  %13 = and i32 %0, 3840
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %31, label %15

15:                                               ; preds = %12
  %16 = lshr exact i32 %13, 8
  %17 = trunc i32 %16 to i8
  %18 = getelementptr inbounds %struct.AudioCoreModePrefix, ptr %2, i32 0, i32 3
  store i8 %17, ptr %18, align 2
  %19 = getelementptr i8, ptr %2, i32 80
  store i8 0, ptr %19, align 1
  %20 = getelementptr i8, ptr %2, i32 144
  store i8 0, ptr %20, align 1
  %21 = getelementptr i8, ptr %2, i32 208
  store i8 0, ptr %21, align 1
  %22 = getelementptr i8, ptr %2, i32 272
  store i8 0, ptr %22, align 1
  %23 = getelementptr i8, ptr %2, i32 336
  store i8 0, ptr %23, align 1
  %24 = getelementptr i8, ptr %2, i32 400
  store i8 0, ptr %24, align 1
  %25 = getelementptr i8, ptr %2, i32 464
  store i8 0, ptr %25, align 1
  %26 = getelementptr i8, ptr %2, i32 528
  store i8 0, ptr %26, align 1
  %27 = getelementptr i8, ptr %2, i32 592
  store i8 0, ptr %27, align 1
  %28 = getelementptr i8, ptr %2, i32 656
  store i8 0, ptr %28, align 1
  %29 = getelementptr i8, ptr %2, i32 720
  store i8 0, ptr %29, align 1
  %30 = getelementptr i8, ptr %2, i32 784
  store i8 0, ptr %30, align 1
  br label %31

31:                                               ; preds = %15, %12
  %32 = and i32 %0, 61440
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = lshr exact i32 %32, 12
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.AudioCoreModePrefix, ptr %2, i32 0, i32 4
  store i8 %36, ptr %37, align 1
  br label %38

38:                                               ; preds = %34, %31
  %39 = and i32 %0, 11534336
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %38
  %42 = lshr i32 %0, 14
  %43 = load volatile i8, ptr inttoptr (i32 67109001 to ptr), align 1
  %44 = and i8 %43, 63
  %45 = trunc i32 %42 to i8
  %46 = and i8 %45, -64
  %47 = or disjoint i8 %44, %46
  store volatile i8 %47, ptr inttoptr (i32 67109001 to ptr), align 1
  br label %48

48:                                               ; preds = %41, %38
  %49 = and i32 %0, 983040
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  tail call arm_apcscc void @PauseAudioDma() #2
  tail call arm_apcscc void @SetAudioSampleFrequency(i32 noundef %49) #2
  br label %52

52:                                               ; preds = %51, %48
  store i32 1752395091, ptr %2, align 4
  br label %53

53:                                               ; preds = %1, %52
  ret void
}

declare dso_local arm_apcscc void @PauseAudioDma() local_unnamed_addr #1

declare dso_local arm_apcscc void @SetAudioSampleFrequency(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
