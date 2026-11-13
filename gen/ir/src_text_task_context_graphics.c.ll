; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.anon = type { i32, i32, i32, i32 }
%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskConstructorByte646 = external dso_local global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) local_unnamed_addr #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.anon, align 4
  store volatile i32 %8, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #3
  %13 = and i32 %1, 255
  %14 = and i32 %2, 255
  %15 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 1
  store volatile i32 %14, ptr %15, align 4
  %16 = and i32 %5, 255
  %17 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 3
  store i32 %16, ptr %17, align 4
  %18 = and i32 %6, 3
  tail call void asm sideeffect "", "{r4}"(i32 %13) #3, !srcloc !4
  %19 = shl nuw nsw i32 %13, 6
  %20 = mul nuw i32 %18, 1145324612
  %21 = icmp eq ptr %0, null
  br i1 %21, label %59, label %22

22:                                               ; preds = %10
  %23 = trunc i32 %7 to i8
  %24 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 11
  store i8 %23, ptr %24, align 1
  store i8 %23, ptr %0, align 4
  %25 = load volatile i32, ptr %11, align 4
  %26 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  store i32 %25, ptr %26, align 4
  tail call void asm sideeffect "", "{r4}"(i32 %9) #3, !srcloc !5
  %27 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 20
  store i32 %9, ptr %27, align 4
  %28 = trunc i32 %1 to i8
  %29 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 1
  store i8 %28, ptr %29, align 1
  %30 = ptrtoint ptr %12 to i32
  %31 = add i32 %30, 4
  %32 = inttoptr i32 %31 to ptr
  %33 = load i8, ptr %32, align 4
  %34 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  store i8 %33, ptr %34, align 2
  %35 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 10
  store i8 0, ptr %35, align 2
  %36 = trunc i32 %3 to i16
  %37 = and i16 %36, 255
  %38 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 16
  store i16 %37, ptr %38, align 4
  %39 = trunc i32 %3 to i8
  %40 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 3
  store i8 %39, ptr %40, align 1
  %41 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 18
  store i16 0, ptr %42, align 4
  %43 = trunc i32 %4 to i8
  %44 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 4
  store i8 %43, ptr %44, align 4
  %45 = add i32 %30, 12
  %46 = inttoptr i32 %45 to ptr
  %47 = load i8, ptr %46, align 4
  %48 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 5
  store i8 %47, ptr %48, align 1
  %49 = trunc i32 %6 to i8
  %50 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 7
  store i8 %49, ptr %50, align 1
  %51 = trunc i32 %2 to i8
  %52 = lshr i8 %51, 1
  %53 = add nsw i8 %52, -1
  %54 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 9
  store i8 %53, ptr %54, align 1
  %55 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 8
  store i8 %53, ptr %55, align 4
  call void asm sideeffect "", "{r0}"(i32 -67090656) #3, !srcloc !6
  %56 = load volatile i32, ptr %11, align 4
  %57 = add i32 %56, -67090656
  %58 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 15
  store i32 %57, ptr %58, align 4
  br label %59

59:                                               ; preds = %22, %10
  store volatile i32 %20, ptr %12, align 4
  store volatile ptr %12, ptr inttoptr (i32 67109076 to ptr), align 4
  %60 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 15
  %61 = load i32, ptr %60, align 4
  %62 = inttoptr i32 %61 to ptr
  store volatile ptr %62, ptr inttoptr (i32 67109080 to ptr), align 8
  call void asm sideeffect "", "{r4}"(i32 %19) #3, !srcloc !7
  %63 = shl nuw nsw i32 %13, 4
  %64 = or disjoint i32 %63, -2063597568
  store volatile i32 %64, ptr inttoptr (i32 67109084 to ptr), align 4
  %65 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %66 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  %67 = load i8, ptr %66, align 2
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %103, label %69

