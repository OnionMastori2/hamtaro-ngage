; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderTileSet = type { ptr, ptr, [68 x ptr], i8, i8 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderTileSets = external dso_local local_unnamed_addr constant [4 x %struct.RenderTileSet], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationDecompressTileSet(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef %0) #2
  %4 = zext i8 %3 to i16
  %5 = add nsw i16 %4, -10
  %6 = sdiv i16 %5, 3
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr i8, ptr %7, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr i8, ptr %7, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 8
  %15 = or disjoint i32 %14, %10
  %16 = getelementptr i8, ptr %7, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw nsw i32 %18, 16
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %7, i32 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw i32 %23, 24
  %25 = or disjoint i32 %20, %24
  %26 = inttoptr i32 %25 to ptr
  %27 = and i16 %6, 255
  %28 = zext nneg i16 %27 to i32
  %29 = getelementptr [4 x %struct.RenderTileSet], ptr @gRenderTileSets, i32 0, i32 %28
  %30 = load ptr, ptr %29, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %26, ptr noundef %30) #2
  %31 = load ptr, ptr %1, align 4
  %32 = getelementptr i8, ptr %31, i32 5
  store ptr %32, ptr %1, align 4
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %34 = load i16, ptr %33, align 4
  %35 = add i16 %34, 5
  store i16 %35, ptr %33, align 4
  ret i32 0
}

declare dso_local arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationQueueTileSet(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = tail call arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef %0) #2
  %4 = zext i8 %3 to i16
  %5 = add nsw i16 %4, -10
  %6 = sdiv i16 %5, 3
  %7 = sext i16 %6 to i32
  %8 = getelementptr [4 x %struct.RenderTileSet], ptr @gRenderTileSets, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = getelementptr [4 x %struct.RenderTileSet], ptr @gRenderTileSets, i32 0, i32 %7, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr [4 x %struct.RenderTileSet], ptr @gRenderTileSets, i32 0, i32 %7, i32 3
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = getelementptr [4 x %struct.RenderTileSet], ptr @gRenderTileSets, i32 0, i32 %7, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  tail call arm_apcscc void @QueueDmaTileRows(i32 noundef %10, i32 noundef %13, i32 noundef %16, i32 noundef %19) #2
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr i8, ptr %20, i32 1
  store ptr %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @QueueDmaTileRows(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @AnimationSetTileSetFrame(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 3
  store i8 %5, ptr %6, align 1
  %7 = tail call arm_apcscc zeroext i8 @FindRenderSlot(ptr noundef %0) #2
  %8 = zext i8 %7 to i16
  %9 = getelementptr i8, ptr %3, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = shl nuw nsw i32 %11, 2
  %13 = add nsw i16 %8, -10
  %14 = sdiv i16 %13, 3
  %15 = sext i16 %14 to i32
  %16 = mul nsw i32 %15, 284
  %17 = getelementptr i8, ptr getelementptr inbounds ([4 x %struct.RenderTileSet], ptr @gRenderTileSets, i32 0, i32 0, i32 2, i32 0), i32 %12
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %0, align 4
  %20 = load ptr, ptr %1, align 4
  %21 = getelementptr i8, ptr %20, i32 3
  store ptr %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 3
  store i16 %24, ptr %22, align 4
  %25 = load i8, ptr %6, align 1
  %26 = icmp ne i8 %25, 0
  %27 = zext i1 %26 to i32
  ret i32 %27
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
