; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ResetRenderSlots() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %47, label %3

3:                                                ; preds = %0, %3
  %4 = phi i32 [ %43, %3 ], [ 0, %0 ]
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %5, i32 %4
  store i32 0, ptr %6, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 1
  store i32 0, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 15
  store i16 0, ptr %8, align 2
  %9 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 16
  store i16 0, ptr %9, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 17
  store i16 240, ptr %10, align 2
  %11 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 18
  store i16 160, ptr %11, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 19
  store i16 0, ptr %12, align 2
  %13 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 20
  store i16 0, ptr %13, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 8
  store i16 256, ptr %14, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 9
  store i16 256, ptr %15, align 2
  %16 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 10
  store i16 0, ptr %16, align 4
  %17 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 12
  store i16 0, ptr %17, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 13
  store i16 0, ptr %18, align 2
  %19 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 2
  %20 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 21
  %21 = getelementptr i32, ptr %19, i32 1
  store i32 0, ptr %19, align 4
  %22 = getelementptr i16, ptr %20, i32 1
  store i16 0, ptr %20, align 2
  %23 = getelementptr i32, ptr %19, i32 2
  store i32 0, ptr %21, align 4
  %24 = getelementptr i16, ptr %20, i32 2
  store i16 0, ptr %22, align 2
  %25 = getelementptr i32, ptr %19, i32 3
  store i32 0, ptr %23, align 4
  %26 = getelementptr i16, ptr %20, i32 3
  store i16 0, ptr %24, align 2
  store i32 0, ptr %25, align 4
  store i16 0, ptr %26, align 2
  %27 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 6
  %28 = getelementptr i32, ptr %27, i32 1
  store i32 0, ptr %27, align 4
  %29 = getelementptr i32, ptr %27, i32 2
  store i32 0, ptr %28, align 4
  %30 = getelementptr i32, ptr %27, i32 3
  store i32 0, ptr %29, align 4
  %31 = getelementptr i32, ptr %27, i32 4
  store i32 0, ptr %30, align 4
  %32 = getelementptr i32, ptr %27, i32 5
  store i32 0, ptr %31, align 4
  store i32 0, ptr %32, align 4
  %33 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 23
  %34 = getelementptr i8, ptr %33, i32 1
  store i8 0, ptr %33, align 1
  %35 = getelementptr i8, ptr %33, i32 2
  store i8 0, ptr %34, align 1
  %36 = getelementptr i8, ptr %33, i32 3
  store i8 0, ptr %35, align 1
  %37 = getelementptr i8, ptr %33, i32 4
  store i8 0, ptr %36, align 1
  %38 = getelementptr i8, ptr %33, i32 5
  store i8 0, ptr %37, align 1
  %39 = getelementptr i8, ptr %33, i32 6
  store i8 0, ptr %38, align 1
  %40 = getelementptr i8, ptr %33, i32 7
  store i8 0, ptr %39, align 1
  store i8 0, ptr %40, align 1
  %41 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 23, i32 4
  store i8 -1, ptr %41, align 4
  %42 = getelementptr %struct.RenderSlot, ptr %5, i32 %4, i32 23, i32 1
  store i8 32, ptr %42, align 1
  store i16 6144, ptr %12, align 2
  store i16 8192, ptr %13, align 4
  %43 = add nuw nsw i32 %4, 1
  %44 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %45 = zext i8 %44 to i32
  %46 = icmp ult i32 %43, %45
  br i1 %46, label %3, label %47

47:                                               ; preds = %3, %0
  tail call arm_apcscc void @InitializeRenderOrder() #4
  tail call arm_apcscc void @InitializeRenderPriority() #4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @ResetRenderSlot(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = getelementptr %struct.RenderSlot, ptr %2, i32 %0
  store i32 0, ptr %3, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 1
  store i32 0, ptr %4, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 15
  store i16 0, ptr %5, align 2
  %6 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 16
  store i16 0, ptr %6, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 17
  store i16 240, ptr %7, align 2
  %8 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 18
  store i16 160, ptr %8, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 19
  store i16 0, ptr %9, align 2
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 20
  store i16 0, ptr %10, align 4
  %11 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 8
  store i16 256, ptr %11, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 9
  store i16 256, ptr %12, align 2
  %13 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 10
  store i16 0, ptr %13, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 12
  store i16 0, ptr %14, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 13
  store i16 0, ptr %15, align 2
  %16 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 2
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 21
  %18 = getelementptr i32, ptr %16, i32 1
  store i32 0, ptr %16, align 4
  %19 = getelementptr i16, ptr %17, i32 1
  store i16 0, ptr %17, align 2
  %20 = getelementptr i32, ptr %16, i32 2
  store i32 0, ptr %18, align 4
  %21 = getelementptr i16, ptr %17, i32 2
  store i16 0, ptr %19, align 2
  %22 = getelementptr i32, ptr %16, i32 3
  store i32 0, ptr %20, align 4
  %23 = getelementptr i16, ptr %17, i32 3
  store i16 0, ptr %21, align 2
  store i32 0, ptr %22, align 4
  store i16 0, ptr %23, align 2
  %24 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 6
  %25 = getelementptr i32, ptr %24, i32 1
  store i32 0, ptr %24, align 4
  %26 = getelementptr i32, ptr %24, i32 2
  store i32 0, ptr %25, align 4
  %27 = getelementptr i32, ptr %24, i32 3
  store i32 0, ptr %26, align 4
  %28 = getelementptr i32, ptr %24, i32 4
  store i32 0, ptr %27, align 4
  %29 = getelementptr i32, ptr %24, i32 5
  store i32 0, ptr %28, align 4
  store i32 0, ptr %29, align 4
  %30 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 23
  %31 = getelementptr i8, ptr %30, i32 1
  store i8 0, ptr %30, align 1
  %32 = getelementptr i8, ptr %30, i32 2
  store i8 0, ptr %31, align 1
  %33 = getelementptr i8, ptr %30, i32 3
  store i8 0, ptr %32, align 1
  %34 = getelementptr i8, ptr %30, i32 4
  store i8 0, ptr %33, align 1
  %35 = getelementptr i8, ptr %30, i32 5
  store i8 0, ptr %34, align 1
  %36 = getelementptr i8, ptr %30, i32 6
  store i8 0, ptr %35, align 1
  %37 = getelementptr i8, ptr %30, i32 7
  store i8 0, ptr %36, align 1
  store i8 0, ptr %37, align 1
  %38 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 23, i32 4
  store i8 -1, ptr %38, align 4
  %39 = getelementptr %struct.RenderSlot, ptr %2, i32 %0, i32 23, i32 1
  store i8 32, ptr %39, align 1
  store i16 6144, ptr %9, align 2
  store i16 8192, ptr %10, align 4
  ret void
}

