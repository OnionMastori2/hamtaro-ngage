; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @GraphicsSetWindowMasks(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr i8, ptr %1, i32 2
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i16
  %9 = shl nuw i16 %8, 8
  %10 = or disjoint i16 %9, %5
  store volatile i16 %10, ptr inttoptr (i32 67108936 to ptr), align 8
  %11 = getelementptr i8, ptr %1, i32 3
  %12 = load i8, ptr %6, align 1
  %13 = zext i8 %12 to i16
  %14 = getelementptr i8, ptr %1, i32 4
  %15 = load i8, ptr %11, align 1
  %16 = zext i8 %15 to i16
  %17 = shl nuw i16 %16, 8
  %18 = or disjoint i16 %17, %13
  store volatile i16 %18, ptr inttoptr (i32 67108938 to ptr), align 2
  %19 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %14, ptr %19, align 4
  ret i32 1
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @GraphicsSetWindowBounds(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr i8, ptr %1, i32 2
  %6 = load i8, ptr %3, align 1
  %7 = getelementptr i8, ptr %1, i32 3
  %8 = load i8, ptr %5, align 1
  %9 = getelementptr i8, ptr %1, i32 4
  %10 = load i8, ptr %7, align 1
  %11 = load i8, ptr %9, align 1
  %12 = icmp eq i8 %4, 0
  %13 = select i1 %12, ptr inttoptr (i32 67108928 to ptr), ptr inttoptr (i32 67108930 to ptr)
  %14 = zext i8 %10 to i16
  %15 = zext i8 %11 to i16
  %16 = shl nuw i16 %15, 8
  %17 = or disjoint i16 %16, %14
  %18 = getelementptr i8, ptr %1, i32 5
  %19 = zext i8 %6 to i16
  %20 = zext i8 %8 to i16
  %21 = shl nuw i16 %20, 8
  %22 = or disjoint i16 %21, %19
  store volatile i16 %22, ptr %13, align 2
  %23 = select i1 %12, ptr inttoptr (i32 67108932 to ptr), ptr inttoptr (i32 67108934 to ptr)
  store volatile i16 %17, ptr %23, align 2
  %24 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %18, ptr %24, align 4
  ret i32 1
}

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
