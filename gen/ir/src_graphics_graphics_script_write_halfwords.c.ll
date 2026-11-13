; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @GraphicsWriteHalfwords(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %5, ptr %6, align 4
  %7 = load i8, ptr %3, align 1
  %8 = lshr i8 %7, 1
  %9 = getelementptr i8, ptr %1, i32 6
  %10 = icmp ult i8 %7, 2
  br i1 %10, label %48, label %11

11:                                               ; preds = %2
  %12 = getelementptr i8, ptr %1, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  %16 = getelementptr i8, ptr %1, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = or disjoint i32 %15, %18
  %20 = getelementptr i8, ptr %1, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = or disjoint i32 %19, %23
  %25 = getelementptr i8, ptr %1, i32 5
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = shl nuw i32 %27, 24
  %29 = or disjoint i32 %24, %28
  %30 = inttoptr i32 %29 to ptr
  br label %31

31:                                               ; preds = %11, %31
  %32 = phi ptr [ %44, %31 ], [ %9, %11 ]
  %33 = phi i8 [ %46, %31 ], [ 0, %11 ]
  %34 = phi ptr [ %45, %31 ], [ %30, %11 ]
  %35 = load i8, ptr %32, align 1
  %36 = zext i8 %35 to i32
  %37 = tail call i32 asm "", "={r2},{r2}"(i32 %36) #1, !srcloc !4
  %38 = getelementptr i8, ptr %32, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = shl nuw nsw i32 %40, 8
  %42 = add i32 %41, %37
  %43 = trunc i32 %42 to i16
  store i16 %43, ptr %34, align 2
  %44 = getelementptr i8, ptr %32, i32 2
  %45 = getelementptr i16, ptr %34, i32 1
  %46 = add nuw nsw i8 %33, 1
  %47 = icmp ult i8 %46, %8
  br i1 %47, label %31, label %48

48:                                               ; preds = %31, %2
  %49 = phi ptr [ %9, %2 ], [ %44, %31 ]
  %50 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %49, ptr %50, align 4
  ret i32 1
}

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 739}
