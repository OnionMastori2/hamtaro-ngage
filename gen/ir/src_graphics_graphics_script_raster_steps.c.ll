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
define dso_local arm_apcscc void @UpdateRasterSteppedBands() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = zext i16 %1 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %2) #3, !srcloc !4
  %3 = icmp eq i16 %1, 227
  %4 = add nuw nsw i32 %2, 1
  %5 = and i32 %4, 65535
  %6 = select i1 %3, i32 0, i32 %5
  %7 = icmp ult i32 %6, 160
  br i1 %7, label %8, label %42

8:                                                ; preds = %0
  %9 = load ptr, ptr @gRasterEffect, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = tail call arm_apcscc i32 @__modsi3(i32 noundef %6, i32 noundef %12) #4
  %14 = add nsw i32 %12, -1
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %42

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
  %39 = shl nuw i16 %38, 8
  %40 = or disjoint i16 %39, 240
  %41 = select i1 %37, i16 %40, i16 240
  store i16 %41, ptr @gRasterScanlineValue, align 2
  br label %42

42:                                               ; preds = %8, %16, %0
  %43 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %44 = icmp eq i16 %43, 160
  br i1 %44, label %45, label %112

45:                                               ; preds = %42
  %46 = load ptr, ptr @gRasterEffect, align 4
  %47 = getelementptr i8, ptr %46, i32 8
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 8
  %51 = getelementptr i8, ptr %46, i32 7
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = or disjoint i32 %50, %53
  %55 = getelementptr i8, ptr %46, i32 3
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = add nuw nsw i32 %54, %57
  %59 = and i32 %58, 65535
  %60 = lshr i32 %58, 8
  %61 = trunc i32 %60 to i8
  store i8 %61, ptr %47, align 1
  %62 = trunc i32 %58 to i8
  store i8 %62, ptr %51, align 1
  %63 = load ptr, ptr @gRasterEffect, align 4
  %64 = getelementptr i8, ptr %63, i32 6
  store i8 0, ptr %64, align 1
  %65 = load ptr, ptr @gRasterEffect, align 4
  %66 = getelementptr i8, ptr %65, i32 6
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = sub nsw i32 %59, %68
  %70 = trunc i32 %69 to i16
  %71 = and i32 %69, 32768
  %72 = icmp eq i32 %71, 0
  %73 = tail call i16 @llvm.umin.i16(i16 %70, i16 240)
  %74 = select i1 %72, i16 %73, i16 0
  store i16 %74, ptr @gRasterScanlineValue, align 2
  %75 = load i8, ptr %65, align 1
  %76 = icmp eq i8 %75, 0
  %77 = shl nuw i16 %74, 8
  %78 = or disjoint i16 %77, 240
  %79 = select i1 %76, ptr inttoptr (i32 67108928 to ptr), ptr inttoptr (i32 67108930 to ptr)
  store volatile i16 %78, ptr %79, align 2
  %80 = load i16, ptr @gRasterScanlineValue, align 2
  %81 = shl i16 %80, 8
  %82 = or disjoint i16 %81, 240
  store i16 %82, ptr @gRasterScanlineValue, align 2
  %83 = load ptr, ptr @gRasterEffect, align 4
  %84 = getelementptr i8, ptr %83, i32 5
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = getelementptr i8, ptr %83, i32 4
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = tail call arm_apcscc i32 @__divsi3(i32 noundef 160, i32 noundef %89) #4
  %91 = mul i32 %90, %86
  %92 = add i32 %91, 240
  %93 = icmp sgt i32 %59, %92
  br i1 %93, label %94, label %112

94:                                               ; preds = %45
  %95 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %96 = getelementptr i8, ptr %83, i32 2
  %97 = load i8, ptr %96, align 1
  %98 = load i8, ptr %83, align 1
  %99 = icmp eq i8 %98, 0
  %100 = select i1 %99, i8 -33, i8 -65
  %101 = and i8 %100, %95
  store i8 %101, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %102 = and i8 %97, 31
  tail call void asm sideeffect "", "{r0}"(i32 32) #3, !srcloc !5
  %103 = and i8 %101, -32
  %104 = or disjoint i8 %103, %102
  store i8 %104, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %105 = load i32, ptr @gVideoState, align 4
  %106 = or i32 %105, 1
  store i32 %106, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #4
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %107 = load ptr, ptr @gRasterEffect, align 4
  %108 = icmp eq ptr %107, null
  br i1 %108, label %111, label %109

109:                                              ; preds = %94
  %110 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %107) #4
  store ptr null, ptr @gRasterEffect, align 4
  br label %111

111:                                              ; preds = %109, %94
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %112

112:                                              ; preds = %45, %111, %42
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
!4 = !{i64 332}
!5 = !{i64 3704}
