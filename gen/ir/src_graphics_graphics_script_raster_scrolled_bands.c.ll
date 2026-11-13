; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScanlineValue = external dso_local local_unnamed_addr global i16, align 2
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateRasterScrolledBands() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 227
  br i1 %5, label %6, label %62

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @gRasterEffect, align 4
  %8 = getelementptr i8, ptr %7, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = sub nsw i16 240, %14
  store i16 %15, ptr @gRasterScanlineValue, align 2
  %16 = load i8, ptr %8, align 1
  br label %17

17:                                               ; preds = %11, %6
  %18 = phi i8 [ %16, %11 ], [ %9, %6 ]
  %19 = icmp eq i8 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  tail call void asm sideeffect "", "{r2}"(i32 65296) #2, !srcloc !4
  %21 = getelementptr i8, ptr %7, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = add nsw i16 %23, -240
  store volatile i16 %24, ptr inttoptr (i32 67108892 to ptr), align 4
  %25 = load i8, ptr %8, align 1
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i8 [ %25, %20 ], [ %18, %17 ]
  %28 = getelementptr i8, ptr %7, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = lshr i8 %29, 1
  %31 = icmp eq i8 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %7, i32 6
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i16
  %36 = shl nuw i16 %35, 8
  %37 = or disjoint i16 %36, 240
  store i16 %37, ptr @gRasterScanlineValue, align 2
  %38 = load i8, ptr %8, align 1
  %39 = load i8, ptr %28, align 1
  %40 = lshr i8 %39, 1
  br label %41

41:                                               ; preds = %32, %26
  %42 = phi i8 [ %40, %32 ], [ %30, %26 ]
  %43 = phi i8 [ %38, %32 ], [ %27, %26 ]
  %44 = add nuw i8 %42, 1
  %45 = icmp eq i8 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = getelementptr i8, ptr %7, i32 6
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i16
  %50 = sub nsw i16 240, %49
  store volatile i16 %50, ptr inttoptr (i32 67108892 to ptr), align 4
  %51 = load i8, ptr %8, align 1
  br label %52

52:                                               ; preds = %46, %41
  %53 = phi i8 [ %51, %46 ], [ %43, %41 ]
  %54 = add i8 %53, 1
  store i8 %54, ptr %8, align 1
  %55 = load ptr, ptr @gRasterEffect, align 4
  %56 = getelementptr i8, ptr %55, i32 5
  %57 = load i8, ptr %56, align 1
  %58 = getelementptr i8, ptr %55, i32 4
  %59 = load i8, ptr %58, align 1
  %60 = icmp ult i8 %57, %59
  %61 = select i1 %60, i8 %54, i8 0
  store i8 %61, ptr %8, align 1
  br label %62

62:                                               ; preds = %52, %3
  %63 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %64 = icmp eq i16 %63, 160
  br i1 %64, label %65, label %107

65:                                               ; preds = %62
  %66 = load ptr, ptr @gRasterEffect, align 4
  %67 = getelementptr i8, ptr %66, i32 3
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr i8, ptr %66, i32 6
  %70 = load i8, ptr %69, align 1
  %71 = add i8 %70, %68
  store i8 %71, ptr %69, align 1
  %72 = load ptr, ptr @gRasterEffect, align 4
  %73 = getelementptr i8, ptr %72, i32 5
  store i8 0, ptr %73, align 1
  %74 = load ptr, ptr @gRasterEffect, align 4
  %75 = getelementptr i8, ptr %74, i32 6
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i16
  %78 = sub nsw i16 240, %77
  store i16 %78, ptr @gRasterScanlineValue, align 2
  %79 = load i8, ptr %74, align 1
  %80 = icmp eq i8 %79, 0
  %81 = select i1 %80, ptr inttoptr (i32 67108928 to ptr), ptr inttoptr (i32 67108930 to ptr)
  store volatile i16 %78, ptr %81, align 2
  %82 = load ptr, ptr @gRasterEffect, align 4
  tail call void asm sideeffect "", "{r3}"(i32 65296) #2, !srcloc !5
  %83 = getelementptr i8, ptr %82, i32 6
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i16
  %86 = add nsw i16 %85, -240
  store volatile i16 %86, ptr inttoptr (i32 67108892 to ptr), align 4
  %87 = load i8, ptr %83, align 1
  %88 = icmp ugt i8 %87, -16
  br i1 %88, label %89, label %107

89:                                               ; preds = %65
  %90 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %91 = getelementptr i8, ptr %82, i32 2
  %92 = load i8, ptr %91, align 1
  %93 = load i8, ptr %82, align 1
  %94 = icmp eq i8 %93, 0
  %95 = select i1 %94, i8 -33, i8 -65
  %96 = and i8 %95, %90
  store i8 %96, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %97 = and i8 %92, 31
  tail call void asm sideeffect "", "r"(i32 32) #2, !srcloc !6
  %98 = and i8 %96, -32
  %99 = or disjoint i8 %98, %97
  store i8 %99, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %100 = load i32, ptr @gVideoState, align 4
  %101 = or i32 %100, 1
  store i32 %101, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #3
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %102 = load ptr, ptr @gRasterEffect, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %89
  %105 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %102) #3
  store ptr null, ptr @gRasterEffect, align 4
  br label %106

106:                                              ; preds = %104, %89
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %107

107:                                              ; preds = %65, %106, %62
  ret void
}

declare dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1025}
!5 = !{i64 3162}
!6 = !{i64 4288}