69:                                               ; preds = %59
  %70 = and i32 %7, 16
  %71 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 2
  store i32 %70, ptr %71, align 4
  %72 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 12
  br label %77

74:                                               ; preds = %98
  %75 = add nuw nsw i32 %79, 64
  %76 = load i32, ptr %71, align 4
  br label %77

77:                                               ; preds = %74, %69
  %78 = phi i32 [ %76, %74 ], [ %70, %69 ]
  %79 = phi i32 [ %75, %74 ], [ 0, %69 ]
  %80 = phi i32 [ %99, %74 ], [ 0, %69 ]
  %81 = icmp eq i32 %78, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %77
  %83 = load i32, ptr %60, align 4
  %84 = load i8, ptr %72, align 1
  %85 = zext i8 %84 to i32
  %86 = mul i32 %79, %85
  %87 = load i32, ptr %73, align 4
  %88 = add i32 %86, %87
  %89 = shl nuw nsw i32 %85, 6
  call arm_apcscc void @QueueDmaTransfer(i32 noundef %83, i32 noundef %88, i32 noundef %89) #4
  br label %98

90:                                               ; preds = %77
  store volatile i32 %20, ptr %12, align 4
  store volatile ptr %12, ptr inttoptr (i32 67109076 to ptr), align 4
  %91 = load i8, ptr %72, align 1
  %92 = zext i8 %91 to i32
  %93 = mul i32 %79, %92
  %94 = load i32, ptr %73, align 4
  %95 = add i32 %93, %94
  %96 = inttoptr i32 %95 to ptr
  store volatile ptr %96, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 %64, ptr inttoptr (i32 67109084 to ptr), align 4
  %97 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  br label %98

98:                                               ; preds = %90, %82
  %99 = add nuw nsw i32 %80, 2
  %100 = load i8, ptr %66, align 2
  %101 = zext i8 %100 to i32
  %102 = icmp ult i32 %99, %101
  br i1 %102, label %74, label %103

103:                                              ; preds = %98, %59
  %104 = load volatile i32, ptr %11, align 4
  %105 = lshr i32 %104, 5
  %106 = and i32 %105, 511
  call void asm sideeffect "", "r"(i32 ptrtoint (ptr @gTaskConstructorByte646 to i32)) #3, !srcloc !8
  %107 = load volatile i32, ptr %15, align 4
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %134

109:                                              ; preds = %103
  %110 = icmp eq i32 %13, 0
  br label %111

111:                                              ; preds = %109, %131
  %112 = phi i32 [ %113, %131 ], [ 0, %109 ]
  %113 = add nuw nsw i32 %112, 1
  br i1 %110, label %131, label %114

114:                                              ; preds = %111
  %115 = shl i32 %112, 6
  %116 = add i32 %115, %9
  %117 = mul i32 %112, %13
  %118 = add i32 %117, %106
  br label %119

119:                                              ; preds = %119, %114
  %120 = phi i32 [ %116, %114 ], [ %128, %119 ]
  %121 = phi i32 [ 0, %114 ], [ %129, %119 ]
  %122 = inttoptr i32 %120 to ptr
  %123 = load i16, ptr %122, align 2
  %124 = and i16 %123, -1024
  %125 = add i32 %118, %121
  %126 = trunc i32 %125 to i16
  %127 = add i16 %124, %126
  store i16 %127, ptr %122, align 2
  %128 = add i32 %120, 2
  %129 = add nuw nsw i32 %121, 1
  %130 = icmp eq i32 %129, %13
  br i1 %130, label %131, label %119

131:                                              ; preds = %119, %111
  %132 = load volatile i32, ptr %15, align 4
  %133 = icmp slt i32 %113, %132
  br i1 %133, label %111, label %134

134:                                              ; preds = %131, %103
  store i8 0, ptr @gTaskConstructorByte646, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 3161}
!5 = !{i64 3619}
!6 = !{i64 4228}
!7 = !{i64 4661}
!8 = !{i64 6201}
