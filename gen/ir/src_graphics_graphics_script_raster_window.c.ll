; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRasterEffect = external dso_local global ptr, align 4
@gRasterScanlineValue = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsConfigureRasterWindow(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r12}"(i32 0) #1, !srcloc !4
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = load volatile ptr, ptr @gRasterEffect, align 4
  store i8 %4, ptr %5, align 1
  %6 = getelementptr i8, ptr %1, i32 2
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, ptr %6, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = shl nuw nsw i32 %8, 16
  %13 = or disjoint i32 %11, %12
  %14 = tail call i32 asm "", "=r,0"(i32 %13) #2, !srcloc !5
  %15 = lshr i32 %14, 16
  %16 = getelementptr i8, ptr %1, i32 3
  %17 = trunc i32 %15 to i16
  store volatile i16 %17, ptr inttoptr (i32 67108936 to ptr), align 8
  %18 = getelementptr i8, ptr %1, i32 4
  %19 = load i8, ptr %16, align 1
  %20 = zext i8 %19 to i32
  %21 = load i8, ptr %18, align 1
  %22 = zext i8 %21 to i32
  %23 = shl nuw i32 %22, 24
  %24 = shl nuw nsw i32 %20, 16
  %25 = or disjoint i32 %23, %24
  %26 = tail call i32 asm "", "={r6},{r6}"(i32 %25) #2, !srcloc !6
  %27 = lshr i32 %26, 16
  %28 = getelementptr i8, ptr %1, i32 5
  %29 = trunc i32 %27 to i16
  store volatile i16 %29, ptr inttoptr (i32 67108938 to ptr), align 2
  %30 = getelementptr i8, ptr %1, i32 6
  %31 = load i8, ptr %28, align 1
  %32 = load volatile ptr, ptr @gRasterEffect, align 4
  %33 = getelementptr i8, ptr %32, i32 2
  store i8 %31, ptr %33, align 1
  %34 = load i8, ptr %30, align 1
  %35 = load volatile ptr, ptr @gRasterEffect, align 4
  %36 = load volatile i8, ptr %35, align 1
  %37 = lshr i32 %14, 24
  %38 = lshr i32 %26, 24
  %39 = tail call i32 asm "", "={r0},{r0}"(i32 %38) #2, !srcloc !7
  %40 = or i32 %37, %39
  %41 = or i32 %40, %15
  %42 = or i32 %41, %27
  %43 = and i32 %42, 255
  %44 = tail call i32 asm "", "={r3},{r3}"(i32 %43) #2, !srcloc !8
  %45 = trunc i32 %44 to i8
  %46 = load volatile ptr, ptr @gRasterEffect, align 4
  %47 = getelementptr i8, ptr %46, i32 1
  store i8 %45, ptr %47, align 1
  %48 = icmp eq i8 %34, 1
  %49 = select i1 %48, i16 240, i16 0
  %50 = load volatile ptr, ptr @gRasterEffect, align 4
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, 0
  %53 = select i1 %52, ptr inttoptr (i32 67108928 to ptr), ptr inttoptr (i32 67108930 to ptr)
  store volatile i16 %49, ptr %53, align 2
  store i16 %49, ptr @gRasterScanlineValue, align 2
  %54 = load volatile ptr, ptr @gRasterEffect, align 4
  %55 = load i8, ptr %54, align 1
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %56, ptr inttoptr (i32 67108932 to ptr), ptr inttoptr (i32 67108934 to ptr)
  store volatile i16 160, ptr %57, align 2
  %58 = getelementptr i8, ptr %1, i32 7
  tail call void asm sideeffect "", "r"(i32 %14) #1, !srcloc !9
  %59 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %58, ptr %59, align 4
  ret i32 1
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind }
attributes #2 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 568}
!5 = !{i64 740}
!6 = !{i64 943}
!7 = !{i64 1250}
!8 = !{i64 1334}
!9 = !{i64 1637}
