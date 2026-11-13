; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateRasterRadiusProfile() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRasterEffect, align 4
  %2 = getelementptr i8, ptr %1, i32 14
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = shl nuw nsw i32 %4, 8
  %6 = getelementptr i8, ptr %1, i32 13
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = or disjoint i32 %5, %8
  %10 = getelementptr i8, ptr %1, i32 11
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = getelementptr i8, ptr %1, i32 10
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = or disjoint i32 %13, %16
  %18 = add nuw nsw i32 %17, %9
  %19 = lshr i32 %18, 8
  %20 = trunc i32 %19 to i8
  store i8 %20, ptr %2, align 1
  %21 = trunc i32 %18 to i8
  store i8 %21, ptr %6, align 1
  %22 = load ptr, ptr @gRasterEffect, align 4
  %23 = getelementptr i8, ptr %22, i32 6
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = getelementptr i8, ptr %22, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = or disjoint i32 %26, %29
  %31 = getelementptr i8, ptr %22, i32 9
  %32 = load i8, ptr %31, align 1
  %33 = icmp sgt i8 %32, -1
  %34 = load volatile i8, ptr %31, align 1
  %35 = zext i8 %34 to i32
  br i1 %33, label %38, label %36

36:                                               ; preds = %0
  tail call void asm sideeffect "", "{r1}"(i32 65280) #2, !srcloc !4
  tail call void asm sideeffect "", "{r0}"(i32 65280) #2, !srcloc !5
  %37 = or disjoint i32 %35, 65280
  br label %38

38:                                               ; preds = %0, %36
  %39 = phi i32 [ %37, %36 ], [ %35, %0 ]
  %40 = and i32 %19, 255
  %41 = add nuw nsw i32 %30, %40
  %42 = add nuw nsw i32 %41, %39
  %43 = and i32 %42, 65535
  %44 = and i32 %39, 65280
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = xor i32 %40, 65535
  %48 = sub nsw i32 %47, %39
  %49 = icmp slt i32 %43, %48
  br i1 %49, label %92, label %52

50:                                               ; preds = %38
  %51 = tail call i32 @llvm.umin.i32(i32 %43, i32 240)
  br label %52

52:                                               ; preds = %46, %50
  %53 = phi i32 [ %43, %46 ], [ %51, %50 ]
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %92, label %55

55:                                               ; preds = %52
  %56 = shl nuw nsw i32 %53, 1
  %57 = sub nsw i32 3, %56
  br label %58

58:                                               ; preds = %85, %55
  %59 = phi i32 [ 0, %55 ], [ %90, %85 ]
  %60 = phi i32 [ %53, %55 ], [ %86, %85 ]
  %61 = phi i32 [ %57, %55 ], [ %88, %85 ]
  %62 = and i32 %61, 65535
  %63 = sub nsw i32 %53, %60
  %64 = load ptr, ptr @gRasterEffect, align 4
  %65 = getelementptr i8, ptr %64, i32 %63
  %66 = getelementptr i8, ptr %65, i32 17
  %67 = trunc i32 %59 to i8
  store i8 %67, ptr %66, align 1
  %68 = sub nsw i32 %53, %59
  %69 = load ptr, ptr @gRasterEffect, align 4
  %70 = getelementptr i8, ptr %69, i32 %68
  %71 = getelementptr i8, ptr %70, i32 17
  %72 = trunc i32 %60 to i8
  store i8 %72, ptr %71, align 1
  %73 = and i32 %61, 32768
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %58
  %76 = shl nuw nsw i32 %59, 2
  %77 = add nuw nsw i32 %76, 6
  br label %85

78:                                               ; preds = %58
  %79 = sub i32 %59, %60
  %80 = shl i32 %79, 2
  %81 = add i32 %80, 10
  %82 = add nuw nsw i32 %60, 65535
  %83 = and i32 %82, 65535
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %92, label %85

85:                                               ; preds = %78, %75
  %86 = phi i32 [ %60, %75 ], [ %83, %78 ]
  %87 = phi i32 [ %77, %75 ], [ %81, %78 ]
  %88 = add i32 %87, %62
  %89 = add nuw nsw i32 %59, 1
  %90 = and i32 %89, 65535
  %91 = icmp ugt i32 %90, %86
  br i1 %91, label %92, label %58

92:                                               ; preds = %78, %85, %46, %52
  %93 = phi i32 [ 0, %52 ], [ 0, %46 ], [ %53, %85 ], [ %53, %78 ]
  %94 = load ptr, ptr @gRasterEffect, align 4
  %95 = lshr i32 %93, 8
  %96 = trunc i32 %95 to i8
  %97 = getelementptr i8, ptr %94, i32 6
  store i8 %96, ptr %97, align 1
  %98 = trunc i32 %93 to i8
  %99 = getelementptr i8, ptr %94, i32 5
  store i8 %98, ptr %99, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1200}
!5 = !{i64 1269}
