; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".text"
module asm ".align 2, 0"

%struct.fp_number_type = type { i32, i32, i32, %union.anon }
%union.anon = type { i64 }

@gRuntimeDoubleNaNParts = external dso_local global %struct.fp_number_type, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local arm_apcscc double @__pack_d(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 3
  %3 = load i64, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = load i32, ptr %0, align 4
  %7 = icmp ugt i32 %6, 1
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = or i64 %3, 2251799813685248
  br label %46

10:                                               ; preds = %1
  %11 = icmp eq i32 %6, 4
  br i1 %11, label %46, label %12

12:                                               ; preds = %10
  %13 = icmp eq i32 %6, 2
  %14 = icmp eq i64 %3, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %46, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  %19 = icmp slt i32 %18, -1022
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = icmp ult i32 %18, -1078
  br i1 %21, label %46, label %22

22:                                               ; preds = %20
  %23 = sub nuw nsw i32 -1022, %18
  %24 = zext nneg i32 %23 to i64
  %25 = lshr i64 %3, %24
  %26 = lshr i64 %25, 8
  br label %46

27:                                               ; preds = %16
  %28 = icmp sgt i32 %18, 1023
  br i1 %28, label %46, label %29

29:                                               ; preds = %27
  %30 = and i64 %3, 255
  %31 = icmp eq i64 %30, 128
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = lshr exact i64 %3, 1
  %34 = and i64 %33, 128
  %35 = add i64 %34, %3
  br label %38

36:                                               ; preds = %29
  %37 = add i64 %3, 127
  br label %38

38:                                               ; preds = %32, %36
  %39 = phi i64 [ %37, %36 ], [ %35, %32 ]
  %40 = icmp ugt i64 %39, 2305843009213693951
  %41 = select i1 %40, i32 1024, i32 1023
  %42 = add nsw i32 %41, %18
  %43 = zext i1 %40 to i64
  %44 = lshr i64 %39, %43
  %45 = lshr i64 %44, 8
  br label %46

46:                                               ; preds = %27, %22, %20, %12, %10, %38, %8
  %47 = phi i32 [ 2047, %8 ], [ %42, %38 ], [ 2047, %10 ], [ 0, %12 ], [ 0, %20 ], [ 0, %22 ], [ 2047, %27 ]
  %48 = phi i64 [ %9, %8 ], [ %45, %38 ], [ 0, %10 ], [ 0, %12 ], [ 0, %20 ], [ %26, %22 ], [ 0, %27 ]
  %49 = and i64 %48, 4503595332403200
  %50 = zext nneg i32 %47 to i64
  %51 = shl nuw nsw i64 %50, 52
  %52 = and i32 %5, 1
  %53 = zext nneg i32 %52 to i64
  %54 = shl nuw i64 %53, 63
  %55 = or disjoint i64 %51, %54
  %56 = or disjoint i64 %55, %49
  %57 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %56, i64 32)
  %58 = bitcast i64 %57 to double
  ret double %58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define dso_local arm_apcscc void @__unpack_d(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #2 {
  %3 = getelementptr [2 x i32], ptr %0, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %0, align 4
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = zext i32 %4 to i64
  %9 = and i64 %7, 4503595332403200
  %10 = or disjoint i64 %9, %8
  %11 = lshr i32 %5, 20
  %12 = and i32 %11, 2047
  %13 = lshr i32 %5, 31
  %14 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  store i32 %13, ptr %14, align 4
  switch i32 %12, label %36 [
    i32 0, label %15
    i32 2047, label %29
  ]

15:                                               ; preds = %2
  %16 = icmp eq i64 %10, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  store i32 2, ptr %1, align 4
  br label %42

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 2
  store i32 -1022, ptr %19, align 4
  store i32 3, ptr %1, align 4
  %20 = shl nuw nsw i64 %10, 8
  br label %21

21:                                               ; preds = %18, %21
  %22 = phi i32 [ -1022, %18 ], [ %25, %21 ]
  %23 = phi i64 [ %20, %18 ], [ %24, %21 ]
  %24 = shl nuw nsw i64 %23, 1
  %25 = add i32 %22, -1
  %26 = icmp ult i64 %23, 576460752303423488
  br i1 %26, label %21, label %27

27:                                               ; preds = %21
  store i32 %25, ptr %19, align 4
  %28 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  store i64 %24, ptr %28, align 4
  br label %42

29:                                               ; preds = %2
  %30 = icmp eq i64 %10, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %29
  store i32 4, ptr %1, align 4
  br label %42

32:                                               ; preds = %29
  %33 = lshr i32 %5, 19
  %34 = and i32 %33, 1
  store i32 %34, ptr %1, align 4
  %35 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  store i64 %10, ptr %35, align 4
  br label %42

36:                                               ; preds = %2
  %37 = add nsw i32 %12, -1023
  %38 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  store i32 3, ptr %1, align 4
  %39 = shl nuw nsw i64 %10, 8
  %40 = or disjoint i64 %39, 1152921504606846976
  %41 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  store i64 %40, ptr %41, align 4
  br label %42

42:                                               ; preds = %36, %32, %31, %17, %27
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc double @__adddf3(double noundef %0, double noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fp_number_type, align 4
  %4 = alloca %struct.fp_number_type, align 4
  %5 = alloca %struct.fp_number_type, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %6 = bitcast double %0 to i64
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %6 to i32
  %9 = shl i64 %6, 32
  %10 = and i64 %9, 4503595332403200
  %11 = or disjoint i64 %10, %7
  %12 = lshr i32 %8, 20
  %13 = and i32 %12, 2047
  %14 = lshr i32 %8, 31
  %15 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  switch i32 %13, label %37 [
    i32 0, label %16
    i32 2047, label %30
  ]

16:                                               ; preds = %2
  %17 = icmp eq i64 %11, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 2, ptr %3, align 4
  br label %43

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 -1022, ptr %20, align 4
  store i32 3, ptr %3, align 4
  %21 = shl nuw nsw i64 %11, 8
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ -1022, %19 ], [ %26, %22 ]
  %24 = phi i64 [ %21, %19 ], [ %25, %22 ]
  %25 = shl nuw nsw i64 %24, 1
  %26 = add i32 %23, -1
  %27 = icmp ult i64 %24, 576460752303423488
  br i1 %27, label %22, label %28

28:                                               ; preds = %22
  store i32 %26, ptr %20, align 4
  %29 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %25, ptr %29, align 4
  br label %43

30:                                               ; preds = %2
  %31 = icmp eq i64 %11, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store i32 4, ptr %3, align 4
  br label %43

33:                                               ; preds = %30
  %34 = lshr i32 %8, 19
  %35 = and i32 %34, 1
  store i32 %35, ptr %3, align 4
  %36 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %11, ptr %36, align 4
  br label %43

37:                                               ; preds = %2
  %38 = add nsw i32 %13, -1023
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  store i32 3, ptr %3, align 4
  %40 = shl nuw nsw i64 %11, 8
  %41 = or disjoint i64 %40, 1152921504606846976
  %42 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %18, %28, %32, %33, %37
  %44 = bitcast double %1 to i64
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %44 to i32
  %47 = shl i64 %44, 32
  %48 = and i64 %47, 4503595332403200
  %49 = or disjoint i64 %48, %45
  %50 = lshr i32 %46, 20
  %51 = and i32 %50, 2047
  %52 = lshr i32 %46, 31
  %53 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  switch i32 %51, label %75 [
    i32 0, label %54
    i32 2047, label %68
  ]

54:                                               ; preds = %43
  %55 = icmp eq i64 %49, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store i32 2, ptr %4, align 4
  br label %81

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 -1022, ptr %58, align 4
  store i32 3, ptr %4, align 4
  %59 = shl nuw nsw i64 %49, 8
  br label %60

60:                                               ; preds = %60, %57
  %61 = phi i32 [ -1022, %57 ], [ %64, %60 ]
  %62 = phi i64 [ %59, %57 ], [ %63, %60 ]
  %63 = shl nuw nsw i64 %62, 1
  %64 = add i32 %61, -1
  %65 = icmp ult i64 %62, 576460752303423488
  br i1 %65, label %60, label %66

66:                                               ; preds = %60
  store i32 %64, ptr %58, align 4
  %67 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %63, ptr %67, align 4
  br label %81

68:                                               ; preds = %43
  %69 = icmp eq i64 %49, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  store i32 4, ptr %4, align 4
  br label %81

71:                                               ; preds = %68
  %72 = lshr i32 %46, 19
  %73 = and i32 %72, 1
  store i32 %73, ptr %4, align 4
  %74 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %49, ptr %74, align 4
  br label %81

75:                                               ; preds = %43
  %76 = add nsw i32 %51, -1023
  %77 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 %76, ptr %77, align 4
  store i32 3, ptr %4, align 4
  %78 = shl nuw nsw i64 %49, 8
  %79 = or disjoint i64 %78, 1152921504606846976
  %80 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %56, %66, %70, %71, %75
  %82 = call arm_apcscc ptr @RuntimeDoubleAddParts(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %83 = getelementptr inbounds %struct.fp_number_type, ptr %82, i32 0, i32 3
  %84 = load i64, ptr %83, align 4
  %85 = getelementptr inbounds %struct.fp_number_type, ptr %82, i32 0, i32 1
  %86 = load i32, ptr %85, align 4
  %87 = load i32, ptr %82, align 4
  %88 = icmp ugt i32 %87, 1
  br i1 %88, label %91, label %89

89:                                               ; preds = %81
  %90 = or i64 %84, 2251799813685248
  br label %127

91:                                               ; preds = %81
  %92 = icmp eq i32 %87, 4
  br i1 %92, label %127, label %93

93:                                               ; preds = %91
  %94 = icmp eq i32 %87, 2
  %95 = icmp eq i64 %84, 0
  %96 = select i1 %94, i1 true, i1 %95
  br i1 %96, label %127, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %struct.fp_number_type, ptr %82, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = icmp slt i32 %99, -1022
  br i1 %100, label %101, label %108

101:                                              ; preds = %97
  %102 = icmp ult i32 %99, -1078
  br i1 %102, label %127, label %103

103:                                              ; preds = %101
  %104 = sub nuw nsw i32 -1022, %99
  %105 = zext nneg i32 %104 to i64
  %106 = lshr i64 %84, %105
  %107 = lshr i64 %106, 8
  br label %127

108:                                              ; preds = %97
  %109 = icmp sgt i32 %99, 1023
  br i1 %109, label %127, label %110

110:                                              ; preds = %108
  %111 = and i64 %84, 255
  %112 = icmp eq i64 %111, 128
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = lshr exact i64 %84, 1
  %115 = and i64 %114, 128
  %116 = add i64 %115, %84
  br label %119

117:                                              ; preds = %110
  %118 = add i64 %84, 127
  br label %119

119:                                              ; preds = %117, %113
  %120 = phi i64 [ %118, %117 ], [ %116, %113 ]
  %121 = icmp ugt i64 %120, 2305843009213693951
  %122 = select i1 %121, i32 1024, i32 1023
  %123 = add nsw i32 %122, %99
  %124 = zext i1 %121 to i64
  %125 = lshr i64 %120, %124
  %126 = lshr i64 %125, 8
  br label %127

127:                                              ; preds = %89, %91, %93, %101, %103, %108, %119
  %128 = phi i32 [ 2047, %89 ], [ %123, %119 ], [ 2047, %91 ], [ 0, %93 ], [ 0, %101 ], [ 0, %103 ], [ 2047, %108 ]
  %129 = phi i64 [ %90, %89 ], [ %126, %119 ], [ 0, %91 ], [ 0, %93 ], [ 0, %101 ], [ %107, %103 ], [ 0, %108 ]
  %130 = and i64 %129, 4503595332403200
  %131 = zext nneg i32 %128 to i64
  %132 = shl nuw nsw i64 %131, 52
  %133 = and i32 %86, 1
  %134 = zext nneg i32 %133 to i64
  %135 = shl nuw i64 %134, 63
  %136 = or disjoint i64 %132, %135
  %137 = or disjoint i64 %136, %130
  %138 = call i64 @llvm.fshl.i64(i64 %129, i64 %137, i64 32)
  %139 = bitcast i64 %138 to double
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret double %139
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite)
define internal arm_apcscc ptr @RuntimeDoubleAddParts(ptr noundef readonly %0, ptr noundef readonly %1, ptr noundef writeonly %2) unnamed_addr #2 {
  %4 = load i32, ptr %0, align 4
  %5 = icmp ugt i32 %4, 1
  br i1 %5, label %6, label %113

6:                                                ; preds = %3
  %7 = load i32, ptr %1, align 4
  %8 = icmp ugt i32 %7, 1
  br i1 %8, label %9, label %113

9:                                                ; preds = %6
  %10 = icmp eq i32 %4, 4
  br i1 %10, label %11, label %20

11:                                               ; preds = %9
  %12 = icmp eq i32 %7, 4
  br i1 %12, label %13, label %113

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %15, %17
  %19 = select i1 %18, ptr %0, ptr @gRuntimeDoubleNaNParts
  br label %113

20:                                               ; preds = %9
  switch i32 %7, label %30 [
    i32 4, label %113
    i32 2, label %21
  ]

21:                                               ; preds = %20
  %22 = icmp eq i32 %4, 2
  br i1 %22, label %23, label %113

23:                                               ; preds = %21
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 4 dereferenceable(20) %0, i32 20, i1 false)
  %24 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = and i32 %27, %25
  %29 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  br label %113

30:                                               ; preds = %20
  %31 = icmp eq i32 %4, 2
  br i1 %31, label %113, label %32

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 3
  %38 = load i64, ptr %37, align 4
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  %40 = load i64, ptr %39, align 4
  %41 = sub i32 %34, %36
  %42 = tail call i32 @llvm.abs.i32(i32 %41, i1 false)
  %43 = icmp slt i32 %42, 64
  %44 = icmp sgt i32 %34, %36
  br i1 %43, label %45, label %64

