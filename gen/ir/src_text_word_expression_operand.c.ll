; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gGameFlags = external dso_local global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc i32 @ResolveWordExpressionOperand(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @llvm.fshl.i32(i32 %1, i32 %1, i32 19)
  switch i32 %4, label %37 [
    i32 2, label %27
    i32 3, label %5
    i32 4, label %9
    i32 5, label %13
    i32 6, label %14
    i32 1, label %19
  ]

5:                                                ; preds = %3
  %6 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %2
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  br label %37

9:                                                ; preds = %3
  %10 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %2
  %11 = load i16, ptr %10, align 2
  %12 = zext i16 %11 to i32
  br label %37

13:                                               ; preds = %3
  br label %37

14:                                               ; preds = %3
  %15 = load ptr, ptr %0, align 4
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i16, ptr %15, i32 1
  store ptr %18, ptr %0, align 4
  br label %37

19:                                               ; preds = %3
  %20 = ashr i32 %2, 3
  %21 = getelementptr [0 x i8], ptr @gGameFlags, i32 0, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %2, 7
  %25 = lshr i32 %23, %24
  %26 = and i32 %25, 1
  br label %37

27:                                               ; preds = %3
  %28 = ashr i32 %2, 3
  %29 = add i32 %28, ptrtoint (ptr @gGameFlags to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = and i32 %2, 7
  %34 = lshr i32 %32, %33
  %35 = and i32 %34, 1
  %36 = xor i32 %35, 1
  br label %37

37:                                               ; preds = %3, %27, %19, %14, %13, %9, %5
  %38 = phi i32 [ %36, %27 ], [ %26, %19 ], [ %17, %14 ], [ %2, %13 ], [ %12, %9 ], [ %8, %5 ], [ 0, %3 ]
  ret i32 %38
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
