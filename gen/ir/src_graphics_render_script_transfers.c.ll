; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc i32 @AnimationSetDelay(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 3
  store i8 %5, ptr %6, align 1
  %7 = getelementptr i8, ptr %3, i32 2
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 2
  store i16 %10, ptr %8, align 4
  %11 = load i8, ptr %6, align 1
  %12 = icmp ne i8 %11, 0
  %13 = zext i1 %12 to i32
  ret i32 %13
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationQueueDma(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = or disjoint i32 %16, %20
  %22 = getelementptr i8, ptr %3, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr i8, ptr %3, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or disjoint i32 %28, %24
  %30 = getelementptr i8, ptr %3, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or disjoint i32 %29, %33
  %35 = getelementptr i8, ptr %3, i32 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = or disjoint i32 %34, %38
  %40 = getelementptr i8, ptr %3, i32 9
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr i8, ptr %3, i32 10
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = or disjoint i32 %46, %42
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %39, i32 noundef %21, i32 noundef %47) #3
  %48 = load ptr, ptr %1, align 4
  %49 = getelementptr i8, ptr %48, i32 11
  store ptr %49, ptr %1, align 4
  %50 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %51 = load i16, ptr %50, align 4
  %52 = add i16 %51, 11
  store i16 %52, ptr %50, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationQueueTileRows(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = or disjoint i32 %16, %20
  %22 = getelementptr i8, ptr %3, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr i8, ptr %3, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = or disjoint i32 %28, %24
  %30 = getelementptr i8, ptr %3, i32 7
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 16
  %34 = or disjoint i32 %29, %33
  %35 = getelementptr i8, ptr %3, i32 8
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = shl nuw i32 %37, 24
  %39 = or disjoint i32 %34, %38
  %40 = getelementptr i8, ptr %3, i32 9
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr i8, ptr %3, i32 10
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  tail call arm_apcscc void @QueueDmaTileRows(i32 noundef %39, i32 noundef %21, i32 noundef %42, i32 noundef %45) #3
  %46 = load ptr, ptr %1, align 4
  %47 = getelementptr i8, ptr %46, i32 11
  store ptr %47, ptr %1, align 4
  %48 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %49 = load i16, ptr %48, align 4
  %50 = add i16 %49, 11
  store i16 %50, ptr %48, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @QueueDmaTileRows(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationDecompressWram(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 8
  %11 = or disjoint i32 %10, %6
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 16
  %16 = or disjoint i32 %11, %15
  %17 = getelementptr i8, ptr %3, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 %19, 24
  %21 = or disjoint i32 %16, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr i8, ptr %3, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr i8, ptr %3, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl nuw nsw i32 %28, 8
  %30 = or disjoint i32 %29, %25
  %31 = getelementptr i8, ptr %3, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 16
  %35 = or disjoint i32 %30, %34
  %36 = getelementptr i8, ptr %3, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 %38, 24
  %40 = or disjoint i32 %35, %39
  %41 = inttoptr i32 %40 to ptr
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %41, ptr noundef %22) #3
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr i8, ptr %42, i32 9
  store ptr %43, ptr %1, align 4
  %44 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %45, 9
  store i16 %46, ptr %44, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
