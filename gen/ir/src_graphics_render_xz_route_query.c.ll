; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2,0"

%struct.RenderXZCollisionDimensions = type { i16, i16 }

@gRenderXZCollisionDimensions = external dso_local local_unnamed_addr global %struct.RenderXZCollisionDimensions, align 2
@gRenderXZCollisionMap = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @HasRenderXZRouteObstacle(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = tail call i32 @llvm.umin.i32(i32 %2, i32 %0)
  %6 = lshr i32 %5, 3
  %7 = load i16, ptr @gRenderXZCollisionDimensions, align 2
  %8 = zext i16 %7 to i32
  %9 = tail call i32 @llvm.umin.i32(i32 %6, i32 %8)
  %10 = tail call i32 @llvm.umin.i32(i32 %3, i32 %1)
  %11 = add i32 %10, 8
  %12 = lshr i32 %11, 3
  %13 = load i16, ptr getelementptr inbounds (%struct.RenderXZCollisionDimensions, ptr @gRenderXZCollisionDimensions, i32 0, i32 1), align 2
  %14 = zext i16 %13 to i32
  %15 = tail call i32 @llvm.umax.i32(i32 %2, i32 %0)
  %16 = add i32 %15, 39
  %17 = lshr i32 %16, 3
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %8)
  %19 = tail call i32 @llvm.umax.i32(i32 %3, i32 %1)
  %20 = add i32 %19, 31
  %21 = lshr i32 %20, 3
  %22 = tail call i32 @llvm.umin.i32(i32 %21, i32 %14)
  %23 = icmp ult i32 %12, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %4
  %25 = tail call i32 @llvm.umin.i32(i32 %12, i32 %14)
  %26 = load ptr, ptr @gRenderXZCollisionMap, align 4
  %27 = shl nuw nsw i32 %8, 1
  %28 = mul i32 %27, %25
  %29 = ptrtoint ptr %26 to i32
  %30 = add i32 %28, %29
  %31 = inttoptr i32 %30 to ptr
  %32 = shl nuw nsw i32 %9, 1
  %33 = icmp ult i32 %6, %18
  br label %34

34:                                               ; preds = %48, %24
  %35 = phi i32 [ %25, %24 ], [ %50, %48 ]
  %36 = phi ptr [ %31, %24 ], [ %49, %48 ]
  br i1 %33, label %37, label %48

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %36, i32 %32
  br label %39

39:                                               ; preds = %37, %44
  %40 = phi ptr [ %46, %44 ], [ %38, %37 ]
  %41 = phi i32 [ %45, %44 ], [ %9, %37 ]
  %42 = load i16, ptr %40, align 2
  %43 = icmp ult i16 %42, 4096
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = add nuw nsw i32 %41, 1
  %46 = getelementptr i16, ptr %40, i32 1
  %47 = icmp eq i32 %45, %18
  br i1 %47, label %48, label %39

48:                                               ; preds = %44, %34
  %49 = getelementptr i8, ptr %36, i32 %27
  %50 = add nuw nsw i32 %35, 1
  %51 = icmp eq i32 %50, %22
  br i1 %51, label %52, label %34

52:                                               ; preds = %48, %39, %4
  %53 = phi i32 [ 0, %4 ], [ 1, %39 ], [ 0, %48 ]
  ret i32 %53
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
