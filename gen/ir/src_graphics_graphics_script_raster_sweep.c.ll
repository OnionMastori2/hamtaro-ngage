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
define dso_local arm_apcscc noundef i32 @GraphicsUpdateRasterSweep(ptr nocapture noundef writeonly %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRasterEffect, align 4
  %4 = getelementptr i8, ptr %3, i32 5
  %5 = load i8, ptr %4, align 1
  %6 = getelementptr i8, ptr %3, i32 3
  %7 = load i8, ptr %6, align 1
  %8 = add i8 %7, %5
  store i8 %8, ptr %4, align 1
  %9 = load ptr, ptr @gRasterEffect, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = sub i8 120, %8
  %15 = tail call i8 @llvm.smax.i8(i8 %14, i8 0)
  %16 = add i8 %8, 120
  %17 = tail call i8 @llvm.umin.i8(i8 %16, i8 -16)
  %18 = icmp sgt i8 %14, 119
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  store i16 30840, ptr @gRasterScanlineValue, align 2
  tail call void asm sideeffect "", "{r3},r"(i32 0, i32 30840) #3, !srcloc !4
  br label %35

20:                                               ; preds = %2
  %21 = sub i8 80, %8
  %22 = tail call i8 @llvm.smax.i8(i8 %21, i8 0)
  %23 = add i8 %8, 80
  %24 = tail call i8 @llvm.umin.i8(i8 %23, i8 -96)
  %25 = icmp sgt i8 %21, 79
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i16 20560, ptr @gRasterScanlineValue, align 2
  tail call void asm sideeffect "", "{r3},r"(i32 0, i32 20560) #3, !srcloc !5
  br label %35

27:                                               ; preds = %20, %13
  %28 = phi i8 [ %15, %13 ], [ %22, %20 ]
  %29 = phi i8 [ %17, %13 ], [ %24, %20 ]
  %30 = zext i8 %29 to i16
  %31 = zext nneg i8 %28 to i16
  %32 = shl nuw nsw i16 %31, 8
  %33 = or disjoint i16 %32, %30
  store i16 %33, ptr @gRasterScanlineValue, align 2
  %34 = icmp eq i8 %28, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %26, %19, %27
  %36 = load ptr, ptr @gRasterEffect, align 4
  %37 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %38 = getelementptr i8, ptr %36, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = load i8, ptr %36, align 1
  %41 = icmp eq i8 %40, 0
  %42 = select i1 %41, i8 -33, i8 -65
  %43 = and i8 %42, %37
  store i8 %43, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %44 = and i8 %39, 31
  tail call void asm sideeffect "", "{r0}"(i32 32) #3, !srcloc !6
  %45 = and i8 %43, -32
  %46 = or disjoint i8 %45, %44
  store i8 %46, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %47 = load i32, ptr @gVideoState, align 4
  %48 = or i32 %47, 1
  store i32 %48, ptr @gVideoState, align 4
  %49 = load ptr, ptr @gRasterEffect, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %53, label %51

51:                                               ; preds = %35
  %52 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %49) #4
  store ptr null, ptr @gRasterEffect, align 4
  br label %53

53:                                               ; preds = %51, %35
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  store i8 1, ptr %0, align 4
  br label %54

54:                                               ; preds = %27, %53
  ret i32 0
}

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #2

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
!4 = !{i64 1144}
!5 = !{i64 1767}
!6 = !{i64 2706}