45:                                               ; preds = %32
  br i1 %44, label %48, label %46

46:                                               ; preds = %45
  %47 = icmp sgt i32 %36, %34
  br i1 %47, label %56, label %68

48:                                               ; preds = %45, %48
  %49 = phi i64 [ %54, %48 ], [ %40, %45 ]
  %50 = phi i32 [ %51, %48 ], [ %36, %45 ]
  %51 = add nsw i32 %50, 1
  %52 = and i64 %49, 1
  %53 = lshr i64 %49, 1
  %54 = or i64 %52, %53
  %55 = icmp eq i32 %51, %34
  br i1 %55, label %68, label %48

56:                                               ; preds = %46, %56
  %57 = phi i64 [ %62, %56 ], [ %38, %46 ]
  %58 = phi i32 [ %59, %56 ], [ %34, %46 ]
  %59 = add nsw i32 %58, 1
  %60 = and i64 %57, 1
  %61 = lshr i64 %57, 1
  %62 = or i64 %60, %61
  %63 = icmp eq i32 %59, %36
  br i1 %63, label %68, label %56

64:                                               ; preds = %32
  %65 = tail call i32 @llvm.smax.i32(i32 %34, i32 %36)
  %66 = select i1 %44, i64 %38, i64 0
  %67 = select i1 %44, i64 0, i64 %40
  br label %68

68:                                               ; preds = %56, %48, %46, %64
  %69 = phi i32 [ %65, %64 ], [ %34, %46 ], [ %34, %48 ], [ %36, %56 ]
  %70 = phi i64 [ %66, %64 ], [ %38, %46 ], [ %38, %48 ], [ %62, %56 ]
  %71 = phi i64 [ %67, %64 ], [ %40, %46 ], [ %54, %48 ], [ %40, %56 ]
  %72 = getelementptr inbounds %struct.fp_number_type, ptr %0, i32 0, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %97, label %77

77:                                               ; preds = %68
  %78 = icmp eq i32 %73, 0
  %79 = sub i64 %71, %70
  %80 = sub i64 %70, %71
  %81 = select i1 %78, i64 %80, i64 %79
  %82 = lshr i64 %81, 63
  %83 = trunc i64 %82 to i32
  %84 = tail call i64 @llvm.abs.i64(i64 %81, i1 false)
  %85 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 1
  store i32 %83, ptr %85, align 4
  %86 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 2
  store i32 %69, ptr %86, align 4
  %87 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 3
  store i64 %84, ptr %87, align 4
  %88 = add i64 %84, -1152921504606846976
  %89 = icmp ult i64 %88, -1152921504606846975
  br i1 %89, label %103, label %90

90:                                               ; preds = %77, %90
  %91 = phi i32 [ %94, %90 ], [ %69, %77 ]
  %92 = phi i64 [ %93, %90 ], [ %84, %77 ]
  %93 = shl nuw nsw i64 %92, 1
  %94 = add i32 %91, -1
  %95 = add nsw i64 %93, -1152921504606846976
  %96 = icmp ult i64 %95, -1152921504606846975
  br i1 %96, label %102, label %90

97:                                               ; preds = %68
  %98 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 1
  store i32 %73, ptr %98, align 4
  %99 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 2
  store i32 %69, ptr %99, align 4
  %100 = add i64 %71, %70
  %101 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 3
  store i64 %100, ptr %101, align 4
  br label %103

102:                                              ; preds = %90
  store i64 %93, ptr %87, align 4
  store i32 %94, ptr %86, align 4
  store i32 3, ptr %2, align 4
  br label %113

103:                                              ; preds = %77, %97
  %104 = phi i64 [ %84, %77 ], [ %100, %97 ]
  store i32 3, ptr %2, align 4
  %105 = icmp ugt i64 %104, 2305843009213693951
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 3
  %108 = and i64 %104, 1
  %109 = lshr i64 %104, 1
  %110 = or i64 %108, %109
  store i64 %110, ptr %107, align 4
  %111 = getelementptr inbounds %struct.fp_number_type, ptr %2, i32 0, i32 2
  %112 = add i32 %69, 1
  store i32 %112, ptr %111, align 4
  br label %113

113:                                              ; preds = %102, %20, %13, %103, %106, %30, %21, %11, %6, %3, %23
  %114 = phi ptr [ %2, %23 ], [ %0, %3 ], [ %1, %6 ], [ %0, %11 ], [ %1, %20 ], [ %0, %21 ], [ %1, %30 ], [ %2, %106 ], [ %2, %103 ], [ %19, %13 ], [ %2, %102 ]
  ret ptr %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc double @__subdf3(double noundef %0, double noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fp_number_type, align 4
  %4 = alloca %struct.fp_number_type, align 4
  %5 = alloca %struct.fp_number_type, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %6 = bitcast double %0 to i64
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %6 to i32
  %9 = shl i64 %6, 32
  %10 = and i64 %9, 4503595332403200
  %11 = or disjoint i64 %10, %7
  %12 = lshr i32 %8, 20
  %13 = and i32 %12, 2047
  %14 = lshr i32 %8, 31
  %15 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  switch i32 %13, label %37 [
    i32 0, label %16
    i32 2047, label %30
  ]

16:                                               ; preds = %2
  %17 = icmp eq i64 %11, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 2, ptr %3, align 4
  br label %43

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 -1022, ptr %20, align 4
  store i32 3, ptr %3, align 4
  %21 = shl nuw nsw i64 %11, 8
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ -1022, %19 ], [ %26, %22 ]
  %24 = phi i64 [ %21, %19 ], [ %25, %22 ]
  %25 = shl nuw nsw i64 %24, 1
  %26 = add i32 %23, -1
  %27 = icmp ult i64 %24, 576460752303423488
  br i1 %27, label %22, label %28

28:                                               ; preds = %22
  store i32 %26, ptr %20, align 4
  %29 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %25, ptr %29, align 4
  br label %43

30:                                               ; preds = %2
  %31 = icmp eq i64 %11, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store i32 4, ptr %3, align 4
  br label %43

33:                                               ; preds = %30
  %34 = lshr i32 %8, 19
  %35 = and i32 %34, 1
  store i32 %35, ptr %3, align 4
  %36 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %11, ptr %36, align 4
  br label %43

37:                                               ; preds = %2
  %38 = add nsw i32 %13, -1023
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  store i32 3, ptr %3, align 4
  %40 = shl nuw nsw i64 %11, 8
  %41 = or disjoint i64 %40, 1152921504606846976
  %42 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %18, %28, %32, %33, %37
  %44 = bitcast double %1 to i64
  %45 = lshr i64 %44, 32
  %46 = trunc i64 %44 to i32
  %47 = shl i64 %44, 32
  %48 = and i64 %47, 4503595332403200
  %49 = or disjoint i64 %48, %45
  %50 = lshr i32 %46, 20
  %51 = and i32 %50, 2047
  %52 = lshr i32 %46, 31
  %53 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 1
  store i32 %52, ptr %53, align 4
  switch i32 %51, label %75 [
    i32 0, label %54
    i32 2047, label %68
  ]

54:                                               ; preds = %43
  %55 = icmp eq i64 %49, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %54
  store i32 2, ptr %4, align 4
  br label %81

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 -1022, ptr %58, align 4
  store i32 3, ptr %4, align 4
  %59 = shl nuw nsw i64 %49, 8
  br label %60

60:                                               ; preds = %60, %57
  %61 = phi i32 [ -1022, %57 ], [ %64, %60 ]
  %62 = phi i64 [ %59, %57 ], [ %63, %60 ]
  %63 = shl nuw nsw i64 %62, 1
  %64 = add i32 %61, -1
  %65 = icmp ult i64 %62, 576460752303423488
  br i1 %65, label %60, label %66

66:                                               ; preds = %60
  store i32 %64, ptr %58, align 4
  %67 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %63, ptr %67, align 4
  br label %81

68:                                               ; preds = %43
  %69 = icmp eq i64 %49, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %68
  store i32 4, ptr %4, align 4
  br label %81

71:                                               ; preds = %68
  %72 = lshr i32 %46, 19
  %73 = and i32 %72, 1
  store i32 %73, ptr %4, align 4
  %74 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %49, ptr %74, align 4
  br label %81

75:                                               ; preds = %43
  %76 = add nsw i32 %51, -1023
  %77 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 %76, ptr %77, align 4
  store i32 3, ptr %4, align 4
  %78 = shl nuw nsw i64 %49, 8
  %79 = or disjoint i64 %78, 1152921504606846976
  %80 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %79, ptr %80, align 4
  br label %81

