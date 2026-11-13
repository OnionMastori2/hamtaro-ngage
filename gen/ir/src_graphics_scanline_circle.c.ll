; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gScanlineTransitionBytes = external dso_local global [0 x i8], align 1
@gScanlinePhaseBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScanlineRadiusProfile = external dso_local local_unnamed_addr global ptr, align 4
@gScanlineWindowValues = external dso_local local_unnamed_addr global [2 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateScanlineCircleWindow() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %6, label %3

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 227
  br i1 %5, label %6, label %47

6:                                                ; preds = %3, %0
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 1), align 1
  %8 = zext i8 %7 to i32
  %9 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  %10 = zext i8 %9 to i32
  %11 = sub nsw i32 %8, %10
  %12 = load i8, ptr @gScanlinePhaseBytes, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp slt i32 %11, %13
  %15 = add nuw nsw i32 %10, %8
  %16 = icmp ugt i32 %15, %13
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %18, label %44

18:                                               ; preds = %6
  %19 = sub nsw i32 %8, %13
  %20 = icmp ult i8 %7, %12
  %21 = sub nsw i32 0, %19
  %22 = select i1 %20, i32 %21, i32 %19
  %23 = and i32 %22, 255
  %24 = sub nsw i32 %10, %23
  %25 = load ptr, ptr @gScanlineRadiusProfile, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  %27 = load i8, ptr %26, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, ptr @gScanlineTransitionBytes, align 1
  %30 = icmp ult i8 %29, %27
  %31 = sub i8 %29, %27
  %32 = zext i8 %31 to i32
  %33 = shl nuw nsw i32 %32, 8
  %34 = select i1 %30, i32 0, i32 %33
  %35 = load volatile i8, ptr @gScanlineTransitionBytes, align 1
  %36 = zext i8 %35 to i32
  %37 = sub nsw i32 240, %28
  %38 = icmp sgt i32 %37, %36
  %39 = add nuw nsw i32 %36, %28
  %40 = and i32 %39, 255
  %41 = select i1 %38, i32 %40, i32 240
  %42 = or disjoint i32 %41, %34
  %43 = trunc i32 %42 to i16
  br label %44

44:                                               ; preds = %6, %18
  %45 = phi i16 [ %43, %18 ], [ 0, %6 ]
  store i16 %45, ptr @gScanlineWindowValues, align 2
  %46 = add i8 %12, 1
  store i8 %46, ptr @gScanlinePhaseBytes, align 1
  br label %47

47:                                               ; preds = %44, %3
  %48 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %49 = icmp eq i16 %48, 160
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  store i8 0, ptr @gScanlinePhaseBytes, align 1
  %51 = load i8, ptr getelementptr ([0 x i8], ptr @gScanlineTransitionBytes, i32 0, i32 2), align 1
  %52 = add i8 %51, 56
  %53 = icmp ult i8 %52, 57
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  store i8 -1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  br label %56

55:                                               ; preds = %50
  tail call arm_apcscc void @UpdateScanlineRadiusProfile() #2
  br label %56

56:                                               ; preds = %54, %55, %47
  ret void
}

declare dso_local arm_apcscc void @UpdateScanlineRadiusProfile() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
