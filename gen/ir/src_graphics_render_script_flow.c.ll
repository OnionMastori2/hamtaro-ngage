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
define dso_local arm_apcscc noundef i32 @AnimationSetScript(ptr nocapture noundef writeonly %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
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
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  store i32 %21, ptr %22, align 4
  %23 = inttoptr i32 %21 to ptr
  store ptr %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  store i16 0, ptr %24, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationJump(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  %25 = load i16, ptr %24, align 2
  %26 = icmp sgt i16 %25, -1
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %29 = load i16, ptr %28, align 2
  %30 = icmp sgt i16 %29, -1
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = icmp sgt i16 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  %37 = load i16, ptr %36, align 2
  %38 = icmp sgt i16 %37, -1
  br i1 %38, label %43, label %39

39:                                               ; preds = %35, %31, %27, %2
  %40 = phi i32 [ 3, %2 ], [ 2, %27 ], [ 1, %31 ], [ 0, %35 ]
  %41 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %40
  %42 = load i32, ptr %41, align 4
  br label %43

43:                                               ; preds = %35, %39
  %44 = phi i32 [ %42, %39 ], [ %23, %35 ]
  %45 = sub i32 %21, %44
  %46 = icmp ult i32 %45, 32768
  %47 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  br i1 %46, label %48, label %51

48:                                               ; preds = %43
  %49 = inttoptr i32 %21 to ptr
  store ptr %49, ptr %1, align 4
  %50 = trunc i32 %45 to i16
  store i16 %50, ptr %47, align 4
  br label %53

51:                                               ; preds = %43
  store i32 %21, ptr %22, align 4
  %52 = inttoptr i32 %21 to ptr
  store ptr %52, ptr %1, align 4
  store i16 0, ptr %47, align 4
  tail call arm_apcscc void @QueueRenderError(i32 noundef 257) #3
  br label %53

53:                                               ; preds = %51, %48
  ret i32 0
}

declare dso_local arm_apcscc void @QueueRenderError(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationSetOffset(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i16
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  store i16 %6, ptr %7, align 4
  %8 = getelementptr i8, ptr %3, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  %11 = shl nuw i16 %10, 8
  %12 = or disjoint i16 %11, %6
  store i16 %12, ptr %7, align 4
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = inttoptr i32 %14 to ptr
  %16 = zext i16 %12 to i32
  %17 = getelementptr i8, ptr %15, i32 %16
  store ptr %17, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBranchEqualByte(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %23, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %2
  store ptr %24, ptr %1, align 4
  %28 = getelementptr i8, ptr %3, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %3, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %34, %30
  %36 = getelementptr i8, ptr %3, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or disjoint i32 %35, %39
  %41 = getelementptr i8, ptr %3, i32 9
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 %43, 24
  %45 = or disjoint i32 %40, %44
  %46 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  %49 = load i16, ptr %48, align 2
  %50 = icmp sgt i16 %49, -1
  br i1 %50, label %51, label %63

51:                                               ; preds = %27
  %52 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %53 = load i16, ptr %52, align 2
  %54 = icmp sgt i16 %53, -1
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = icmp sgt i16 %57, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  %61 = load i16, ptr %60, align 2
  %62 = icmp sgt i16 %61, -1
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %55, %51, %27
  %64 = phi i32 [ 3, %27 ], [ 2, %51 ], [ 1, %55 ], [ 0, %59 ]
  %65 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %64
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i32 [ %66, %63 ], [ %47, %59 ]
  %69 = sub i32 %45, %68
  %70 = icmp ult i32 %69, 32768
  %71 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  br i1 %70, label %72, label %75

72:                                               ; preds = %67
  %73 = inttoptr i32 %45 to ptr
  store ptr %73, ptr %1, align 4
  %74 = trunc i32 %69 to i16
  store i16 %74, ptr %71, align 4
  br label %82

75:                                               ; preds = %67
  store i32 %45, ptr %46, align 4
  %76 = inttoptr i32 %45 to ptr
  store ptr %76, ptr %1, align 4
  store i16 0, ptr %71, align 4
  tail call arm_apcscc void @QueueRenderError(i32 noundef 257) #3
  br label %82

77:                                               ; preds = %2
  %78 = getelementptr i8, ptr %3, i32 10
  store ptr %78, ptr %1, align 4
  %79 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %80 = load i16, ptr %79, align 4
  %81 = add i16 %80, 10
  store i16 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %75, %72, %77
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBranchLessByte(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = icmp ult i8 %23, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %2
  store ptr %24, ptr %1, align 4
  %28 = getelementptr i8, ptr %3, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %3, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %34, %30
  %36 = getelementptr i8, ptr %3, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or disjoint i32 %35, %39
  %41 = getelementptr i8, ptr %3, i32 9
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 %43, 24
  %45 = or disjoint i32 %40, %44
  %46 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  %49 = load i16, ptr %48, align 2
  %50 = icmp sgt i16 %49, -1
  br i1 %50, label %51, label %63

51:                                               ; preds = %27
  %52 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %53 = load i16, ptr %52, align 2
  %54 = icmp sgt i16 %53, -1
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = icmp sgt i16 %57, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  %61 = load i16, ptr %60, align 2
  %62 = icmp sgt i16 %61, -1
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %55, %51, %27
  %64 = phi i32 [ 3, %27 ], [ 2, %51 ], [ 1, %55 ], [ 0, %59 ]
  %65 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %64
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i32 [ %66, %63 ], [ %47, %59 ]
  %69 = sub i32 %45, %68
  %70 = icmp ult i32 %69, 32768
  %71 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  br i1 %70, label %72, label %75

72:                                               ; preds = %67
  %73 = inttoptr i32 %45 to ptr
  store ptr %73, ptr %1, align 4
  %74 = trunc i32 %69 to i16
  store i16 %74, ptr %71, align 4
  br label %82

75:                                               ; preds = %67
  store i32 %45, ptr %46, align 4
  %76 = inttoptr i32 %45 to ptr
  store ptr %76, ptr %1, align 4
  store i16 0, ptr %71, align 4
  tail call arm_apcscc void @QueueRenderError(i32 noundef 257) #3
  br label %82

77:                                               ; preds = %2
  %78 = getelementptr i8, ptr %3, i32 10
  store ptr %78, ptr %1, align 4
  %79 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %80 = load i16, ptr %79, align 4
  %81 = add i16 %80, 10
  store i16 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %75, %72, %77
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationBranchGreaterByte(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
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
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = icmp ugt i8 %23, %25
  br i1 %26, label %27, label %77

27:                                               ; preds = %2
  store ptr %24, ptr %1, align 4
  %28 = getelementptr i8, ptr %3, i32 6
  %29 = load i8, ptr %28, align 1
  %30 = zext i8 %29 to i32
  %31 = getelementptr i8, ptr %3, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %34, %30
  %36 = getelementptr i8, ptr %3, i32 8
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 16
  %40 = or disjoint i32 %35, %39
  %41 = getelementptr i8, ptr %3, i32 9
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = shl nuw i32 %43, 24
  %45 = or disjoint i32 %40, %44
  %46 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 3
  %49 = load i16, ptr %48, align 2
  %50 = icmp sgt i16 %49, -1
  br i1 %50, label %51, label %63

51:                                               ; preds = %27
  %52 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 2
  %53 = load i16, ptr %52, align 2
  %54 = icmp sgt i16 %53, -1
  br i1 %54, label %55, label %63

55:                                               ; preds = %51
  %56 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 1
  %57 = load i16, ptr %56, align 2
  %58 = icmp sgt i16 %57, -1
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 21, i32 0
  %61 = load i16, ptr %60, align 2
  %62 = icmp sgt i16 %61, -1
  br i1 %62, label %67, label %63

63:                                               ; preds = %59, %55, %51, %27
  %64 = phi i32 [ 3, %27 ], [ 2, %51 ], [ 1, %55 ], [ 0, %59 ]
  %65 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 2, i32 %64
  %66 = load i32, ptr %65, align 4
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i32 [ %66, %63 ], [ %47, %59 ]
  %69 = sub i32 %45, %68
  %70 = icmp ult i32 %69, 32768
  %71 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  br i1 %70, label %72, label %75

72:                                               ; preds = %67
  %73 = inttoptr i32 %45 to ptr
  store ptr %73, ptr %1, align 4
  %74 = trunc i32 %69 to i16
  store i16 %74, ptr %71, align 4
  br label %82

75:                                               ; preds = %67
  store i32 %45, ptr %46, align 4
  %76 = inttoptr i32 %45 to ptr
  store ptr %76, ptr %1, align 4
  store i16 0, ptr %71, align 4
  tail call arm_apcscc void @QueueRenderError(i32 noundef 257) #3
  br label %82

77:                                               ; preds = %2
  %78 = getelementptr i8, ptr %3, i32 10
  store ptr %78, ptr %1, align 4
  %79 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 16
  %80 = load i16, ptr %79, align 4
  %81 = add i16 %80, 10
  store i16 %81, ptr %79, align 4
  br label %82

82:                                               ; preds = %75, %72, %77
  ret i32 0
}

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
