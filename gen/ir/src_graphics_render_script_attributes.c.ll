; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetAttr52(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %11 = or disjoint i16 %10, %6
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 19
  store i16 %11, ptr %12, align 2
  %13 = getelementptr i8, ptr %3, i32 3
  store ptr %13, ptr %1, align 4
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 3
  store i16 %16, ptr %14, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetAttr54(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i16
  %10 = shl nuw i16 %9, 8
  %11 = or disjoint i16 %10, %6
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 20
  store i16 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %3, i32 3
  store ptr %13, ptr %1, align 4
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %15 = load i16, ptr %14, align 4
  %16 = add i16 %15, 3
  store i16 %16, ptr %14, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetOtherActive(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 2
  %5 = load i8, ptr %4, align 1
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = getelementptr i8, ptr %3, i32 1
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.RenderSlot, ptr %6, i32 %9, i32 23
  store i8 %5, ptr %10, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr i8, ptr %11, i32 3
  store ptr %12, ptr %1, align 4
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %14 = load i16, ptr %13, align 4
  %15 = add i16 %14, 3
  store i16 %15, ptr %13, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @AnimationEnableBit6(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = or i8 %4, 64
  store i8 %5, ptr %3, align 1
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr i8, ptr %6, i32 1
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @AnimationDisableBit6(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 1
  %4 = load i8, ptr %3, align 1
  %5 = and i8 %4, -65
  store i8 %5, ptr %3, align 1
  %6 = load ptr, ptr %1, align 4
  %7 = getelementptr i8, ptr %6, i32 1
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 1
  store i16 %10, ptr %8, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
