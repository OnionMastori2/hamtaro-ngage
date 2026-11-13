; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsSetBlendParameters(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr i8, ptr %1, i32 1
  %4 = load i8, ptr %1, align 1
  %5 = zext i8 %4 to i16
  %6 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %5, ptr %6, align 4
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i32
  %9 = tail call { i32, i32 } asm "", "={r0},={r1},{r0},{r1}"(i32 %8, i32 %8) #2, !srcloc !4
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = and i32 %13, 3
  tail call arm_apcscc void @SetBlendEffect(i32 noundef %14) #3
  br label %15

15:                                               ; preds = %12, %2
  %16 = getelementptr i8, ptr %1, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = icmp eq i8 %17, -1
  %19 = and i8 %17, 63
  %20 = select i1 %18, i8 0, i8 %19
  %21 = getelementptr i8, ptr %1, i32 3
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, -1
  %24 = and i8 %22, 63
  %25 = select i1 %23, i8 0, i8 %24
  %26 = getelementptr i8, ptr %1, i32 4
  tail call arm_apcscc void @SetBlendTargets(i8 noundef zeroext %20, i8 noundef zeroext %25) #3
  %27 = getelementptr i8, ptr %1, i32 5
  %28 = load i8, ptr %26, align 1
  %29 = getelementptr i8, ptr %1, i32 6
  %30 = load i8, ptr %27, align 1
  %31 = getelementptr i8, ptr %1, i32 7
  %32 = load i8, ptr %29, align 1
  tail call arm_apcscc void @SetBlendCoefficients(i8 noundef zeroext %28, i8 noundef zeroext %30, i8 noundef zeroext %32) #3
  %33 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %31, ptr %33, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @SetBlendEffect(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBlendTargets(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBlendCoefficients(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 415}
