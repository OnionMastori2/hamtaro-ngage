; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTaskScript648 = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @FormatTaskNumericText(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #4
  tail call void asm sideeffect "", "{r2}"(ptr nonnull @gTaskScript648) #4, !srcloc !4
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ getelementptr ([0 x i8], ptr @gTaskScript648, i32 0, i32 4), %2 ], [ %6, %4 ]
  %6 = getelementptr i8, ptr %5, i32 -1
  store i8 0, ptr %5, align 1
  %7 = icmp slt ptr %6, @gTaskScript648
  br i1 %7, label %8, label %4

8:                                                ; preds = %4
  %9 = and i32 %1, 65535
  %10 = icmp ult i32 %9, 10
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void asm sideeffect "", "r,{r2}"(ptr nonnull @gTaskScript648, i32 0) #4, !srcloc !5
  br label %61

12:                                               ; preds = %8, %12
  %13 = phi i32 [ %16, %12 ], [ 0, %8 ]
  %14 = phi i32 [ %15, %12 ], [ 10, %8 ]
  %15 = mul i32 %14, 10
  %16 = add i32 %13, 1
  %17 = icmp slt i32 %9, %15
  br i1 %17, label %18, label %12

18:                                               ; preds = %12
  tail call void asm sideeffect "", "r,{r2}"(ptr nonnull @gTaskScript648, i32 0) #4, !srcloc !5
  switch i32 %13, label %71 [
    i32 3, label %19
    i32 2, label %26
    i32 1, label %38
    i32 0, label %50
    i32 -1, label %61
  ]

19:                                               ; preds = %18
  %20 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %9, i32 noundef 10000) #5
  %21 = trunc i32 %20 to i8
  %22 = add i8 %21, 48
  store i8 %22, ptr %3, align 1
  %23 = mul i32 %20, 55536
  %24 = add i32 %23, %1
  %25 = and i32 %24, 65535
  br label %26

26:                                               ; preds = %18, %19
  %27 = phi i32 [ %9, %18 ], [ %25, %19 ]
  %28 = phi i32 [ 0, %18 ], [ 1, %19 ]
  %29 = phi i32 [ %1, %18 ], [ %24, %19 ]
  %30 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %27, i32 noundef 1000) #5
  %31 = getelementptr i8, ptr %3, i32 %28
  %32 = trunc i32 %30 to i8
  %33 = add i8 %32, 48
  store i8 %33, ptr %31, align 1
  %34 = add nuw nsw i32 %28, 1
  %35 = mul i32 %30, 64536
  %36 = add i32 %35, %29
  %37 = and i32 %36, 65535
  br label %38

38:                                               ; preds = %18, %26
  %39 = phi i32 [ %9, %18 ], [ %37, %26 ]
  %40 = phi i32 [ 0, %18 ], [ %34, %26 ]
  %41 = phi i32 [ %1, %18 ], [ %36, %26 ]
  %42 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %39, i32 noundef 100) #5
  %43 = getelementptr i8, ptr %3, i32 %40
  %44 = trunc i32 %42 to i8
  %45 = add i8 %44, 48
  store i8 %45, ptr %43, align 1
  %46 = add nuw nsw i32 %40, 1
  %47 = mul i32 %42, 65436
  %48 = add i32 %47, %41
  %49 = and i32 %48, 65535
  br label %50

50:                                               ; preds = %18, %38
  %51 = phi i32 [ %9, %18 ], [ %49, %38 ]
  %52 = phi i32 [ %13, %18 ], [ %46, %38 ]
  %53 = phi i32 [ %1, %18 ], [ %48, %38 ]
  %54 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %51, i32 noundef 10) #5
  %55 = getelementptr i8, ptr %3, i32 %52
  %56 = trunc i32 %54 to i8
  %57 = add i8 %56, 48
  store i8 %57, ptr %55, align 1
  %58 = add nuw nsw i32 %52, 1
  %59 = mul i32 %54, 65526
  %60 = add i32 %59, %53
  br label %61

61:                                               ; preds = %11, %50, %18
  %62 = phi i32 [ 0, %18 ], [ %58, %50 ], [ 0, %11 ]
  %63 = phi i32 [ %1, %18 ], [ %60, %50 ], [ %1, %11 ]
  %64 = getelementptr i8, ptr %3, i32 %62
  %65 = trunc i32 %63 to i8
  %66 = add i8 %65, 48
  store i8 %66, ptr %64, align 1
  %67 = add nuw nsw i32 %62, 1
  %68 = getelementptr i8, ptr %3, i32 %67
  store i8 0, ptr %68, align 1
  %69 = and i32 %0, 127
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %130, label %74

