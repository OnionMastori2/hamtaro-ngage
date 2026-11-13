; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetSlotRelativePlanarVelocity(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %8 = zext i8 %7 to i32
  %9 = add nuw nsw i32 %8, 1
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %2, i32 %6, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 %11, %17
  %19 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %15, %13
  %24 = add i32 %20, %22
  %25 = sub i32 %23, %24
  %26 = sdiv i32 %18, %9
  %27 = sdiv i32 %25, %9
  %28 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  store i32 %26, ptr %28, align 4
  %29 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 2
  store i32 %27, ptr %29, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
