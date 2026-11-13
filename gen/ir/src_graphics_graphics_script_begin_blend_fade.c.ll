; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gPaletteGroupSizes = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsBeginBlendFade(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store i8 -111, ptr %0, align 4
  %3 = getelementptr i8, ptr %1, i32 -1
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %1, i32 1
  %7 = load i8, ptr %1, align 1
  %8 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  store i8 %7, ptr %8, align 2
  %9 = shl nuw nsw i32 %5, 6
  %10 = add nuw nsw i32 %9, 56512
  %11 = load i8, ptr %6, align 1
  %12 = zext i8 %11 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %12) #1, !srcloc !4
  %13 = icmp eq i8 %11, -1
  %14 = and i32 %12, 63
  %15 = select i1 %13, i32 0, i32 %14
  %16 = or disjoint i32 %15, %10
  %17 = trunc i32 %16 to i16
  store volatile i16 %17, ptr inttoptr (i32 67108944 to ptr), align 16
  %18 = getelementptr i8, ptr %1, i32 2
  %19 = getelementptr i8, ptr %1, i32 3
  %20 = load i8, ptr %18, align 1
  %21 = zext i8 %20 to i32
  %22 = and i32 %21, 15
  %23 = add i32 %22, ptrtoint (ptr @gPaletteGroupSizes to i32)
  %24 = inttoptr i32 %23 to ptr
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  store i8 %25, ptr %26, align 1
  %27 = lshr i32 16, %22
  %28 = trunc i32 %27 to i16
  %29 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  store i16 %28, ptr %29, align 2
  %30 = and i32 %21, 16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %2
  %33 = load volatile i16, ptr %29, align 2
  %34 = zext i16 %33 to i32
  %35 = mul nsw i32 %34, -256
  %36 = or disjoint i32 %35, 16
  br label %39

37:                                               ; preds = %2
  %38 = shl nuw nsw i32 %27, 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = phi i32 [ %36, %32 ], [ %38, %37 ]
  %41 = trunc i32 %40 to i16
  store i16 %41, ptr %29, align 2
  %42 = load i8, ptr %19, align 1
  %43 = zext i8 %42 to i32
  %44 = add i32 %43, ptrtoint (ptr @gPaletteGroupSizes to i32)
  %45 = zext i8 %25 to i32
  %46 = inttoptr i32 %44 to ptr
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %45, %48
  %50 = trunc i32 %49 to i8
  %51 = and i32 %49, 128
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i8 %50, i8 0
  store i8 %53, ptr %26, align 1
  %54 = getelementptr i8, ptr %1, i32 4
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %39
  %58 = and i16 %41, -256
  %59 = zext i8 %55 to i16
  %60 = or disjoint i16 %58, %59
  store i16 %60, ptr %29, align 2
  br label %61

61:                                               ; preds = %57, %39
  %62 = getelementptr i8, ptr %1, i32 5
  %63 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %62, ptr %63, align 4
  ret i32 1
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 826}