81:                                               ; preds = %56, %66, %70, %71, %75
  %82 = xor i32 %52, 1
  store i32 %82, ptr %53, align 4
  %83 = call arm_apcscc ptr @RuntimeDoubleAddParts(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #12
  %84 = getelementptr inbounds %struct.fp_number_type, ptr %83, i32 0, i32 3
  %85 = load i64, ptr %84, align 4
  %86 = getelementptr inbounds %struct.fp_number_type, ptr %83, i32 0, i32 1
  %87 = load i32, ptr %86, align 4
  %88 = load i32, ptr %83, align 4
  %89 = icmp ugt i32 %88, 1
  br i1 %89, label %92, label %90

90:                                               ; preds = %81
  %91 = or i64 %85, 2251799813685248
  br label %128

92:                                               ; preds = %81
  %93 = icmp eq i32 %88, 4
  br i1 %93, label %128, label %94

94:                                               ; preds = %92
  %95 = icmp eq i32 %88, 2
  %96 = icmp eq i64 %85, 0
  %97 = select i1 %95, i1 true, i1 %96
  br i1 %97, label %128, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct.fp_number_type, ptr %83, i32 0, i32 2
  %100 = load i32, ptr %99, align 4
  %101 = icmp slt i32 %100, -1022
  br i1 %101, label %102, label %109

102:                                              ; preds = %98
  %103 = icmp ult i32 %100, -1078
  br i1 %103, label %128, label %104

104:                                              ; preds = %102
  %105 = sub nuw nsw i32 -1022, %100
  %106 = zext nneg i32 %105 to i64
  %107 = lshr i64 %85, %106
  %108 = lshr i64 %107, 8
  br label %128

109:                                              ; preds = %98
  %110 = icmp sgt i32 %100, 1023
  br i1 %110, label %128, label %111

111:                                              ; preds = %109
  %112 = and i64 %85, 255
  %113 = icmp eq i64 %112, 128
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = lshr exact i64 %85, 1
  %116 = and i64 %115, 128
  %117 = add i64 %116, %85
  br label %120

118:                                              ; preds = %111
  %119 = add i64 %85, 127
  br label %120

120:                                              ; preds = %118, %114
  %121 = phi i64 [ %119, %118 ], [ %117, %114 ]
  %122 = icmp ugt i64 %121, 2305843009213693951
  %123 = select i1 %122, i32 1024, i32 1023
  %124 = add nsw i32 %123, %100
  %125 = zext i1 %122 to i64
  %126 = lshr i64 %121, %125
  %127 = lshr i64 %126, 8
  br label %128

128:                                              ; preds = %90, %92, %94, %102, %104, %109, %120
  %129 = phi i32 [ 2047, %90 ], [ %124, %120 ], [ 2047, %92 ], [ 0, %94 ], [ 0, %102 ], [ 0, %104 ], [ 2047, %109 ]
  %130 = phi i64 [ %91, %90 ], [ %127, %120 ], [ 0, %92 ], [ 0, %94 ], [ 0, %102 ], [ %108, %104 ], [ 0, %109 ]
  %131 = and i64 %130, 4503595332403200
  %132 = zext nneg i32 %129 to i64
  %133 = shl nuw nsw i64 %132, 52
  %134 = and i32 %87, 1
  %135 = zext nneg i32 %134 to i64
  %136 = shl nuw i64 %135, 63
  %137 = or disjoint i64 %133, %136
  %138 = or disjoint i64 %137, %131
  %139 = call i64 @llvm.fshl.i64(i64 %130, i64 %138, i64 32)
  %140 = bitcast i64 %139 to double
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret double %140
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc double @__muldf3(double noundef %0, double noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fp_number_type, align 4
  %4 = alloca %struct.fp_number_type, align 4
  %5 = alloca %struct.fp_number_type, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %5) #11
  %6 = bitcast double %0 to i64
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %6 to i32
  %9 = shl i64 %6, 32
  %10 = and i64 %9, 4503595332403200
  %11 = or disjoint i64 %10, %7
  %12 = lshr i32 %8, 20
  %13 = and i32 %12, 2047
  %14 = lshr i32 %8, 31
  %15 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 1
  store i32 %14, ptr %15, align 4
  switch i32 %13, label %37 [
    i32 0, label %16
    i32 2047, label %30
  ]

16:                                               ; preds = %2
  %17 = icmp eq i64 %11, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store i32 2, ptr %3, align 4
  br label %43

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 -1022, ptr %20, align 4
  store i32 3, ptr %3, align 4
  %21 = shl nuw nsw i64 %11, 8
  br label %22

22:                                               ; preds = %22, %19
  %23 = phi i32 [ -1022, %19 ], [ %26, %22 ]
  %24 = phi i64 [ %21, %19 ], [ %25, %22 ]
  %25 = shl nuw nsw i64 %24, 1
  %26 = add i32 %23, -1
  %27 = icmp ult i64 %24, 576460752303423488
  br i1 %27, label %22, label %28

28:                                               ; preds = %22
  store i32 %26, ptr %20, align 4
  %29 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %25, ptr %29, align 4
  br label %43

30:                                               ; preds = %2
  %31 = icmp eq i64 %11, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  store i32 4, ptr %3, align 4
  br label %43

33:                                               ; preds = %30
  %34 = lshr i32 %8, 19
  %35 = and i32 %34, 1
  store i32 %35, ptr %3, align 4
  %36 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %11, ptr %36, align 4
  br label %43

37:                                               ; preds = %2
  %38 = add nsw i32 %13, -1023
  %39 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  store i32 3, ptr %3, align 4
  %40 = shl nuw nsw i64 %11, 8
  %41 = or disjoint i64 %40, 1152921504606846976
  %42 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  store i64 %41, ptr %42, align 4
  br label %43

43:                                               ; preds = %18, %28, %32, %33, %37
  %44 = phi i32 [ undef, %18 ], [ %26, %28 ], [ undef, %32 ], [ undef, %33 ], [ %38, %37 ]
  %45 = phi i64 [ undef, %18 ], [ %25, %28 ], [ undef, %32 ], [ %11, %33 ], [ %41, %37 ]
  %46 = phi i32 [ 2, %18 ], [ 3, %28 ], [ 4, %32 ], [ %35, %33 ], [ 3, %37 ]
  %47 = bitcast double %1 to i64
  %48 = lshr i64 %47, 32
  %49 = trunc i64 %47 to i32
  %50 = shl i64 %47, 32
  %51 = and i64 %50, 4503595332403200
  %52 = or disjoint i64 %51, %48
  %53 = lshr i32 %49, 20
  %54 = and i32 %53, 2047
  %55 = lshr i32 %49, 31
  %56 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 1
  store i32 %55, ptr %56, align 4
  switch i32 %54, label %78 [
    i32 0, label %57
    i32 2047, label %71
  ]

57:                                               ; preds = %43
  %58 = icmp eq i64 %52, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  store i32 2, ptr %4, align 4
  br label %84

60:                                               ; preds = %57
  %61 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 -1022, ptr %61, align 4
  store i32 3, ptr %4, align 4
  %62 = shl nuw nsw i64 %52, 8
  br label %63

63:                                               ; preds = %63, %60
  %64 = phi i32 [ -1022, %60 ], [ %67, %63 ]
  %65 = phi i64 [ %62, %60 ], [ %66, %63 ]
  %66 = shl nuw nsw i64 %65, 1
  %67 = add i32 %64, -1
  %68 = icmp ult i64 %65, 576460752303423488
  br i1 %68, label %63, label %69

69:                                               ; preds = %63
  store i32 %67, ptr %61, align 4
  %70 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %66, ptr %70, align 4
  br label %84

71:                                               ; preds = %43
  %72 = icmp eq i64 %52, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71
  store i32 4, ptr %4, align 4
  br label %84

74:                                               ; preds = %71
  %75 = lshr i32 %49, 19
  %76 = and i32 %75, 1
  store i32 %76, ptr %4, align 4
  %77 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %52, ptr %77, align 4
  br label %84

78:                                               ; preds = %43
  %79 = add nsw i32 %54, -1023
  %80 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 2
  store i32 %79, ptr %80, align 4
  store i32 3, ptr %4, align 4
  %81 = shl nuw nsw i64 %52, 8
  %82 = or disjoint i64 %81, 1152921504606846976
  %83 = getelementptr inbounds %struct.fp_number_type, ptr %4, i32 0, i32 3
  store i64 %82, ptr %83, align 4
  br label %84

84:                                               ; preds = %59, %69, %73, %74, %78
  %85 = phi i32 [ undef, %59 ], [ %67, %69 ], [ undef, %73 ], [ undef, %74 ], [ %79, %78 ]
  %86 = phi i64 [ undef, %59 ], [ %66, %69 ], [ undef, %73 ], [ %52, %74 ], [ %82, %78 ]
  %87 = phi i32 [ 2, %59 ], [ 3, %69 ], [ 4, %73 ], [ %76, %74 ], [ 3, %78 ]
  %88 = icmp ugt i32 %46, 1
  br i1 %88, label %89, label %173

89:                                               ; preds = %84
  %90 = icmp ugt i32 %87, 1
  br i1 %90, label %91, label %173

91:                                               ; preds = %89
  %92 = icmp eq i32 %46, 4
  br i1 %92, label %93, label %95

93:                                               ; preds = %91
  %94 = icmp eq i32 %87, 2
  br i1 %94, label %178, label %173

95:                                               ; preds = %91
  %96 = icmp eq i32 %87, 4
  %97 = icmp eq i32 %46, 2
  br i1 %96, label %98, label %99

98:                                               ; preds = %95
  br i1 %97, label %178, label %173

99:                                               ; preds = %95
  br i1 %97, label %173, label %100

100:                                              ; preds = %99
  %101 = icmp eq i32 %87, 2
  br i1 %101, label %173, label %102

102:                                              ; preds = %100
  %103 = and i64 %45, 4294967295
  %104 = lshr i64 %45, 32
  %105 = and i64 %86, 4294967295
  %106 = lshr i64 %86, 32
  %107 = mul nuw i64 %105, %103
  %108 = mul nuw i64 %106, %103
  %109 = mul nuw i64 %105, %104
  %110 = mul nuw i64 %106, %104
  %111 = add i64 %108, %109
  %112 = icmp ult i64 %111, %108
  %113 = select i1 %112, i64 4294967296, i64 0
  %114 = shl i64 %111, 32
  %115 = add i64 %114, %107
  %116 = icmp ult i64 %115, %107
  %117 = zext i1 %116 to i64
  %118 = lshr i64 %111, 32
  %119 = add nuw i64 %118, %110
  %120 = add i64 %119, %113
  %121 = add i64 %120, %117
  %122 = add i32 %85, %44
  %123 = getelementptr inbounds %struct.fp_number_type, ptr %5, i32 0, i32 2
  store i32 %122, ptr %123, align 4
  %124 = icmp ne i32 %14, %55
  %125 = zext i1 %124 to i32
  %126 = getelementptr inbounds %struct.fp_number_type, ptr %5, i32 0, i32 1
  store i32 %125, ptr %126, align 4
  %127 = add i32 %122, 4
  store i32 %127, ptr %123, align 4
  %128 = icmp ugt i64 %121, 2305843009213693951
  br i1 %128, label %135, label %130

129:                                              ; preds = %135
  store i32 %139, ptr %123, align 4
  br label %130

130:                                              ; preds = %129, %102
  %131 = phi i32 [ %139, %129 ], [ %127, %102 ]
  %132 = phi i64 [ %145, %129 ], [ %121, %102 ]
  %133 = phi i64 [ %144, %129 ], [ %115, %102 ]
  %134 = icmp ult i64 %132, 1152921504606846976
  br i1 %134, label %147, label %156

135:                                              ; preds = %102, %135
  %136 = phi i32 [ %139, %135 ], [ %127, %102 ]
  %137 = phi i64 [ %144, %135 ], [ %115, %102 ]
  %138 = phi i64 [ %145, %135 ], [ %121, %102 ]
  %139 = add i32 %136, 1
  %140 = and i64 %138, 1
  %141 = icmp eq i64 %140, 0
  %142 = lshr i64 %137, 1
  %143 = or disjoint i64 %142, -9223372036854775808
  %144 = select i1 %141, i64 %137, i64 %143
  %145 = lshr i64 %138, 1
  %146 = icmp ugt i64 %138, 4611686018427387903
  br i1 %146, label %135, label %129

147:                                              ; preds = %130, %147
  %148 = phi i32 [ %151, %147 ], [ %131, %130 ]
  %149 = phi i64 [ %153, %147 ], [ %133, %130 ]
  %150 = phi i64 [ %152, %147 ], [ %132, %130 ]
  %151 = add i32 %148, -1
  %152 = tail call i64 @llvm.fshl.i64(i64 %150, i64 %149, i64 1)
  %153 = shl i64 %149, 1
  %154 = icmp ult i64 %152, 1152921504606846976
  br i1 %154, label %147, label %155

155:                                              ; preds = %147
  store i32 %151, ptr %123, align 4
  br label %156

156:                                              ; preds = %155, %130
  %157 = phi i64 [ %152, %155 ], [ %132, %130 ]
  %158 = phi i64 [ %153, %155 ], [ %133, %130 ]
  %159 = and i64 %157, 255
  %160 = icmp eq i64 %159, 128
  br i1 %160, label %161, label %170

161:                                              ; preds = %156
  %162 = and i64 %157, 256
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = add nuw nsw i64 %157, 128
  br label %170

166:                                              ; preds = %161
  %167 = icmp eq i64 %158, 0
  %168 = add nuw nsw i64 %157, 128
  %169 = select i1 %167, i64 %157, i64 %168
  br label %170

170:                                              ; preds = %166, %164, %156
  %171 = phi i64 [ %165, %164 ], [ %157, %156 ], [ %169, %166 ]
  %172 = getelementptr inbounds %struct.fp_number_type, ptr %5, i32 0, i32 3
  store i64 %171, ptr %172, align 4
  store i32 3, ptr %5, align 4
  br label %190

173:                                              ; preds = %100, %99, %98, %93, %89, %84
  %174 = phi ptr [ %15, %84 ], [ %56, %89 ], [ %15, %93 ], [ %56, %98 ], [ %15, %99 ], [ %56, %100 ]
  %175 = phi ptr [ %3, %84 ], [ %4, %89 ], [ %3, %93 ], [ %4, %98 ], [ %3, %99 ], [ %4, %100 ]
  %176 = icmp ne i32 %14, %55
  %177 = zext i1 %176 to i32
  store i32 %177, ptr %174, align 4
  br label %178

178:                                              ; preds = %173, %93, %98
  %179 = phi ptr [ @gRuntimeDoubleNaNParts, %98 ], [ @gRuntimeDoubleNaNParts, %93 ], [ %175, %173 ]
  %180 = load i32, ptr %179, align 4
  %181 = getelementptr inbounds %struct.fp_number_type, ptr %179, i32 0, i32 3
  %182 = load i64, ptr %181, align 4
  %183 = getelementptr inbounds %struct.fp_number_type, ptr %179, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = icmp ugt i32 %180, 1
  br i1 %185, label %188, label %186

186:                                              ; preds = %178
  %187 = or i64 %182, 2251799813685248
  br label %228

188:                                              ; preds = %178
  %189 = icmp eq i32 %180, 4
  br i1 %189, label %228, label %190

190:                                              ; preds = %170, %188
  %191 = phi i32 [ 3, %170 ], [ %180, %188 ]
  %192 = phi ptr [ %5, %170 ], [ %179, %188 ]
  %193 = phi i64 [ %171, %170 ], [ %182, %188 ]
  %194 = phi i32 [ %125, %170 ], [ %184, %188 ]
  %195 = icmp eq i32 %191, 2
  %196 = icmp eq i64 %193, 0
  %197 = select i1 %195, i1 true, i1 %196
  br i1 %197, label %228, label %198

198:                                              ; preds = %190
  %199 = getelementptr inbounds %struct.fp_number_type, ptr %192, i32 0, i32 2
  %200 = load i32, ptr %199, align 4
  %201 = icmp slt i32 %200, -1022
  br i1 %201, label %202, label %209

202:                                              ; preds = %198
  %203 = icmp ult i32 %200, -1078
  br i1 %203, label %228, label %204

204:                                              ; preds = %202
  %205 = sub nuw nsw i32 -1022, %200
  %206 = zext nneg i32 %205 to i64
  %207 = lshr i64 %193, %206
  %208 = lshr i64 %207, 8
  br label %228

209:                                              ; preds = %198
  %210 = icmp sgt i32 %200, 1023
  br i1 %210, label %228, label %211

211:                                              ; preds = %209
  %212 = and i64 %193, 255
  %213 = icmp eq i64 %212, 128
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = lshr exact i64 %193, 1
  %216 = and i64 %215, 128
  %217 = add i64 %216, %193
  br label %220

218:                                              ; preds = %211
  %219 = add i64 %193, 127
  br label %220

220:                                              ; preds = %218, %214
  %221 = phi i64 [ %219, %218 ], [ %217, %214 ]
  %222 = icmp ugt i64 %221, 2305843009213693951
  %223 = select i1 %222, i32 1024, i32 1023
  %224 = add nsw i32 %223, %200
  %225 = zext i1 %222 to i64
  %226 = lshr i64 %221, %225
  %227 = lshr i64 %226, 8
  br label %228

228:                                              ; preds = %186, %188, %190, %202, %204, %209, %220
  %229 = phi i32 [ %184, %186 ], [ %194, %220 ], [ %184, %188 ], [ %194, %190 ], [ %194, %202 ], [ %194, %204 ], [ %194, %209 ]
  %230 = phi i32 [ 2047, %186 ], [ %224, %220 ], [ 2047, %188 ], [ 0, %190 ], [ 0, %202 ], [ 0, %204 ], [ 2047, %209 ]
  %231 = phi i64 [ %187, %186 ], [ %227, %220 ], [ 0, %188 ], [ 0, %190 ], [ 0, %202 ], [ %208, %204 ], [ 0, %209 ]
  %232 = and i64 %231, 4503595332403200
  %233 = zext nneg i32 %230 to i64
  %234 = shl nuw nsw i64 %233, 52
  %235 = and i32 %229, 1
  %236 = zext nneg i32 %235 to i64
  %237 = shl nuw i64 %236, 63
  %238 = or disjoint i64 %234, %237
  %239 = or disjoint i64 %238, %232
  %240 = tail call i64 @llvm.fshl.i64(i64 %231, i64 %239, i64 32)
  %241 = bitcast i64 %240 to double
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret double %241
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc double @__divdf3(double noundef %0, double noundef %1) local_unnamed_addr #3 {
  %3 = alloca %struct.fp_number_type, align 4
  %4 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %3) #11
  %6 = bitcast double %0 to i64
  %7 = lshr i64 %6, 32
  %8 = trunc i64 %6 to i32
  %9 = shl i64 %6, 32
  %10 = and i64 %9, 4503595332403200
  %11 = or disjoint i64 %10, %7
  %12 = lshr i32 %8, 20
  %13 = and i32 %12, 2047
  %14 = lshr i32 %8, 31
  store i32 %14, ptr %4, align 4
  switch i32 %13, label %34 [
    i32 0, label %15
    i32 2047, label %28
  ]

