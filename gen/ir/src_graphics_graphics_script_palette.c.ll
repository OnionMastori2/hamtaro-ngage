; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gGraphicsDecompressedHalfwords = external dso_local local_unnamed_addr global i32, align 4
@gPaletteGroupSizes = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @GraphicsCopyHalfwords(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %5, ptr %6, align 4
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i8 %7, 0
  br i1 %9, label %58, label %10

10:                                               ; preds = %2
  %11 = getelementptr i8, ptr %1, i32 7
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = getelementptr i8, ptr %1, i32 6
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %19 = getelementptr i8, ptr %1, i32 8
  %20 = load i8, ptr %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 16
  %23 = or disjoint i32 %18, %22
  %24 = getelementptr i8, ptr %1, i32 9
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 %26, 24
  %28 = or disjoint i32 %23, %27
  %29 = inttoptr i32 %28 to ptr
  %30 = getelementptr i8, ptr %1, i32 3
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = getelementptr i8, ptr %1, i32 2
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = or disjoint i32 %33, %36
  %38 = getelementptr i8, ptr %1, i32 4
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 16
  %42 = or disjoint i32 %37, %41
  %43 = getelementptr i8, ptr %1, i32 5
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = shl nuw i32 %45, 24
  %47 = or disjoint i32 %42, %46
  %48 = inttoptr i32 %47 to ptr
  br label %49

49:                                               ; preds = %10, %49
  %50 = phi i32 [ %56, %49 ], [ 0, %10 ]
  %51 = phi ptr [ %55, %49 ], [ %29, %10 ]
  %52 = phi ptr [ %54, %49 ], [ %48, %10 ]
  %53 = load i16, ptr %51, align 2
  store i16 %53, ptr %52, align 2
  %54 = getelementptr i16, ptr %52, i32 1
  %55 = getelementptr i16, ptr %51, i32 1
  %56 = add nuw nsw i32 %50, 1
  %57 = icmp eq i32 %56, %8
  br i1 %57, label %58, label %49

58:                                               ; preds = %49, %2
  %59 = getelementptr i8, ptr %1, i32 10
  %60 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %59, ptr %60, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsPaletteAll(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load i32, ptr @gGraphicsDecompressedHalfwords, align 4
  %4 = and i32 %3, 65535
  %5 = getelementptr i8, ptr %1, i32 1
  %6 = load i8, ptr %1, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr [0 x i8], ptr @gPaletteGroupSizes, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  store i8 %9, ptr %10, align 1
  %11 = getelementptr i8, ptr %1, i32 2
  %12 = load i8, ptr %5, align 1
  %13 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  store i8 %12, ptr %13, align 2
  %14 = getelementptr i8, ptr %1, i32 3
  %15 = load i8, ptr %11, align 1
  %16 = zext i8 %15 to i16
  %17 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  store i16 %16, ptr %17, align 2
  %18 = getelementptr i8, ptr %1, i32 4
  %19 = load i8, ptr %14, align 1
  %20 = zext i8 %19 to i16
  %21 = shl nuw i16 %20, 8
  %22 = or disjoint i16 %21, %16
  store i16 %22, ptr %17, align 2
  %23 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %18, ptr %23, align 4
  store i8 -124, ptr %0, align 4
  %24 = trunc i32 %3 to i16
  %25 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 9
  store i16 %24, ptr %25, align 4
  %26 = zext i16 %22 to i32
  tail call arm_apcscc void @PreparePaletteGroup(i32 noundef %7, i32 noundef %26, i32 noundef %4) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @GraphicsBeginPalette(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 noundef %2, i16 noundef zeroext %3) local_unnamed_addr #1 {
  %5 = getelementptr i8, ptr %1, i32 1
  %6 = load i8, ptr %1, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr [0 x i8], ptr @gPaletteGroupSizes, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = trunc i16 %3 to i8
  %11 = sub i8 %9, %10
  %12 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  store i8 %11, ptr %12, align 1
  %13 = getelementptr i8, ptr %1, i32 2
  %14 = load i8, ptr %5, align 1
  %15 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  store i8 %14, ptr %15, align 2
  %16 = getelementptr i8, ptr %1, i32 3
  %17 = load i8, ptr %13, align 1
  %18 = zext i8 %17 to i16
  %19 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  store i16 %18, ptr %19, align 2
  %20 = getelementptr i8, ptr %1, i32 4
  %21 = load i8, ptr %16, align 1
  %22 = zext i8 %21 to i16
  %23 = shl nuw i16 %22, 8
  %24 = or disjoint i16 %23, %18
  store i16 %24, ptr %19, align 2
  %25 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %20, ptr %25, align 4
  store i8 -124, ptr %0, align 4
  %26 = trunc i32 %2 to i16
  %27 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 9
  store i16 %26, ptr %27, align 4
  %28 = zext i16 %24 to i32
  %29 = and i32 %2, 65535
  tail call arm_apcscc void @PreparePaletteGroup(i32 noundef %7, i32 noundef %28, i32 noundef %29) #3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsPaletteFrom(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = load i32, ptr @gGraphicsDecompressedHalfwords, align 4
  %6 = and i32 %5, 65535
  %7 = getelementptr i8, ptr %1, i32 2
  %8 = load i8, ptr %3, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr [0 x i8], ptr @gPaletteGroupSizes, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = sub i8 %11, %4
  %13 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr i8, ptr %1, i32 3
  %15 = load i8, ptr %7, align 1
  %16 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  store i8 %15, ptr %16, align 2
  %17 = getelementptr i8, ptr %1, i32 4
  %18 = load i8, ptr %14, align 1
  %19 = zext i8 %18 to i16
  %20 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  store i16 %19, ptr %20, align 2
  %21 = getelementptr i8, ptr %1, i32 5
  %22 = load i8, ptr %17, align 1
  %23 = zext i8 %22 to i16
  %24 = shl nuw i16 %23, 8
  %25 = or disjoint i16 %24, %19
  store i16 %25, ptr %20, align 2
  %26 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %21, ptr %26, align 4
  store i8 -124, ptr %0, align 4
  %27 = trunc i32 %5 to i16
  %28 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 9
  store i16 %27, ptr %28, align 4
  %29 = zext i16 %25 to i32
  tail call arm_apcscc void @PreparePaletteGroup(i32 noundef %9, i32 noundef %29, i32 noundef %6) #3
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsPaletteRange(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 2
  %7 = load i8, ptr %3, align 1
  %8 = getelementptr i8, ptr %1, i32 3
  %9 = load i8, ptr %6, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr [0 x i8], ptr @gPaletteGroupSizes, i32 0, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = sub i8 %12, %7
  %14 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  store i8 %13, ptr %14, align 1
  %15 = getelementptr i8, ptr %1, i32 4
  %16 = load i8, ptr %8, align 1
  %17 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  store i8 %16, ptr %17, align 2
  %18 = getelementptr i8, ptr %1, i32 5
  %19 = load i8, ptr %15, align 1
  %20 = zext i8 %19 to i16
  %21 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  store i16 %20, ptr %21, align 2
  %22 = getelementptr i8, ptr %1, i32 6
  %23 = load i8, ptr %18, align 1
  %24 = zext i8 %23 to i16
  %25 = shl nuw i16 %24, 8
  %26 = or disjoint i16 %25, %20
  store i16 %26, ptr %21, align 2
  %27 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %22, ptr %27, align 4
  store i8 -124, ptr %0, align 4
  %28 = zext i8 %4 to i16
  %29 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 9
  store i16 %28, ptr %29, align 4
  %30 = zext i16 %26 to i32
  tail call arm_apcscc void @PreparePaletteGroup(i32 noundef %10, i32 noundef %30, i32 noundef %5) #3
  ret i32 0
}

declare dso_local arm_apcscc void @PreparePaletteGroup(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsPaletteStep(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 9
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  tail call arm_apcscc void @UpdatePaletteGroup(i32 noundef %5, i32 noundef %8) #3
  %9 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = add i8 %10, -1
  store i8 %11, ptr %9, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  %15 = load i8, ptr %14, align 2
  %16 = zext i8 %15 to i16
  %17 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %16, ptr %17, align 4
  br label %19

18:                                               ; preds = %2
  store i8 1, ptr %0, align 4
  br label %19

19:                                               ; preds = %18, %13
  ret i32 0
}

declare dso_local arm_apcscc void @UpdatePaletteGroup(i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
