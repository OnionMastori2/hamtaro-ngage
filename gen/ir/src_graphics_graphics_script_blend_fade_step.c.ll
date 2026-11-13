; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @GraphicsBlendFadeStep(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 8
  %4 = load i16, ptr %3, align 2
  %5 = zext i16 %4 to i32
  %6 = lshr i32 %5, 8
  %7 = add nuw nsw i32 %6, %5
  %8 = and i32 %7, 255
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 2
  %10 = and i32 %7, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = icmp ugt i32 %8, 16
  br i1 %13, label %14, label %16

14:                                               ; preds = %12, %2
  %15 = phi i16 [ 0, %2 ], [ 16, %12 ]
  store i16 %15, ptr %3, align 2
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi i16 [ %9, %12 ], [ %15, %14 ]
  store volatile i16 %17, ptr inttoptr (i32 67108948 to ptr), align 4
  %18 = and i16 %4, -256
  %19 = load i16, ptr %3, align 2
  %20 = or i16 %19, %18
  store i16 %20, ptr %3, align 2
  %21 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i8 1, ptr %0, align 4
  br label %31

25:                                               ; preds = %16
  %26 = add i8 %22, -1
  store i8 %26, ptr %21, align 1
  %27 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  %28 = load i8, ptr %27, align 2
  %29 = zext i8 %28 to i16
  %30 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %29, ptr %30, align 4
  br label %31

31:                                               ; preds = %25, %24
  ret i32 0
}

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
