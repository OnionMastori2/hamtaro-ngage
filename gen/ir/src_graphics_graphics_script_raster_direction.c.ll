; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @PositionRasterAlongDirection() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc ptr @GetVideoState() #2
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 347) #2
  %3 = icmp eq i32 %2, 0
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = getelementptr %struct.RenderSlot, ptr %4, i32 13, i32 23
  %6 = getelementptr %struct.RenderSlot, ptr %4, i32 10, i32 23
  %7 = select i1 %3, ptr %6, ptr %5
  %8 = select i1 %3, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43)
  %9 = select i1 %3, i32 10, i32 13
  %10 = load i16, ptr %8, align 2
  %11 = load i8, ptr %7, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %4, i32 %9, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = lshr i32 %13, 16
  %15 = getelementptr %struct.VideoState, ptr %1, i32 0, i32 14, i32 1, i32 1
  %16 = load i16, ptr %15, align 2
  %17 = trunc i32 %14 to i16
  %18 = add i16 %16, 20
  %19 = add i16 %18, %17
  %20 = getelementptr %struct.RenderSlot, ptr %4, i32 %9, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 16
  %23 = getelementptr %struct.VideoState, ptr %1, i32 0, i32 14, i32 1, i32 2
  %24 = load i16, ptr %23, align 4
  %25 = trunc i32 %22 to i16
  %26 = add i16 %24, 20
  %27 = add i16 %26, %25
  %28 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 2, i8 noundef zeroext 0) #2
  %29 = icmp ugt i16 %28, 1
  %30 = zext i1 %29 to i16
  %31 = shl i16 %10, %30
  %32 = trunc i16 %27 to i8
  %33 = trunc i16 %19 to i8
  switch i8 %11, label %58 [
    i8 1, label %34
    i8 2, label %40
    i8 3, label %46
    i8 4, label %52
  ]

34:                                               ; preds = %0
  %35 = sext i16 %27 to i32
  %36 = sext i16 %31 to i32
  %37 = add nsw i32 %36, %35
  %38 = tail call i32 asm "", "=r,0"(i32 %37) #3, !srcloc !4
  %39 = trunc i32 %38 to i8
  br label %58

40:                                               ; preds = %0
  %41 = sext i16 %27 to i32
  %42 = sext i16 %31 to i32
  %43 = sub nsw i32 %41, %42
  %44 = tail call i32 asm "", "=r,0"(i32 %43) #3, !srcloc !5
  %45 = trunc i32 %44 to i8
  br label %58

46:                                               ; preds = %0
  %47 = sext i16 %19 to i32
  %48 = sext i16 %31 to i32
  %49 = sub nsw i32 %47, %48
  %50 = tail call i32 asm "", "=r,0"(i32 %49) #3, !srcloc !6
  %51 = trunc i32 %50 to i8
  br label %58

52:                                               ; preds = %0
  %53 = sext i16 %19 to i32
  %54 = sext i16 %31 to i32
  %55 = add nsw i32 %54, %53
  %56 = tail call i32 asm "", "=r,0"(i32 %55) #3, !srcloc !7
  %57 = trunc i32 %56 to i8
  br label %58

58:                                               ; preds = %0, %52, %46, %40, %34
  %59 = phi i8 [ %32, %0 ], [ %32, %52 ], [ %32, %46 ], [ %45, %40 ], [ %39, %34 ]
  %60 = phi i8 [ %33, %0 ], [ %57, %52 ], [ %51, %46 ], [ %33, %40 ], [ %33, %34 ]
  %61 = load ptr, ptr @gRasterEffect, align 4
  %62 = getelementptr i8, ptr %61, i32 3
  store i8 %60, ptr %62, align 1
  %63 = load ptr, ptr @gRasterEffect, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  store i8 %59, ptr %64, align 1
  ret void
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 920}
!5 = !{i64 1017}
!6 = !{i64 1114}
!7 = !{i64 1211}
