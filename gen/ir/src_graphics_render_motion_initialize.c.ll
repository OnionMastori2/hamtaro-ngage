; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderMotionContext = type { i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8 }

@gRenderMotionContexts10E0 = external dso_local local_unnamed_addr global [0 x %struct.RenderMotionContext], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackInitializeRenderMotion(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr i8, ptr %1, i32 14
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, 16
  %7 = select i1 %6, ptr @gRenderMotionContexts10E0, ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1)
  %8 = load i8, ptr %1, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = getelementptr i8, ptr %1, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw i32 %13, 24
  %15 = or disjoint i32 %10, %14
  %16 = or disjoint i32 %15, 32768
  store i32 %16, ptr %7, align 4
  %17 = getelementptr i8, ptr %1, i32 2
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw nsw i32 %19, 16
  %21 = getelementptr i8, ptr %1, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = or disjoint i32 %20, %24
  %26 = or disjoint i32 %25, 32768
  %27 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 1), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 1)
  store i32 %26, ptr %27, align 4
  %28 = getelementptr i8, ptr %1, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 16
  %32 = getelementptr i8, ptr %1, i32 5
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw i32 %34, 24
  %36 = or disjoint i32 %31, %35
  %37 = or disjoint i32 %36, 32768
  %38 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 2), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 2)
  store i32 %37, ptr %38, align 4
  %39 = getelementptr i8, ptr %1, i32 6
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 16
  %43 = getelementptr i8, ptr %1, i32 7
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 %45, 24
  %47 = or disjoint i32 %42, %46
  %48 = or disjoint i32 %47, 32768
  %49 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 3), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 3)
  store i32 %48, ptr %49, align 4
  %50 = getelementptr i8, ptr %1, i32 8
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl nuw nsw i32 %52, 8
  %54 = getelementptr i8, ptr %1, i32 9
  %55 = load i8, ptr %54, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 16
  %58 = or disjoint i32 %57, %53
  %59 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 4), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 4)
  store i32 %58, ptr %59, align 4
  %60 = getelementptr i8, ptr %1, i32 10
  %61 = load i8, ptr %60, align 1
  %62 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 7), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 7)
  store i8 %61, ptr %62, align 2
  %63 = getelementptr i8, ptr %1, i32 11
  %64 = load i8, ptr %63, align 1
  %65 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 8), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 8)
  store i8 %64, ptr %65, align 1
  %66 = getelementptr i8, ptr %1, i32 12
  %67 = load i8, ptr %66, align 1
  %68 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 9), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 9)
  store i8 %67, ptr %68, align 4
  %69 = getelementptr i8, ptr %1, i32 13
  %70 = load i8, ptr %69, align 1
  %71 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 10), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 10)
  store i8 %70, ptr %71, align 1
  %72 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 11), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 11)
  store i8 %5, ptr %72, align 2
  %73 = getelementptr i8, ptr %1, i32 15
  %74 = load i8, ptr %73, align 1
  %75 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 12), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 12)
  store i8 %74, ptr %75, align 1
  %76 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 13), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 13)
  store i8 0, ptr %76, align 4
  %77 = select i1 %6, ptr getelementptr inbounds ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 0, i32 5), ptr getelementptr ([0 x %struct.RenderMotionContext], ptr @gRenderMotionContexts10E0, i32 0, i32 1, i32 5)
  store i32 0, ptr %77, align 4
  store i32 0, ptr %2, align 4
  ret i32 16
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
