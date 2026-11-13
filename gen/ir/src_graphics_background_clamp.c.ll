; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.BackgroundBounds = type { i16, i16, i16, i16, i8, [3 x i8] }

@gBackgroundBounds = external dso_local global [4 x %struct.BackgroundBounds], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClampBackgroundCoordinate(i8 noundef zeroext %0, ptr nocapture noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = tail call arm_apcscc ptr @GetVideoState() #2
  %5 = zext i8 %0 to i32
  %6 = mul nuw nsw i32 %5, 12
  %7 = add i32 %6, ptrtoint (ptr @gBackgroundBounds to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.BackgroundBounds, ptr %8, i32 0, i32 4
  %10 = load i8, ptr %9, align 2
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %3
  %14 = load i32, ptr %1, align 4
  %15 = ashr i32 %14, 16
  %16 = and i8 %2, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.BackgroundBounds, ptr %8, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = sext i16 %20 to i32
  %22 = sub nsw i32 0, %21
  %23 = icmp slt i32 %15, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.BackgroundBounds, ptr %8, i32 0, i32 3
  %26 = load i16, ptr %25, align 2
  %27 = sext i16 %26 to i32
  %28 = sub nsw i32 160, %27
  %29 = icmp sgt i32 %15, %28
  br i1 %29, label %45, label %41

30:                                               ; preds = %13
  %31 = load i16, ptr %8, align 2
  %32 = sext i16 %31 to i32
  %33 = sub nsw i32 0, %32
  %34 = icmp slt i32 %15, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.BackgroundBounds, ptr %8, i32 0, i32 1
  %37 = load i16, ptr %36, align 2
  %38 = sext i16 %37 to i32
  %39 = sub nsw i32 240, %38
  %40 = icmp sgt i32 %15, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %30, %18, %24, %35
  %42 = phi i32 [ %39, %35 ], [ %28, %24 ], [ %33, %30 ], [ %22, %18 ]
  %43 = shl i32 %42, 16
  %44 = or disjoint i32 %43, 32768
  store i32 %44, ptr %1, align 4
  br label %45

45:                                               ; preds = %24, %35, %41, %3
  ret void
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
