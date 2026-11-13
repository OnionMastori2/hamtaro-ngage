; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gScanlineRadiusAccumulator = external dso_local local_unnamed_addr global i16, align 2
@gScanlineWindowValues = external dso_local local_unnamed_addr global [2 x i16], align 2
@gScanlineTransitionBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScanlineRadiusProfile = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @UpdateScanlineRadiusProfile() local_unnamed_addr #0 {
  %1 = alloca [240 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 240, ptr nonnull %1) #3
  %2 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @gScanlineWindowValues, i32 0, i32 1), align 2
  %3 = load i16, ptr @gScanlineRadiusAccumulator, align 2
  %4 = add i16 %3, %2
  store i16 %4, ptr @gScanlineRadiusAccumulator, align 2
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 3), align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  %8 = zext i8 %7 to i32
  %9 = lshr i16 %4, 8
  %10 = zext nneg i16 %9 to i32
  %11 = add nuw nsw i32 %10, %6
  %12 = add nuw nsw i32 %11, %8
  %13 = and i32 %12, 255
  %14 = icmp sgt i8 %5, -1
  br i1 %14, label %21, label %15

15:                                               ; preds = %0
  %16 = trunc i16 %9 to i8
  %17 = add i8 %5, %16
  %18 = zext i8 %17 to i32
  %19 = sub nuw nsw i32 256, %18
  %20 = icmp ugt i32 %19, %8
  br i1 %20, label %60, label %23

21:                                               ; preds = %0
  %22 = tail call i32 @llvm.umin.i32(i32 %13, i32 240)
  br label %23

23:                                               ; preds = %15, %21
  %24 = phi i32 [ %13, %15 ], [ %22, %21 ]
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %60, label %26

26:                                               ; preds = %23
  %27 = shl nuw nsw i32 %24, 1
  %28 = sub nsw i32 3, %27
  %29 = add nuw nsw i32 %24, 1
  br label %30

30:                                               ; preds = %26, %53
  %31 = phi i32 [ 0, %26 ], [ %58, %53 ]
  %32 = phi i32 [ %24, %26 ], [ %54, %53 ]
  %33 = phi i32 [ %28, %26 ], [ %56, %53 ]
  %34 = and i32 %33, 65535
  %35 = sub nsw i32 %29, %32
  %36 = trunc i32 %31 to i8
  %37 = getelementptr [240 x i8], ptr %1, i32 0, i32 %35
  store i8 %36, ptr %37, align 1
  %38 = sub nsw i32 %29, %31
  %39 = trunc i32 %32 to i8
  %40 = getelementptr [240 x i8], ptr %1, i32 0, i32 %38
  store i8 %39, ptr %40, align 1
  %41 = and i32 %33, 32768
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %30
  %44 = shl nuw nsw i32 %31, 2
  %45 = add nuw nsw i32 %44, 6
  br label %53

46:                                               ; preds = %30
  %47 = sub i32 %31, %32
  %48 = shl i32 %47, 2
  %49 = add i32 %48, 10
  %50 = add nuw nsw i32 %32, 65535
  %51 = and i32 %50, 65535
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %46, %43
  %54 = phi i32 [ %32, %43 ], [ %51, %46 ]
  %55 = phi i32 [ %45, %43 ], [ %49, %46 ]
  %56 = add i32 %55, %34
  %57 = add nuw nsw i32 %31, 1
  %58 = and i32 %57, 65535
  %59 = icmp ugt i32 %58, %54
  br i1 %59, label %61, label %30

60:                                               ; preds = %15, %23
  store i8 0, ptr %1, align 1
  br label %61

61:                                               ; preds = %46, %53, %60
  %62 = phi i32 [ 0, %60 ], [ %24, %53 ], [ %24, %46 ]
  %63 = load ptr, ptr @gScanlineRadiusProfile, align 4
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi ptr [ %63, %61 ], [ %69, %64 ]
  %66 = phi i32 [ 0, %61 ], [ %71, %64 ]
  %67 = getelementptr [240 x i8], ptr %1, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = getelementptr i8, ptr %65, i32 1
  store i8 %68, ptr %65, align 1
  %70 = add nuw nsw i32 %66, 1
  %71 = and i32 %70, 255
  %72 = icmp ugt i32 %71, %62
  br i1 %72, label %73, label %64

73:                                               ; preds = %64
  %74 = trunc i32 %62 to i8
  store i8 %74, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  call void @llvm.lifetime.end.p0(i64 240, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
