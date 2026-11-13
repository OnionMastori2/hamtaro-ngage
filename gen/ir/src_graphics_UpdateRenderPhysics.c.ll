; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @UpdateRenderPhysics(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  store i32 %6, ptr %4, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  store i32 %11, ptr %9, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  store i32 %16, ptr %14, align 4
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %3
  store i32 %19, ptr %2, align 4
  %20 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 7, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %8
  store i32 %22, ptr %7, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 7, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %13
  store i32 %25, ptr %12, align 4
  %26 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 12
  %27 = load i16, ptr %26, align 4
  %28 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 8
  %29 = load i16, ptr %28, align 4
  %30 = add i16 %29, %27
  %31 = tail call i16 @llvm.smin.i16(i16 %30, i16 512)
  store i16 %31, ptr %28, align 4
  %32 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 13
  %33 = load i16, ptr %32, align 2
  %34 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 9
  %35 = load i16, ptr %34, align 2
  %36 = add i16 %35, %33
  %37 = tail call i16 @llvm.smin.i16(i16 %36, i16 512)
  store i16 %37, ptr %34, align 2
  %38 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 14
  %39 = load i16, ptr %38, align 4
  %40 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 10
  %41 = load i16, ptr %40, align 4
  %42 = add i16 %41, %39
  store i16 %42, ptr %40, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
