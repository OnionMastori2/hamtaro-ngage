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
define dso_local arm_apcscc void @UpdateRasterSteppedEdge() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = zext i16 %1 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %2) #3, !srcloc !4
  %3 = icmp eq i16 %1, 227
  %4 = add nuw nsw i32 %2, 1
  %5 = and i32 %4, 65535
  %6 = select i1 %3, i32 0, i32 %5
  %7 = icmp ult i32 %6, 160
  br i1 %7, label %8, label %40

8:                                                ; preds = %0
  %9 = load ptr, ptr @gRasterEffect, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = tail call arm_apcscc i32 @__modsi3(i32 noundef %6, i32 noundef %12) #4
  %14 = add nsw i32 %12, -1
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %40

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
  br label %40

40:                                               ; preds = %8, %16, %0
  %41 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %42 = icmp eq i16 %41, 160
  br i1 %42, label %43, label %105

43:                                               ; preds = %40
  %44 = load ptr, ptr @gRasterEffect, align 4
  %45 = getelementptr i8, ptr %44, i32 8
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = getelementptr i8, ptr %44, i32 7
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or disjoint i32 %48, %51
  %53 = getelementptr i8, ptr %44, i32 3
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = add nuw nsw i32 %52, %55
  %57 = and i32 %56, 65535
  %58 = lshr i32 %56, 8
  %59 = trunc i32 %58 to i8
  store i8 %59, ptr %45, align 1
  %60 = trunc i32 %56 to i8
  store i8 %60, ptr %49, align 1
  %61 = load ptr, ptr @gRasterEffect, align 4
  %62 = getelementptr i8, ptr %61, i32 6
  store i8 0, ptr %62, align 1
  %63 = load ptr, ptr @gRasterEffect, align 4
  %64 = getelementptr i8, ptr %63, i32 6
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = sub nsw i32 %57, %66
  %68 = trunc i32 %67 to i16
  %69 = and i32 %67, 32768
  %70 = icmp eq i32 %69, 0
  %71 = tail call i16 @llvm.umin.i16(i16 %68, i16 240)
  %72 = select i1 %70, i16 %71, i16 0
  store i16 %72, ptr @gRasterScanlineValue, align 2
  %73 = load i8, ptr %63, align 1
  %74 = icmp eq i8 %73, 0
  %75 = select i1 %74, ptr inttoptr (i32 67108928 to ptr), ptr inttoptr (i32 67108930 to ptr)
  store volatile i16 %72, ptr %75, align 2
  %76 = load ptr, ptr @gRasterEffect, align 4
  %77 = getelementptr i8, ptr %76, i32 5
  %78 = load i8, ptr %77, align 1
  %79 = zext i8 %78 to i32
  %80 = getelementptr i8, ptr %76, i32 4
  %81 = load i8, ptr %80, align 1
  %82 = zext i8 %81 to i32
  %83 = tail call arm_apcscc i32 @__divsi3(i32 noundef 160, i32 noundef %82) #4
  %84 = mul i32 %83, %79
  %85 = add i32 %84, 240
  %86 = icmp sgt i32 %57, %85
  br i1 %86, label %87, label %105

87:                                               ; preds = %43
  %88 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %89 = getelementptr i8, ptr %76, i32 2
  %90 = load i8, ptr %89, align 1
  %91 = load i8, ptr %76, align 1
  %92 = icmp eq i8 %91, 0
  %93 = select i1 %92, i8 -33, i8 -65
  %94 = and i8 %93, %88
  store i8 %94, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %95 = and i8 %90, 31
  tail call void asm sideeffect "", "{r0}"(i32 32) #3, !srcloc !5
  %96 = and i8 %94, -32
  %97 = or disjoint i8 %96, %95
  store i8 %97, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %98 = load i32, ptr @gVideoState, align 4
  %99 = or i32 %98, 1
  store i32 %99, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #4
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %100 = load ptr, ptr @gRasterEffect, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %87
  %103 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %100) #4
  store ptr null, ptr @gRasterEffect, align 4
  br label %104

104:                                              ; preds = %102, %87
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %105

105:                                              ; preds = %43, %104, %40
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
!4 = !{i64 331}
!5 = !{i64 3601}