declare dso_local arm_apcscc void @InitializeRenderOrder() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeRenderPriority() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @ResetRenderSlotRange(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 255
  %4 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %5 = zext i8 %4 to i32
  %6 = select i1 %3, i32 %5, i32 %1
  %7 = add i32 %6, 1
  %8 = icmp ugt i32 %7, %0
  br i1 %8, label %9, label %51

9:                                                ; preds = %2, %9
  %10 = phi i32 [ %49, %9 ], [ %0, %2 ]
  %11 = load ptr, ptr @gRenderSlots, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %11, i32 %10
  store i32 0, ptr %12, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 1
  store i32 0, ptr %13, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 15
  store i16 0, ptr %14, align 2
  %15 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 16
  store i16 0, ptr %15, align 4
  %16 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 17
  store i16 240, ptr %16, align 2
  %17 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 18
  store i16 160, ptr %17, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 19
  store i16 0, ptr %18, align 2
  %19 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 20
  store i16 0, ptr %19, align 4
  %20 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 8
  store i16 256, ptr %20, align 4
  %21 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 9
  store i16 256, ptr %21, align 2
  %22 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 10
  store i16 0, ptr %22, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 12
  store i16 0, ptr %23, align 4
  %24 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 13
  store i16 0, ptr %24, align 2
  %25 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 2
  %26 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 21
  %27 = getelementptr i32, ptr %25, i32 1
  store i32 0, ptr %25, align 4
  %28 = getelementptr i16, ptr %26, i32 1
  store i16 0, ptr %26, align 2
  %29 = getelementptr i32, ptr %25, i32 2
  store i32 0, ptr %27, align 4
  %30 = getelementptr i16, ptr %26, i32 2
  store i16 0, ptr %28, align 2
  %31 = getelementptr i32, ptr %25, i32 3
  store i32 0, ptr %29, align 4
  %32 = getelementptr i16, ptr %26, i32 3
  store i16 0, ptr %30, align 2
  store i32 0, ptr %31, align 4
  store i16 0, ptr %32, align 2
  %33 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 6
  %34 = getelementptr i32, ptr %33, i32 1
  store i32 0, ptr %33, align 4
  %35 = getelementptr i32, ptr %33, i32 2
  store i32 0, ptr %34, align 4
  %36 = getelementptr i32, ptr %33, i32 3
  store i32 0, ptr %35, align 4
  %37 = getelementptr i32, ptr %33, i32 4
  store i32 0, ptr %36, align 4
  %38 = getelementptr i32, ptr %33, i32 5
  store i32 0, ptr %37, align 4
  store i32 0, ptr %38, align 4
  %39 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 23
  %40 = getelementptr i8, ptr %39, i32 1
  store i8 0, ptr %39, align 1
  %41 = getelementptr i8, ptr %39, i32 2
  store i8 0, ptr %40, align 1
  %42 = getelementptr i8, ptr %39, i32 3
  store i8 0, ptr %41, align 1
  %43 = getelementptr i8, ptr %39, i32 4
  store i8 0, ptr %42, align 1
  %44 = getelementptr i8, ptr %39, i32 5
  store i8 0, ptr %43, align 1
  %45 = getelementptr i8, ptr %39, i32 6
  store i8 0, ptr %44, align 1
  %46 = getelementptr i8, ptr %39, i32 7
  store i8 0, ptr %45, align 1
  store i8 0, ptr %46, align 1
  %47 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 23, i32 4
  store i8 -1, ptr %47, align 4
  %48 = getelementptr %struct.RenderSlot, ptr %11, i32 %10, i32 23, i32 1
  store i8 32, ptr %48, align 1
  store i16 6144, ptr %18, align 2
  store i16 8192, ptr %19, align 4
  %49 = add nuw i32 %10, 1
  %50 = icmp eq i32 %10, %6
  br i1 %50, label %51, label %9

51:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderPosition(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 3
  store i32 %1, ptr %6, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 4
  store i32 %2, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 5
  store i32 %3, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderVector24(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 6
  store i32 %1, ptr %6, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 6, i32 1
  store i32 %2, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 6, i32 2
  store i32 %3, ptr %8, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetRenderVector30(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = load ptr, ptr @gRenderSlots, align 4
  %6 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 7
  store i32 %1, ptr %6, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 7, i32 1
  store i32 %2, ptr %7, align 4
  %8 = getelementptr %struct.RenderSlot, ptr %5, i32 %0, i32 7, i32 2
  store i32 %3, ptr %8, align 4
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