15:                                               ; preds = %2
  %16 = icmp eq i64 %11, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  store i32 2, ptr %3, align 4
  br label %39

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 -1022, ptr %19, align 4
  store i32 3, ptr %3, align 4
  %20 = shl nuw nsw i64 %11, 8
  br label %21

21:                                               ; preds = %21, %18
  %22 = phi i32 [ -1022, %18 ], [ %25, %21 ]
  %23 = phi i64 [ %20, %18 ], [ %24, %21 ]
  %24 = shl nuw nsw i64 %23, 1
  %25 = add i32 %22, -1
  %26 = icmp ult i64 %23, 576460752303423488
  br i1 %26, label %21, label %27

27:                                               ; preds = %21
  store i32 %25, ptr %19, align 4
  store i64 %24, ptr %5, align 4
  br label %39

28:                                               ; preds = %2
  %29 = icmp eq i64 %11, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  store i32 4, ptr %3, align 4
  br label %39

31:                                               ; preds = %28
  %32 = lshr i32 %8, 19
  %33 = and i32 %32, 1
  store i32 %33, ptr %3, align 4
  store i64 %11, ptr %5, align 4
  br label %39

34:                                               ; preds = %2
  %35 = add nsw i32 %13, -1023
  %36 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 %35, ptr %36, align 4
  store i32 3, ptr %3, align 4
  %37 = shl nuw nsw i64 %11, 8
  %38 = or disjoint i64 %37, 1152921504606846976
  store i64 %38, ptr %5, align 4
  br label %39

39:                                               ; preds = %17, %27, %30, %31, %34
  %40 = phi i32 [ undef, %17 ], [ %25, %27 ], [ undef, %30 ], [ undef, %31 ], [ %35, %34 ]
  %41 = phi i64 [ undef, %17 ], [ %24, %27 ], [ undef, %30 ], [ %11, %31 ], [ %38, %34 ]
  %42 = phi i32 [ 2, %17 ], [ 3, %27 ], [ 4, %30 ], [ %33, %31 ], [ 3, %34 ]
  %43 = bitcast double %1 to i64
  %44 = lshr i64 %43, 32
  %45 = trunc i64 %43 to i32
  %46 = shl i64 %43, 32
  %47 = and i64 %46, 4503595332403200
  %48 = or disjoint i64 %47, %44
  %49 = lshr i32 %45, 20
  %50 = and i32 %49, 2047
  %51 = lshr i32 %45, 31
  switch i32 %50, label %67 [
    i32 0, label %52
    i32 2047, label %62
  ]

52:                                               ; preds = %39
  %53 = icmp eq i64 %48, 0
  br i1 %53, label %71, label %54

54:                                               ; preds = %52
  %55 = shl nuw nsw i64 %48, 8
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i32 [ -1022, %54 ], [ %60, %56 ]
  %58 = phi i64 [ %55, %54 ], [ %59, %56 ]
  %59 = shl nuw nsw i64 %58, 1
  %60 = add i32 %57, -1
  %61 = icmp ult i64 %58, 576460752303423488
  br i1 %61, label %56, label %71

62:                                               ; preds = %39
  %63 = icmp eq i64 %48, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %62
  %65 = lshr i32 %45, 19
  %66 = and i32 %65, 1
  br label %71

67:                                               ; preds = %39
  %68 = add nsw i32 %50, -1023
  %69 = shl nuw nsw i64 %48, 8
  %70 = or disjoint i64 %69, 1152921504606846976
  br label %71

71:                                               ; preds = %56, %62, %52, %64, %67
  %72 = phi i64 [ %70, %67 ], [ %48, %64 ], [ undef, %52 ], [ undef, %62 ], [ %59, %56 ]
  %73 = phi i32 [ %68, %67 ], [ undef, %64 ], [ undef, %52 ], [ undef, %62 ], [ %60, %56 ]
  %74 = phi i32 [ 3, %67 ], [ %66, %64 ], [ 2, %52 ], [ 4, %62 ], [ 3, %56 ]
  %75 = icmp ugt i32 %42, 1
  br i1 %75, label %76, label %134

76:                                               ; preds = %71
  %77 = icmp ugt i32 %74, 1
  br i1 %77, label %78, label %134

78:                                               ; preds = %76
  %79 = xor i32 %51, %14
  store i32 %79, ptr %4, align 4
  switch i32 %42, label %90 [
    i32 4, label %80
    i32 2, label %80
  ]

80:                                               ; preds = %78, %78
  %81 = icmp eq i32 %42, %74
  %82 = select i1 %81, ptr @gRuntimeDoubleNaNParts, ptr %3
  %83 = load i32, ptr %82, align 4
  %84 = load i64, ptr getelementptr inbounds (%struct.fp_number_type, ptr @gRuntimeDoubleNaNParts, i32 0, i32 3), align 4
  %85 = load i64, ptr %5, align 4
  %86 = select i1 %81, i64 %84, i64 %85
  %87 = load i32, ptr getelementptr inbounds (%struct.fp_number_type, ptr @gRuntimeDoubleNaNParts, i32 0, i32 1), align 4
  %88 = load i32, ptr %4, align 4
  %89 = select i1 %81, i32 %87, i32 %88
  br label %128

90:                                               ; preds = %78
  switch i32 %74, label %94 [
    i32 4, label %91
    i32 2, label %93
  ]

91:                                               ; preds = %90
  store i64 0, ptr %5, align 4
  %92 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  store i32 0, ptr %92, align 4
  br label %138

93:                                               ; preds = %90
  store i32 4, ptr %3, align 4
  br label %178

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.fp_number_type, ptr %3, i32 0, i32 2
  %96 = sub i32 %40, %73
  %97 = icmp ult i64 %41, %72
  %98 = sext i1 %97 to i32
  %99 = add i32 %96, %98
  %100 = zext i1 %97 to i64
  %101 = shl i64 %41, %100
  store i32 %99, ptr %95, align 4
  br label %102

102:                                              ; preds = %102, %94
  %103 = phi i64 [ 0, %94 ], [ %110, %102 ]
  %104 = phi i64 [ %101, %94 ], [ %112, %102 ]
  %105 = phi i64 [ 1152921504606846976, %94 ], [ %111, %102 ]
  %106 = icmp ult i64 %104, %72
  %107 = select i1 %106, i64 0, i64 %72
  %108 = sub i64 %104, %107
  %109 = select i1 %106, i64 0, i64 %105
  %110 = or i64 %109, %103
  %111 = lshr i64 %105, 1
  %112 = shl i64 %108, 1
  %113 = icmp ult i64 %105, 2
  br i1 %113, label %114, label %102

114:                                              ; preds = %102
  %115 = and i64 %110, 255
  %116 = icmp eq i64 %115, 128
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = and i64 %103, 256
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = add i64 %110, 128
  br label %126

122:                                              ; preds = %117
  %123 = icmp eq i64 %112, 0
  %124 = add nuw nsw i64 %110, 128
  %125 = select i1 %123, i64 %110, i64 %124
  br label %126

126:                                              ; preds = %122, %120, %114
  %127 = phi i64 [ %121, %120 ], [ %110, %114 ], [ %125, %122 ]
  store i64 %127, ptr %5, align 4
  br label %128

128:                                              ; preds = %80, %126
  %129 = phi i32 [ %89, %80 ], [ %79, %126 ]
  %130 = phi i64 [ %86, %80 ], [ %127, %126 ]
  %131 = phi i32 [ %83, %80 ], [ %42, %126 ]
  %132 = phi ptr [ %82, %80 ], [ %3, %126 ]
  %133 = icmp ugt i32 %131, 1
  br i1 %133, label %138, label %134

134:                                              ; preds = %76, %71, %128
  %135 = phi i32 [ %129, %128 ], [ %51, %76 ], [ %14, %71 ]
  %136 = phi i64 [ %130, %128 ], [ %72, %76 ], [ %41, %71 ]
  %137 = or i64 %136, 2251799813685248
  br label %178

138:                                              ; preds = %91, %128
  %139 = phi ptr [ %3, %91 ], [ %132, %128 ]
  %140 = phi i32 [ %42, %91 ], [ %131, %128 ]
  %141 = phi i64 [ 0, %91 ], [ %130, %128 ]
  %142 = phi i32 [ %79, %91 ], [ %129, %128 ]
  %143 = icmp eq i32 %140, 4
  br i1 %143, label %178, label %144

144:                                              ; preds = %138
  %145 = icmp eq i32 %140, 2
  %146 = icmp eq i64 %141, 0
  %147 = select i1 %145, i1 true, i1 %146
  br i1 %147, label %178, label %148

148:                                              ; preds = %144
  %149 = getelementptr inbounds %struct.fp_number_type, ptr %139, i32 0, i32 2
  %150 = load i32, ptr %149, align 4
  %151 = icmp slt i32 %150, -1022
  br i1 %151, label %152, label %159

152:                                              ; preds = %148
  %153 = icmp ult i32 %150, -1078
  br i1 %153, label %178, label %154

154:                                              ; preds = %152
  %155 = sub nuw nsw i32 -1022, %150
  %156 = zext nneg i32 %155 to i64
  %157 = lshr i64 %141, %156
  %158 = lshr i64 %157, 8
  br label %178

159:                                              ; preds = %148
  %160 = icmp sgt i32 %150, 1023
  br i1 %160, label %178, label %161

161:                                              ; preds = %159
  %162 = and i64 %141, 255
  %163 = icmp eq i64 %162, 128
  br i1 %163, label %164, label %168

164:                                              ; preds = %161
  %165 = lshr exact i64 %141, 1
  %166 = and i64 %165, 128
  %167 = add i64 %166, %141
  br label %170

168:                                              ; preds = %161
  %169 = add i64 %141, 127
  br label %170

170:                                              ; preds = %168, %164
  %171 = phi i64 [ %169, %168 ], [ %167, %164 ]
  %172 = icmp ugt i64 %171, 2305843009213693951
  %173 = select i1 %172, i32 1024, i32 1023
  %174 = add nsw i32 %173, %150
  %175 = zext i1 %172 to i64
  %176 = lshr i64 %171, %175
  %177 = lshr i64 %176, 8
  br label %178

178:                                              ; preds = %93, %134, %138, %144, %152, %154, %159, %170
  %179 = phi i32 [ %135, %134 ], [ %142, %170 ], [ %142, %138 ], [ %142, %144 ], [ %142, %152 ], [ %142, %154 ], [ %142, %159 ], [ %79, %93 ]
  %180 = phi i32 [ 2047, %134 ], [ %174, %170 ], [ 2047, %138 ], [ 0, %144 ], [ 0, %152 ], [ 0, %154 ], [ 2047, %159 ], [ 2047, %93 ]
  %181 = phi i64 [ %137, %134 ], [ %177, %170 ], [ 0, %138 ], [ 0, %144 ], [ 0, %152 ], [ %158, %154 ], [ 0, %159 ], [ 0, %93 ]
  %182 = and i64 %181, 4503595332403200
  %183 = zext nneg i32 %180 to i64
  %184 = shl nuw nsw i64 %183, 52
  %185 = and i32 %179, 1
  %186 = zext nneg i32 %185 to i64
  %187 = shl nuw i64 %186, 63
  %188 = or disjoint i64 %184, %187
  %189 = or disjoint i64 %188, %182
  %190 = tail call i64 @llvm.fshl.i64(i64 %181, i64 %189, i64 32)
  %191 = bitcast i64 %190 to double
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %3) #11
  ret double %191
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local arm_apcscc i32 @__fpcmp_parts_d(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
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
  %67 = load i64, ptr %66, align 4
  %68 = getelementptr inbounds %struct.fp_number_type, ptr %1, i32 0, i32 3
  %69 = load i64, ptr %68, align 4
  %70 = icmp ugt i64 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = icmp eq i32 %40, 0
  %73 = select i1 %72, i32 1, i32 -1
  br label %79

74:                                               ; preds = %65
  %75 = icmp ult i64 %67, %69
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
define dso_local arm_apcscc i32 @__cmpdf2(double noundef %0, double noundef %1) local_unnamed_addr #4 {
  %3 = bitcast double %0 to i64
  %4 = lshr i64 %3, 32
  %5 = trunc i64 %3 to i32
  %6 = shl i64 %3, 32
  %7 = and i64 %6, 4503595332403200
  %8 = or disjoint i64 %7, %4
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 2047
  %11 = lshr i32 %5, 31
  switch i32 %10, label %27 [
    i32 0, label %12
    i32 2047, label %22
  ]

12:                                               ; preds = %2
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = shl nuw nsw i64 %8, 8
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ -1022, %14 ], [ %20, %16 ]
  %18 = phi i64 [ %15, %14 ], [ %19, %16 ]
  %19 = shl nuw nsw i64 %18, 1
  %20 = add i32 %17, -1
  %21 = icmp ult i64 %18, 576460752303423488
  br i1 %21, label %16, label %31

22:                                               ; preds = %2
  %23 = icmp eq i64 %8, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = lshr i32 %5, 19
  %26 = and i32 %25, 1
  br label %31

27:                                               ; preds = %2
  %28 = add nsw i32 %10, -1023
  %29 = shl nuw nsw i64 %8, 8
  %30 = or disjoint i64 %29, 1152921504606846976
  br label %31