71:                                               ; preds = %18
  store i8 0, ptr %3, align 1
  %72 = and i32 %0, 127
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %143, label %74

74:                                               ; preds = %71, %61
  %75 = phi i32 [ %72, %71 ], [ %69, %61 ]
  %76 = phi i32 [ 0, %71 ], [ %67, %61 ]
  %77 = and i32 %0, 128
  %78 = icmp ne i32 %77, 0
  %79 = icmp ugt i32 %75, %76
  %80 = and i1 %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %74
  %82 = sub nsw i32 %75, %76
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %81, %84
  %85 = phi i32 [ %86, %84 ], [ 0, %81 ]
  %86 = add nuw nsw i32 %85, 1
  %87 = getelementptr [0 x i8], ptr @gTaskScript648, i32 0, i32 %85
  store i8 1, ptr %87, align 1
  %88 = icmp eq i32 %86, %82
  br i1 %88, label %89, label %84

89:                                               ; preds = %84, %81, %74
  %90 = phi i32 [ 0, %74 ], [ 0, %81 ], [ %82, %84 ]
  %91 = icmp slt i32 %75, %76
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = ptrtoint ptr %3 to i32
  %94 = sub i32 %93, %75
  %95 = add i32 %94, %76
  %96 = inttoptr i32 %95 to ptr
  %97 = call i32 @llvm.umax.i32(i32 %75, i32 1)
  br label %98

98:                                               ; preds = %98, %92
  %99 = phi ptr [ %96, %92 ], [ %101, %98 ]
  %100 = phi i32 [ 0, %92 ], [ %104, %98 ]
  %101 = getelementptr i8, ptr %99, i32 1
  %102 = load i8, ptr %99, align 1
  %103 = getelementptr [8 x i8], ptr %3, i32 0, i32 %100
  store i8 %102, ptr %103, align 1
  %104 = add nuw nsw i32 %100, 1
  %105 = icmp eq i32 %104, %97
  br i1 %105, label %106, label %98

106:                                              ; preds = %98
  %107 = getelementptr i8, ptr %3, i32 %75
  store i8 0, ptr %107, align 1
  br label %110

108:                                              ; preds = %89
  %109 = icmp sgt i32 %76, 0
  br i1 %109, label %110, label %143

110:                                              ; preds = %106, %108
  %111 = phi i32 [ %75, %106 ], [ %76, %108 ]
  %112 = add i32 %90, ptrtoint (ptr @gTaskScript648 to i32)
  %113 = inttoptr i32 %112 to ptr
  br label %114

114:                                              ; preds = %125, %110
  %115 = phi i32 [ 0, %110 ], [ %127, %125 ]
  %116 = phi ptr [ %113, %110 ], [ %122, %125 ]
  %117 = getelementptr [8 x i8], ptr %3, i32 0, i32 %115
  %118 = load i8, ptr %117, align 1
  %119 = icmp eq i8 %118, 32
  %120 = add i8 %118, -46
  %121 = select i1 %119, i8 1, i8 %120
  store i8 %121, ptr %116, align 1
  %122 = getelementptr i8, ptr %116, i32 1
  %123 = icmp sle ptr %122, getelementptr ([0 x i8], ptr @gTaskScript648, i32 0, i32 5)
  br i1 %123, label %125, label %124

124:                                              ; preds = %114
  store i8 0, ptr getelementptr ([0 x i8], ptr @gTaskScript648, i32 0, i32 6), align 1
  br label %143

125:                                              ; preds = %114
  %126 = zext i1 %123 to i32
  %127 = add nuw nsw i32 %115, %126
  %128 = icmp slt i32 %127, %111
  %129 = and i1 %123, %128
  br i1 %129, label %114, label %143

130:                                              ; preds = %61, %139
  %131 = phi i32 [ %140, %139 ], [ 0, %61 ]
  %132 = phi ptr [ %141, %139 ], [ @gTaskScript648, %61 ]
  %133 = getelementptr [8 x i8], ptr %3, i32 0, i32 %131
  %134 = load i8, ptr %133, align 1
  switch i8 %134, label %135 [
    i8 32, label %137
    i8 0, label %139
  ]

135:                                              ; preds = %130
  %136 = add i8 %134, -46
  br label %137

137:                                              ; preds = %130, %135
  %138 = phi i8 [ %136, %135 ], [ 1, %130 ]
  store i8 %138, ptr %132, align 1
  br label %139

139:                                              ; preds = %137, %130
  %140 = add nuw nsw i32 %131, 1
  %141 = getelementptr i8, ptr %132, i32 1
  %142 = icmp eq i32 %131, %62
  br i1 %142, label %143, label %130

143:                                              ; preds = %125, %139, %124, %71, %108
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 706}
!5 = !{i64 1009}
