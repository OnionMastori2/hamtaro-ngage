; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsSetRasterPositionFromSource(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i32
  tail call void asm sideeffect "", "{r2}"(i32 %4) #2, !srcloc !4
  switch i8 %3, label %8 [
    i8 -1, label %5
    i8 -2, label %6
    i8 -3, label %7
  ]

5:                                                ; preds = %2
  tail call arm_apcscc void @PositionRasterAtActor() #3
  br label %15

6:                                                ; preds = %2
  tail call arm_apcscc void @PositionRasterAtBackground() #3
  br label %15

7:                                                ; preds = %2
  tail call arm_apcscc void @PositionRasterAlongDirection() #3
  br label %15

8:                                                ; preds = %2
  %9 = load ptr, ptr @gRasterEffect, align 4
  %10 = getelementptr i8, ptr %9, i32 3
  store i8 %3, ptr %10, align 1
  %11 = getelementptr i8, ptr %1, i32 1
  %12 = load i8, ptr %11, align 1
  %13 = load ptr, ptr @gRasterEffect, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  store i8 %12, ptr %14, align 1
  br label %15

15:                                               ; preds = %6, %8, %7, %5
  %16 = getelementptr i8, ptr %1, i32 2
  %17 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %16, ptr %17, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @PositionRasterAtActor() local_unnamed_addr #1

declare dso_local arm_apcscc void @PositionRasterAtBackground() local_unnamed_addr #1

declare dso_local arm_apcscc void @PositionRasterAlongDirection() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 419}
