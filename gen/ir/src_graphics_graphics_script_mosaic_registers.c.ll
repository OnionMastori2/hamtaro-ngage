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

@gVideoState = external dso_local global %struct.VideoState, align 4

; Function Attrs: nounwind memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc void @SetSelectedMosaicRegisters(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  switch i8 %0, label %36 [
    i8 0, label %4
    i8 1, label %12
    i8 2, label %23
  ]

4:                                                ; preds = %3
  %5 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15), align 4
  %6 = and i16 %5, -256
  %7 = shl i8 %2, 4
  %8 = and i8 %1, 15
  %9 = or disjoint i8 %7, %8
  %10 = zext i8 %9 to i16
  %11 = or disjoint i16 %6, %10
  store i16 %11, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15), align 4
  br label %36

12:                                               ; preds = %3
  %13 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15), align 4
  %14 = and i8 %1, 15
  %15 = zext nneg i8 %14 to i16
  %16 = shl nuw nsw i16 %15, 8
  %17 = and i16 %13, 255
  %18 = or disjoint i16 %17, %16
  %19 = and i8 %2, 15
  %20 = zext nneg i8 %19 to i16
  %21 = shl nuw i16 %20, 12
  %22 = or disjoint i16 %18, %21
  store i16 %22, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 15), align 4
  br label %36

23:                                               ; preds = %3
  %24 = tail call ptr asm "", "={r3},{r3}"(ptr nonnull @gVideoState) #1, !srcloc !4
  %25 = getelementptr i8, ptr %24, i32 248
  %26 = and i8 %1, 15
  %27 = getelementptr i8, ptr %24, i32 249
  %28 = tail call ptr asm "", "={r3},{r3}"(ptr %27) #1, !srcloc !5
  %29 = zext i8 %2 to i32
  %30 = shl nuw nsw i32 %29, 4
  %31 = trunc i32 %30 to i8
  %32 = or disjoint i8 %26, %31
  store i8 %32, ptr %25, align 1
  %33 = tail call i32 asm "", "={r1},{r1}"(i32 %30) #1, !srcloc !6
  %34 = trunc i32 %33 to i8
  %35 = or i8 %26, %34
  store i8 %35, ptr %28, align 1
  br label %36

36:                                               ; preds = %3, %23, %12, %4
  ret void
}

attributes #0 = { nounwind memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 617}
!5 = !{i64 747}
!6 = !{i64 835}
