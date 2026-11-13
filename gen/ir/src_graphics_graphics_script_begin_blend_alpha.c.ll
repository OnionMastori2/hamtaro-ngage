; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsBeginBlendAlpha(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  store i8 -105, ptr %0, align 4
  %3 = load i8, ptr %1, align 1
  %4 = zext i8 %3 to i16
  %5 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  store i16 %4, ptr %5, align 4
  %6 = getelementptr i8, ptr %1, i32 1
  %7 = load i8, ptr %1, align 1
  %8 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 2
  store i8 %7, ptr %8, align 2
  tail call arm_apcscc void @SetBlendEffect(i32 noundef 1) #3
  %9 = load i8, ptr %6, align 1
  %10 = getelementptr i8, ptr %1, i32 2
  %11 = getelementptr i8, ptr %1, i32 3
  %12 = load i8, ptr %10, align 1
  %13 = and i8 %9, 63
  %14 = and i8 %12, 63
  tail call arm_apcscc void @SetBlendTargets(i8 noundef zeroext %13, i8 noundef zeroext %14) #3
  %15 = load i8, ptr %11, align 1
  %16 = tail call i8 @llvm.umax.i8(i8 %15, i8 1)
  %17 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 1
  store i8 %16, ptr %17, align 1
  %18 = getelementptr i8, ptr %1, i32 4
  %19 = getelementptr i8, ptr %1, i32 5
  %20 = load i8, ptr %18, align 1
  %21 = zext i8 %20 to i32
  %22 = getelementptr i8, ptr %1, i32 6
  %23 = load i8, ptr %19, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr i8, ptr %1, i32 7
  %26 = load i8, ptr %22, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr i8, ptr %1, i32 8
  %29 = load i8, ptr %25, align 1
  %30 = zext i8 %29 to i32
  tail call void asm sideeffect "", "r,r"(i32 %24, i32 %30) #4, !srcloc !4
  tail call arm_apcscc void @SetBlendCoefficients(i8 noundef zeroext %20, i8 noundef zeroext %23, i8 noundef zeroext 0) #3
  %31 = zext i8 %20 to i16
  %32 = shl nuw i16 %31, 8
  %33 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 10
  store i16 %32, ptr %33, align 2
  %34 = zext i8 %23 to i16
  %35 = shl nuw i16 %34, 8
  %36 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 11
  store i16 %35, ptr %36, align 4
  %37 = sub nsw i32 %27, %21
  %38 = shl nsw i32 %37, 8
  %39 = load i8, ptr %17, align 1
  %40 = zext i8 %39 to i32
  %41 = sdiv i32 %38, %40
  %42 = trunc i32 %41 to i16
  %43 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 12
  store i16 %42, ptr %43, align 2
  %44 = sub nsw i32 %30, %24
  %45 = shl nsw i32 %44, 8
  %46 = sdiv i32 %45, %40
  %47 = trunc i32 %46 to i16
  %48 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 13
  store i16 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %28, ptr %49, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @SetBlendEffect(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBlendTargets(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetBlendCoefficients(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 942}
