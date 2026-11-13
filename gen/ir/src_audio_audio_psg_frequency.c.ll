; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gAudioNoisePeriods9DD4 = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gAudioPitchKeys9D38 = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gAudioPitchPeriods9DBC = external dso_local local_unnamed_addr constant [0 x i16], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc i32 @CalculateAudioPsgFrequency(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = icmp eq i8 %0, 4
  br i1 %4, label %5, label %14

5:                                                ; preds = %3
  %6 = icmp ult i8 %1, 21
  %7 = add i8 %1, -21
  %8 = tail call i8 @llvm.umin.i8(i8 %7, i8 59)
  %9 = select i1 %6, i8 0, i8 %8
  %10 = zext nneg i8 %9 to i32
  %11 = getelementptr [0 x i8], ptr @gAudioNoisePeriods9DD4, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  br label %48

14:                                               ; preds = %3
  %15 = icmp ult i8 %1, 36
  %16 = add i8 %1, -36
  %17 = icmp ugt i8 %16, -126
  %18 = select i1 %17, i8 -1, i8 %2
  %19 = tail call i8 @llvm.umin.i8(i8 %16, i8 -126)
  %20 = select i1 %15, i8 0, i8 %18
  %21 = zext i8 %20 to i32
  %22 = select i1 %15, i8 0, i8 %19
  %23 = zext i8 %22 to i32
  %24 = getelementptr [0 x i8], ptr @gAudioPitchKeys9D38, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, 15
  %28 = getelementptr [0 x i16], ptr @gAudioPitchPeriods9DBC, i32 0, i32 %27
  %29 = load i16, ptr %28, align 2
  %30 = sext i16 %29 to i32
  %31 = lshr i32 %26, 4
  %32 = ashr i32 %30, %31
  %33 = add nuw nsw i32 %23, 1
  %34 = getelementptr [0 x i8], ptr @gAudioPitchKeys9D38, i32 0, i32 %33
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, 15
  %38 = getelementptr [0 x i16], ptr @gAudioPitchPeriods9DBC, i32 0, i32 %37
  %39 = load i16, ptr %38, align 2
  %40 = sext i16 %39 to i32
  %41 = lshr i32 %36, 4
  %42 = ashr i32 %40, %41
  %43 = sub nsw i32 %42, %32
  %44 = mul nsw i32 %43, %21
  %45 = ashr i32 %44, 8
  %46 = add nsw i32 %32, 2048
  %47 = add nsw i32 %46, %45
  br label %48

48:                                               ; preds = %14, %5
  %49 = phi i32 [ %13, %5 ], [ %47, %14 ]
  ret i32 %49
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
