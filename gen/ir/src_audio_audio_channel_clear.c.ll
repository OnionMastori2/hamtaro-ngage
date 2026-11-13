; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioClearState = type { i32, [24 x i8], ptr, [12 x i8], ptr, [32 x i8], [12 x %struct.AudioClearChannel] }
%struct.AudioClearChannel = type { i8, [63 x i8] }

@gAudioCorePointer7FF0 = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearAudioCoreChannels() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gAudioCorePointer7FF0, align 4
  %2 = load i32, ptr %1, align 4
  %3 = icmp eq i32 %2, 1752395091
  br i1 %3, label %4, label %30

4:                                                ; preds = %0
  store i32 1752395092, ptr %1, align 4
  %5 = getelementptr inbounds %struct.AudioClearState, ptr %1, i32 0, i32 6
  store i8 0, ptr %5, align 1
  %6 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 1
  store i8 0, ptr %6, align 1
  %7 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 2
  store i8 0, ptr %7, align 1
  %8 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 3
  store i8 0, ptr %8, align 1
  %9 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 4
  store i8 0, ptr %9, align 1
  %10 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 5
  store i8 0, ptr %10, align 1
  %11 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 6
  store i8 0, ptr %11, align 1
  %12 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 7
  store i8 0, ptr %12, align 1
  %13 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 8
  store i8 0, ptr %13, align 1
  %14 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 9
  store i8 0, ptr %14, align 1
  %15 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 10
  store i8 0, ptr %15, align 1
  %16 = getelementptr %struct.AudioClearState, ptr %1, i32 0, i32 6, i32 11
  store i8 0, ptr %16, align 1
  %17 = getelementptr inbounds %struct.AudioClearState, ptr %1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.AudioClearState, ptr %1, i32 0, i32 4
  %22 = load ptr, ptr %21, align 4
  tail call arm_apcscc void %22(i8 noundef zeroext 1) #1
  store i8 0, ptr %18, align 1
  %23 = getelementptr %struct.AudioClearChannel, ptr %18, i32 1
  %24 = load ptr, ptr %21, align 4
  tail call arm_apcscc void %24(i8 noundef zeroext 2) #1
  store i8 0, ptr %23, align 1
  %25 = getelementptr %struct.AudioClearChannel, ptr %18, i32 2
  %26 = load ptr, ptr %21, align 4
  tail call arm_apcscc void %26(i8 noundef zeroext 3) #1
  store i8 0, ptr %25, align 1
  %27 = getelementptr %struct.AudioClearChannel, ptr %18, i32 3
  %28 = load ptr, ptr %21, align 4
  tail call arm_apcscc void %28(i8 noundef zeroext 4) #1
  store i8 0, ptr %27, align 1
  br label %29

29:                                               ; preds = %20, %4
  store i32 1752395091, ptr %1, align 4
  br label %30

30:                                               ; preds = %29, %0
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
