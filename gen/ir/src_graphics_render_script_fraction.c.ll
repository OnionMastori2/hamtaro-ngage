; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @AnimationRestoreFlags2(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 6
  %4 = load i8, ptr %3, align 2
  %5 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 2
  store i8 %4, ptr %5, align 2
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr i8, ptr %6, i32 1
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetXFraction(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -65536
  %15 = or disjoint i32 %11, %14
  store i32 %15, ptr %12, align 4
  %16 = getelementptr i8, ptr %3, i32 3
  store ptr %16, ptr %1, align 4
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 3
  store i16 %19, ptr %17, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetYFraction(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -65536
  %15 = or disjoint i32 %11, %14
  store i32 %15, ptr %12, align 4
  %16 = getelementptr i8, ptr %3, i32 3
  store ptr %16, ptr %1, align 4
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 3
  store i16 %19, ptr %17, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetZFraction(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -65536
  %15 = or disjoint i32 %11, %14
  store i32 %15, ptr %12, align 4
  %16 = getelementptr i8, ptr %3, i32 3
  store ptr %16, ptr %1, align 4
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 3
  store i16 %19, ptr %17, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
