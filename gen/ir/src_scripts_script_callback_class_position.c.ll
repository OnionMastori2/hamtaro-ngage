; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetRenderPositionFromClasses(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %6 = sext i16 %5 to i32
  %7 = shl nsw i32 %6, 16
  %8 = or disjoint i32 %7, 32768
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  store i32 %8, ptr %9, align 4
  %10 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %11 = sext i16 %10 to i32
  %12 = shl nsw i32 %11, 16
  %13 = or disjoint i32 %12, 32768
  %14 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 4
  store i32 %13, ptr %14, align 4
  %15 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %16 = sext i16 %15 to i32
  %17 = shl nsw i32 %16, 16
  %18 = or disjoint i32 %17, 32768
  %19 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  store i32 %18, ptr %19, align 4
  ret i32 1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
