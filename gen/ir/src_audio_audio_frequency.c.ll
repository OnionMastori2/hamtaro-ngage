; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.AudioCoreFrequencyView = type { [8 x i8], i8, [2 x i8], i8, [4 x i8], i32, i32, i32 }

@gAudioCorePointer7FF0 = external dso_local local_unnamed_addr global ptr, align 4
@gAudioFrequencyValues9D20 = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetAudioSampleFrequency(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 asm "", "={r2},{r2}"(i32 %0) #2, !srcloc !4
  %3 = load ptr, ptr @gAudioCorePointer7FF0, align 4
  %4 = lshr i32 %2, 16
  %5 = and i32 %4, 15
  %6 = trunc i32 %5 to i8
  %7 = getelementptr inbounds %struct.AudioCoreFrequencyView, ptr %3, i32 0, i32 1
  store i8 %6, ptr %7, align 4
  %8 = add nsw i32 %5, -1
  %9 = tail call i32 asm "", "={r0},{r0}"(i32 %8) #2, !srcloc !5
  %10 = getelementptr i16, ptr @gAudioFrequencyValues9D20, i32 %9
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr inbounds %struct.AudioCoreFrequencyView, ptr %3, i32 0, i32 5
  store i32 %12, ptr %13, align 4
  %14 = udiv i16 1584, %11
  %15 = trunc i16 %14 to i8
  %16 = getelementptr inbounds %struct.AudioCoreFrequencyView, ptr %3, i32 0, i32 3
  store i8 %15, ptr %16, align 1
  %17 = mul i32 %12, 597275
  %18 = add i32 %17, 5000
  %19 = sdiv i32 %18, 10000
  %20 = getelementptr inbounds %struct.AudioCoreFrequencyView, ptr %3, i32 0, i32 6
  store i32 %19, ptr %20, align 4
  %21 = sdiv i32 16777216, %19
  %22 = add nsw i32 %21, 1
  %23 = ashr i32 %22, 1
  %24 = getelementptr inbounds %struct.AudioCoreFrequencyView, ptr %3, i32 0, i32 7
  store i32 %23, ptr %24, align 4
  store volatile i16 0, ptr inttoptr (i32 67109122 to ptr), align 2
  %25 = udiv i32 280896, %12
  %26 = trunc i32 %25 to i16
  %27 = sub i16 0, %26
  store volatile i16 %27, ptr inttoptr (i32 67109120 to ptr), align 256
  tail call arm_apcscc void @ResumeAudioDma() #3
  br label %28

28:                                               ; preds = %28, %1
  %29 = load volatile i8, ptr inttoptr (i32 67108870 to ptr), align 2
  %30 = icmp eq i8 %29, -97
  br i1 %30, label %28, label %31

31:                                               ; preds = %28, %31
  %32 = load volatile i8, ptr inttoptr (i32 67108870 to ptr), align 2
  %33 = icmp eq i8 %32, -97
  br i1 %33, label %34, label %31

34:                                               ; preds = %31
  store volatile i16 128, ptr inttoptr (i32 67109122 to ptr), align 2
  ret void
}

declare dso_local arm_apcscc void @ResumeAudioDma() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 462}
!5 = !{i64 695}
