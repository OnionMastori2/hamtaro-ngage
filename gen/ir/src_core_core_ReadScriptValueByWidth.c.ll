; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i16 @ReadScriptValueByWidth(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = and i8 %0, -33
  switch i8 %3, label %11 [
    i8 66, label %4
    i8 87, label %8
  ]

4:                                                ; preds = %2
  %5 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i16
  br label %11

8:                                                ; preds = %2
  %9 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %1
  %10 = load i16, ptr %9, align 2
  br label %11

11:                                               ; preds = %2, %8, %4
  %12 = phi i16 [ %7, %4 ], [ %10, %8 ], [ -1, %2 ]
  ret i16 %12
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