31:                                               ; preds = %16, %22, %12, %24, %27
  %32 = phi i32 [ %28, %27 ], [ undef, %24 ], [ undef, %12 ], [ undef, %22 ], [ %20, %16 ]
  %33 = phi i32 [ 3, %27 ], [ %26, %24 ], [ 2, %12 ], [ 4, %22 ], [ 3, %16 ]
  %34 = phi i64 [ %30, %27 ], [ %8, %24 ], [ undef, %12 ], [ undef, %22 ], [ %19, %16 ]
  %35 = bitcast double %1 to i64
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %35 to i32
  %38 = shl i64 %35, 32
  %39 = and i64 %38, 4503595332403200
  %40 = or disjoint i64 %39, %36
  %41 = lshr i32 %37, 20
  %42 = and i32 %41, 2047
  %43 = lshr i32 %37, 31
  switch i32 %42, label %56 [
    i32 0, label %44
    i32 2047, label %54
  ]

44:                                               ; preds = %31
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = shl nuw nsw i64 %40, 8
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ -1022, %46 ], [ %52, %48 ]
  %50 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %51 = shl nuw nsw i64 %50, 1
  %52 = add i32 %49, -1
  %53 = icmp ult i64 %50, 576460752303423488
  br i1 %53, label %48, label %60

54:                                               ; preds = %31
  %55 = icmp eq i64 %40, 0
  br i1 %55, label %60, label %113

56:                                               ; preds = %31
  %57 = add nsw i32 %42, -1023
  %58 = shl nuw nsw i64 %40, 8
  %59 = or disjoint i64 %58, 1152921504606846976
  br label %60

60:                                               ; preds = %48, %54, %44, %56
  %61 = phi i64 [ %59, %56 ], [ undef, %44 ], [ undef, %54 ], [ %51, %48 ]
  %62 = phi i32 [ %57, %56 ], [ undef, %44 ], [ undef, %54 ], [ %52, %48 ]
  %63 = phi i1 [ false, %56 ], [ false, %44 ], [ true, %54 ], [ false, %48 ]
  %64 = phi i1 [ false, %56 ], [ true, %44 ], [ false, %54 ], [ false, %48 ]
  %65 = icmp ugt i32 %33, 1
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = icmp eq i32 %33, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  br i1 %63, label %69, label %71

69:                                               ; preds = %68
  %70 = sub nsw i32 %43, %11
  br label %113

71:                                               ; preds = %68
  %72 = icmp sgt i32 %5, -1
  %73 = select i1 %72, i32 1, i32 -1
  br label %113

74:                                               ; preds = %66
  br i1 %63, label %75, label %78

75:                                               ; preds = %74
  %76 = icmp sgt i32 %37, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %113

78:                                               ; preds = %74
  %79 = icmp eq i32 %33, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br i1 %64, label %113, label %81

81:                                               ; preds = %80
  %82 = icmp sgt i32 %37, -1
  %83 = select i1 %82, i32 -1, i32 1
  br label %113

84:                                               ; preds = %78
  br i1 %64, label %85, label %88

85:                                               ; preds = %84
  %86 = icmp sgt i32 %5, -1
  %87 = select i1 %86, i32 1, i32 -1
  br label %113

88:                                               ; preds = %84
  %89 = icmp eq i32 %11, %43
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = icmp sgt i32 %5, -1
  %92 = select i1 %91, i32 1, i32 -1
  br label %113

93:                                               ; preds = %88
  %94 = icmp sgt i32 %32, %62
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = icmp sgt i32 %5, -1
  %97 = select i1 %96, i32 1, i32 -1
  br label %113

98:                                               ; preds = %93
  %99 = icmp slt i32 %32, %62
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = icmp sgt i32 %5, -1
  %102 = select i1 %101, i32 -1, i32 1
  br label %113

103:                                              ; preds = %98
  %104 = icmp ugt i64 %34, %61
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = icmp sgt i32 %5, -1
  %107 = select i1 %106, i32 1, i32 -1
  br label %113

108:                                              ; preds = %103
  %109 = icmp ult i64 %34, %61
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = icmp sgt i32 %5, -1
  %112 = select i1 %111, i32 -1, i32 1
  br label %113

113:                                              ; preds = %54, %60, %69, %71, %75, %80, %81, %85, %90, %95, %100, %105, %108, %110
  %114 = phi i32 [ %70, %69 ], [ %73, %71 ], [ %77, %75 ], [ %83, %81 ], [ %87, %85 ], [ %92, %90 ], [ %97, %95 ], [ %102, %100 ], [ %107, %105 ], [ %112, %110 ], [ 1, %60 ], [ 0, %80 ], [ 0, %108 ], [ 1, %54 ]
  ret i32 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__eqdf2(double noundef %0, double noundef %1) local_unnamed_addr #4 {
  %3 = bitcast double %0 to i64
  %4 = lshr i64 %3, 32
  %5 = trunc i64 %3 to i32
  %6 = shl i64 %3, 32
  %7 = and i64 %6, 4503595332403200
  %8 = or disjoint i64 %7, %4
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 2047
  %11 = lshr i32 %5, 31
  switch i32 %10, label %27 [
    i32 0, label %12
    i32 2047, label %22
  ]

12:                                               ; preds = %2
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = shl nuw nsw i64 %8, 8
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ -1022, %14 ], [ %20, %16 ]
  %18 = phi i64 [ %15, %14 ], [ %19, %16 ]
  %19 = shl nuw nsw i64 %18, 1
  %20 = add i32 %17, -1
  %21 = icmp ult i64 %18, 576460752303423488
  br i1 %21, label %16, label %31

22:                                               ; preds = %2
  %23 = icmp eq i64 %8, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = lshr i32 %5, 19
  %26 = and i32 %25, 1
  br label %31

27:                                               ; preds = %2
  %28 = add nsw i32 %10, -1023
  %29 = shl nuw nsw i64 %8, 8
  %30 = or disjoint i64 %29, 1152921504606846976
  br label %31

31:                                               ; preds = %16, %22, %12, %24, %27
  %32 = phi i32 [ %28, %27 ], [ undef, %24 ], [ undef, %12 ], [ undef, %22 ], [ %20, %16 ]
  %33 = phi i32 [ 3, %27 ], [ %26, %24 ], [ 2, %12 ], [ 4, %22 ], [ 3, %16 ]
  %34 = phi i64 [ %30, %27 ], [ %8, %24 ], [ undef, %12 ], [ undef, %22 ], [ %19, %16 ]
  %35 = bitcast double %1 to i64
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %35 to i32
  %38 = shl i64 %35, 32
  %39 = and i64 %38, 4503595332403200
  %40 = or disjoint i64 %39, %36
  %41 = lshr i32 %37, 20
  %42 = and i32 %41, 2047
  %43 = lshr i32 %37, 31
  switch i32 %42, label %56 [
    i32 0, label %44
    i32 2047, label %54
  ]

44:                                               ; preds = %31
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = shl nuw nsw i64 %40, 8
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ -1022, %46 ], [ %52, %48 ]
  %50 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %51 = shl nuw nsw i64 %50, 1
  %52 = add i32 %49, -1
  %53 = icmp ult i64 %50, 576460752303423488
  br i1 %53, label %48, label %60

54:                                               ; preds = %31
  %55 = icmp eq i64 %40, 0
  br i1 %55, label %60, label %113

56:                                               ; preds = %31
  %57 = add nsw i32 %42, -1023
  %58 = shl nuw nsw i64 %40, 8
  %59 = or disjoint i64 %58, 1152921504606846976
  br label %60

60:                                               ; preds = %48, %54, %44, %56
  %61 = phi i64 [ %59, %56 ], [ undef, %44 ], [ undef, %54 ], [ %51, %48 ]
  %62 = phi i32 [ %57, %56 ], [ undef, %44 ], [ undef, %54 ], [ %52, %48 ]
  %63 = phi i1 [ false, %56 ], [ false, %44 ], [ true, %54 ], [ false, %48 ]
  %64 = phi i1 [ false, %56 ], [ true, %44 ], [ false, %54 ], [ false, %48 ]
  %65 = icmp ugt i32 %33, 1
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = icmp eq i32 %33, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  br i1 %63, label %69, label %71

69:                                               ; preds = %68
  %70 = sub nsw i32 %43, %11
  br label %113

71:                                               ; preds = %68
  %72 = icmp sgt i32 %5, -1
  %73 = select i1 %72, i32 1, i32 -1
  br label %113

74:                                               ; preds = %66
  br i1 %63, label %75, label %78

75:                                               ; preds = %74
  %76 = icmp sgt i32 %37, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %113

78:                                               ; preds = %74
  %79 = icmp eq i32 %33, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br i1 %64, label %113, label %81

81:                                               ; preds = %80
  %82 = icmp sgt i32 %37, -1
  %83 = select i1 %82, i32 -1, i32 1
  br label %113

84:                                               ; preds = %78
  br i1 %64, label %85, label %88

85:                                               ; preds = %84
  %86 = icmp sgt i32 %5, -1
  %87 = select i1 %86, i32 1, i32 -1
  br label %113

88:                                               ; preds = %84
  %89 = icmp eq i32 %11, %43
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = icmp sgt i32 %5, -1
  %92 = select i1 %91, i32 1, i32 -1
  br label %113

93:                                               ; preds = %88
  %94 = icmp sgt i32 %32, %62
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = icmp sgt i32 %5, -1
  %97 = select i1 %96, i32 1, i32 -1
  br label %113

98:                                               ; preds = %93
  %99 = icmp slt i32 %32, %62
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = icmp sgt i32 %5, -1
  %102 = select i1 %101, i32 -1, i32 1
  br label %113

103:                                              ; preds = %98
  %104 = icmp ugt i64 %34, %61
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = icmp sgt i32 %5, -1
  %107 = select i1 %106, i32 1, i32 -1
  br label %113

108:                                              ; preds = %103
  %109 = icmp ult i64 %34, %61
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = icmp sgt i32 %5, -1
  %112 = select i1 %111, i32 -1, i32 1
  br label %113

113:                                              ; preds = %54, %110, %108, %105, %100, %95, %90, %85, %81, %80, %75, %71, %69, %60
  %114 = phi i32 [ 1, %60 ], [ %70, %69 ], [ %73, %71 ], [ %77, %75 ], [ %83, %81 ], [ %87, %85 ], [ %92, %90 ], [ %97, %95 ], [ %102, %100 ], [ %107, %105 ], [ %112, %110 ], [ 0, %80 ], [ 0, %108 ], [ 1, %54 ]
  ret i32 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__nedf2(double noundef %0, double noundef %1) local_unnamed_addr #4 {
  %3 = bitcast double %0 to i64
  %4 = lshr i64 %3, 32
  %5 = trunc i64 %3 to i32
  %6 = shl i64 %3, 32
  %7 = and i64 %6, 4503595332403200
  %8 = or disjoint i64 %7, %4
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 2047
  %11 = lshr i32 %5, 31
  switch i32 %10, label %27 [
    i32 0, label %12
    i32 2047, label %22
  ]

12:                                               ; preds = %2
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = shl nuw nsw i64 %8, 8
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ -1022, %14 ], [ %20, %16 ]
  %18 = phi i64 [ %15, %14 ], [ %19, %16 ]
  %19 = shl nuw nsw i64 %18, 1
  %20 = add i32 %17, -1
  %21 = icmp ult i64 %18, 576460752303423488
  br i1 %21, label %16, label %31

22:                                               ; preds = %2
  %23 = icmp eq i64 %8, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = lshr i32 %5, 19
  %26 = and i32 %25, 1
  br label %31

27:                                               ; preds = %2
  %28 = add nsw i32 %10, -1023
  %29 = shl nuw nsw i64 %8, 8
  %30 = or disjoint i64 %29, 1152921504606846976
  br label %31

31:                                               ; preds = %16, %22, %12, %24, %27
  %32 = phi i32 [ %28, %27 ], [ undef, %24 ], [ undef, %12 ], [ undef, %22 ], [ %20, %16 ]
  %33 = phi i32 [ 3, %27 ], [ %26, %24 ], [ 2, %12 ], [ 4, %22 ], [ 3, %16 ]
  %34 = phi i64 [ %30, %27 ], [ %8, %24 ], [ undef, %12 ], [ undef, %22 ], [ %19, %16 ]
  %35 = bitcast double %1 to i64
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %35 to i32
  %38 = shl i64 %35, 32
  %39 = and i64 %38, 4503595332403200
  %40 = or disjoint i64 %39, %36
  %41 = lshr i32 %37, 20
  %42 = and i32 %41, 2047
  %43 = lshr i32 %37, 31
  switch i32 %42, label %56 [
    i32 0, label %44
    i32 2047, label %54
  ]

44:                                               ; preds = %31
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = shl nuw nsw i64 %40, 8
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ -1022, %46 ], [ %52, %48 ]
  %50 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %51 = shl nuw nsw i64 %50, 1
  %52 = add i32 %49, -1
  %53 = icmp ult i64 %50, 576460752303423488
  br i1 %53, label %48, label %60

54:                                               ; preds = %31
  %55 = icmp eq i64 %40, 0
  br i1 %55, label %60, label %113

56:                                               ; preds = %31
  %57 = add nsw i32 %42, -1023
  %58 = shl nuw nsw i64 %40, 8
  %59 = or disjoint i64 %58, 1152921504606846976
  br label %60

60:                                               ; preds = %48, %54, %44, %56
  %61 = phi i64 [ %59, %56 ], [ undef, %44 ], [ undef, %54 ], [ %51, %48 ]
  %62 = phi i32 [ %57, %56 ], [ undef, %44 ], [ undef, %54 ], [ %52, %48 ]
  %63 = phi i1 [ false, %56 ], [ false, %44 ], [ true, %54 ], [ false, %48 ]
  %64 = phi i1 [ false, %56 ], [ true, %44 ], [ false, %54 ], [ false, %48 ]
  %65 = icmp ugt i32 %33, 1
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = icmp eq i32 %33, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  br i1 %63, label %69, label %71

