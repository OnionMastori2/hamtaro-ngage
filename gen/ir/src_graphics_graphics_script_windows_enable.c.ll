; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gVideoState = external dso_local global %struct.VideoState, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @GraphicsSetWindowsEnabled(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr %1, align 1
  %4 = getelementptr i8, ptr %1, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %6) #1, !srcloc !4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  tail call void asm sideeffect "", "r"(i32 1) #1, !srcloc !5
  %10 = shl i8 %3, 5
  %11 = and i8 %10, 32
  %12 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gVideoState to i32), i32 53) to ptr), align 1
  %13 = and i8 %12, -33
  %14 = or disjoint i8 %13, %11
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gVideoState to i32), i32 53) to ptr), align 1
  br label %15

15:                                               ; preds = %9, %2
  %16 = and i32 %6, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  tail call void asm sideeffect "", "r"(i32 1) #1, !srcloc !6
  %19 = shl i8 %3, 6
  %20 = and i8 %19, 64
  %21 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %22 = and i8 %21, -65
  %23 = or disjoint i8 %22, %20
  store i8 %23, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  br label %24

24:                                               ; preds = %18, %15
  %25 = and i32 %6, 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = shl i8 %3, 7
  %29 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %30 = and i8 %29, 127
  %31 = or disjoint i8 %30, %28
  store i8 %31, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  br label %32

32:                                               ; preds = %27, %24
  %33 = getelementptr i8, ptr %1, i32 2
  %34 = load i32, ptr @gVideoState, align 4
  %35 = or i32 %34, 1
  store i32 %35, ptr @gVideoState, align 4
  %36 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 6
  store ptr %33, ptr %36, align 4
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
!4 = !{i64 785}
!5 = !{i64 1130}
!6 = !{i64 1464}
