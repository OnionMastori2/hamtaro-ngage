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
define dso_local arm_apcscc void @UpdateRasterAlternatingBands() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 227
  br i1 %5, label %6, label %39

6:                                                ; preds = %3, %0
  %7 = load ptr, ptr @gRasterEffect, align 4
  %8 = getelementptr i8, ptr %7, i32 5
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %7, i32 6
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i16
  %15 = shl nuw i16 %14, 8
  %16 = sub i16 -3856, %15
  store i16 %16, ptr @gRasterScanlineValue, align 2
  %17 = load i8, ptr %8, align 1
  br label %18

18:                                               ; preds = %11, %6
  %19 = phi i8 [ %17, %11 ], [ %9, %6 ]
  %20 = getelementptr i8, ptr %7, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = lshr i8 %21, 1
  %23 = icmp eq i8 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %7, i32 6
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i16
  store i16 %27, ptr @gRasterScanlineValue, align 2
  %28 = load i8, ptr %8, align 1
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i8 [ %28, %24 ], [ %19, %18 ]
  %31 = add i8 %30, 1
  store i8 %31, ptr %8, align 1
  %32 = load ptr, ptr @gRasterEffect, align 4
  %33 = getelementptr i8, ptr %32, i32 5
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr i8, ptr %32, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = icmp ult i8 %34, %36
  %38 = select i1 %37, i8 %31, i8 0
  store i8 %38, ptr %8, align 1
  br label %39

39:                                               ; preds = %29, %3
  %40 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %41 = icmp eq i16 %40, 160
  br i1 %41, label %42, label %84

42:                                               ; preds = %39
  %43 = load ptr, ptr @gRasterEffect, align 4
  %44 = getelementptr i8, ptr %43, i32 3
  %45 = load i8, ptr %44, align 1
  %46 = getelementptr i8, ptr %43, i32 6
  %47 = load i8, ptr %46, align 1
  %48 = add i8 %47, %45
  store i8 %48, ptr %46, align 1
  %49 = load ptr, ptr @gRasterEffect, align 4
  %50 = getelementptr i8, ptr %49, i32 5
  store i8 0, ptr %50, align 1
  %51 = load ptr, ptr @gRasterEffect, align 4
  %52 = getelementptr i8, ptr %51, i32 6
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 8
  %56 = sub nsw i32 61440, %55
  tail call void asm sideeffect "", "{r0}"(i32 %56) #2, !srcloc !4
  %57 = trunc i32 %55 to i16
  %58 = sub i16 -3856, %57
  store i16 %58, ptr @gRasterScanlineValue, align 2
  %59 = load i8, ptr %51, align 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %60, ptr inttoptr (i32 67108928 to ptr), ptr inttoptr (i32 67108930 to ptr)
  store volatile i16 %58, ptr %61, align 2
  %62 = load ptr, ptr @gRasterEffect, align 4
  %63 = getelementptr i8, ptr %62, i32 6
  %64 = load i8, ptr %63, align 1
  %65 = icmp ugt i8 %64, -16
  br i1 %65, label %66, label %84

66:                                               ; preds = %42
  %67 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %68 = getelementptr i8, ptr %62, i32 2
  %69 = load i8, ptr %68, align 1
  %70 = load i8, ptr %62, align 1
  %71 = icmp eq i8 %70, 0
  %72 = select i1 %71, i8 -33, i8 -65
  %73 = and i8 %72, %67
  store i8 %73, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %74 = and i8 %69, 31
  tail call void asm sideeffect "", "{r0}"(i32 32) #2, !srcloc !5
  %75 = and i8 %73, -32
  %76 = or disjoint i8 %75, %74
  store i8 %76, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %77 = load i32, ptr @gVideoState, align 4
  %78 = or i32 %77, 1
  store i32 %78, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #3
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %79 = load ptr, ptr @gRasterEffect, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %83, label %81

81:                                               ; preds = %66
  %82 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %79) #3
  store ptr null, ptr @gRasterEffect, align 4
  br label %83

83:                                               ; preds = %81, %66
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %84

84:                                               ; preds = %42, %83, %39
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
!4 = !{i64 2163}
!5 = !{i64 3383}