69:                                               ; preds = %68
  %70 = sub nsw i32 %43, %11
  br label %113

71:                                               ; preds = %68
  %72 = icmp sgt i32 %5, -1
  %73 = select i1 %72, i32 1, i32 -1
  br label %113

74:                                               ; preds = %66
  br i1 %63, label %75, label %78

75:                                               ; preds = %74
  %76 = icmp sgt i32 %37, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %113

78:                                               ; preds = %74
  %79 = icmp eq i32 %33, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br i1 %64, label %113, label %81

81:                                               ; preds = %80
  %82 = icmp sgt i32 %37, -1
  %83 = select i1 %82, i32 -1, i32 1
  br label %113

84:                                               ; preds = %78
  br i1 %64, label %85, label %88

85:                                               ; preds = %84
  %86 = icmp sgt i32 %5, -1
  %87 = select i1 %86, i32 1, i32 -1
  br label %113

88:                                               ; preds = %84
  %89 = icmp eq i32 %11, %43
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = icmp sgt i32 %5, -1
  %92 = select i1 %91, i32 1, i32 -1
  br label %113

93:                                               ; preds = %88
  %94 = icmp sgt i32 %32, %62
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = icmp sgt i32 %5, -1
  %97 = select i1 %96, i32 1, i32 -1
  br label %113

98:                                               ; preds = %93
  %99 = icmp slt i32 %32, %62
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = icmp sgt i32 %5, -1
  %102 = select i1 %101, i32 -1, i32 1
  br label %113

103:                                              ; preds = %98
  %104 = icmp ugt i64 %34, %61
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = icmp sgt i32 %5, -1
  %107 = select i1 %106, i32 1, i32 -1
  br label %113

108:                                              ; preds = %103
  %109 = icmp ult i64 %34, %61
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = icmp sgt i32 %5, -1
  %112 = select i1 %111, i32 -1, i32 1
  br label %113

113:                                              ; preds = %54, %110, %108, %105, %100, %95, %90, %85, %81, %80, %75, %71, %69, %60
  %114 = phi i32 [ 1, %60 ], [ %70, %69 ], [ %73, %71 ], [ %77, %75 ], [ %83, %81 ], [ %87, %85 ], [ %92, %90 ], [ %97, %95 ], [ %102, %100 ], [ %107, %105 ], [ %112, %110 ], [ 0, %80 ], [ 0, %108 ], [ 1, %54 ]
  ret i32 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__gtdf2(double noundef %0, double noundef %1) local_unnamed_addr #4 {
  %3 = bitcast double %0 to i64
  %4 = lshr i64 %3, 32
  %5 = trunc i64 %3 to i32
  %6 = shl i64 %3, 32
  %7 = and i64 %6, 4503595332403200
  %8 = or disjoint i64 %7, %4
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 2047
  %11 = lshr i32 %5, 31
  switch i32 %10, label %27 [
    i32 0, label %12
    i32 2047, label %22
  ]

12:                                               ; preds = %2
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = shl nuw nsw i64 %8, 8
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ -1022, %14 ], [ %20, %16 ]
  %18 = phi i64 [ %15, %14 ], [ %19, %16 ]
  %19 = shl nuw nsw i64 %18, 1
  %20 = add i32 %17, -1
  %21 = icmp ult i64 %18, 576460752303423488
  br i1 %21, label %16, label %31

22:                                               ; preds = %2
  %23 = icmp eq i64 %8, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = lshr i32 %5, 19
  %26 = and i32 %25, 1
  br label %31

27:                                               ; preds = %2
  %28 = add nsw i32 %10, -1023
  %29 = shl nuw nsw i64 %8, 8
  %30 = or disjoint i64 %29, 1152921504606846976
  br label %31

31:                                               ; preds = %16, %22, %12, %24, %27
  %32 = phi i32 [ %28, %27 ], [ undef, %24 ], [ undef, %12 ], [ undef, %22 ], [ %20, %16 ]
  %33 = phi i32 [ 3, %27 ], [ %26, %24 ], [ 2, %12 ], [ 4, %22 ], [ 3, %16 ]
  %34 = phi i64 [ %30, %27 ], [ %8, %24 ], [ undef, %12 ], [ undef, %22 ], [ %19, %16 ]
  %35 = bitcast double %1 to i64
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %35 to i32
  %38 = shl i64 %35, 32
  %39 = and i64 %38, 4503595332403200
  %40 = or disjoint i64 %39, %36
  %41 = lshr i32 %37, 20
  %42 = and i32 %41, 2047
  %43 = lshr i32 %37, 31
  switch i32 %42, label %56 [
    i32 0, label %44
    i32 2047, label %54
  ]

44:                                               ; preds = %31
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = shl nuw nsw i64 %40, 8
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ -1022, %46 ], [ %52, %48 ]
  %50 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %51 = shl nuw nsw i64 %50, 1
  %52 = add i32 %49, -1
  %53 = icmp ult i64 %50, 576460752303423488
  br i1 %53, label %48, label %60

54:                                               ; preds = %31
  %55 = icmp eq i64 %40, 0
  br i1 %55, label %60, label %113

56:                                               ; preds = %31
  %57 = add nsw i32 %42, -1023
  %58 = shl nuw nsw i64 %40, 8
  %59 = or disjoint i64 %58, 1152921504606846976
  br label %60

60:                                               ; preds = %48, %54, %44, %56
  %61 = phi i64 [ %59, %56 ], [ undef, %44 ], [ undef, %54 ], [ %51, %48 ]
  %62 = phi i32 [ %57, %56 ], [ undef, %44 ], [ undef, %54 ], [ %52, %48 ]
  %63 = phi i1 [ false, %56 ], [ false, %44 ], [ true, %54 ], [ false, %48 ]
  %64 = phi i1 [ false, %56 ], [ true, %44 ], [ false, %54 ], [ false, %48 ]
  %65 = icmp ugt i32 %33, 1
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = icmp eq i32 %33, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  br i1 %63, label %69, label %71

69:                                               ; preds = %68
  %70 = sub nsw i32 %43, %11
  br label %113

71:                                               ; preds = %68
  %72 = icmp sgt i32 %5, -1
  %73 = select i1 %72, i32 1, i32 -1
  br label %113

74:                                               ; preds = %66
  br i1 %63, label %75, label %78

75:                                               ; preds = %74
  %76 = icmp sgt i32 %37, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %113

78:                                               ; preds = %74
  %79 = icmp eq i32 %33, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br i1 %64, label %113, label %81

81:                                               ; preds = %80
  %82 = icmp sgt i32 %37, -1
  %83 = select i1 %82, i32 -1, i32 1
  br label %113

84:                                               ; preds = %78
  br i1 %64, label %85, label %88

85:                                               ; preds = %84
  %86 = icmp sgt i32 %5, -1
  %87 = select i1 %86, i32 1, i32 -1
  br label %113

88:                                               ; preds = %84
  %89 = icmp eq i32 %11, %43
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = icmp sgt i32 %5, -1
  %92 = select i1 %91, i32 1, i32 -1
  br label %113

93:                                               ; preds = %88
  %94 = icmp sgt i32 %32, %62
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = icmp sgt i32 %5, -1
  %97 = select i1 %96, i32 1, i32 -1
  br label %113

98:                                               ; preds = %93
  %99 = icmp slt i32 %32, %62
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = icmp sgt i32 %5, -1
  %102 = select i1 %101, i32 -1, i32 1
  br label %113

103:                                              ; preds = %98
  %104 = icmp ugt i64 %34, %61
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = icmp sgt i32 %5, -1
  %107 = select i1 %106, i32 1, i32 -1
  br label %113

108:                                              ; preds = %103
  %109 = icmp ult i64 %34, %61
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = icmp sgt i32 %5, -1
  %112 = select i1 %111, i32 -1, i32 1
  br label %113

113:                                              ; preds = %54, %110, %108, %105, %100, %95, %90, %85, %81, %80, %75, %71, %69, %60
  %114 = phi i32 [ -1, %60 ], [ %70, %69 ], [ %73, %71 ], [ %77, %75 ], [ %83, %81 ], [ %87, %85 ], [ %92, %90 ], [ %97, %95 ], [ %102, %100 ], [ %107, %105 ], [ %112, %110 ], [ 0, %80 ], [ 0, %108 ], [ -1, %54 ]
  ret i32 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__gedf2(double noundef %0, double noundef %1) local_unnamed_addr #4 {
  %3 = bitcast double %0 to i64
  %4 = lshr i64 %3, 32
  %5 = trunc i64 %3 to i32
  %6 = shl i64 %3, 32
  %7 = and i64 %6, 4503595332403200
  %8 = or disjoint i64 %7, %4
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 2047
  %11 = lshr i32 %5, 31
  switch i32 %10, label %27 [
    i32 0, label %12
    i32 2047, label %22
  ]

12:                                               ; preds = %2
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = shl nuw nsw i64 %8, 8
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ -1022, %14 ], [ %20, %16 ]
  %18 = phi i64 [ %15, %14 ], [ %19, %16 ]
  %19 = shl nuw nsw i64 %18, 1
  %20 = add i32 %17, -1
  %21 = icmp ult i64 %18, 576460752303423488
  br i1 %21, label %16, label %31

22:                                               ; preds = %2
  %23 = icmp eq i64 %8, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = lshr i32 %5, 19
  %26 = and i32 %25, 1
  br label %31

27:                                               ; preds = %2
  %28 = add nsw i32 %10, -1023
  %29 = shl nuw nsw i64 %8, 8
  %30 = or disjoint i64 %29, 1152921504606846976
  br label %31

31:                                               ; preds = %16, %22, %12, %24, %27
  %32 = phi i32 [ %28, %27 ], [ undef, %24 ], [ undef, %12 ], [ undef, %22 ], [ %20, %16 ]
  %33 = phi i32 [ 3, %27 ], [ %26, %24 ], [ 2, %12 ], [ 4, %22 ], [ 3, %16 ]
  %34 = phi i64 [ %30, %27 ], [ %8, %24 ], [ undef, %12 ], [ undef, %22 ], [ %19, %16 ]
  %35 = bitcast double %1 to i64
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %35 to i32
  %38 = shl i64 %35, 32
  %39 = and i64 %38, 4503595332403200
  %40 = or disjoint i64 %39, %36
  %41 = lshr i32 %37, 20
  %42 = and i32 %41, 2047
  %43 = lshr i32 %37, 31
  switch i32 %42, label %56 [
    i32 0, label %44
    i32 2047, label %54
  ]

44:                                               ; preds = %31
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = shl nuw nsw i64 %40, 8
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ -1022, %46 ], [ %52, %48 ]
  %50 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %51 = shl nuw nsw i64 %50, 1
  %52 = add i32 %49, -1
  %53 = icmp ult i64 %50, 576460752303423488
  br i1 %53, label %48, label %60

54:                                               ; preds = %31
  %55 = icmp eq i64 %40, 0
  br i1 %55, label %60, label %113

56:                                               ; preds = %31
  %57 = add nsw i32 %42, -1023
  %58 = shl nuw nsw i64 %40, 8
  %59 = or disjoint i64 %58, 1152921504606846976
  br label %60

60:                                               ; preds = %48, %54, %44, %56
  %61 = phi i64 [ %59, %56 ], [ undef, %44 ], [ undef, %54 ], [ %51, %48 ]
  %62 = phi i32 [ %57, %56 ], [ undef, %44 ], [ undef, %54 ], [ %52, %48 ]
  %63 = phi i1 [ false, %56 ], [ false, %44 ], [ true, %54 ], [ false, %48 ]
  %64 = phi i1 [ false, %56 ], [ true, %44 ], [ false, %54 ], [ false, %48 ]
  %65 = icmp ugt i32 %33, 1
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = icmp eq i32 %33, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  br i1 %63, label %69, label %71

69:                                               ; preds = %68
  %70 = sub nsw i32 %43, %11
  br label %113

71:                                               ; preds = %68
  %72 = icmp sgt i32 %5, -1
  %73 = select i1 %72, i32 1, i32 -1
  br label %113

74:                                               ; preds = %66
  br i1 %63, label %75, label %78

75:                                               ; preds = %74
  %76 = icmp sgt i32 %37, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %113

78:                                               ; preds = %74
  %79 = icmp eq i32 %33, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br i1 %64, label %113, label %81

81:                                               ; preds = %80
  %82 = icmp sgt i32 %37, -1
  %83 = select i1 %82, i32 -1, i32 1
  br label %113

84:                                               ; preds = %78
  br i1 %64, label %85, label %88

85:                                               ; preds = %84
  %86 = icmp sgt i32 %5, -1
  %87 = select i1 %86, i32 1, i32 -1
  br label %113

88:                                               ; preds = %84
  %89 = icmp eq i32 %11, %43
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = icmp sgt i32 %5, -1
  %92 = select i1 %91, i32 1, i32 -1
  br label %113

93:                                               ; preds = %88
  %94 = icmp sgt i32 %32, %62
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = icmp sgt i32 %5, -1
  %97 = select i1 %96, i32 1, i32 -1
  br label %113

98:                                               ; preds = %93
  %99 = icmp slt i32 %32, %62
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = icmp sgt i32 %5, -1
  %102 = select i1 %101, i32 -1, i32 1
  br label %113

103:                                              ; preds = %98
  %104 = icmp ugt i64 %34, %61
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = icmp sgt i32 %5, -1
  %107 = select i1 %106, i32 1, i32 -1
  br label %113

108:                                              ; preds = %103
  %109 = icmp ult i64 %34, %61
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = icmp sgt i32 %5, -1
  %112 = select i1 %111, i32 -1, i32 1
  br label %113

