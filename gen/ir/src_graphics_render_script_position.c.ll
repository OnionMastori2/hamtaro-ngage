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
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetFlags1(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 1
  store i8 %5, ptr %6, align 1
  %7 = getelementptr i8, ptr %3, i32 2
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 2
  store i16 %10, ptr %8, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetActive(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 23
  store i8 %5, ptr %6, align 4
  %7 = getelementptr i8, ptr %3, i32 2
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 2
  store i16 %10, ptr %8, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetFlags2(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 23, i32 2
  store i8 %5, ptr %6, align 2
  %7 = getelementptr i8, ptr %3, i32 2
  store ptr %7, ptr %1, align 4
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %9 = load i16, ptr %8, align 4
  %10 = add i16 %9, 2
  store i16 %10, ptr %8, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetX(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = or disjoint i32 %7, %11
  %13 = or disjoint i32 %12, 32768
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 3
  store ptr %15, ptr %1, align 4
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 3
  store i16 %18, ptr %16, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetY(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = or disjoint i32 %7, %11
  %13 = or disjoint i32 %12, 32768
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 3
  store ptr %15, ptr %1, align 4
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 3
  store i16 %18, ptr %16, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetZ(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = or disjoint i32 %7, %11
  %13 = or disjoint i32 %12, 32768
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 %13, ptr %14, align 4
  %15 = getelementptr i8, ptr %3, i32 3
  store ptr %15, ptr %1, align 4
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %17 = load i16, ptr %16, align 4
  %18 = add i16 %17, 3
  store i16 %18, ptr %16, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetRelativeX(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr i8, ptr %3, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr %struct.RenderSlot, ptr %4, i32 %7, i32 3
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 4
  store i16 %24, ptr %22, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetRelativeY(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr i8, ptr %3, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr %struct.RenderSlot, ptr %4, i32 %7, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 4
  store i16 %24, ptr %22, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetRelativeZ(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr i8, ptr %3, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw nsw i32 %10, 16
  %12 = getelementptr i8, ptr %3, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw i32 %14, 24
  %16 = or disjoint i32 %15, %11
  %17 = getelementptr %struct.RenderSlot, ptr %4, i32 %7, i32 5
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %16, %18
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  store i32 %19, ptr %20, align 4
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %23 = load i16, ptr %22, align 4
  %24 = add i16 %23, 4
  store i16 %24, ptr %22, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationAddX(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %14
  store i32 %15, ptr %13, align 4
  %16 = getelementptr i8, ptr %3, i32 3
  store ptr %16, ptr %1, align 4
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 3
  store i16 %19, ptr %17, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationAddY(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %14
  store i32 %15, ptr %13, align 4
  %16 = getelementptr i8, ptr %3, i32 3
  store ptr %16, ptr %1, align 4
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 3
  store i16 %19, ptr %17, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationAddZ(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = or disjoint i32 %11, %7
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %12, %14
  store i32 %15, ptr %13, align 4
  %16 = getelementptr i8, ptr %3, i32 3
  store ptr %16, ptr %1, align 4
  %17 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %18 = load i16, ptr %17, align 4
  %19 = add i16 %18, 3
  store i16 %19, ptr %17, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetVelocityX(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 5
  store i16 %26, ptr %24, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetVelocityY(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %22 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 5
  store i16 %26, ptr %24, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetVelocityZ(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %22 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 5
  store i16 %26, ptr %24, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetAccelerationX(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 5
  store i16 %26, ptr %24, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetAccelerationY(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %22 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 7, i32 1
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 5
  store i16 %26, ptr %24, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetAccelerationZ(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %22 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 7, i32 2
  store i32 %21, ptr %22, align 4
  %23 = getelementptr i8, ptr %3, i32 5
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %25 = load i16, ptr %24, align 4
  %26 = add i16 %25, 5
  store i16 %26, ptr %24, align 4
  ret i32 0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
