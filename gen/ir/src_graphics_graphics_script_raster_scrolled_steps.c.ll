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
define dso_local arm_apcscc void @UpdateRasterScrolledSteps() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = zext i16 %1 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %2) #3, !srcloc !4
  %3 = icmp eq i16 %1, 227
  %4 = add nuw nsw i32 %2, 1
  %5 = and i32 %4, 65535
  %6 = select i1 %3, i32 0, i32 %5
  %7 = icmp ult i32 %6, 160
  br i1 %7, label %8, label %44

8:                                                ; preds = %0
  %9 = load ptr, ptr @gRasterEffect, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = tail call arm_apcscc i32 @__modsi3(i32 noundef %6, i32 noundef %12) #4
  %14 = add nsw i32 %12, -1
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %8
  %17 = getelementptr i8, ptr %9, i32 5
  %18 = load i8, ptr %17, align 1
  %19 = getelementptr i8, ptr %9, i32 6
  %20 = load i8, ptr %19, align 1
  %21 = add i8 %20, %18
  store i8 %21, ptr %19, align 1
  %22 = load ptr, ptr @gRasterEffect, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = getelementptr i8, ptr %22, i32 7
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or disjoint i32 %26, %29
  %31 = getelementptr i8, ptr %22, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = sub nsw i32 %30, %33
  %35 = trunc i32 %34 to i16
  %36 = and i32 %34, 32768
  %37 = icmp eq i32 %36, 0
  %38 = tail call i16 @llvm.umin.i16(i16 %35, i16 240)
  %39 = select i1 %37, i16 %38, i16 0
  store i16 %39, ptr @gRasterScanlineValue, align 2
  %40 = sub nuw nsw i16 240, %39
  store volatile i16 %40, ptr inttoptr (i32 67108892 to ptr), align 4
  %41 = load i16, ptr @gRasterScanlineValue, align 2
  %42 = shl i16 %41, 8
  %43 = or disjoint i16 %42, 240
  store i16 %43, ptr @gRasterScanlineValue, align 2
  br label %44

44:                                               ; preds = %8, %16, %0
  %45 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %46 = icmp eq i16 %45, 160
  br i1 %46, label %47, label %114

47:                                               ; preds = %44
  %48 = load ptr, ptr @gRasterEffect, align 4
  %49 = getelementptr i8, ptr %48, i32 8
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = shl nuw nsw i32 %51, 8
  %53 = getelementptr i8, ptr %48, i32 7
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = or disjoint i32 %52, %55
  %57 = getelementptr i8, ptr %48, i32 3
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = add nuw nsw i32 %56, %59
  %61 = and i32 %60, 65535
  %62 = lshr i32 %60, 8
  %63 = trunc i32 %62 to i8
  store i8 %63, ptr %49, align 1
  %64 = trunc i32 %60 to i8
  store i8 %64, ptr %53, align 1
  %65 = load ptr, ptr @gRasterEffect, align 4
  %66 = getelementptr i8, ptr %65, i32 6
  store i8 0, ptr %66, align 1
  %67 = load ptr, ptr @gRasterEffect, align 4
  %68 = getelementptr i8, ptr %67, i32 6
  %69 = load i8, ptr %68, align 1
  %70 = zext i8 %69 to i32
  %71 = sub nsw i32 %61, %70
  %72 = trunc i32 %71 to i16
  %73 = and i32 %71, 32768
  %74 = icmp eq i32 %73, 0
  %75 = tail call i16 @llvm.umin.i16(i16 %72, i16 240)
  %76 = select i1 %74, i16 %75, i16 0
  store i16 %76, ptr @gRasterScanlineValue, align 2
  %77 = load i8, ptr %67, align 1
  %78 = icmp eq i8 %77, 0
  %79 = shl nuw i16 %76, 8
  %80 = or disjoint i16 %79, 240
  %81 = select i1 %78, ptr inttoptr (i32 67108928 to ptr), ptr inttoptr (i32 67108930 to ptr)
  store volatile i16 %80, ptr %81, align 2
  %82 = load i16, ptr @gRasterScanlineValue, align 2
  %83 = shl i16 %82, 8
  %84 = or disjoint i16 %83, 240
  store i16 %84, ptr @gRasterScanlineValue, align 2
  %85 = load ptr, ptr @gRasterEffect, align 4
  %86 = getelementptr i8, ptr %85, i32 5
  %87 = load i8, ptr %86, align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr i8, ptr %85, i32 4
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i32
  %92 = tail call arm_apcscc i32 @__divsi3(i32 noundef 160, i32 noundef %91) #4
  %93 = mul i32 %92, %88
  %94 = add i32 %93, 240
  %95 = icmp sgt i32 %61, %94
  br i1 %95, label %96, label %114

96:                                               ; preds = %47
  %97 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %98 = getelementptr i8, ptr %85, i32 2
  %99 = load i8, ptr %98, align 1
  %100 = load i8, ptr %85, align 1
  %101 = icmp eq i8 %100, 0
  %102 = select i1 %101, i8 -33, i8 -65
  %103 = and i8 %102, %97
  store i8 %103, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %104 = and i8 %99, 31
  tail call void asm sideeffect "", "{r0}"(i32 32) #3, !srcloc !5
  %105 = and i8 %103, -32
  %106 = or disjoint i8 %105, %104
  store i8 %106, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %107 = load i32, ptr @gVideoState, align 4
  %108 = or i32 %107, 1
  store i32 %108, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #4
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %109 = load ptr, ptr @gRasterEffect, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %96
  %112 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %109) #4
  store ptr null, ptr @gRasterEffect, align 4
  br label %113

113:                                              ; preds = %111, %96
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %114

114:                                              ; preds = %47, %113, %44
  ret void
}

declare dso_local arm_apcscc i32 @__modsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @__divsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 333}
!5 = !{i64 3977}
