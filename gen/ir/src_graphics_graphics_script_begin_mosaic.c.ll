; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @GraphicsBeginMosaicTransition(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  store i8 %4, ptr %0, align 4
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i16
  %7 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %6, ptr %7, align 4
  %8 = getelementptr i8, ptr %1, i32 2
  %9 = load i8, ptr %3, align 1
  %10 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  store i8 %9, ptr %10, align 2
  %11 = load i8, ptr %8, align 1
  %12 = tail call i8 @llvm.umax.i8(i8 %11, i8 1)
  %13 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr i8, ptr %1, i32 3
  %15 = getelementptr i8, ptr %1, i32 4
  %16 = load i8, ptr %14, align 1
  %17 = zext i8 %16 to i16
  %18 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  store i16 %17, ptr %18, align 2
  %19 = getelementptr i8, ptr %1, i32 5
  %20 = load i8, ptr %15, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr i8, ptr %1, i32 6
  %23 = load i8, ptr %19, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr i8, ptr %1, i32 7
  %26 = load i8, ptr %22, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %1, i32 8
  %29 = load i8, ptr %25, align 1
  %30 = zext i8 %29 to i32
  %31 = zext i8 %20 to i16
  %32 = shl nuw i16 %31, 8
  %33 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 10
  store i16 %32, ptr %33, align 2
  %34 = zext i8 %23 to i16
  %35 = shl nuw i16 %34, 8
  %36 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 11
  store i16 %35, ptr %36, align 4
  %37 = sub nsw i32 %27, %21
  %38 = shl nsw i32 %37, 8
  %39 = zext i8 %12 to i32
  %40 = sdiv i32 %38, %39
  %41 = trunc i32 %40 to i16
  %42 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 12
  store i16 %41, ptr %42, align 2
  %43 = sub nsw i32 %30, %24
  %44 = shl nsw i32 %43, 8
  %45 = sdiv i32 %44, %39
  %46 = trunc i32 %45 to i16
  %47 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 13
  store i16 %46, ptr %47, align 4
  %48 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %28, ptr %48, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