113:                                              ; preds = %54, %110, %108, %105, %100, %95, %90, %85, %81, %80, %75, %71, %69, %60
  %114 = phi i32 [ -1, %60 ], [ %70, %69 ], [ %73, %71 ], [ %77, %75 ], [ %83, %81 ], [ %87, %85 ], [ %92, %90 ], [ %97, %95 ], [ %102, %100 ], [ %107, %105 ], [ %112, %110 ], [ 0, %80 ], [ 0, %108 ], [ -1, %54 ]
  ret i32 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__ltdf2(double noundef %0, double noundef %1) local_unnamed_addr #4 {
  %3 = bitcast double %0 to i64
  %4 = lshr i64 %3, 32
  %5 = trunc i64 %3 to i32
  %6 = shl i64 %3, 32
  %7 = and i64 %6, 4503595332403200
  %8 = or disjoint i64 %7, %4
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 2047
  %11 = lshr i32 %5, 31
  switch i32 %10, label %27 [
    i32 0, label %12
    i32 2047, label %22
  ]

12:                                               ; preds = %2
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = shl nuw nsw i64 %8, 8
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ -1022, %14 ], [ %20, %16 ]
  %18 = phi i64 [ %15, %14 ], [ %19, %16 ]
  %19 = shl nuw nsw i64 %18, 1
  %20 = add i32 %17, -1
  %21 = icmp ult i64 %18, 576460752303423488
  br i1 %21, label %16, label %31

22:                                               ; preds = %2
  %23 = icmp eq i64 %8, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = lshr i32 %5, 19
  %26 = and i32 %25, 1
  br label %31

27:                                               ; preds = %2
  %28 = add nsw i32 %10, -1023
  %29 = shl nuw nsw i64 %8, 8
  %30 = or disjoint i64 %29, 1152921504606846976
  br label %31

31:                                               ; preds = %16, %22, %12, %24, %27
  %32 = phi i32 [ %28, %27 ], [ undef, %24 ], [ undef, %12 ], [ undef, %22 ], [ %20, %16 ]
  %33 = phi i32 [ 3, %27 ], [ %26, %24 ], [ 2, %12 ], [ 4, %22 ], [ 3, %16 ]
  %34 = phi i64 [ %30, %27 ], [ %8, %24 ], [ undef, %12 ], [ undef, %22 ], [ %19, %16 ]
  %35 = bitcast double %1 to i64
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %35 to i32
  %38 = shl i64 %35, 32
  %39 = and i64 %38, 4503595332403200
  %40 = or disjoint i64 %39, %36
  %41 = lshr i32 %37, 20
  %42 = and i32 %41, 2047
  %43 = lshr i32 %37, 31
  switch i32 %42, label %56 [
    i32 0, label %44
    i32 2047, label %54
  ]

44:                                               ; preds = %31
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = shl nuw nsw i64 %40, 8
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ -1022, %46 ], [ %52, %48 ]
  %50 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %51 = shl nuw nsw i64 %50, 1
  %52 = add i32 %49, -1
  %53 = icmp ult i64 %50, 576460752303423488
  br i1 %53, label %48, label %60

54:                                               ; preds = %31
  %55 = icmp eq i64 %40, 0
  br i1 %55, label %60, label %113

56:                                               ; preds = %31
  %57 = add nsw i32 %42, -1023
  %58 = shl nuw nsw i64 %40, 8
  %59 = or disjoint i64 %58, 1152921504606846976
  br label %60

60:                                               ; preds = %48, %54, %44, %56
  %61 = phi i64 [ %59, %56 ], [ undef, %44 ], [ undef, %54 ], [ %51, %48 ]
  %62 = phi i32 [ %57, %56 ], [ undef, %44 ], [ undef, %54 ], [ %52, %48 ]
  %63 = phi i1 [ false, %56 ], [ false, %44 ], [ true, %54 ], [ false, %48 ]
  %64 = phi i1 [ false, %56 ], [ true, %44 ], [ false, %54 ], [ false, %48 ]
  %65 = icmp ugt i32 %33, 1
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = icmp eq i32 %33, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  br i1 %63, label %69, label %71

69:                                               ; preds = %68
  %70 = sub nsw i32 %43, %11
  br label %113

71:                                               ; preds = %68
  %72 = icmp sgt i32 %5, -1
  %73 = select i1 %72, i32 1, i32 -1
  br label %113

74:                                               ; preds = %66
  br i1 %63, label %75, label %78

75:                                               ; preds = %74
  %76 = icmp sgt i32 %37, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %113

78:                                               ; preds = %74
  %79 = icmp eq i32 %33, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br i1 %64, label %113, label %81

81:                                               ; preds = %80
  %82 = icmp sgt i32 %37, -1
  %83 = select i1 %82, i32 -1, i32 1
  br label %113

84:                                               ; preds = %78
  br i1 %64, label %85, label %88

85:                                               ; preds = %84
  %86 = icmp sgt i32 %5, -1
  %87 = select i1 %86, i32 1, i32 -1
  br label %113

88:                                               ; preds = %84
  %89 = icmp eq i32 %11, %43
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = icmp sgt i32 %5, -1
  %92 = select i1 %91, i32 1, i32 -1
  br label %113

93:                                               ; preds = %88
  %94 = icmp sgt i32 %32, %62
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = icmp sgt i32 %5, -1
  %97 = select i1 %96, i32 1, i32 -1
  br label %113

98:                                               ; preds = %93
  %99 = icmp slt i32 %32, %62
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = icmp sgt i32 %5, -1
  %102 = select i1 %101, i32 -1, i32 1
  br label %113

103:                                              ; preds = %98
  %104 = icmp ugt i64 %34, %61
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = icmp sgt i32 %5, -1
  %107 = select i1 %106, i32 1, i32 -1
  br label %113

108:                                              ; preds = %103
  %109 = icmp ult i64 %34, %61
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = icmp sgt i32 %5, -1
  %112 = select i1 %111, i32 -1, i32 1
  br label %113

113:                                              ; preds = %54, %110, %108, %105, %100, %95, %90, %85, %81, %80, %75, %71, %69, %60
  %114 = phi i32 [ 1, %60 ], [ %70, %69 ], [ %73, %71 ], [ %77, %75 ], [ %83, %81 ], [ %87, %85 ], [ %92, %90 ], [ %97, %95 ], [ %102, %100 ], [ %107, %105 ], [ %112, %110 ], [ 0, %80 ], [ 0, %108 ], [ 1, %54 ]
  ret i32 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__ledf2(double noundef %0, double noundef %1) local_unnamed_addr #4 {
  %3 = bitcast double %0 to i64
  %4 = lshr i64 %3, 32
  %5 = trunc i64 %3 to i32
  %6 = shl i64 %3, 32
  %7 = and i64 %6, 4503595332403200
  %8 = or disjoint i64 %7, %4
  %9 = lshr i32 %5, 20
  %10 = and i32 %9, 2047
  %11 = lshr i32 %5, 31
  switch i32 %10, label %27 [
    i32 0, label %12
    i32 2047, label %22
  ]

12:                                               ; preds = %2
  %13 = icmp eq i64 %8, 0
  br i1 %13, label %31, label %14

14:                                               ; preds = %12
  %15 = shl nuw nsw i64 %8, 8
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi i32 [ -1022, %14 ], [ %20, %16 ]
  %18 = phi i64 [ %15, %14 ], [ %19, %16 ]
  %19 = shl nuw nsw i64 %18, 1
  %20 = add i32 %17, -1
  %21 = icmp ult i64 %18, 576460752303423488
  br i1 %21, label %16, label %31

22:                                               ; preds = %2
  %23 = icmp eq i64 %8, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %22
  %25 = lshr i32 %5, 19
  %26 = and i32 %25, 1
  br label %31

27:                                               ; preds = %2
  %28 = add nsw i32 %10, -1023
  %29 = shl nuw nsw i64 %8, 8
  %30 = or disjoint i64 %29, 1152921504606846976
  br label %31

31:                                               ; preds = %16, %22, %12, %24, %27
  %32 = phi i32 [ %28, %27 ], [ undef, %24 ], [ undef, %12 ], [ undef, %22 ], [ %20, %16 ]
  %33 = phi i32 [ 3, %27 ], [ %26, %24 ], [ 2, %12 ], [ 4, %22 ], [ 3, %16 ]
  %34 = phi i64 [ %30, %27 ], [ %8, %24 ], [ undef, %12 ], [ undef, %22 ], [ %19, %16 ]
  %35 = bitcast double %1 to i64
  %36 = lshr i64 %35, 32
  %37 = trunc i64 %35 to i32
  %38 = shl i64 %35, 32
  %39 = and i64 %38, 4503595332403200
  %40 = or disjoint i64 %39, %36
  %41 = lshr i32 %37, 20
  %42 = and i32 %41, 2047
  %43 = lshr i32 %37, 31
  switch i32 %42, label %56 [
    i32 0, label %44
    i32 2047, label %54
  ]

44:                                               ; preds = %31
  %45 = icmp eq i64 %40, 0
  br i1 %45, label %60, label %46

46:                                               ; preds = %44
  %47 = shl nuw nsw i64 %40, 8
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i32 [ -1022, %46 ], [ %52, %48 ]
  %50 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %51 = shl nuw nsw i64 %50, 1
  %52 = add i32 %49, -1
  %53 = icmp ult i64 %50, 576460752303423488
  br i1 %53, label %48, label %60

54:                                               ; preds = %31
  %55 = icmp eq i64 %40, 0
  br i1 %55, label %60, label %113

56:                                               ; preds = %31
  %57 = add nsw i32 %42, -1023
  %58 = shl nuw nsw i64 %40, 8
  %59 = or disjoint i64 %58, 1152921504606846976
  br label %60

60:                                               ; preds = %48, %54, %44, %56
  %61 = phi i64 [ %59, %56 ], [ undef, %44 ], [ undef, %54 ], [ %51, %48 ]
  %62 = phi i32 [ %57, %56 ], [ undef, %44 ], [ undef, %54 ], [ %52, %48 ]
  %63 = phi i1 [ false, %56 ], [ false, %44 ], [ true, %54 ], [ false, %48 ]
  %64 = phi i1 [ false, %56 ], [ true, %44 ], [ false, %54 ], [ false, %48 ]
  %65 = icmp ugt i32 %33, 1
  br i1 %65, label %66, label %113

66:                                               ; preds = %60
  %67 = icmp eq i32 %33, 4
  br i1 %67, label %68, label %74

68:                                               ; preds = %66
  br i1 %63, label %69, label %71

69:                                               ; preds = %68
  %70 = sub nsw i32 %43, %11
  br label %113

71:                                               ; preds = %68
  %72 = icmp sgt i32 %5, -1
  %73 = select i1 %72, i32 1, i32 -1
  br label %113

74:                                               ; preds = %66
  br i1 %63, label %75, label %78

75:                                               ; preds = %74
  %76 = icmp sgt i32 %37, -1
  %77 = select i1 %76, i32 -1, i32 1
  br label %113

78:                                               ; preds = %74
  %79 = icmp eq i32 %33, 2
  br i1 %79, label %80, label %84

80:                                               ; preds = %78
  br i1 %64, label %113, label %81

81:                                               ; preds = %80
  %82 = icmp sgt i32 %37, -1
  %83 = select i1 %82, i32 -1, i32 1
  br label %113

84:                                               ; preds = %78
  br i1 %64, label %85, label %88

85:                                               ; preds = %84
  %86 = icmp sgt i32 %5, -1
  %87 = select i1 %86, i32 1, i32 -1
  br label %113

88:                                               ; preds = %84
  %89 = icmp eq i32 %11, %43
  br i1 %89, label %93, label %90

90:                                               ; preds = %88
  %91 = icmp sgt i32 %5, -1
  %92 = select i1 %91, i32 1, i32 -1
  br label %113

93:                                               ; preds = %88
  %94 = icmp sgt i32 %32, %62
  br i1 %94, label %95, label %98

95:                                               ; preds = %93
  %96 = icmp sgt i32 %5, -1
  %97 = select i1 %96, i32 1, i32 -1
  br label %113

98:                                               ; preds = %93
  %99 = icmp slt i32 %32, %62
  br i1 %99, label %100, label %103

100:                                              ; preds = %98
  %101 = icmp sgt i32 %5, -1
  %102 = select i1 %101, i32 -1, i32 1
  br label %113

103:                                              ; preds = %98
  %104 = icmp ugt i64 %34, %61
  br i1 %104, label %105, label %108

105:                                              ; preds = %103
  %106 = icmp sgt i32 %5, -1
  %107 = select i1 %106, i32 1, i32 -1
  br label %113

108:                                              ; preds = %103
  %109 = icmp ult i64 %34, %61
  br i1 %109, label %110, label %113

110:                                              ; preds = %108
  %111 = icmp sgt i32 %5, -1
  %112 = select i1 %111, i32 -1, i32 1
  br label %113

113:                                              ; preds = %54, %110, %108, %105, %100, %95, %90, %85, %81, %80, %75, %71, %69, %60
  %114 = phi i32 [ 1, %60 ], [ %70, %69 ], [ %73, %71 ], [ %77, %75 ], [ %83, %81 ], [ %87, %85 ], [ %92, %90 ], [ %97, %95 ], [ %102, %100 ], [ %107, %105 ], [ %112, %110 ], [ 0, %80 ], [ 0, %108 ], [ 1, %54 ]
  ret i32 %114
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc double @__floatsidf(i32 noundef %0) local_unnamed_addr #4 {
  %2 = lshr i32 %0, 31
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %46, label %4

4:                                                ; preds = %1
  %5 = icmp sgt i32 %0, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = icmp eq i32 %0, -2147483648
  br i1 %7, label %58, label %8

8:                                                ; preds = %6
  %9 = sub nsw i32 0, %0
  br label %10

10:                                               ; preds = %4, %8
  %11 = phi i32 [ %9, %8 ], [ %0, %4 ]
  %12 = zext nneg i32 %11 to i64
  br label %13

