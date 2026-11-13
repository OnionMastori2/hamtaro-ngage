; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gAudioWavePitchCodes9C3C = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gAudioWavePitchBases9CF0 = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @CalculateAudioWaveFrequency(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = shl i32 %2, 24
  %5 = and i32 %1, 255
  %6 = icmp ugt i32 %5, 178
  %7 = select i1 %6, i32 -16777216, i32 %4
  %8 = tail call i32 @llvm.umin.i32(i32 %5, i32 178)
  %9 = getelementptr [0 x i8], ptr @gAudioWavePitchCodes9C3C, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 15
  %13 = getelementptr [0 x i32], ptr @gAudioWavePitchBases9CF0, i32 0, i32 %12
  %14 = load i32, ptr %13, align 4
  %15 = lshr i32 %11, 4
  %16 = lshr i32 %14, %15
  %17 = add nuw nsw i32 %8, 1
  %18 = getelementptr [0 x i8], ptr @gAudioWavePitchCodes9C3C, i32 0, i32 %17
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = and i32 %20, 15
  %22 = getelementptr [0 x i32], ptr @gAudioWavePitchBases9CF0, i32 0, i32 %21
  %23 = load i32, ptr %22, align 4
  %24 = lshr i32 %20, 4
  %25 = lshr i32 %23, %24
  %26 = getelementptr i32, ptr %0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = sub i32 %25, %16
  %29 = tail call arm_apcscc i32 @MultiplyAudioUnsignedHigh(i32 noundef %28, i32 noundef %7) #4
  %30 = add i32 %29, %16
  %31 = tail call arm_apcscc i32 @MultiplyAudioUnsignedHigh(i32 noundef %27, i32 noundef %30) #4
  ret i32 %31
}

declare dso_local arm_apcscc i32 @MultiplyAudioUnsignedHigh(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @AudioWaveFrequencyAdjacentNoop() local_unnamed_addr #2 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
