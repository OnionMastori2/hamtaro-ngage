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
define dso_local arm_apcscc void @UpdateRasterWindowBands() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 227
  br i1 %5, label %6, label %40

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
  %19 = getelementptr i8, ptr %7, i32 4
  %20 = load i8, ptr %19, align 1
  %21 = lshr i8 %20, 1
  %22 = icmp eq i8 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = getelementptr i8, ptr %7, i32 6
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = or disjoint i16 %27, 240
  store i16 %28, ptr @gRasterScanlineValue, align 2
  %29 = load i8, ptr %8, align 1
  br label %30

30:                                               ; preds = %23, %17
  %31 = phi i8 [ %29, %23 ], [ %18, %17 ]
  %32 = add i8 %31, 1
  store i8 %32, ptr %8, align 1
  %33 = load ptr, ptr @gRasterEffect, align 4
  %34 = getelementptr i8, ptr %33, i32 5
  %35 = load i8, ptr %34, align 1
  %36 = getelementptr i8, ptr %33, i32 4
  %37 = load i8, ptr %36, align 1
  %38 = icmp ult i8 %35, %37
  %39 = select i1 %38, i8 %32, i8 0
  store i8 %39, ptr %8, align 1
  br label %40

40:                                               ; preds = %30, %3
  %41 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %42 = icmp eq i16 %41, 160
  br i1 %42, label %43, label %82

43:                                               ; preds = %40
  %44 = load ptr, ptr @gRasterEffect, align 4
  %45 = getelementptr i8, ptr %44, i32 3
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr i8, ptr %44, i32 6
  %48 = load i8, ptr %47, align 1
  %49 = add i8 %48, %46
  store i8 %49, ptr %47, align 1
  %50 = load ptr, ptr @gRasterEffect, align 4
  %51 = getelementptr i8, ptr %50, i32 5
  store i8 0, ptr %51, align 1
  %52 = load ptr, ptr @gRasterEffect, align 4
  %53 = getelementptr i8, ptr %52, i32 6
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i16
  %56 = sub nsw i16 240, %55
  store i16 %56, ptr @gRasterScanlineValue, align 2
  %57 = load i8, ptr %52, align 1
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, ptr inttoptr (i32 67108928 to ptr), ptr inttoptr (i32 67108930 to ptr)
  store volatile i16 %56, ptr %59, align 2
  %60 = load ptr, ptr @gRasterEffect, align 4
  %61 = getelementptr i8, ptr %60, i32 6
  %62 = load i8, ptr %61, align 1
  %63 = icmp ugt i8 %62, -17
  br i1 %63, label %64, label %82

64:                                               ; preds = %43
  %65 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %66 = getelementptr i8, ptr %60, i32 2
  %67 = load i8, ptr %66, align 1
  %68 = load i8, ptr %60, align 1
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i8 -33, i8 -65
  %71 = and i8 %70, %65
  store i8 %71, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %72 = and i8 %67, 31
  tail call void asm sideeffect "", "{r0}"(i32 32) #2, !srcloc !4
  %73 = and i8 %71, -32
  %74 = or disjoint i8 %73, %72
  store i8 %74, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %75 = load i32, ptr @gVideoState, align 4
  %76 = or i32 %75, 1
  store i32 %76, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #3
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %77 = load ptr, ptr @gRasterEffect, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %64
  %80 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %77) #3
  store ptr null, ptr @gRasterEffect, align 4
  br label %81

81:                                               ; preds = %79, %64
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %82

82:                                               ; preds = %43, %81, %40
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
!4 = !{i64 3243}