13:                                               ; preds = %10, %13
  %14 = phi i64 [ %16, %13 ], [ %12, %10 ]
  %15 = phi i32 [ %17, %13 ], [ 60, %10 ]
  %16 = shl nuw nsw i64 %14, 1
  %17 = add i32 %15, -1
  %18 = icmp ult i64 %14, 576460752303423488
  br i1 %18, label %13, label %19

19:                                               ; preds = %13
  %20 = icmp slt i32 %17, -1022
  br i1 %20, label %21, label %28

21:                                               ; preds = %19
  %22 = icmp ult i32 %17, -1078
  br i1 %22, label %46, label %23

23:                                               ; preds = %21
  %24 = sub nsw i32 -1021, %15
  %25 = zext nneg i32 %24 to i64
  %26 = lshr i64 %16, %25
  %27 = lshr i64 %26, 8
  br label %46

28:                                               ; preds = %19
  %29 = icmp sgt i32 %17, 1023
  br i1 %29, label %46, label %30

30:                                               ; preds = %28
  %31 = and i64 %14, 127
  %32 = icmp eq i64 %31, 64
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = and i64 %14, 128
  %35 = add nuw nsw i64 %34, %16
  br label %38

36:                                               ; preds = %30
  %37 = add nuw nsw i64 %16, 127
  br label %38

38:                                               ; preds = %36, %33
  %39 = phi i64 [ %37, %36 ], [ %35, %33 ]
  %40 = icmp ugt i64 %39, 2305843009213693951
  %41 = select i1 %40, i32 1024, i32 1023
  %42 = add nsw i32 %41, %17
  %43 = zext i1 %40 to i64
  %44 = lshr i64 %39, %43
  %45 = lshr i64 %44, 8
  br label %46

46:                                               ; preds = %1, %21, %23, %28, %38
  %47 = phi i32 [ %42, %38 ], [ 0, %21 ], [ 0, %23 ], [ 2047, %28 ], [ 0, %1 ]
  %48 = phi i64 [ %45, %38 ], [ 0, %21 ], [ %27, %23 ], [ 0, %28 ], [ 0, %1 ]
  %49 = and i64 %48, 4503595332403200
  %50 = zext nneg i32 %47 to i64
  %51 = shl nuw nsw i64 %50, 52
  %52 = zext nneg i32 %2 to i64
  %53 = shl nuw i64 %52, 63
  %54 = or disjoint i64 %51, %53
  %55 = or disjoint i64 %54, %49
  %56 = tail call i64 @llvm.fshl.i64(i64 %48, i64 %55, i64 32)
  %57 = bitcast i64 %56 to double
  br label %58

58:                                               ; preds = %6, %46
  %59 = phi double [ %57, %46 ], [ 0xC1E0000000000000, %6 ]
  ret double %59
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc i32 @__fixdfsi(double noundef %0) local_unnamed_addr #4 {
  %2 = bitcast double %0 to i64
  %3 = lshr i64 %2, 32
  %4 = trunc i64 %2 to i32
  %5 = shl i64 %2, 32
  %6 = and i64 %5, 4503595332403200
  %7 = or disjoint i64 %6, %3
  %8 = lshr i32 %4, 20
  %9 = and i32 %8, 2047
  switch i32 %9, label %22 [
    i32 0, label %10
    i32 2047, label %20
  ]

10:                                               ; preds = %1
  %11 = icmp eq i64 %7, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %10
  %13 = shl nuw nsw i64 %7, 8
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ -1022, %12 ], [ %18, %14 ]
  %16 = phi i64 [ %13, %12 ], [ %17, %14 ]
  %17 = shl nuw nsw i64 %16, 1
  %18 = add i32 %15, -1
  %19 = icmp ult i64 %16, 576460752303423488
  br i1 %19, label %14, label %29

20:                                               ; preds = %1
  %21 = icmp eq i64 %7, 0
  br i1 %21, label %26, label %46

22:                                               ; preds = %1
  %23 = add nsw i32 %9, -1023
  %24 = shl nuw nsw i64 %7, 8
  %25 = or disjoint i64 %24, 1152921504606846976
  br label %29

26:                                               ; preds = %20
  %27 = icmp sgt i32 %4, -1
  %28 = select i1 %27, i32 2147483647, i32 -2147483648
  br label %46

29:                                               ; preds = %14, %22
  %30 = phi i32 [ %23, %22 ], [ %18, %14 ]
  %31 = phi i64 [ %25, %22 ], [ %17, %14 ]
  %32 = icmp slt i32 %30, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %30, 30
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = icmp sgt i32 %4, -1
  %37 = select i1 %36, i32 2147483647, i32 -2147483648
  br label %46

38:                                               ; preds = %33
  %39 = sub nuw nsw i32 60, %30
  %40 = zext nneg i32 %39 to i64
  %41 = lshr i64 %31, %40
  %42 = trunc i64 %41 to i32
  %43 = sub i32 0, %42
  %44 = icmp slt i32 %4, 0
  %45 = select i1 %44, i32 %43, i32 %42
  br label %46

46:                                               ; preds = %20, %10, %29, %38, %35, %26
  %47 = phi i32 [ %28, %26 ], [ %37, %35 ], [ %45, %38 ], [ 0, %29 ], [ 0, %10 ], [ 0, %20 ]
  ret i32 %47
}

; Function Attrs: nofree norecurse nosync nounwind memory(none)
define dso_local arm_apcscc double @__negdf2(double noundef %0) local_unnamed_addr #4 {
  %2 = bitcast double %0 to i64
  %3 = lshr i64 %2, 32
  %4 = trunc i64 %2 to i32
  %5 = shl i64 %2, 32
  %6 = and i64 %5, 4503595332403200
  %7 = or disjoint i64 %6, %3
  %8 = lshr i32 %4, 20
  %9 = and i32 %8, 2047
  switch i32 %9, label %24 [
    i32 0, label %10
    i32 2047, label %20
  ]

10:                                               ; preds = %1
  %11 = icmp eq i64 %7, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %10
  %13 = shl nuw nsw i64 %7, 8
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ -1022, %12 ], [ %18, %14 ]
  %16 = phi i64 [ %13, %12 ], [ %17, %14 ]
  %17 = shl nuw nsw i64 %16, 1
  %18 = add i32 %15, -1
  %19 = icmp ult i64 %16, 576460752303423488
  br i1 %19, label %14, label %28

20:                                               ; preds = %1
  %21 = icmp eq i64 %7, 0
  %22 = or i64 %7, 2251799813685248
  %23 = select i1 %21, i64 0, i64 %22
  br label %58

24:                                               ; preds = %1
  %25 = add nsw i32 %9, -1023
  %26 = shl nuw nsw i64 %7, 8
  %27 = or disjoint i64 %26, 1152921504606846976
  br label %28

28:                                               ; preds = %14, %24
  %29 = phi i64 [ %27, %24 ], [ %17, %14 ]
  %30 = phi i32 [ %25, %24 ], [ %18, %14 ]
  %31 = icmp slt i32 %30, -1022
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = icmp ult i32 %30, -1078
  br i1 %33, label %58, label %34

34:                                               ; preds = %32
  %35 = sub nuw nsw i32 -1022, %30
  %36 = zext nneg i32 %35 to i64
  %37 = lshr i64 %29, %36
  %38 = lshr i64 %37, 8
  br label %58

39:                                               ; preds = %28
  %40 = icmp sgt i32 %30, 1023
  br i1 %40, label %58, label %41

41:                                               ; preds = %39
  %42 = and i64 %29, 255
  %43 = icmp eq i64 %42, 128
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = lshr exact i64 %29, 1
  %46 = and i64 %45, 128
  %47 = add i64 %46, %29
  br label %50

48:                                               ; preds = %41
  %49 = add i64 %29, 127
  br label %50

50:                                               ; preds = %48, %44
  %51 = phi i64 [ %49, %48 ], [ %47, %44 ]
  %52 = icmp ugt i64 %51, 2305843009213693951
  %53 = select i1 %52, i32 1024, i32 1023
  %54 = add nsw i32 %53, %30
  %55 = zext i1 %52 to i64
  %56 = lshr i64 %51, %55
  %57 = lshr i64 %56, 8
  br label %58

58:                                               ; preds = %20, %10, %32, %34, %39, %50
  %59 = phi i32 [ %54, %50 ], [ 0, %32 ], [ 0, %34 ], [ 2047, %39 ], [ 0, %10 ], [ 2047, %20 ]
  %60 = phi i64 [ %57, %50 ], [ 0, %32 ], [ %38, %34 ], [ 0, %39 ], [ 0, %10 ], [ %23, %20 ]
  %61 = and i64 %60, 4503595332403200
  %62 = zext nneg i32 %59 to i64
  %63 = shl nuw nsw i64 %62, 52
  %64 = and i64 %5, -9223372036854775808
  %65 = or disjoint i64 %63, %64
  %66 = or disjoint i64 %65, %61
  %67 = xor i64 %66, -9223372036854775808
  %68 = tail call i64 @llvm.fshl.i64(i64 %60, i64 %67, i64 32)
  %69 = bitcast i64 %68 to double
  ret double %69
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc double @__make_dp(i32 noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #5 {
  %5 = icmp ugt i32 %0, 1
  br i1 %5, label %8, label %6

6:                                                ; preds = %4
  %7 = or i64 %3, 2251799813685248
  br label %42

8:                                                ; preds = %4
  %9 = icmp eq i32 %0, 4
  br i1 %9, label %42, label %10

10:                                               ; preds = %8
  %11 = icmp eq i32 %0, 2
  %12 = icmp eq i64 %3, 0
  %13 = or i1 %11, %12
  br i1 %13, label %42, label %14

14:                                               ; preds = %10
  %15 = icmp slt i32 %2, -1022
  br i1 %15, label %16, label %23

16:                                               ; preds = %14
  %17 = icmp ult i32 %2, -1078
  br i1 %17, label %42, label %18

18:                                               ; preds = %16
  %19 = sub nuw nsw i32 -1022, %2
  %20 = zext nneg i32 %19 to i64
  %21 = lshr i64 %3, %20
  %22 = lshr i64 %21, 8
  br label %42

23:                                               ; preds = %14
  %24 = icmp sgt i32 %2, 1023
  br i1 %24, label %42, label %25

25:                                               ; preds = %23
  %26 = and i64 %3, 255
  %27 = icmp eq i64 %26, 128
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = lshr exact i64 %3, 1
  %30 = and i64 %29, 128
  %31 = add i64 %30, %3
  br label %34

32:                                               ; preds = %25
  %33 = add i64 %3, 127
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i64 [ %33, %32 ], [ %31, %28 ]
  %36 = icmp ugt i64 %35, 2305843009213693951
  %37 = select i1 %36, i32 1024, i32 1023
  %38 = add nsw i32 %37, %2
  %39 = zext i1 %36 to i64
  %40 = lshr i64 %35, %39
  %41 = lshr i64 %40, 8
  br label %42

42:                                               ; preds = %6, %8, %10, %16, %18, %23, %34
  %43 = phi i32 [ 2047, %6 ], [ %38, %34 ], [ 2047, %8 ], [ 0, %10 ], [ 0, %16 ], [ 0, %18 ], [ 2047, %23 ]
  %44 = phi i64 [ %7, %6 ], [ %41, %34 ], [ 0, %8 ], [ 0, %10 ], [ 0, %16 ], [ %22, %18 ], [ 0, %23 ]
  %45 = and i64 %44, 4503595332403200
  %46 = zext nneg i32 %43 to i64
  %47 = shl nuw nsw i64 %46, 52
  %48 = and i32 %1, 1
  %49 = zext nneg i32 %48 to i64
  %50 = shl nuw i64 %49, 63
  %51 = or disjoint i64 %47, %50
  %52 = or disjoint i64 %51, %45
  %53 = tail call i64 @llvm.fshl.i64(i64 %44, i64 %52, i64 32)
  %54 = bitcast i64 %53 to double
  ret double %54
}

; Function Attrs: nounwind
define dso_local arm_apcscc float @__truncdfsf2(double noundef %0) local_unnamed_addr #6 {
  %2 = bitcast double %0 to i64
  %3 = lshr i64 %2, 32
  %4 = trunc i64 %2 to i32
  %5 = shl i64 %2, 32
  %6 = and i64 %5, 4503595332403200
  %7 = or disjoint i64 %6, %3
  %8 = lshr i32 %4, 20
  %9 = and i32 %8, 2047
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = icmp ne i64 %7, 0
  tail call void @llvm.assume(i1 %12)
  %13 = shl nuw nsw i64 %7, 8
  br label %14

14:                                               ; preds = %14, %11
  %15 = phi i32 [ -1022, %11 ], [ %18, %14 ]
  %16 = phi i64 [ %13, %11 ], [ %17, %14 ]
  %17 = shl nuw nsw i64 %16, 1
  %18 = add i32 %15, -1
  %19 = icmp ult i64 %16, 576460752303423488
  br i1 %19, label %14, label %24

20:                                               ; preds = %1
  %21 = add nsw i32 %9, -1023
  %22 = shl nuw nsw i64 %7, 8
  %23 = or disjoint i64 %22, 1152921504606846976
  br label %24

24:                                               ; preds = %14, %20
  %25 = phi i32 [ %21, %20 ], [ %18, %14 ]
  %26 = phi i64 [ %23, %20 ], [ %17, %14 ]
  %27 = lshr i32 %4, 31
  %28 = lshr i64 %26, 30
  %29 = trunc i64 %28 to i32
  %30 = and i64 %26, 1073741823
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = or i32 %32, %29
  %34 = tail call arm_apcscc float @__make_fp(i32 noundef 3, i32 noundef %27, i32 noundef %25, i32 noundef %33) #13
  ret float %34
}

declare dso_local arm_apcscc float @__make_fp(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #9

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
