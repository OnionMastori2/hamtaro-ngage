; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".text"
module asm ".align 2, 0"

%struct.fp_number_type = type { i32, i32, i32, %union.anon }
%union.anon = type { i32 }

@gRuntimeFloatNaNParts = external dso_local global %struct.fp_number_type, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local arm_apcscc float @__pack_f(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = or i32 %3, 1048576
  br label %42

10:                                               ; preds = %1
  %11 = icmp eq i32 %6, 4
  br i1 %11, label %42, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %6, 2
  %14 = icmp eq i32 %3, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %42, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, -126
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = icmp ult i32 %18, -151
  %22 = sub nuw nsw i32 -126, %18
  %23 = lshr i32 %3, %22
  %24 = lshr i32 %23, 7
  %25 = select i1 %21, i32 0, i32 %24
  br label %42

26:                                               ; preds = %16
  %27 = icmp sgt i32 %18, 127
  br i1 %27, label %42, label %28

28:                                               ; preds = %26
  %29 = and i32 %3, 127
  %30 = icmp eq i32 %29, 64
  %31 = lshr exact i32 %3, 1
  %32 = and i32 %31, 64
  %33 = select i1 %30, i32 %32, i32 63
  %34 = add i32 %33, %3
  %35 = icmp slt i32 %34, 0
  %36 = lshr i32 %34, 31
  %37 = lshr i32 %34, %36
  %38 = select i1 %35, i32 128, i32 127
  %39 = add nsw i32 %18, %38
  %40 = lshr i32 %37, 7
  %41 = shl nuw nsw i32 %39, 23
  br label %42

42:                                               ; preds = %26, %12, %10, %28, %20, %8
  %43 = phi i32 [ %9, %8 ], [ %25, %20 ], [ %40, %28 ], [ 0, %10 ], [ 0, %12 ], [ 0, %26 ]
  %44 = phi i32 [ 2139095040, %8 ], [ 0, %20 ], [ %41, %28 ], [ 2139095040, %10 ], [ 0, %12 ], [ 2139095040, %26 ]
  %45 = and i32 %43, 8388607
  %46 = or disjoint i32 %45, %44
  %47 = shl i32 %5, 31
  %48 = or disjoint i32 %46, %47
  %49 = bitcast i32 %48 to float
  ret float %49
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local arm_apcscc void @__unpack_f(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = load i32, ptr %0, align 4
  %4 = and i32 %3, 8388607
  %5 = lshr i32 %3, 23
  %6 = lshr i32 %3, 31
  %7 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  store i32 %6, ptr %7, align 4
  %8 = trunc i32 %5 to i8
  switch i8 %8, label %30 [
    i8 0, label %9
    i8 -1, label %23
  ]

9:                                                ; preds = %2
  %10 = icmp eq i32 %4, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  store i32 2, ptr %1, align 4
  br label %37

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 2
  store i32 -126, ptr %13, align 4
  store i32 3, ptr %1, align 4
  %14 = shl nuw nsw i32 %4, 7
  br label %15

15:                                               ; preds = %12, %15
  %16 = phi i32 [ -126, %12 ], [ %19, %15 ]
  %17 = phi i32 [ %14, %12 ], [ %18, %15 ]
  %18 = shl nuw nsw i32 %17, 1
  %19 = add i32 %16, -1
  %20 = icmp ult i32 %17, 536870912
  br i1 %20, label %15, label %21

21:                                               ; preds = %15
  store i32 %19, ptr %13, align 4
  %22 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  store i32 %18, ptr %22, align 4
  br label %37

23:                                               ; preds = %2
  %24 = icmp eq i32 %4, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  store i32 4, ptr %1, align 4
  br label %37

26:                                               ; preds = %23
  %27 = lshr i32 %3, 20
  %28 = and i32 %27, 1
  store i32 %28, ptr %1, align 4
  %29 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  store i32 %4, ptr %29, align 4
  br label %37

30:                                               ; preds = %2
  %31 = and i32 %5, 255
  %32 = add nsw i32 %31, -127
  %33 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  store i32 3, ptr %1, align 4
  %34 = shl nuw nsw i32 %4, 7
  %35 = or disjoint i32 %34, 1073741824
  %36 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %30, %26, %25, %11, %21
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc float @__addsf3(float noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fp_number_type, align 4
  %4 = alloca %struct.fp_number_type, align 4
  %5 = alloca %struct.fp_number_type, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = bitcast float %0 to i32
  %7 = and i32 %6, 8388607
  %8 = lshr i32 %6, 23
  %9 = lshr i32 %6, 31
  %10 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = trunc i32 %8 to i8
  switch i8 %11, label %33 [
    i8 0, label %12
    i8 -1, label %26
  ]

12:                                               ; preds = %2
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  store i32 2, ptr %3, align 4
  br label %40

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 -126, ptr %16, align 4
  store i32 3, ptr %3, align 4
  %17 = shl nuw nsw i32 %7, 7
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i32 [ -126, %15 ], [ %22, %18 ]
  %20 = phi i32 [ %17, %15 ], [ %21, %18 ]
  %21 = shl nuw nsw i32 %20, 1
  %22 = add i32 %19, -1
  %23 = icmp ult i32 %20, 536870912
  br i1 %23, label %18, label %24

24:                                               ; preds = %18
  store i32 %22, ptr %16, align 4
  %25 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %21, ptr %25, align 4
  br label %40

26:                                               ; preds = %2
  %27 = icmp eq i32 %7, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i32 4, ptr %3, align 4
  br label %40

29:                                               ; preds = %26
  %30 = lshr i32 %6, 20
  %31 = and i32 %30, 1
  store i32 %31, ptr %3, align 4
  %32 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %7, ptr %32, align 4
  br label %40

33:                                               ; preds = %2
  %34 = and i32 %8, 255
  %35 = add nsw i32 %34, -127
  %36 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  store i32 3, ptr %3, align 4
  %37 = shl nuw nsw i32 %7, 7
  %38 = or disjoint i32 %37, 1073741824
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %14, %24, %28, %29, %33
  %41 = bitcast float %1 to i32
  %42 = and i32 %41, 8388607
  %43 = lshr i32 %41, 23
  %44 = lshr i32 %41, 31
  %45 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = trunc i32 %43 to i8
  switch i8 %46, label %68 [
    i8 0, label %47
    i8 -1, label %61
  ]

47:                                               ; preds = %40
  %48 = icmp eq i32 %42, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i32 2, ptr %4, align 4
  br label %75

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 -126, ptr %51, align 4
  store i32 3, ptr %4, align 4
  %52 = shl nuw nsw i32 %42, 7
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ -126, %50 ], [ %57, %53 ]
  %55 = phi i32 [ %52, %50 ], [ %56, %53 ]
  %56 = shl nuw nsw i32 %55, 1
  %57 = add i32 %54, -1
  %58 = icmp ult i32 %55, 536870912
  br i1 %58, label %53, label %59

59:                                               ; preds = %53
  store i32 %57, ptr %51, align 4
  %60 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %56, ptr %60, align 4
  br label %75

61:                                               ; preds = %40
  %62 = icmp eq i32 %42, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  store i32 4, ptr %4, align 4
  br label %75

64:                                               ; preds = %61
  %65 = lshr i32 %41, 20
  %66 = and i32 %65, 1
  store i32 %66, ptr %4, align 4
  %67 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %42, ptr %67, align 4
  br label %75

68:                                               ; preds = %40
  %69 = and i32 %43, 255
  %70 = add nsw i32 %69, -127
  %71 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  store i32 3, ptr %4, align 4
  %72 = shl nuw nsw i32 %42, 7
  %73 = or disjoint i32 %72, 1073741824
  %74 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %49, %59, %63, %64, %68
  %76 = call arm_apcscc ptr @RuntimeFloatAddParts(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %77 = getelementptr inbounds %struct.fp_number_type, ptr %76, i32 0, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.fp_number_type, ptr %76, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = load i32, ptr %76, align 4
  %82 = icmp ugt i32 %81, 1
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = or i32 %78, 1048576
  br label %117

85:                                               ; preds = %75
  %86 = icmp eq i32 %81, 4
  br i1 %86, label %117, label %87

87:                                               ; preds = %85
  %88 = icmp eq i32 %81, 2
  %89 = icmp eq i32 %78, 0
  %90 = select i1 %88, i1 true, i1 %89
  br i1 %90, label %117, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.fp_number_type, ptr %76, i32 0, i32 2
  %93 = load i32, ptr %92, align 4
  %94 = icmp slt i32 %93, -126
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = icmp ult i32 %93, -151
  %97 = sub nuw nsw i32 -126, %93
  %98 = lshr i32 %78, %97
  %99 = lshr i32 %98, 7
  %100 = select i1 %96, i32 0, i32 %99
  br label %117

101:                                              ; preds = %91
  %102 = icmp sgt i32 %93, 127
  br i1 %102, label %117, label %103

103:                                              ; preds = %101
  %104 = and i32 %78, 127
  %105 = icmp eq i32 %104, 64
  %106 = lshr exact i32 %78, 1
  %107 = and i32 %106, 64
  %108 = select i1 %105, i32 %107, i32 63
  %109 = add i32 %108, %78
  %110 = icmp slt i32 %109, 0
  %111 = lshr i32 %109, 31
  %112 = lshr i32 %109, %111
  %113 = select i1 %110, i32 128, i32 127
  %114 = add nsw i32 %93, %113
  %115 = lshr i32 %112, 7
  %116 = shl nuw nsw i32 %114, 23
  br label %117

117:                                              ; preds = %83, %85, %87, %95, %101, %103
  %118 = phi i32 [ %84, %83 ], [ %100, %95 ], [ %115, %103 ], [ 0, %85 ], [ 0, %87 ], [ 0, %101 ]
  %119 = phi i32 [ 2139095040, %83 ], [ 0, %95 ], [ %116, %103 ], [ 2139095040, %85 ], [ 0, %87 ], [ 2139095040, %101 ]
  %120 = and i32 %118, 8388607
  %121 = or disjoint i32 %120, %119
  %122 = shl i32 %80, 31
  %123 = or disjoint i32 %121, %122
  %124 = bitcast i32 %123 to float
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret float %124
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal arm_apcscc ptr @RuntimeFloatAddParts(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #2 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %112

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %112

9:                                                ; preds = %6
  %10 = icmp eq i32 %4, 4
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = icmp eq i32 %7, 4
  br i1 %12, label %13, label %112

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  %19 = select i1 %18, ptr %0, ptr @gRuntimeFloatNaNParts
  br label %112

20:                                               ; preds = %9
  switch i32 %7, label %30 [
    i32 4, label %112
    i32 2, label %21
  ]

21:                                               ; preds = %20
  %22 = icmp eq i32 %4, 2
  br i1 %22, label %23, label %112

23:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %0, i32 16, i1 false)
  %24 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %25
  %29 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  br label %112

30:                                               ; preds = %20
  %31 = icmp eq i32 %4, 2
  br i1 %31, label %112, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = sub i32 %34, %36
  %42 = tail call i32 @llvm.abs.i32(i32 %41, i1 false)
  %43 = icmp slt i32 %42, 32
  %44 = icmp sgt i32 %34, %36
  br i1 %43, label %45, label %64

45:                                               ; preds = %32
  br i1 %44, label %48, label %46

46:                                               ; preds = %45
  %47 = icmp sgt i32 %36, %34
  br i1 %47, label %56, label %68

48:                                               ; preds = %45, %48
  %49 = phi i32 [ %54, %48 ], [ %40, %45 ]
  %50 = phi i32 [ %51, %48 ], [ %36, %45 ]
  %51 = add nsw i32 %50, 1
  %52 = and i32 %49, 1
  %53 = lshr i32 %49, 1
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %34
  br i1 %55, label %68, label %48

56:                                               ; preds = %46, %56
  %57 = phi i32 [ %62, %56 ], [ %38, %46 ]
  %58 = phi i32 [ %59, %56 ], [ %34, %46 ]
  %59 = add nsw i32 %58, 1
  %60 = and i32 %57, 1
  %61 = lshr i32 %57, 1
  %62 = or i32 %60, %61
  %63 = icmp eq i32 %59, %36
  br i1 %63, label %68, label %56

64:                                               ; preds = %32
  %65 = tail call i32 @llvm.smax.i32(i32 %34, i32 %36)
  %66 = select i1 %44, i32 %38, i32 0
  %67 = select i1 %44, i32 0, i32 %40
  br label %68

68:                                               ; preds = %56, %48, %46, %64
  %69 = phi i32 [ %65, %64 ], [ %34, %46 ], [ %34, %48 ], [ %36, %56 ]
  %70 = phi i32 [ %66, %64 ], [ %38, %46 ], [ %38, %48 ], [ %62, %56 ]
  %71 = phi i32 [ %67, %64 ], [ %40, %46 ], [ %54, %48 ], [ %40, %56 ]
  %72 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %96, label %77

77:                                               ; preds = %68
  %78 = icmp eq i32 %73, 0
  %79 = sub i32 %71, %70
  %80 = sub i32 %70, %71
  %81 = select i1 %78, i32 %80, i32 %79
  %82 = lshr i32 %81, 31
  %83 = tail call i32 @llvm.abs.i32(i32 %81, i1 false)
  %84 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 1
  store i32 %82, ptr %84, align 4
  %85 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 2
  store i32 %69, ptr %85, align 4
  %86 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 3
  store i32 %83, ptr %86, align 4
  %87 = add i32 %83, -1073741824
  %88 = icmp ult i32 %87, -1073741823
  br i1 %88, label %102, label %89

89:                                               ; preds = %77, %89
  %90 = phi i32 [ %93, %89 ], [ %69, %77 ]
  %91 = phi i32 [ %92, %89 ], [ %83, %77 ]
  %92 = shl nuw nsw i32 %91, 1
  %93 = add i32 %90, -1
  %94 = add nsw i32 %92, -1073741824
  %95 = icmp ult i32 %94, -1073741823
  br i1 %95, label %101, label %89

96:                                               ; preds = %68
  %97 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 1
  store i32 %73, ptr %97, align 4
  %98 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 2
  store i32 %69, ptr %98, align 4
  %99 = add i32 %71, %70
  %100 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 3
  store i32 %99, ptr %100, align 4
  br label %102

101:                                              ; preds = %89
  store i32 %92, ptr %86, align 4
  store i32 %93, ptr %85, align 4
  store i32 3, ptr %2, align 4
  br label %112

102:                                              ; preds = %77, %96
  %103 = phi i32 [ %83, %77 ], [ %99, %96 ]
  store i32 3, ptr %2, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 3
  %107 = and i32 %103, 1
  %108 = lshr i32 %103, 1
  %109 = or i32 %107, %108
  store i32 %109, ptr %106, align 4
  %110 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 2
  %111 = add i32 %69, 1
  store i32 %111, ptr %110, align 4
  br label %112

112:                                              ; preds = %101, %20, %13, %102, %105, %30, %21, %11, %6, %3, %23
  %113 = phi ptr [ %2, %23 ], [ %0, %3 ], [ %1, %6 ], [ %0, %11 ], [ %1, %20 ], [ %0, %21 ], [ %1, %30 ], [ %2, %105 ], [ %2, %102 ], [ %19, %13 ], [ %2, %101 ]
  ret ptr %113
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc float @__subsf3(float noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fp_number_type, align 4
  %4 = alloca %struct.fp_number_type, align 4
  %5 = alloca %struct.fp_number_type, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = bitcast float %0 to i32
  %7 = and i32 %6, 8388607
  %8 = lshr i32 %6, 23
  %9 = lshr i32 %6, 31
  %10 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = trunc i32 %8 to i8
  switch i8 %11, label %33 [
    i8 0, label %12
    i8 -1, label %26
  ]

12:                                               ; preds = %2
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  store i32 2, ptr %3, align 4
  br label %40

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 -126, ptr %16, align 4
  store i32 3, ptr %3, align 4
  %17 = shl nuw nsw i32 %7, 7
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i32 [ -126, %15 ], [ %22, %18 ]
  %20 = phi i32 [ %17, %15 ], [ %21, %18 ]
  %21 = shl nuw nsw i32 %20, 1
  %22 = add i32 %19, -1
  %23 = icmp ult i32 %20, 536870912
  br i1 %23, label %18, label %24

24:                                               ; preds = %18
  store i32 %22, ptr %16, align 4
  %25 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %21, ptr %25, align 4
  br label %40

26:                                               ; preds = %2
  %27 = icmp eq i32 %7, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i32 4, ptr %3, align 4
  br label %40

29:                                               ; preds = %26
  %30 = lshr i32 %6, 20
  %31 = and i32 %30, 1
  store i32 %31, ptr %3, align 4
  %32 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %7, ptr %32, align 4
  br label %40

33:                                               ; preds = %2
  %34 = and i32 %8, 255
  %35 = add nsw i32 %34, -127
  %36 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  store i32 3, ptr %3, align 4
  %37 = shl nuw nsw i32 %7, 7
  %38 = or disjoint i32 %37, 1073741824
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %14, %24, %28, %29, %33
  %41 = bitcast float %1 to i32
  %42 = and i32 %41, 8388607
  %43 = lshr i32 %41, 23
  %44 = lshr i32 %41, 31
  %45 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 1
  store i32 %44, ptr %45, align 4
  %46 = trunc i32 %43 to i8
  switch i8 %46, label %68 [
    i8 0, label %47
    i8 -1, label %61
  ]

47:                                               ; preds = %40
  %48 = icmp eq i32 %42, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  store i32 2, ptr %4, align 4
  br label %75

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 -126, ptr %51, align 4
  store i32 3, ptr %4, align 4
  %52 = shl nuw nsw i32 %42, 7
  br label %53

53:                                               ; preds = %53, %50
  %54 = phi i32 [ -126, %50 ], [ %57, %53 ]
  %55 = phi i32 [ %52, %50 ], [ %56, %53 ]
  %56 = shl nuw nsw i32 %55, 1
  %57 = add i32 %54, -1
  %58 = icmp ult i32 %55, 536870912
  br i1 %58, label %53, label %59

59:                                               ; preds = %53
  store i32 %57, ptr %51, align 4
  %60 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %56, ptr %60, align 4
  br label %75

61:                                               ; preds = %40
  %62 = icmp eq i32 %42, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %61
  store i32 4, ptr %4, align 4
  br label %75

64:                                               ; preds = %61
  %65 = lshr i32 %41, 20
  %66 = and i32 %65, 1
  store i32 %66, ptr %4, align 4
  %67 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %42, ptr %67, align 4
  br label %75

68:                                               ; preds = %40
  %69 = and i32 %43, 255
  %70 = add nsw i32 %69, -127
  %71 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  store i32 3, ptr %4, align 4
  %72 = shl nuw nsw i32 %42, 7
  %73 = or disjoint i32 %72, 1073741824
  %74 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %73, ptr %74, align 4
  br label %75

75:                                               ; preds = %49, %59, %63, %64, %68
  %76 = xor i32 %44, 1
  store i32 %76, ptr %45, align 4
  %77 = call arm_apcscc ptr @RuntimeFloatAddParts(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %78 = getelementptr inbounds %struct.fp_number_type, ptr %77, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.fp_number_type, ptr %77, i32 0, i32 1
  %81 = load i32, ptr %80, align 4
  %82 = load i32, ptr %77, align 4
  %83 = icmp ugt i32 %82, 1
  br i1 %83, label %86, label %84

84:                                               ; preds = %75
  %85 = or i32 %79, 1048576
  br label %118

86:                                               ; preds = %75
  %87 = icmp eq i32 %82, 4
  br i1 %87, label %118, label %88

88:                                               ; preds = %86
  %89 = icmp eq i32 %82, 2
  %90 = icmp eq i32 %79, 0
  %91 = select i1 %89, i1 true, i1 %90
  br i1 %91, label %118, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.fp_number_type, ptr %77, i32 0, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = icmp slt i32 %94, -126
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = icmp ult i32 %94, -151
  %98 = sub nuw nsw i32 -126, %94
  %99 = lshr i32 %79, %98
  %100 = lshr i32 %99, 7
  %101 = select i1 %97, i32 0, i32 %100
  br label %118

102:                                              ; preds = %92
  %103 = icmp sgt i32 %94, 127
  br i1 %103, label %118, label %104

104:                                              ; preds = %102
  %105 = and i32 %79, 127
  %106 = icmp eq i32 %105, 64
  %107 = lshr exact i32 %79, 1
  %108 = and i32 %107, 64
  %109 = select i1 %106, i32 %108, i32 63
  %110 = add i32 %109, %79
  %111 = icmp slt i32 %110, 0
  %112 = lshr i32 %110, 31
  %113 = lshr i32 %110, %112
  %114 = select i1 %111, i32 128, i32 127
  %115 = add nsw i32 %94, %114
  %116 = lshr i32 %113, 7
  %117 = shl nuw nsw i32 %115, 23
  br label %118

118:                                              ; preds = %84, %86, %88, %96, %102, %104
  %119 = phi i32 [ %85, %84 ], [ %101, %96 ], [ %116, %104 ], [ 0, %86 ], [ 0, %88 ], [ 0, %102 ]
  %120 = phi i32 [ 2139095040, %84 ], [ 0, %96 ], [ %117, %104 ], [ 2139095040, %86 ], [ 0, %88 ], [ 2139095040, %102 ]
  %121 = and i32 %119, 8388607
  %122 = or disjoint i32 %121, %120
  %123 = shl i32 %81, 31
  %124 = or disjoint i32 %122, %123
  %125 = bitcast i32 %124 to float
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret float %125
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc float @__mulsf3(float noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fp_number_type, align 4
  %4 = alloca %struct.fp_number_type, align 4
  %5 = alloca %struct.fp_number_type, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  %6 = bitcast float %0 to i32
  %7 = and i32 %6, 8388607
  %8 = lshr i32 %6, 23
  %9 = lshr i32 %6, 31
  %10 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 1
  store i32 %9, ptr %10, align 4
  %11 = trunc i32 %8 to i8
  switch i8 %11, label %33 [
    i8 0, label %12
    i8 -1, label %26
  ]

12:                                               ; preds = %2
  %13 = icmp eq i32 %7, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %12
  store i32 2, ptr %3, align 4
  br label %40

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 -126, ptr %16, align 4
  store i32 3, ptr %3, align 4
  %17 = shl nuw nsw i32 %7, 7
  br label %18

18:                                               ; preds = %18, %15
  %19 = phi i32 [ -126, %15 ], [ %22, %18 ]
  %20 = phi i32 [ %17, %15 ], [ %21, %18 ]
  %21 = shl nuw nsw i32 %20, 1
  %22 = add i32 %19, -1
  %23 = icmp ult i32 %20, 536870912
  br i1 %23, label %18, label %24

24:                                               ; preds = %18
  store i32 %22, ptr %16, align 4
  %25 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %21, ptr %25, align 4
  br label %40

26:                                               ; preds = %2
  %27 = icmp eq i32 %7, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %26
  store i32 4, ptr %3, align 4
  br label %40

29:                                               ; preds = %26
  %30 = lshr i32 %6, 20
  %31 = and i32 %30, 1
  store i32 %31, ptr %3, align 4
  %32 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %7, ptr %32, align 4
  br label %40

33:                                               ; preds = %2
  %34 = and i32 %8, 255
  %35 = add nsw i32 %34, -127
  %36 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  store i32 3, ptr %3, align 4
  %37 = shl nuw nsw i32 %7, 7
  %38 = or disjoint i32 %37, 1073741824
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %14, %24, %28, %29, %33
  %41 = phi i32 [ undef, %14 ], [ %22, %24 ], [ undef, %28 ], [ undef, %29 ], [ %35, %33 ]
  %42 = phi i32 [ undef, %14 ], [ %21, %24 ], [ undef, %28 ], [ %7, %29 ], [ %38, %33 ]
  %43 = phi i32 [ 2, %14 ], [ 3, %24 ], [ 4, %28 ], [ %31, %29 ], [ 3, %33 ]
  %44 = bitcast float %1 to i32
  %45 = and i32 %44, 8388607
  %46 = lshr i32 %44, 23
  %47 = lshr i32 %44, 31
  %48 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 1
  store i32 %47, ptr %48, align 4
  %49 = trunc i32 %46 to i8
  switch i8 %49, label %71 [
    i8 0, label %50
    i8 -1, label %64
  ]

50:                                               ; preds = %40
  %51 = icmp eq i32 %45, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %50
  store i32 2, ptr %4, align 4
  br label %78

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 -126, ptr %54, align 4
  store i32 3, ptr %4, align 4
  %55 = shl nuw nsw i32 %45, 7
  br label %56

56:                                               ; preds = %56, %53
  %57 = phi i32 [ -126, %53 ], [ %60, %56 ]
  %58 = phi i32 [ %55, %53 ], [ %59, %56 ]
  %59 = shl nuw nsw i32 %58, 1
  %60 = add i32 %57, -1
  %61 = icmp ult i32 %58, 536870912
  br i1 %61, label %56, label %62

62:                                               ; preds = %56
  store i32 %60, ptr %54, align 4
  %63 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %59, ptr %63, align 4
  br label %78

64:                                               ; preds = %40
  %65 = icmp eq i32 %45, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  store i32 4, ptr %4, align 4
  br label %78

67:                                               ; preds = %64
  %68 = lshr i32 %44, 20
  %69 = and i32 %68, 1
  store i32 %69, ptr %4, align 4
  %70 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %45, ptr %70, align 4
  br label %78

71:                                               ; preds = %40
  %72 = and i32 %46, 255
  %73 = add nsw i32 %72, -127
  %74 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 %73, ptr %74, align 4
  store i32 3, ptr %4, align 4
  %75 = shl nuw nsw i32 %45, 7
  %76 = or disjoint i32 %75, 1073741824
  %77 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i32 %76, ptr %77, align 4
  br label %78

78:                                               ; preds = %52, %62, %66, %67, %71
  %79 = phi i32 [ undef, %52 ], [ %60, %62 ], [ undef, %66 ], [ undef, %67 ], [ %73, %71 ]
  %80 = phi i32 [ undef, %52 ], [ %59, %62 ], [ undef, %66 ], [ %45, %67 ], [ %76, %71 ]
  %81 = phi i32 [ 2, %52 ], [ 3, %62 ], [ 4, %66 ], [ %69, %67 ], [ 3, %71 ]
  %82 = icmp ugt i32 %43, 1
  br i1 %82, label %83, label %149

83:                                               ; preds = %78
  %84 = icmp ugt i32 %81, 1
  br i1 %84, label %85, label %149

85:                                               ; preds = %83
  %86 = icmp eq i32 %43, 4
  br i1 %86, label %87, label %89

87:                                               ; preds = %85
  %88 = icmp eq i32 %81, 2
  br i1 %88, label %154, label %149

89:                                               ; preds = %85
  %90 = icmp eq i32 %81, 4
  %91 = icmp eq i32 %43, 2
  br i1 %90, label %92, label %93

92:                                               ; preds = %89
  br i1 %91, label %154, label %149

93:                                               ; preds = %89
  br i1 %91, label %149, label %94

94:                                               ; preds = %93
  %95 = icmp eq i32 %81, 2
  br i1 %95, label %149, label %96

96:                                               ; preds = %94
  %97 = zext i32 %42 to i64
  %98 = zext i32 %80 to i64
  %99 = mul nuw i64 %98, %97
  %100 = lshr i64 %99, 32
  %101 = trunc i64 %100 to i32
  %102 = trunc i64 %99 to i32
  %103 = add i32 %79, %41
  %104 = getelementptr inbounds %struct.fp_number_type, ptr %5, i32 0, i32 2
  store i32 %103, ptr %104, align 4
  %105 = icmp ne i32 %9, %47
  %106 = zext i1 %105 to i32
  %107 = getelementptr inbounds %struct.fp_number_type, ptr %5, i32 0, i32 1
  store i32 %106, ptr %107, align 4
  %108 = add i32 %103, 2
  %109 = icmp slt i64 %99, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %96
  %111 = add i32 %103, 3
  %112 = lshr i32 %101, 1
  %113 = and i32 %101, 1
  %114 = icmp eq i32 %113, 0
  %115 = lshr i32 %102, 1
  %116 = or disjoint i32 %115, -2147483648
  %117 = select i1 %114, i32 %102, i32 %116
  br label %118

118:                                              ; preds = %110, %96
  %119 = phi i32 [ %111, %110 ], [ %108, %96 ]
  %120 = phi i32 [ %117, %110 ], [ %102, %96 ]
  %121 = phi i32 [ %112, %110 ], [ %101, %96 ]
  store i32 %119, ptr %104, align 4
  %122 = icmp ult i32 %121, 1073741824
  br i1 %122, label %123, label %132

123:                                              ; preds = %118, %123
  %124 = phi i32 [ %127, %123 ], [ %119, %118 ]
  %125 = phi i32 [ %128, %123 ], [ %121, %118 ]
  %126 = phi i32 [ %129, %123 ], [ %120, %118 ]
  %127 = add i32 %124, -1
  %128 = tail call i32 @llvm.fshl.i32(i32 %125, i32 %126, i32 1)
  %129 = shl i32 %126, 1
  %130 = icmp ult i32 %128, 1073741824
  br i1 %130, label %123, label %131

131:                                              ; preds = %123
  store i32 %127, ptr %104, align 4
  br label %132

132:                                              ; preds = %131, %118
  %133 = phi i32 [ %129, %131 ], [ %120, %118 ]
  %134 = phi i32 [ %128, %131 ], [ %121, %118 ]
  %135 = and i32 %134, 127
  %136 = icmp eq i32 %135, 64
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = and i32 %134, 128
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %137
  %141 = add i32 %134, 64
  br label %146

142:                                              ; preds = %137
  %143 = icmp eq i32 %133, 0
  %144 = add nuw nsw i32 %134, 64
  %145 = select i1 %143, i32 %134, i32 %144
  br label %146

146:                                              ; preds = %142, %140, %132
  %147 = phi i32 [ %141, %140 ], [ %134, %132 ], [ %145, %142 ]
  %148 = getelementptr inbounds %struct.fp_number_type, ptr %5, i32 0, i32 3
  store i32 %147, ptr %148, align 4
  store i32 3, ptr %5, align 4
  br label %166

149:                                              ; preds = %94, %93, %92, %87, %83, %78
  %150 = phi ptr [ %10, %78 ], [ %48, %83 ], [ %10, %87 ], [ %48, %92 ], [ %10, %93 ], [ %48, %94 ]
  %151 = phi ptr [ %3, %78 ], [ %4, %83 ], [ %3, %87 ], [ %4, %92 ], [ %3, %93 ], [ %4, %94 ]
  %152 = icmp ne i32 %9, %47
  %153 = zext i1 %152 to i32
  store i32 %153, ptr %150, align 4
  br label %154

154:                                              ; preds = %149, %87, %92
  %155 = phi ptr [ @gRuntimeFloatNaNParts, %92 ], [ @gRuntimeFloatNaNParts, %87 ], [ %151, %149 ]
  %156 = load i32, ptr %155, align 4
  %157 = getelementptr inbounds %struct.fp_number_type, ptr %155, i32 0, i32 3
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr inbounds %struct.fp_number_type, ptr %155, i32 0, i32 1
  %160 = load i32, ptr %159, align 4
  %161 = icmp ugt i32 %156, 1
  br i1 %161, label %164, label %162

162:                                              ; preds = %154
  %163 = or i32 %158, 1048576
  br label %200

164:                                              ; preds = %154
  %165 = icmp eq i32 %156, 4
  br i1 %165, label %200, label %166

166:                                              ; preds = %146, %164
  %167 = phi i32 [ 3, %146 ], [ %156, %164 ]
  %168 = phi ptr [ %5, %146 ], [ %155, %164 ]
  %169 = phi i32 [ %147, %146 ], [ %158, %164 ]
  %170 = phi i32 [ %106, %146 ], [ %160, %164 ]
  %171 = icmp eq i32 %167, 2
  %172 = icmp eq i32 %169, 0
  %173 = select i1 %171, i1 true, i1 %172
  br i1 %173, label %200, label %174

174:                                              ; preds = %166
  %175 = getelementptr inbounds %struct.fp_number_type, ptr %168, i32 0, i32 2
  %176 = load i32, ptr %175, align 4
  %177 = icmp slt i32 %176, -126
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = icmp ult i32 %176, -151
  %180 = sub nuw nsw i32 -126, %176
  %181 = lshr i32 %169, %180
  %182 = lshr i32 %181, 7
  %183 = select i1 %179, i32 0, i32 %182
  br label %200

184:                                              ; preds = %174
  %185 = icmp sgt i32 %176, 127
  br i1 %185, label %200, label %186

186:                                              ; preds = %184
  %187 = and i32 %169, 127
  %188 = icmp eq i32 %187, 64
  %189 = lshr exact i32 %169, 1
  %190 = and i32 %189, 64
  %191 = select i1 %188, i32 %190, i32 63
  %192 = add i32 %191, %169
  %193 = icmp slt i32 %192, 0
  %194 = lshr i32 %192, 31
  %195 = lshr i32 %192, %194
  %196 = select i1 %193, i32 128, i32 127
  %197 = add nsw i32 %176, %196
  %198 = lshr i32 %195, 7
  %199 = shl nuw nsw i32 %197, 23
  br label %200

200:                                              ; preds = %162, %164, %166, %178, %184, %186
  %201 = phi i32 [ %160, %162 ], [ %170, %178 ], [ %170, %186 ], [ %160, %164 ], [ %170, %166 ], [ %170, %184 ]
  %202 = phi i32 [ %163, %162 ], [ %183, %178 ], [ %198, %186 ], [ 0, %164 ], [ 0, %166 ], [ 0, %184 ]
  %203 = phi i32 [ 2139095040, %162 ], [ 0, %178 ], [ %199, %186 ], [ 2139095040, %164 ], [ 0, %166 ], [ 2139095040, %184 ]
  %204 = and i32 %202, 8388607
  %205 = or disjoint i32 %204, %203
  %206 = shl i32 %201, 31
  %207 = or disjoint i32 %205, %206
  %208 = bitcast i32 %207 to float
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret float %208
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc float @__divsf3(float noundef %0, float noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fp_number_type, align 4
  %4 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  %6 = bitcast float %0 to i32
  %7 = and i32 %6, 8388607
  %8 = lshr i32 %6, 23
  %9 = lshr i32 %6, 31
  store i32 %9, ptr %4, align 4
  %10 = trunc i32 %8 to i8
  switch i8 %10, label %30 [
    i8 0, label %11
    i8 -1, label %24
  ]

11:                                               ; preds = %2
  %12 = icmp eq i32 %7, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %11
  store i32 2, ptr %3, align 4
  br label %36

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 -126, ptr %15, align 4
  store i32 3, ptr %3, align 4
  %16 = shl nuw nsw i32 %7, 7
  br label %17

17:                                               ; preds = %17, %14
  %18 = phi i32 [ -126, %14 ], [ %21, %17 ]
  %19 = phi i32 [ %16, %14 ], [ %20, %17 ]
  %20 = shl nuw nsw i32 %19, 1
  %21 = add i32 %18, -1
  %22 = icmp ult i32 %19, 536870912
  br i1 %22, label %17, label %23

23:                                               ; preds = %17
  store i32 %21, ptr %15, align 4
  store i32 %20, ptr %5, align 4
  br label %36

24:                                               ; preds = %2
  %25 = icmp eq i32 %7, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store i32 4, ptr %3, align 4
  br label %36

27:                                               ; preds = %24
  %28 = lshr i32 %6, 20
  %29 = and i32 %28, 1
  store i32 %29, ptr %3, align 4
  store i32 %7, ptr %5, align 4
  br label %36

30:                                               ; preds = %2
  %31 = and i32 %8, 255
  %32 = add nsw i32 %31, -127
  %33 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  store i32 3, ptr %3, align 4
  %34 = shl nuw nsw i32 %7, 7
  %35 = or disjoint i32 %34, 1073741824
  store i32 %35, ptr %5, align 4
  br label %36

36:                                               ; preds = %13, %23, %26, %27, %30
  %37 = phi i32 [ undef, %13 ], [ %21, %23 ], [ undef, %26 ], [ undef, %27 ], [ %32, %30 ]
  %38 = phi i32 [ undef, %13 ], [ %20, %23 ], [ undef, %26 ], [ %7, %27 ], [ %35, %30 ]
  %39 = phi i32 [ 2, %13 ], [ 3, %23 ], [ 4, %26 ], [ %29, %27 ], [ 3, %30 ]
  %40 = bitcast float %1 to i32
  %41 = and i32 %40, 8388607
  %42 = lshr i32 %40, 23
  %43 = lshr i32 %40, 31
  %44 = trunc i32 %42 to i8
  switch i8 %44, label %60 [
    i8 0, label %45
    i8 -1, label %55
  ]

45:                                               ; preds = %36
  %46 = icmp eq i32 %41, 0
  br i1 %46, label %65, label %47

47:                                               ; preds = %45
  %48 = shl nuw nsw i32 %41, 7
  br label %49

49:                                               ; preds = %49, %47
  %50 = phi i32 [ -126, %47 ], [ %53, %49 ]
  %51 = phi i32 [ %48, %47 ], [ %52, %49 ]
  %52 = shl nuw nsw i32 %51, 1
  %53 = add i32 %50, -1
  %54 = icmp ult i32 %51, 536870912
  br i1 %54, label %49, label %65

55:                                               ; preds = %36
  %56 = icmp eq i32 %41, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %55
  %58 = lshr i32 %40, 20
  %59 = and i32 %58, 1
  br label %65

60:                                               ; preds = %36
  %61 = and i32 %42, 255
  %62 = add nsw i32 %61, -127
  %63 = shl nuw nsw i32 %41, 7
  %64 = or disjoint i32 %63, 1073741824
  br label %65

65:                                               ; preds = %49, %55, %45, %57, %60
  %66 = phi i32 [ %64, %60 ], [ %41, %57 ], [ undef, %45 ], [ undef, %55 ], [ %52, %49 ]
  %67 = phi i32 [ %62, %60 ], [ undef, %57 ], [ undef, %45 ], [ undef, %55 ], [ %53, %49 ]
  %68 = phi i32 [ 3, %60 ], [ %59, %57 ], [ 2, %45 ], [ 4, %55 ], [ 3, %49 ]
  %69 = icmp ugt i32 %39, 1
  br i1 %69, label %70, label %128

70:                                               ; preds = %65
  %71 = icmp ugt i32 %68, 1
  br i1 %71, label %72, label %128

72:                                               ; preds = %70
  %73 = xor i32 %43, %9
  store i32 %73, ptr %4, align 4
  switch i32 %39, label %84 [
    i32 4, label %74
    i32 2, label %74
  ]

74:                                               ; preds = %72, %72
  %75 = icmp eq i32 %39, %68
  %76 = select i1 %75, ptr @gRuntimeFloatNaNParts, ptr %3
  %77 = load i32, ptr %76, align 4
  %78 = load i32, ptr getelementptr inbounds (%struct.fp_number_type, ptr @gRuntimeFloatNaNParts, i32 0, i32 3), align 4
  %79 = load i32, ptr %5, align 4
  %80 = select i1 %75, i32 %78, i32 %79
  %81 = load i32, ptr getelementptr inbounds (%struct.fp_number_type, ptr @gRuntimeFloatNaNParts, i32 0, i32 1), align 4
  %82 = load i32, ptr %4, align 4
  %83 = select i1 %75, i32 %81, i32 %82
  br label %122

84:                                               ; preds = %72
  switch i32 %68, label %88 [
    i32 4, label %85
    i32 2, label %87
  ]

85:                                               ; preds = %84
  store i32 0, ptr %5, align 4
  %86 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 0, ptr %86, align 4
  br label %132

87:                                               ; preds = %84
  store i32 4, ptr %3, align 4
  br label %168

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  %90 = sub i32 %37, %67
  %91 = icmp ult i32 %38, %66
  %92 = sext i1 %91 to i32
  %93 = add i32 %90, %92
  %94 = zext i1 %91 to i32
  %95 = shl i32 %38, %94
  store i32 %93, ptr %89, align 4
  br label %96

96:                                               ; preds = %96, %88
  %97 = phi i32 [ 0, %88 ], [ %104, %96 ]
  %98 = phi i32 [ %95, %88 ], [ %106, %96 ]
  %99 = phi i32 [ 1073741824, %88 ], [ %105, %96 ]
  %100 = icmp ult i32 %98, %66
  %101 = select i1 %100, i32 0, i32 %66
  %102 = sub i32 %98, %101
  %103 = select i1 %100, i32 0, i32 %99
  %104 = or i32 %103, %97
  %105 = lshr i32 %99, 1
  %106 = shl i32 %102, 1
  %107 = icmp ult i32 %99, 2
  br i1 %107, label %108, label %96

108:                                              ; preds = %96
  %109 = and i32 %104, 127
  %110 = icmp eq i32 %109, 64
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = and i32 %97, 128
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %111
  %115 = add i32 %104, 64
  br label %120

116:                                              ; preds = %111
  %117 = icmp eq i32 %106, 0
  %118 = add nuw nsw i32 %104, 64
  %119 = select i1 %117, i32 %104, i32 %118
  br label %120

120:                                              ; preds = %116, %114, %108
  %121 = phi i32 [ %115, %114 ], [ %104, %108 ], [ %119, %116 ]
  store i32 %121, ptr %5, align 4
  br label %122

122:                                              ; preds = %74, %120
  %123 = phi i32 [ %83, %74 ], [ %73, %120 ]
  %124 = phi i32 [ %80, %74 ], [ %121, %120 ]
  %125 = phi i32 [ %77, %74 ], [ %39, %120 ]
  %126 = phi ptr [ %76, %74 ], [ %3, %120 ]
  %127 = icmp ugt i32 %125, 1
  br i1 %127, label %132, label %128

128:                                              ; preds = %70, %65, %122
  %129 = phi i32 [ %123, %122 ], [ %43, %70 ], [ %9, %65 ]
  %130 = phi i32 [ %124, %122 ], [ %66, %70 ], [ %38, %65 ]
  %131 = or i32 %130, 1048576
  br label %168

132:                                              ; preds = %85, %122
  %133 = phi ptr [ %3, %85 ], [ %126, %122 ]
  %134 = phi i32 [ %39, %85 ], [ %125, %122 ]
  %135 = phi i32 [ 0, %85 ], [ %124, %122 ]
  %136 = phi i32 [ %73, %85 ], [ %123, %122 ]
  %137 = icmp eq i32 %134, 4
  br i1 %137, label %168, label %138

138:                                              ; preds = %132
  %139 = icmp eq i32 %134, 2
  %140 = icmp eq i32 %135, 0
  %141 = select i1 %139, i1 true, i1 %140
  br i1 %141, label %168, label %142

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.fp_number_type, ptr %133, i32 0, i32 2
  %144 = load i32, ptr %143, align 4
  %145 = icmp slt i32 %144, -126
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = icmp ult i32 %144, -151
  %148 = sub nuw nsw i32 -126, %144
  %149 = lshr i32 %135, %148
  %150 = lshr i32 %149, 7
  %151 = select i1 %147, i32 0, i32 %150
  br label %168

152:                                              ; preds = %142
  %153 = icmp sgt i32 %144, 127
  br i1 %153, label %168, label %154

154:                                              ; preds = %152
  %155 = and i32 %135, 127
  %156 = icmp eq i32 %155, 64
  %157 = lshr exact i32 %135, 1
  %158 = and i32 %157, 64
  %159 = select i1 %156, i32 %158, i32 63
  %160 = add i32 %159, %135
  %161 = icmp slt i32 %160, 0
  %162 = lshr i32 %160, 31
  %163 = lshr i32 %160, %162
  %164 = select i1 %161, i32 128, i32 127
  %165 = add nsw i32 %144, %164
  %166 = lshr i32 %163, 7
  %167 = shl nuw nsw i32 %165, 23
  br label %168

168:                                              ; preds = %87, %128, %132, %138, %146, %152, %154
  %169 = phi i32 [ %129, %128 ], [ %136, %146 ], [ %136, %154 ], [ %136, %132 ], [ %136, %138 ], [ %136, %152 ], [ %73, %87 ]
  %170 = phi i32 [ %131, %128 ], [ %151, %146 ], [ %166, %154 ], [ 0, %132 ], [ 0, %138 ], [ 0, %152 ], [ 0, %87 ]
  %171 = phi i32 [ 2139095040, %128 ], [ 0, %146 ], [ %167, %154 ], [ 2139095040, %132 ], [ 0, %138 ], [ 2139095040, %152 ], [ 2139095040, %87 ]
  %172 = and i32 %170, 8388607
  %173 = or disjoint i32 %172, %171
  %174 = shl i32 %169, 31
  %175 = or disjoint i32 %173, %174
  %176 = bitcast i32 %175 to float
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret float %176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local arm_apcscc i32 @__fpcmp_parts_f(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i32, ptr %0, align 4
  %4 = icmp ugt i32 %3, 1
  br i1 %4, label %5, label %79

5:                                                ; preds = %2
  %6 = load i32, ptr %1, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %8, label %79

8:                                                ; preds = %5
  %9 = icmp eq i32 %3, 4
  %10 = icmp eq i32 %6, 4
  br i1 %9, label %11, label %23

11:                                               ; preds = %8
  br i1 %10, label %12, label %18

12:                                               ; preds = %11
  %13 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  br label %79

18:                                               ; preds = %11
  %19 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  %22 = select i1 %21, i32 1, i32 -1
  br label %79

23:                                               ; preds = %8
  br i1 %10, label %24, label %29

24:                                               ; preds = %23
  %25 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  %28 = select i1 %27, i32 -1, i32 1
  br label %79

29:                                               ; preds = %23
  %30 = icmp eq i32 %3, 2
  %31 = icmp eq i32 %6, 2
  br i1 %30, label %32, label %38

32:                                               ; preds = %29
  br i1 %31, label %79, label %33

33:                                               ; preds = %32
  %34 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 -1, i32 1
  br label %79

38:                                               ; preds = %29
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  br i1 %31, label %41, label %44

41:                                               ; preds = %38
  %42 = icmp eq i32 %40, 0
  %43 = select i1 %42, i32 1, i32 -1
  br label %79

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %40, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %44
  %49 = icmp eq i32 %40, 0
  %50 = select i1 %49, i32 1, i32 -1
  br label %79

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 2
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = icmp eq i32 %40, 0
  %59 = select i1 %58, i32 1, i32 -1
  br label %79

60:                                               ; preds = %51
  %61 = icmp slt i32 %53, %55
  br i1 %61, label %62, label %65

62:                                               ; preds = %60
  %63 = icmp eq i32 %40, 0
  %64 = select i1 %63, i32 -1, i32 1
  br label %79

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 3
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp ugt i32 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = icmp eq i32 %40, 0
  %73 = select i1 %72, i32 1, i32 -1
  br label %79

74:                                               ; preds = %65
  %75 = icmp ult i32 %67, %69
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = icmp eq i32 %40, 0
  %78 = select i1 %77, i32 -1, i32 1
  br label %79

79:                                               ; preds = %74, %32, %2, %5, %76, %71, %62, %57, %48, %41, %33, %24, %18, %12
  %80 = phi i32 [ %17, %12 ], [ %22, %18 ], [ %28, %24 ], [ %37, %33 ], [ %43, %41 ], [ %50, %48 ], [ %59, %57 ], [ %64, %62 ], [ %73, %71 ], [ %78, %76 ], [ 1, %5 ], [ 1, %2 ], [ 0, %32 ], [ 0, %74 ]
  ret i32 %80
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__cmpsf2(float noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 8388607
  %5 = lshr i32 %3, 23
  %6 = lshr i32 %3, 31
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %23 [
    i8 0, label %8
    i8 -1, label %18
  ]

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = shl nuw nsw i32 %4, 7
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ -126, %10 ], [ %16, %12 ]
  %14 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %15 = shl nuw nsw i32 %14, 1
  %16 = add i32 %13, -1
  %17 = icmp ult i32 %14, 536870912
  br i1 %17, label %12, label %28

18:                                               ; preds = %2
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = lshr i32 %3, 20
  %22 = and i32 %21, 1
  br label %28

23:                                               ; preds = %2
  %24 = and i32 %5, 255
  %25 = add nsw i32 %24, -127
  %26 = shl nuw nsw i32 %4, 7
  %27 = or disjoint i32 %26, 1073741824
  br label %28

28:                                               ; preds = %12, %18, %8, %20, %23
  %29 = phi i32 [ %25, %23 ], [ undef, %20 ], [ undef, %8 ], [ undef, %18 ], [ %16, %12 ]
  %30 = phi i32 [ 3, %23 ], [ %22, %20 ], [ 2, %8 ], [ 4, %18 ], [ 3, %12 ]
  %31 = phi i32 [ %27, %23 ], [ %4, %20 ], [ undef, %8 ], [ undef, %18 ], [ %15, %12 ]
  %32 = bitcast float %1 to i32
  %33 = and i32 %32, 8388607
  %34 = lshr i32 %32, 23
  %35 = lshr i32 %32, 31
  %36 = trunc i32 %34 to i8
  switch i8 %36, label %49 [
    i8 0, label %37
    i8 -1, label %47
  ]

37:                                               ; preds = %28
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %33, 7
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ -126, %39 ], [ %45, %41 ]
  %43 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %44 = shl nuw nsw i32 %43, 1
  %45 = add i32 %42, -1
  %46 = icmp ult i32 %43, 536870912
  br i1 %46, label %41, label %54

47:                                               ; preds = %28
  %48 = icmp eq i32 %33, 0
  br i1 %48, label %54, label %107

49:                                               ; preds = %28
  %50 = and i32 %34, 255
  %51 = add nsw i32 %50, -127
  %52 = shl nuw nsw i32 %33, 7
  %53 = or disjoint i32 %52, 1073741824
  br label %54

54:                                               ; preds = %41, %47, %37, %49
  %55 = phi i32 [ %53, %49 ], [ undef, %37 ], [ undef, %47 ], [ %44, %41 ]
  %56 = phi i32 [ %51, %49 ], [ undef, %37 ], [ undef, %47 ], [ %45, %41 ]
  %57 = phi i1 [ false, %49 ], [ false, %37 ], [ true, %47 ], [ false, %41 ]
  %58 = phi i1 [ false, %49 ], [ true, %37 ], [ false, %47 ], [ false, %41 ]
  %59 = icmp ugt i32 %30, 1
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = icmp eq i32 %30, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  br i1 %57, label %63, label %65

63:                                               ; preds = %62
  %64 = sub nsw i32 %35, %6
  br label %107

65:                                               ; preds = %62
  %66 = icmp sgt i32 %3, -1
  %67 = select i1 %66, i32 1, i32 -1
  br label %107

68:                                               ; preds = %60
  br i1 %57, label %69, label %72

69:                                               ; preds = %68
  %70 = icmp sgt i32 %32, -1
  %71 = select i1 %70, i32 -1, i32 1
  br label %107

72:                                               ; preds = %68
  %73 = icmp eq i32 %30, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br i1 %58, label %107, label %75

75:                                               ; preds = %74
  %76 = icmp sgt i32 %32, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %107

78:                                               ; preds = %72
  br i1 %58, label %79, label %82

79:                                               ; preds = %78
  %80 = icmp sgt i32 %3, -1
  %81 = select i1 %80, i32 1, i32 -1
  br label %107

82:                                               ; preds = %78
  %83 = icmp eq i32 %6, %35
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = icmp sgt i32 %3, -1
  %86 = select i1 %85, i32 1, i32 -1
  br label %107

87:                                               ; preds = %82
  %88 = icmp sgt i32 %29, %56
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = icmp sgt i32 %3, -1
  %91 = select i1 %90, i32 1, i32 -1
  br label %107

92:                                               ; preds = %87
  %93 = icmp slt i32 %29, %56
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = icmp sgt i32 %3, -1
  %96 = select i1 %95, i32 -1, i32 1
  br label %107

97:                                               ; preds = %92
  %98 = icmp ugt i32 %31, %55
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp sgt i32 %3, -1
  %101 = select i1 %100, i32 1, i32 -1
  br label %107

102:                                              ; preds = %97
  %103 = icmp ult i32 %31, %55
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = icmp sgt i32 %3, -1
  %106 = select i1 %105, i32 -1, i32 1
  br label %107

107:                                              ; preds = %47, %54, %63, %65, %69, %74, %75, %79, %84, %89, %94, %99, %102, %104
  %108 = phi i32 [ %64, %63 ], [ %67, %65 ], [ %71, %69 ], [ %77, %75 ], [ %81, %79 ], [ %86, %84 ], [ %91, %89 ], [ %96, %94 ], [ %101, %99 ], [ %106, %104 ], [ 1, %54 ], [ 0, %74 ], [ 0, %102 ], [ 1, %47 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__eqsf2(float noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 8388607
  %5 = lshr i32 %3, 23
  %6 = lshr i32 %3, 31
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %23 [
    i8 0, label %8
    i8 -1, label %18
  ]

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = shl nuw nsw i32 %4, 7
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ -126, %10 ], [ %16, %12 ]
  %14 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %15 = shl nuw nsw i32 %14, 1
  %16 = add i32 %13, -1
  %17 = icmp ult i32 %14, 536870912
  br i1 %17, label %12, label %28

18:                                               ; preds = %2
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = lshr i32 %3, 20
  %22 = and i32 %21, 1
  br label %28

23:                                               ; preds = %2
  %24 = and i32 %5, 255
  %25 = add nsw i32 %24, -127
  %26 = shl nuw nsw i32 %4, 7
  %27 = or disjoint i32 %26, 1073741824
  br label %28

28:                                               ; preds = %12, %18, %8, %20, %23
  %29 = phi i32 [ %25, %23 ], [ undef, %20 ], [ undef, %8 ], [ undef, %18 ], [ %16, %12 ]
  %30 = phi i32 [ 3, %23 ], [ %22, %20 ], [ 2, %8 ], [ 4, %18 ], [ 3, %12 ]
  %31 = phi i32 [ %27, %23 ], [ %4, %20 ], [ undef, %8 ], [ undef, %18 ], [ %15, %12 ]
  %32 = bitcast float %1 to i32
  %33 = and i32 %32, 8388607
  %34 = lshr i32 %32, 23
  %35 = lshr i32 %32, 31
  %36 = trunc i32 %34 to i8
  switch i8 %36, label %49 [
    i8 0, label %37
    i8 -1, label %47
  ]

37:                                               ; preds = %28
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %33, 7
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ -126, %39 ], [ %45, %41 ]
  %43 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %44 = shl nuw nsw i32 %43, 1
  %45 = add i32 %42, -1
  %46 = icmp ult i32 %43, 536870912
  br i1 %46, label %41, label %54

47:                                               ; preds = %28
  %48 = icmp eq i32 %33, 0
  br i1 %48, label %54, label %107

49:                                               ; preds = %28
  %50 = and i32 %34, 255
  %51 = add nsw i32 %50, -127
  %52 = shl nuw nsw i32 %33, 7
  %53 = or disjoint i32 %52, 1073741824
  br label %54

54:                                               ; preds = %41, %47, %37, %49
  %55 = phi i32 [ %53, %49 ], [ undef, %37 ], [ undef, %47 ], [ %44, %41 ]
  %56 = phi i32 [ %51, %49 ], [ undef, %37 ], [ undef, %47 ], [ %45, %41 ]
  %57 = phi i1 [ false, %49 ], [ false, %37 ], [ true, %47 ], [ false, %41 ]
  %58 = phi i1 [ false, %49 ], [ true, %37 ], [ false, %47 ], [ false, %41 ]
  %59 = icmp ugt i32 %30, 1
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = icmp eq i32 %30, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  br i1 %57, label %63, label %65

63:                                               ; preds = %62
  %64 = sub nsw i32 %35, %6
  br label %107

65:                                               ; preds = %62
  %66 = icmp sgt i32 %3, -1
  %67 = select i1 %66, i32 1, i32 -1
  br label %107

68:                                               ; preds = %60
  br i1 %57, label %69, label %72

69:                                               ; preds = %68
  %70 = icmp sgt i32 %32, -1
  %71 = select i1 %70, i32 -1, i32 1
  br label %107

72:                                               ; preds = %68
  %73 = icmp eq i32 %30, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br i1 %58, label %107, label %75

75:                                               ; preds = %74
  %76 = icmp sgt i32 %32, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %107

78:                                               ; preds = %72
  br i1 %58, label %79, label %82

79:                                               ; preds = %78
  %80 = icmp sgt i32 %3, -1
  %81 = select i1 %80, i32 1, i32 -1
  br label %107

82:                                               ; preds = %78
  %83 = icmp eq i32 %6, %35
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = icmp sgt i32 %3, -1
  %86 = select i1 %85, i32 1, i32 -1
  br label %107

87:                                               ; preds = %82
  %88 = icmp sgt i32 %29, %56
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = icmp sgt i32 %3, -1
  %91 = select i1 %90, i32 1, i32 -1
  br label %107

92:                                               ; preds = %87
  %93 = icmp slt i32 %29, %56
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = icmp sgt i32 %3, -1
  %96 = select i1 %95, i32 -1, i32 1
  br label %107

97:                                               ; preds = %92
  %98 = icmp ugt i32 %31, %55
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp sgt i32 %3, -1
  %101 = select i1 %100, i32 1, i32 -1
  br label %107

102:                                              ; preds = %97
  %103 = icmp ult i32 %31, %55
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = icmp sgt i32 %3, -1
  %106 = select i1 %105, i32 -1, i32 1
  br label %107

107:                                              ; preds = %47, %104, %102, %99, %94, %89, %84, %79, %75, %74, %69, %65, %63, %54
  %108 = phi i32 [ 1, %54 ], [ %64, %63 ], [ %67, %65 ], [ %71, %69 ], [ %77, %75 ], [ %81, %79 ], [ %86, %84 ], [ %91, %89 ], [ %96, %94 ], [ %101, %99 ], [ %106, %104 ], [ 0, %74 ], [ 0, %102 ], [ 1, %47 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__nesf2(float noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 8388607
  %5 = lshr i32 %3, 23
  %6 = lshr i32 %3, 31
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %23 [
    i8 0, label %8
    i8 -1, label %18
  ]

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = shl nuw nsw i32 %4, 7
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ -126, %10 ], [ %16, %12 ]
  %14 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %15 = shl nuw nsw i32 %14, 1
  %16 = add i32 %13, -1
  %17 = icmp ult i32 %14, 536870912
  br i1 %17, label %12, label %28

18:                                               ; preds = %2
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = lshr i32 %3, 20
  %22 = and i32 %21, 1
  br label %28

23:                                               ; preds = %2
  %24 = and i32 %5, 255
  %25 = add nsw i32 %24, -127
  %26 = shl nuw nsw i32 %4, 7
  %27 = or disjoint i32 %26, 1073741824
  br label %28

28:                                               ; preds = %12, %18, %8, %20, %23
  %29 = phi i32 [ %25, %23 ], [ undef, %20 ], [ undef, %8 ], [ undef, %18 ], [ %16, %12 ]
  %30 = phi i32 [ 3, %23 ], [ %22, %20 ], [ 2, %8 ], [ 4, %18 ], [ 3, %12 ]
  %31 = phi i32 [ %27, %23 ], [ %4, %20 ], [ undef, %8 ], [ undef, %18 ], [ %15, %12 ]
  %32 = bitcast float %1 to i32
  %33 = and i32 %32, 8388607
  %34 = lshr i32 %32, 23
  %35 = lshr i32 %32, 31
  %36 = trunc i32 %34 to i8
  switch i8 %36, label %49 [
    i8 0, label %37
    i8 -1, label %47
  ]

37:                                               ; preds = %28
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %33, 7
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ -126, %39 ], [ %45, %41 ]
  %43 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %44 = shl nuw nsw i32 %43, 1
  %45 = add i32 %42, -1
  %46 = icmp ult i32 %43, 536870912
  br i1 %46, label %41, label %54

47:                                               ; preds = %28
  %48 = icmp eq i32 %33, 0
  br i1 %48, label %54, label %107

49:                                               ; preds = %28
  %50 = and i32 %34, 255
  %51 = add nsw i32 %50, -127
  %52 = shl nuw nsw i32 %33, 7
  %53 = or disjoint i32 %52, 1073741824
  br label %54

54:                                               ; preds = %41, %47, %37, %49
  %55 = phi i32 [ %53, %49 ], [ undef, %37 ], [ undef, %47 ], [ %44, %41 ]
  %56 = phi i32 [ %51, %49 ], [ undef, %37 ], [ undef, %47 ], [ %45, %41 ]
  %57 = phi i1 [ false, %49 ], [ false, %37 ], [ true, %47 ], [ false, %41 ]
  %58 = phi i1 [ false, %49 ], [ true, %37 ], [ false, %47 ], [ false, %41 ]
  %59 = icmp ugt i32 %30, 1
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = icmp eq i32 %30, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  br i1 %57, label %63, label %65

63:                                               ; preds = %62
  %64 = sub nsw i32 %35, %6
  br label %107

65:                                               ; preds = %62
  %66 = icmp sgt i32 %3, -1
  %67 = select i1 %66, i32 1, i32 -1
  br label %107

68:                                               ; preds = %60
  br i1 %57, label %69, label %72

69:                                               ; preds = %68
  %70 = icmp sgt i32 %32, -1
  %71 = select i1 %70, i32 -1, i32 1
  br label %107

72:                                               ; preds = %68
  %73 = icmp eq i32 %30, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br i1 %58, label %107, label %75

75:                                               ; preds = %74
  %76 = icmp sgt i32 %32, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %107

78:                                               ; preds = %72
  br i1 %58, label %79, label %82

79:                                               ; preds = %78
  %80 = icmp sgt i32 %3, -1
  %81 = select i1 %80, i32 1, i32 -1
  br label %107

82:                                               ; preds = %78
  %83 = icmp eq i32 %6, %35
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = icmp sgt i32 %3, -1
  %86 = select i1 %85, i32 1, i32 -1
  br label %107

87:                                               ; preds = %82
  %88 = icmp sgt i32 %29, %56
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = icmp sgt i32 %3, -1
  %91 = select i1 %90, i32 1, i32 -1
  br label %107

92:                                               ; preds = %87
  %93 = icmp slt i32 %29, %56
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = icmp sgt i32 %3, -1
  %96 = select i1 %95, i32 -1, i32 1
  br label %107

97:                                               ; preds = %92
  %98 = icmp ugt i32 %31, %55
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp sgt i32 %3, -1
  %101 = select i1 %100, i32 1, i32 -1
  br label %107

102:                                              ; preds = %97
  %103 = icmp ult i32 %31, %55
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = icmp sgt i32 %3, -1
  %106 = select i1 %105, i32 -1, i32 1
  br label %107

107:                                              ; preds = %47, %104, %102, %99, %94, %89, %84, %79, %75, %74, %69, %65, %63, %54
  %108 = phi i32 [ 1, %54 ], [ %64, %63 ], [ %67, %65 ], [ %71, %69 ], [ %77, %75 ], [ %81, %79 ], [ %86, %84 ], [ %91, %89 ], [ %96, %94 ], [ %101, %99 ], [ %106, %104 ], [ 0, %74 ], [ 0, %102 ], [ 1, %47 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__gtsf2(float noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 8388607
  %5 = lshr i32 %3, 23
  %6 = lshr i32 %3, 31
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %23 [
    i8 0, label %8
    i8 -1, label %18
  ]

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = shl nuw nsw i32 %4, 7
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ -126, %10 ], [ %16, %12 ]
  %14 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %15 = shl nuw nsw i32 %14, 1
  %16 = add i32 %13, -1
  %17 = icmp ult i32 %14, 536870912
  br i1 %17, label %12, label %28

18:                                               ; preds = %2
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = lshr i32 %3, 20
  %22 = and i32 %21, 1
  br label %28

23:                                               ; preds = %2
  %24 = and i32 %5, 255
  %25 = add nsw i32 %24, -127
  %26 = shl nuw nsw i32 %4, 7
  %27 = or disjoint i32 %26, 1073741824
  br label %28

28:                                               ; preds = %12, %18, %8, %20, %23
  %29 = phi i32 [ %25, %23 ], [ undef, %20 ], [ undef, %8 ], [ undef, %18 ], [ %16, %12 ]
  %30 = phi i32 [ 3, %23 ], [ %22, %20 ], [ 2, %8 ], [ 4, %18 ], [ 3, %12 ]
  %31 = phi i32 [ %27, %23 ], [ %4, %20 ], [ undef, %8 ], [ undef, %18 ], [ %15, %12 ]
  %32 = bitcast float %1 to i32
  %33 = and i32 %32, 8388607
  %34 = lshr i32 %32, 23
  %35 = lshr i32 %32, 31
  %36 = trunc i32 %34 to i8
  switch i8 %36, label %49 [
    i8 0, label %37
    i8 -1, label %47
  ]

37:                                               ; preds = %28
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %33, 7
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ -126, %39 ], [ %45, %41 ]
  %43 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %44 = shl nuw nsw i32 %43, 1
  %45 = add i32 %42, -1
  %46 = icmp ult i32 %43, 536870912
  br i1 %46, label %41, label %54

47:                                               ; preds = %28
  %48 = icmp eq i32 %33, 0
  br i1 %48, label %54, label %107

49:                                               ; preds = %28
  %50 = and i32 %34, 255
  %51 = add nsw i32 %50, -127
  %52 = shl nuw nsw i32 %33, 7
  %53 = or disjoint i32 %52, 1073741824
  br label %54

54:                                               ; preds = %41, %47, %37, %49
  %55 = phi i32 [ %53, %49 ], [ undef, %37 ], [ undef, %47 ], [ %44, %41 ]
  %56 = phi i32 [ %51, %49 ], [ undef, %37 ], [ undef, %47 ], [ %45, %41 ]
  %57 = phi i1 [ false, %49 ], [ false, %37 ], [ true, %47 ], [ false, %41 ]
  %58 = phi i1 [ false, %49 ], [ true, %37 ], [ false, %47 ], [ false, %41 ]
  %59 = icmp ugt i32 %30, 1
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = icmp eq i32 %30, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  br i1 %57, label %63, label %65

63:                                               ; preds = %62
  %64 = sub nsw i32 %35, %6
  br label %107

65:                                               ; preds = %62
  %66 = icmp sgt i32 %3, -1
  %67 = select i1 %66, i32 1, i32 -1
  br label %107

68:                                               ; preds = %60
  br i1 %57, label %69, label %72

69:                                               ; preds = %68
  %70 = icmp sgt i32 %32, -1
  %71 = select i1 %70, i32 -1, i32 1
  br label %107

72:                                               ; preds = %68
  %73 = icmp eq i32 %30, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br i1 %58, label %107, label %75

75:                                               ; preds = %74
  %76 = icmp sgt i32 %32, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %107

78:                                               ; preds = %72
  br i1 %58, label %79, label %82

79:                                               ; preds = %78
  %80 = icmp sgt i32 %3, -1
  %81 = select i1 %80, i32 1, i32 -1
  br label %107

82:                                               ; preds = %78
  %83 = icmp eq i32 %6, %35
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = icmp sgt i32 %3, -1
  %86 = select i1 %85, i32 1, i32 -1
  br label %107

87:                                               ; preds = %82
  %88 = icmp sgt i32 %29, %56
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = icmp sgt i32 %3, -1
  %91 = select i1 %90, i32 1, i32 -1
  br label %107

92:                                               ; preds = %87
  %93 = icmp slt i32 %29, %56
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = icmp sgt i32 %3, -1
  %96 = select i1 %95, i32 -1, i32 1
  br label %107

97:                                               ; preds = %92
  %98 = icmp ugt i32 %31, %55
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp sgt i32 %3, -1
  %101 = select i1 %100, i32 1, i32 -1
  br label %107

102:                                              ; preds = %97
  %103 = icmp ult i32 %31, %55
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = icmp sgt i32 %3, -1
  %106 = select i1 %105, i32 -1, i32 1
  br label %107

107:                                              ; preds = %47, %104, %102, %99, %94, %89, %84, %79, %75, %74, %69, %65, %63, %54
  %108 = phi i32 [ -1, %54 ], [ %64, %63 ], [ %67, %65 ], [ %71, %69 ], [ %77, %75 ], [ %81, %79 ], [ %86, %84 ], [ %91, %89 ], [ %96, %94 ], [ %101, %99 ], [ %106, %104 ], [ 0, %74 ], [ 0, %102 ], [ -1, %47 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__gesf2(float noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 8388607
  %5 = lshr i32 %3, 23
  %6 = lshr i32 %3, 31
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %23 [
    i8 0, label %8
    i8 -1, label %18
  ]

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = shl nuw nsw i32 %4, 7
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ -126, %10 ], [ %16, %12 ]
  %14 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %15 = shl nuw nsw i32 %14, 1
  %16 = add i32 %13, -1
  %17 = icmp ult i32 %14, 536870912
  br i1 %17, label %12, label %28

18:                                               ; preds = %2
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = lshr i32 %3, 20
  %22 = and i32 %21, 1
  br label %28

23:                                               ; preds = %2
  %24 = and i32 %5, 255
  %25 = add nsw i32 %24, -127
  %26 = shl nuw nsw i32 %4, 7
  %27 = or disjoint i32 %26, 1073741824
  br label %28

28:                                               ; preds = %12, %18, %8, %20, %23
  %29 = phi i32 [ %25, %23 ], [ undef, %20 ], [ undef, %8 ], [ undef, %18 ], [ %16, %12 ]
  %30 = phi i32 [ 3, %23 ], [ %22, %20 ], [ 2, %8 ], [ 4, %18 ], [ 3, %12 ]
  %31 = phi i32 [ %27, %23 ], [ %4, %20 ], [ undef, %8 ], [ undef, %18 ], [ %15, %12 ]
  %32 = bitcast float %1 to i32
  %33 = and i32 %32, 8388607
  %34 = lshr i32 %32, 23
  %35 = lshr i32 %32, 31
  %36 = trunc i32 %34 to i8
  switch i8 %36, label %49 [
    i8 0, label %37
    i8 -1, label %47
  ]

37:                                               ; preds = %28
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %33, 7
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ -126, %39 ], [ %45, %41 ]
  %43 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %44 = shl nuw nsw i32 %43, 1
  %45 = add i32 %42, -1
  %46 = icmp ult i32 %43, 536870912
  br i1 %46, label %41, label %54

47:                                               ; preds = %28
  %48 = icmp eq i32 %33, 0
  br i1 %48, label %54, label %107

49:                                               ; preds = %28
  %50 = and i32 %34, 255
  %51 = add nsw i32 %50, -127
  %52 = shl nuw nsw i32 %33, 7
  %53 = or disjoint i32 %52, 1073741824
  br label %54

54:                                               ; preds = %41, %47, %37, %49
  %55 = phi i32 [ %53, %49 ], [ undef, %37 ], [ undef, %47 ], [ %44, %41 ]
  %56 = phi i32 [ %51, %49 ], [ undef, %37 ], [ undef, %47 ], [ %45, %41 ]
  %57 = phi i1 [ false, %49 ], [ false, %37 ], [ true, %47 ], [ false, %41 ]
  %58 = phi i1 [ false, %49 ], [ true, %37 ], [ false, %47 ], [ false, %41 ]
  %59 = icmp ugt i32 %30, 1
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = icmp eq i32 %30, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  br i1 %57, label %63, label %65

63:                                               ; preds = %62
  %64 = sub nsw i32 %35, %6
  br label %107

65:                                               ; preds = %62
  %66 = icmp sgt i32 %3, -1
  %67 = select i1 %66, i32 1, i32 -1
  br label %107

68:                                               ; preds = %60
  br i1 %57, label %69, label %72

69:                                               ; preds = %68
  %70 = icmp sgt i32 %32, -1
  %71 = select i1 %70, i32 -1, i32 1
  br label %107

72:                                               ; preds = %68
  %73 = icmp eq i32 %30, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br i1 %58, label %107, label %75

75:                                               ; preds = %74
  %76 = icmp sgt i32 %32, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %107

78:                                               ; preds = %72
  br i1 %58, label %79, label %82

79:                                               ; preds = %78
  %80 = icmp sgt i32 %3, -1
  %81 = select i1 %80, i32 1, i32 -1
  br label %107

82:                                               ; preds = %78
  %83 = icmp eq i32 %6, %35
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = icmp sgt i32 %3, -1
  %86 = select i1 %85, i32 1, i32 -1
  br label %107

87:                                               ; preds = %82
  %88 = icmp sgt i32 %29, %56
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = icmp sgt i32 %3, -1
  %91 = select i1 %90, i32 1, i32 -1
  br label %107

92:                                               ; preds = %87
  %93 = icmp slt i32 %29, %56
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = icmp sgt i32 %3, -1
  %96 = select i1 %95, i32 -1, i32 1
  br label %107

97:                                               ; preds = %92
  %98 = icmp ugt i32 %31, %55
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp sgt i32 %3, -1
  %101 = select i1 %100, i32 1, i32 -1
  br label %107

102:                                              ; preds = %97
  %103 = icmp ult i32 %31, %55
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = icmp sgt i32 %3, -1
  %106 = select i1 %105, i32 -1, i32 1
  br label %107

107:                                              ; preds = %47, %104, %102, %99, %94, %89, %84, %79, %75, %74, %69, %65, %63, %54
  %108 = phi i32 [ -1, %54 ], [ %64, %63 ], [ %67, %65 ], [ %71, %69 ], [ %77, %75 ], [ %81, %79 ], [ %86, %84 ], [ %91, %89 ], [ %96, %94 ], [ %101, %99 ], [ %106, %104 ], [ 0, %74 ], [ 0, %102 ], [ -1, %47 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__ltsf2(float noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 8388607
  %5 = lshr i32 %3, 23
  %6 = lshr i32 %3, 31
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %23 [
    i8 0, label %8
    i8 -1, label %18
  ]

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = shl nuw nsw i32 %4, 7
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ -126, %10 ], [ %16, %12 ]
  %14 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %15 = shl nuw nsw i32 %14, 1
  %16 = add i32 %13, -1
  %17 = icmp ult i32 %14, 536870912
  br i1 %17, label %12, label %28

18:                                               ; preds = %2
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = lshr i32 %3, 20
  %22 = and i32 %21, 1
  br label %28

23:                                               ; preds = %2
  %24 = and i32 %5, 255
  %25 = add nsw i32 %24, -127
  %26 = shl nuw nsw i32 %4, 7
  %27 = or disjoint i32 %26, 1073741824
  br label %28

28:                                               ; preds = %12, %18, %8, %20, %23
  %29 = phi i32 [ %25, %23 ], [ undef, %20 ], [ undef, %8 ], [ undef, %18 ], [ %16, %12 ]
  %30 = phi i32 [ 3, %23 ], [ %22, %20 ], [ 2, %8 ], [ 4, %18 ], [ 3, %12 ]
  %31 = phi i32 [ %27, %23 ], [ %4, %20 ], [ undef, %8 ], [ undef, %18 ], [ %15, %12 ]
  %32 = bitcast float %1 to i32
  %33 = and i32 %32, 8388607
  %34 = lshr i32 %32, 23
  %35 = lshr i32 %32, 31
  %36 = trunc i32 %34 to i8
  switch i8 %36, label %49 [
    i8 0, label %37
    i8 -1, label %47
  ]

37:                                               ; preds = %28
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %33, 7
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ -126, %39 ], [ %45, %41 ]
  %43 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %44 = shl nuw nsw i32 %43, 1
  %45 = add i32 %42, -1
  %46 = icmp ult i32 %43, 536870912
  br i1 %46, label %41, label %54

47:                                               ; preds = %28
  %48 = icmp eq i32 %33, 0
  br i1 %48, label %54, label %107

49:                                               ; preds = %28
  %50 = and i32 %34, 255
  %51 = add nsw i32 %50, -127
  %52 = shl nuw nsw i32 %33, 7
  %53 = or disjoint i32 %52, 1073741824
  br label %54

54:                                               ; preds = %41, %47, %37, %49
  %55 = phi i32 [ %53, %49 ], [ undef, %37 ], [ undef, %47 ], [ %44, %41 ]
  %56 = phi i32 [ %51, %49 ], [ undef, %37 ], [ undef, %47 ], [ %45, %41 ]
  %57 = phi i1 [ false, %49 ], [ false, %37 ], [ true, %47 ], [ false, %41 ]
  %58 = phi i1 [ false, %49 ], [ true, %37 ], [ false, %47 ], [ false, %41 ]
  %59 = icmp ugt i32 %30, 1
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = icmp eq i32 %30, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  br i1 %57, label %63, label %65

63:                                               ; preds = %62
  %64 = sub nsw i32 %35, %6
  br label %107

65:                                               ; preds = %62
  %66 = icmp sgt i32 %3, -1
  %67 = select i1 %66, i32 1, i32 -1
  br label %107

68:                                               ; preds = %60
  br i1 %57, label %69, label %72

69:                                               ; preds = %68
  %70 = icmp sgt i32 %32, -1
  %71 = select i1 %70, i32 -1, i32 1
  br label %107

72:                                               ; preds = %68
  %73 = icmp eq i32 %30, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br i1 %58, label %107, label %75

75:                                               ; preds = %74
  %76 = icmp sgt i32 %32, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %107

78:                                               ; preds = %72
  br i1 %58, label %79, label %82

79:                                               ; preds = %78
  %80 = icmp sgt i32 %3, -1
  %81 = select i1 %80, i32 1, i32 -1
  br label %107

82:                                               ; preds = %78
  %83 = icmp eq i32 %6, %35
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = icmp sgt i32 %3, -1
  %86 = select i1 %85, i32 1, i32 -1
  br label %107

87:                                               ; preds = %82
  %88 = icmp sgt i32 %29, %56
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = icmp sgt i32 %3, -1
  %91 = select i1 %90, i32 1, i32 -1
  br label %107

92:                                               ; preds = %87
  %93 = icmp slt i32 %29, %56
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = icmp sgt i32 %3, -1
  %96 = select i1 %95, i32 -1, i32 1
  br label %107

97:                                               ; preds = %92
  %98 = icmp ugt i32 %31, %55
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp sgt i32 %3, -1
  %101 = select i1 %100, i32 1, i32 -1
  br label %107

102:                                              ; preds = %97
  %103 = icmp ult i32 %31, %55
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = icmp sgt i32 %3, -1
  %106 = select i1 %105, i32 -1, i32 1
  br label %107

107:                                              ; preds = %47, %104, %102, %99, %94, %89, %84, %79, %75, %74, %69, %65, %63, %54
  %108 = phi i32 [ 1, %54 ], [ %64, %63 ], [ %67, %65 ], [ %71, %69 ], [ %77, %75 ], [ %81, %79 ], [ %86, %84 ], [ %91, %89 ], [ %96, %94 ], [ %101, %99 ], [ %106, %104 ], [ 0, %74 ], [ 0, %102 ], [ 1, %47 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__lesf2(float noundef %0, float noundef %1) local_unnamed_addr #4 {
  %3 = bitcast float %0 to i32
  %4 = and i32 %3, 8388607
  %5 = lshr i32 %3, 23
  %6 = lshr i32 %3, 31
  %7 = trunc i32 %5 to i8
  switch i8 %7, label %23 [
    i8 0, label %8
    i8 -1, label %18
  ]

8:                                                ; preds = %2
  %9 = icmp eq i32 %4, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %8
  %11 = shl nuw nsw i32 %4, 7
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i32 [ -126, %10 ], [ %16, %12 ]
  %14 = phi i32 [ %11, %10 ], [ %15, %12 ]
  %15 = shl nuw nsw i32 %14, 1
  %16 = add i32 %13, -1
  %17 = icmp ult i32 %14, 536870912
  br i1 %17, label %12, label %28

18:                                               ; preds = %2
  %19 = icmp eq i32 %4, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %18
  %21 = lshr i32 %3, 20
  %22 = and i32 %21, 1
  br label %28

23:                                               ; preds = %2
  %24 = and i32 %5, 255
  %25 = add nsw i32 %24, -127
  %26 = shl nuw nsw i32 %4, 7
  %27 = or disjoint i32 %26, 1073741824
  br label %28

28:                                               ; preds = %12, %18, %8, %20, %23
  %29 = phi i32 [ %25, %23 ], [ undef, %20 ], [ undef, %8 ], [ undef, %18 ], [ %16, %12 ]
  %30 = phi i32 [ 3, %23 ], [ %22, %20 ], [ 2, %8 ], [ 4, %18 ], [ 3, %12 ]
  %31 = phi i32 [ %27, %23 ], [ %4, %20 ], [ undef, %8 ], [ undef, %18 ], [ %15, %12 ]
  %32 = bitcast float %1 to i32
  %33 = and i32 %32, 8388607
  %34 = lshr i32 %32, 23
  %35 = lshr i32 %32, 31
  %36 = trunc i32 %34 to i8
  switch i8 %36, label %49 [
    i8 0, label %37
    i8 -1, label %47
  ]

37:                                               ; preds = %28
  %38 = icmp eq i32 %33, 0
  br i1 %38, label %54, label %39

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %33, 7
  br label %41

41:                                               ; preds = %41, %39
  %42 = phi i32 [ -126, %39 ], [ %45, %41 ]
  %43 = phi i32 [ %40, %39 ], [ %44, %41 ]
  %44 = shl nuw nsw i32 %43, 1
  %45 = add i32 %42, -1
  %46 = icmp ult i32 %43, 536870912
  br i1 %46, label %41, label %54

47:                                               ; preds = %28
  %48 = icmp eq i32 %33, 0
  br i1 %48, label %54, label %107

49:                                               ; preds = %28
  %50 = and i32 %34, 255
  %51 = add nsw i32 %50, -127
  %52 = shl nuw nsw i32 %33, 7
  %53 = or disjoint i32 %52, 1073741824
  br label %54

54:                                               ; preds = %41, %47, %37, %49
  %55 = phi i32 [ %53, %49 ], [ undef, %37 ], [ undef, %47 ], [ %44, %41 ]
  %56 = phi i32 [ %51, %49 ], [ undef, %37 ], [ undef, %47 ], [ %45, %41 ]
  %57 = phi i1 [ false, %49 ], [ false, %37 ], [ true, %47 ], [ false, %41 ]
  %58 = phi i1 [ false, %49 ], [ true, %37 ], [ false, %47 ], [ false, %41 ]
  %59 = icmp ugt i32 %30, 1
  br i1 %59, label %60, label %107

60:                                               ; preds = %54
  %61 = icmp eq i32 %30, 4
  br i1 %61, label %62, label %68

62:                                               ; preds = %60
  br i1 %57, label %63, label %65

63:                                               ; preds = %62
  %64 = sub nsw i32 %35, %6
  br label %107

65:                                               ; preds = %62
  %66 = icmp sgt i32 %3, -1
  %67 = select i1 %66, i32 1, i32 -1
  br label %107

68:                                               ; preds = %60
  br i1 %57, label %69, label %72

69:                                               ; preds = %68
  %70 = icmp sgt i32 %32, -1
  %71 = select i1 %70, i32 -1, i32 1
  br label %107

72:                                               ; preds = %68
  %73 = icmp eq i32 %30, 2
  br i1 %73, label %74, label %78

74:                                               ; preds = %72
  br i1 %58, label %107, label %75

75:                                               ; preds = %74
  %76 = icmp sgt i32 %32, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %107

78:                                               ; preds = %72
  br i1 %58, label %79, label %82

79:                                               ; preds = %78
  %80 = icmp sgt i32 %3, -1
  %81 = select i1 %80, i32 1, i32 -1
  br label %107

82:                                               ; preds = %78
  %83 = icmp eq i32 %6, %35
  br i1 %83, label %87, label %84

84:                                               ; preds = %82
  %85 = icmp sgt i32 %3, -1
  %86 = select i1 %85, i32 1, i32 -1
  br label %107

87:                                               ; preds = %82
  %88 = icmp sgt i32 %29, %56
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  %90 = icmp sgt i32 %3, -1
  %91 = select i1 %90, i32 1, i32 -1
  br label %107

92:                                               ; preds = %87
  %93 = icmp slt i32 %29, %56
  br i1 %93, label %94, label %97

94:                                               ; preds = %92
  %95 = icmp sgt i32 %3, -1
  %96 = select i1 %95, i32 -1, i32 1
  br label %107

97:                                               ; preds = %92
  %98 = icmp ugt i32 %31, %55
  br i1 %98, label %99, label %102

99:                                               ; preds = %97
  %100 = icmp sgt i32 %3, -1
  %101 = select i1 %100, i32 1, i32 -1
  br label %107

102:                                              ; preds = %97
  %103 = icmp ult i32 %31, %55
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = icmp sgt i32 %3, -1
  %106 = select i1 %105, i32 -1, i32 1
  br label %107

107:                                              ; preds = %47, %104, %102, %99, %94, %89, %84, %79, %75, %74, %69, %65, %63, %54
  %108 = phi i32 [ 1, %54 ], [ %64, %63 ], [ %67, %65 ], [ %71, %69 ], [ %77, %75 ], [ %81, %79 ], [ %86, %84 ], [ %91, %89 ], [ %96, %94 ], [ %101, %99 ], [ %106, %104 ], [ 0, %74 ], [ 0, %102 ], [ 1, %47 ]
  ret i32 %108
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc float @__floatsisf(i32 noundef %0) local_unnamed_addr #4 {
  %2 = and i32 %0, -2147483648
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %45, label %4

4:                                                ; preds = %1
  %5 = icmp sgt i32 %0, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, -2147483648
  br i1 %7, label %52, label %8

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %0
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ %0, %4 ]
  %12 = icmp ult i32 %11, 1073741824
  br i1 %12, label %13, label %29

13:                                               ; preds = %10, %13
  %14 = phi i32 [ %16, %13 ], [ %11, %10 ]
  %15 = phi i32 [ %17, %13 ], [ 30, %10 ]
  %16 = shl nuw nsw i32 %14, 1
  %17 = add i32 %15, -1
  %18 = icmp ult i32 %14, 536870912
  br i1 %18, label %13, label %19

19:                                               ; preds = %13
  %20 = icmp slt i32 %17, -126
  br i1 %20, label %21, label %27

21:                                               ; preds = %19
  %22 = icmp ult i32 %17, -151
  %23 = sub nsw i32 -125, %15
  %24 = lshr i32 %16, %23
  %25 = lshr i32 %24, 7
  %26 = select i1 %22, i32 0, i32 %25
  br label %45

27:                                               ; preds = %19
  %28 = icmp sgt i32 %17, 127
  br i1 %28, label %45, label %29

29:                                               ; preds = %10, %27
  %30 = phi i32 [ %17, %27 ], [ 30, %10 ]
  %31 = phi i32 [ %16, %27 ], [ %11, %10 ]
  %32 = and i32 %31, 127
  %33 = icmp eq i32 %32, 64
  %34 = lshr exact i32 %31, 1
  %35 = and i32 %34, 64
  %36 = select i1 %33, i32 %35, i32 63
  %37 = add i32 %36, %31
  %38 = icmp slt i32 %37, 0
  %39 = lshr i32 %37, 31
  %40 = lshr i32 %37, %39
  %41 = select i1 %38, i32 128, i32 127
  %42 = add nsw i32 %41, %30
  %43 = lshr i32 %40, 7
  %44 = shl nuw nsw i32 %42, 23
  br label %45

45:                                               ; preds = %1, %21, %27, %29
  %46 = phi i32 [ %26, %21 ], [ %43, %29 ], [ 0, %27 ], [ 0, %1 ]
  %47 = phi i32 [ 0, %21 ], [ %44, %29 ], [ 2139095040, %27 ], [ 0, %1 ]
  %48 = and i32 %46, 8388607
  %49 = or disjoint i32 %47, %2
  %50 = or disjoint i32 %49, %48
  %51 = bitcast i32 %50 to float
  br label %52

52:                                               ; preds = %6, %45
  %53 = phi float [ %51, %45 ], [ 0xC1E0000000000000, %6 ]
  ret float %53
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__fixsfsi(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 8388607
  %4 = lshr i32 %2, 23
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %18 [
    i8 0, label %6
    i8 -1, label %16
  ]

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %41, label %8

8:                                                ; preds = %6
  %9 = shl nuw nsw i32 %3, 7
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ -126, %8 ], [ %14, %10 ]
  %12 = phi i32 [ %9, %8 ], [ %13, %10 ]
  %13 = shl nuw nsw i32 %12, 1
  %14 = add i32 %11, -1
  %15 = icmp ult i32 %12, 536870912
  br i1 %15, label %10, label %26

16:                                               ; preds = %1
  %17 = icmp eq i32 %3, 0
  br i1 %17, label %23, label %41

18:                                               ; preds = %1
  %19 = and i32 %4, 255
  %20 = add nsw i32 %19, -127
  %21 = shl nuw nsw i32 %3, 7
  %22 = or disjoint i32 %21, 1073741824
  br label %26

23:                                               ; preds = %16
  %24 = icmp sgt i32 %2, -1
  %25 = select i1 %24, i32 2147483647, i32 -2147483648
  br label %41

26:                                               ; preds = %10, %18
  %27 = phi i32 [ %20, %18 ], [ %14, %10 ]
  %28 = phi i32 [ %22, %18 ], [ %13, %10 ]
  %29 = icmp slt i32 %27, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = icmp ugt i32 %27, 30
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = icmp sgt i32 %2, -1
  %34 = select i1 %33, i32 2147483647, i32 -2147483648
  br label %41

35:                                               ; preds = %30
  %36 = sub nuw nsw i32 30, %27
  %37 = lshr i32 %28, %36
  %38 = sub i32 0, %37
  %39 = icmp slt i32 %2, 0
  %40 = select i1 %39, i32 %38, i32 %37
  br label %41

41:                                               ; preds = %16, %6, %26, %35, %32, %23
  %42 = phi i32 [ %25, %23 ], [ %34, %32 ], [ %40, %35 ], [ 0, %26 ], [ 0, %6 ], [ 0, %16 ]
  ret i32 %42
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc float @__negsf2(float noundef %0) local_unnamed_addr #4 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 8388607
  %4 = lshr i32 %2, 23
  %5 = trunc i32 %4 to i8
  switch i8 %5, label %20 [
    i8 0, label %6
    i8 -1, label %16
  ]

6:                                                ; preds = %1
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %51, label %8

8:                                                ; preds = %6
  %9 = shl nuw nsw i32 %3, 7
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ -126, %8 ], [ %14, %10 ]
  %12 = phi i32 [ %9, %8 ], [ %13, %10 ]
  %13 = shl nuw nsw i32 %12, 1
  %14 = add i32 %11, -1
  %15 = icmp ult i32 %12, 536870912
  br i1 %15, label %10, label %25

16:                                               ; preds = %1
  %17 = icmp eq i32 %3, 0
  %18 = or i32 %3, 1048576
  %19 = select i1 %17, i32 0, i32 %18
  br label %51

20:                                               ; preds = %1
  %21 = and i32 %4, 255
  %22 = add nsw i32 %21, -127
  %23 = shl nuw nsw i32 %3, 7
  %24 = or disjoint i32 %23, 1073741824
  br label %25

25:                                               ; preds = %10, %20
  %26 = phi i32 [ %24, %20 ], [ %13, %10 ]
  %27 = phi i32 [ %22, %20 ], [ %14, %10 ]
  %28 = icmp slt i32 %27, -126
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = icmp ult i32 %27, -151
  %31 = sub nuw nsw i32 -126, %27
  %32 = lshr i32 %26, %31
  %33 = lshr i32 %32, 7
  %34 = select i1 %30, i32 0, i32 %33
  br label %51

35:                                               ; preds = %25
  %36 = icmp sgt i32 %27, 127
  br i1 %36, label %51, label %37

37:                                               ; preds = %35
  %38 = and i32 %26, 127
  %39 = icmp eq i32 %38, 64
  %40 = lshr exact i32 %26, 1
  %41 = and i32 %40, 64
  %42 = select i1 %39, i32 %41, i32 63
  %43 = add i32 %42, %26
  %44 = icmp slt i32 %43, 0
  %45 = lshr i32 %43, 31
  %46 = lshr i32 %43, %45
  %47 = select i1 %44, i32 128, i32 127
  %48 = add nsw i32 %47, %27
  %49 = lshr i32 %46, 7
  %50 = shl nuw nsw i32 %48, 23
  br label %51

51:                                               ; preds = %16, %6, %29, %35, %37
  %52 = phi i32 [ %34, %29 ], [ %49, %37 ], [ 0, %35 ], [ 0, %6 ], [ %19, %16 ]
  %53 = phi i32 [ 0, %29 ], [ %50, %37 ], [ 2139095040, %35 ], [ 0, %6 ], [ 2139095040, %16 ]
  %54 = and i32 %52, 8388607
  %55 = and i32 %2, -2147483648
  %56 = or disjoint i32 %53, %55
  %57 = or disjoint i32 %56, %54
  %58 = xor i32 %57, -2147483648
  %59 = bitcast i32 %58 to float
  ret float %59
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc float @__make_fp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #5 {
  %5 = icmp ugt i32 %0, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = or i32 %3, 1048576
  br label %38

8:                                                ; preds = %4
  %9 = icmp eq i32 %0, 4
  br i1 %9, label %38, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %0, 2
  %12 = icmp eq i32 %3, 0
  %13 = or i1 %11, %12
  br i1 %13, label %38, label %14

14:                                               ; preds = %10
  %15 = icmp slt i32 %2, -126
  br i1 %15, label %16, label %22

16:                                               ; preds = %14
  %17 = icmp ult i32 %2, -151
  %18 = sub nuw nsw i32 -126, %2
  %19 = lshr i32 %3, %18
  %20 = lshr i32 %19, 7
  %21 = select i1 %17, i32 0, i32 %20
  br label %38

22:                                               ; preds = %14
  %23 = icmp sgt i32 %2, 127
  br i1 %23, label %38, label %24

24:                                               ; preds = %22
  %25 = and i32 %3, 127
  %26 = icmp eq i32 %25, 64
  %27 = lshr exact i32 %3, 1
  %28 = and i32 %27, 64
  %29 = select i1 %26, i32 %28, i32 63
  %30 = add i32 %29, %3
  %31 = icmp slt i32 %30, 0
  %32 = lshr i32 %30, 31
  %33 = lshr i32 %30, %32
  %34 = select i1 %31, i32 128, i32 127
  %35 = add nsw i32 %34, %2
  %36 = lshr i32 %33, 7
  %37 = shl nuw nsw i32 %35, 23
  br label %38

38:                                               ; preds = %6, %8, %10, %16, %22, %24
  %39 = phi i32 [ %7, %6 ], [ %21, %16 ], [ %36, %24 ], [ 0, %8 ], [ 0, %10 ], [ 0, %22 ]
  %40 = phi i32 [ 2139095040, %6 ], [ 0, %16 ], [ %37, %24 ], [ 2139095040, %8 ], [ 0, %10 ], [ 2139095040, %22 ]
  %41 = and i32 %39, 8388607
  %42 = or disjoint i32 %41, %40
  %43 = shl i32 %1, 31
  %44 = or disjoint i32 %42, %43
  %45 = bitcast i32 %44 to float
  ret float %45
}

; Function Attrs: nounwind
define dso_local arm_apcscc double @__extendsfdf2(float noundef %0) local_unnamed_addr #6 {
  %2 = bitcast float %0 to i32
  %3 = and i32 %2, 8388607
  %4 = and i32 %2, 2139095040
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = icmp ne i32 %3, 0
  tail call void @llvm.assume(i1 %7)
  %8 = shl nuw nsw i32 %3, 7
  br label %9

9:                                                ; preds = %9, %6
  %10 = phi i32 [ -126, %6 ], [ %13, %9 ]
  %11 = phi i32 [ %8, %6 ], [ %12, %9 ]
  %12 = shl nuw nsw i32 %11, 1
  %13 = add i32 %10, -1
  %14 = icmp ult i32 %11, 536870912
  br i1 %14, label %9, label %21

15:                                               ; preds = %1
  %16 = lshr i32 %2, 23
  %17 = and i32 %16, 255
  %18 = add nsw i32 %17, -127
  %19 = shl nuw nsw i32 %3, 7
  %20 = or disjoint i32 %19, 1073741824
  br label %21

21:                                               ; preds = %9, %15
  %22 = phi i32 [ %18, %15 ], [ %13, %9 ]
  %23 = phi i32 [ %20, %15 ], [ %12, %9 ]
  %24 = lshr i32 %2, 31
  %25 = zext i32 %23 to i64
  %26 = shl nuw nsw i64 %25, 30
  %27 = tail call arm_apcscc double @__make_dp(i32 noundef 3, i32 noundef %24, i32 noundef %22, i64 noundef %26) #13
  ret double %27
}

declare dso_local arm_apcscc double @__make_dp(i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nobuiltin "no-builtins" }
attributes #13 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
