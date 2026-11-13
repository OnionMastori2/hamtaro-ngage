; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2,0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local arm_apcscc i32 @GetRenderXZMotionDirection(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  %3 = load i32, ptr %2, align 4
  %4 = icmp slt i32 %3, 0
  %5 = tail call i32 @llvm.abs.i32(i32 %3, i1 false)
  %6 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp slt i32 %7, 0
  %9 = tail call i32 @llvm.abs.i32(i32 %7, i1 false)
  %10 = or i32 %9, %5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = icmp slt i32 %5, %9
  br i1 %13, label %16, label %14

14:                                               ; preds = %12
  %15 = select i1 %4, i32 3, i32 4
  br label %18

16:                                               ; preds = %12
  %17 = select i1 %8, i32 1, i32 2
  br label %18

18:                                               ; preds = %1, %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ], [ 0, %1 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @ClassifyLeaderRenderXZMotion() local_unnamed_addr #1 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 6
  %5 = getelementptr i8, ptr %4, i32 2
  %6 = load i16, ptr %5, align 2
  %7 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 6, i32 2
  %8 = getelementptr i8, ptr %7, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %6, 0
  %11 = icmp eq i16 %9, 0
  %12 = select i1 %10, i1 %11, i1 false
  br i1 %12, label %27, label %13

13:                                               ; preds = %0
  br i1 %11, label %14, label %19

14:                                               ; preds = %13
  %15 = tail call i16 @llvm.abs.i16(i16 %6, i1 false)
  %16 = tail call i32 asm "", "=r,0"(i32 2) #4, !srcloc !4
  %17 = icmp ugt i16 %15, 1
  %18 = select i1 %17, i32 %16, i32 1
  br label %27

19:                                               ; preds = %13
  br i1 %10, label %20, label %25

20:                                               ; preds = %19
  %21 = tail call i16 @llvm.abs.i16(i16 %9, i1 false)
  %22 = tail call i32 asm "", "=r,0"(i32 2) #4, !srcloc !5
  %23 = icmp ugt i16 %21, 1
  %24 = select i1 %23, i32 %22, i32 1
  br label %27

25:                                               ; preds = %19
  %26 = tail call i32 asm "", "=r,0"(i32 2) #4, !srcloc !6
  br label %27

27:                                               ; preds = %0, %25, %20, %14
  %28 = phi i32 [ %18, %14 ], [ %24, %20 ], [ 1, %25 ], [ 0, %0 ]
  ret i32 %28
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc i32 @QuantizeFollowerRenderXZSteps(ptr nocapture noundef writeonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = load i8, ptr @gRenderClassSlots1, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6
  %7 = getelementptr i8, ptr %6, i32 2
  %8 = load i16, ptr %7, align 2
  %9 = getelementptr %struct.RenderSlot, ptr %3, i32 %5, i32 6, i32 2
  %10 = getelementptr i8, ptr %9, i32 2
  %11 = load i16, ptr %10, align 2
  %12 = icmp slt i16 %8, -2
  br i1 %12, label %20, label %13

13:                                               ; preds = %2
  %14 = icmp slt i16 %8, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %13
  %16 = icmp eq i16 %8, 1
  %17 = select i1 %16, i16 1, i16 2
  %18 = icmp eq i16 %8, 0
  %19 = select i1 %18, i16 0, i16 %17
  br label %20

20:                                               ; preds = %15, %13, %2
  %21 = phi i16 [ -2, %2 ], [ -1, %13 ], [ %19, %15 ]
  store i16 %21, ptr %0, align 2
  %22 = icmp slt i16 %11, -2
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = icmp slt i16 %11, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %23
  switch i16 %11, label %26 [
    i16 0, label %30
    i16 1, label %27
  ]

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %25, %23, %20, %26
  %28 = phi i16 [ 2, %26 ], [ -2, %20 ], [ -1, %23 ], [ %11, %25 ]
  store i16 %28, ptr %1, align 2
  %29 = icmp eq i16 %8, 0
  br i1 %29, label %37, label %42

30:                                               ; preds = %25
  store i16 0, ptr %1, align 2
  %31 = icmp eq i16 %8, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %30
  %33 = tail call i16 @llvm.abs.i16(i16 %8, i1 false)
  %34 = tail call i32 asm "", "=r,0"(i32 2) #4, !srcloc !7
  %35 = icmp ugt i16 %33, 1
  %36 = select i1 %35, i32 %34, i32 1
  br label %44

37:                                               ; preds = %27
  %38 = tail call i16 @llvm.abs.i16(i16 %11, i1 false)
  %39 = tail call i32 asm "", "=r,0"(i32 2) #4, !srcloc !8
  %40 = icmp ugt i16 %38, 1
  %41 = select i1 %40, i32 %39, i32 1
  br label %44

42:                                               ; preds = %27
  %43 = tail call i32 asm "", "=r,0"(i32 2) #4, !srcloc !9
  br label %44

44:                                               ; preds = %30, %42, %37, %32
  %45 = phi i32 [ %36, %32 ], [ %41, %37 ], [ 1, %42 ], [ 0, %30 ]
  ret i32 %45
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nofree nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 923}
!5 = !{i64 1120}
!6 = !{i64 1511}
!7 = !{i64 2309}
!8 = !{i64 2506}
!9 = !{i64 2897}
