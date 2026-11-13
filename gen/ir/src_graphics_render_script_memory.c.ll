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
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @AnimationAdvance(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %1, align 4
  %5 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %6 = load i16, ptr %5, align 4
  %7 = add i16 %6, 1
  store i16 %7, ptr %5, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationWriteByte(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  store i8 %24, ptr %22, align 1
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr i8, ptr %25, i32 6
  store ptr %26, ptr %1, align 4
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 6
  store i16 %29, ptr %27, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationWriteHalfword(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %25 = zext i8 %24 to i16
  %26 = getelementptr i8, ptr %3, i32 6
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i16
  %29 = shl nuw i16 %28, 8
  %30 = or disjoint i16 %29, %25
  store i16 %30, ptr %22, align 2
  %31 = getelementptr i8, ptr %3, i32 7
  store ptr %31, ptr %1, align 4
  %32 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %33 = load i16, ptr %32, align 4
  %34 = add i16 %33, 7
  store i16 %34, ptr %32, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationWriteWord(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  store i32 %40, ptr %22, align 4
  %41 = getelementptr i8, ptr %3, i32 9
  store ptr %41, ptr %1, align 4
  %42 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %43 = load i16, ptr %42, align 4
  %44 = add i16 %43, 9
  store i16 %44, ptr %42, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationIncrementByte(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %23 = load i8, ptr %22, align 1
  %24 = add i8 %23, 1
  store i8 %24, ptr %22, align 1
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr i8, ptr %25, i32 5
  store ptr %26, ptr %1, align 4
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 5
  store i16 %29, ptr %27, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationIncrementHalfword(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %23 = load i16, ptr %22, align 2
  %24 = add i16 %23, 1
  store i16 %24, ptr %22, align 2
  %25 = getelementptr i8, ptr %3, i32 5
  store ptr %25, ptr %1, align 4
  %26 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 5
  store i16 %28, ptr %26, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationIncrementWord(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %22, align 4
  %25 = getelementptr i8, ptr %3, i32 5
  store ptr %25, ptr %1, align 4
  %26 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 5
  store i16 %28, ptr %26, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationDecrementByte(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %23 = load i8, ptr %22, align 1
  %24 = add i8 %23, -1
  store i8 %24, ptr %22, align 1
  %25 = load ptr, ptr %1, align 4
  %26 = getelementptr i8, ptr %25, i32 5
  store ptr %26, ptr %1, align 4
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %28 = load i16, ptr %27, align 4
  %29 = add i16 %28, 5
  store i16 %29, ptr %27, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationDecrementHalfword(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %23 = load i16, ptr %22, align 2
  %24 = add i16 %23, -1
  store i16 %24, ptr %22, align 2
  %25 = getelementptr i8, ptr %3, i32 5
  store ptr %25, ptr %1, align 4
  %26 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 5
  store i16 %28, ptr %26, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationDecrementWord(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %23 = load i32, ptr %22, align 4
  %24 = add i32 %23, -1
  store i32 %24, ptr %22, align 4
  %25 = getelementptr i8, ptr %3, i32 5
  store ptr %25, ptr %1, align 4
  %26 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %27 = load i16, ptr %26, align 4
  %28 = add i16 %27, 5
  store i16 %28, ptr %26, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationAddByte(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %25 = load i8, ptr %22, align 1
  %26 = add i8 %25, %24
  store i8 %26, ptr %22, align 1
  %27 = load ptr, ptr %1, align 4
  %28 = getelementptr i8, ptr %27, i32 6
  store ptr %28, ptr %1, align 4
  %29 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %30 = load i16, ptr %29, align 4
  %31 = add i16 %30, 6
  store i16 %31, ptr %29, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationAddHalfword(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %23 = getelementptr i8, ptr %3, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i16
  %26 = shl nuw i16 %25, 8
  %27 = getelementptr i8, ptr %3, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i16
  %30 = or disjoint i16 %26, %29
  %31 = load i16, ptr %22, align 2
  %32 = add i16 %30, %31
  store i16 %32, ptr %22, align 2
  %33 = getelementptr i8, ptr %3, i32 7
  store ptr %33, ptr %1, align 4
  %34 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %35 = load i16, ptr %34, align 4
  %36 = add i16 %35, 7
  store i16 %36, ptr %34, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationAddWord(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %41 = load i32, ptr %22, align 4
  %42 = add i32 %40, %41
  store i32 %42, ptr %22, align 4
  %43 = getelementptr i8, ptr %3, i32 9
  store ptr %43, ptr %1, align 4
  %44 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %45 = load i16, ptr %44, align 4
  %46 = add i16 %45, 9
  store i16 %46, ptr %44, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
