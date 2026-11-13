; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandWriteByte(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = inttoptr i32 %20 to ptr
  store i8 %22, ptr %23, align 1
  %24 = load ptr, ptr %1, align 4
  %25 = getelementptr i8, ptr %24, i32 1
  store ptr %25, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  ret i32 0
}

declare dso_local arm_apcscc void @CommitBackgroundScript(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @BackgroundCommandWriteHalfword(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %3, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %3, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %3, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = getelementptr i8, ptr %3, i32 4
  store ptr %21, ptr %1, align 4
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i16
  %24 = getelementptr i8, ptr %3, i32 5
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i16
  %27 = shl nuw i16 %26, 8
  %28 = or disjoint i16 %27, %23
  %29 = inttoptr i32 %20 to ptr
  store i16 %28, ptr %29, align 2
  %30 = getelementptr i8, ptr %3, i32 6
  store ptr %30, ptr %1, align 4
  tail call arm_apcscc void @CommitBackgroundScript(ptr noundef %0, ptr noundef nonnull %1) #2
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
