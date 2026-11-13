; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundBounds = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gBackgroundBounds = external dso_local local_unnamed_addr global [4 x %struct.BackgroundBounds], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetVideoBackgroundOffset(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr @gMainScriptArgumentWords5E8, align 4
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %7 = getelementptr i8, ptr %0, i32 3
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %11 = tail call arm_apcscc ptr @GetVideoState() #3
  %12 = zext i8 %2 to i32
  %13 = mul nuw nsw i32 %12, 48
  %14 = getelementptr i8, ptr %11, i32 %13
  %15 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %16 = getelementptr inbounds %struct.VideoState, ptr %14, i32 0, i32 14, i32 0, i32 1
  store i16 %15, ptr %16, align 2
  %17 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %18 = getelementptr inbounds %struct.VideoState, ptr %14, i32 0, i32 14, i32 0, i32 2
  store i16 %17, ptr %18, align 4
  %19 = shl nuw i32 1, %12
  %20 = trunc i32 %19 to i8
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext %20) #3
  store i32 5, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptSetBackgroundBounds(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr @gMainScriptArgumentWords5E8, align 4
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %12 = getelementptr i8, ptr %0, i32 6
  %13 = load i8, ptr %10, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %14 = getelementptr i8, ptr %0, i32 7
  %15 = load i8, ptr %12, align 1
  store i8 %15, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %16 = getelementptr i8, ptr %0, i32 8
  %17 = load i8, ptr %14, align 1
  store i8 %17, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %18 = getelementptr i8, ptr %0, i32 9
  %19 = load i8, ptr %16, align 1
  store i8 %19, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %20 = load i8, ptr %18, align 1
  store i8 %20, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %21 = zext i8 %3 to i32
  %22 = getelementptr %struct.BackgroundBounds, ptr @gBackgroundBounds, i32 %21
  %23 = getelementptr %struct.BackgroundBounds, ptr @gBackgroundBounds, i32 %21, i32 4
  store i8 %5, ptr %23, align 2
  %24 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  store i16 %24, ptr %22, align 2
  %25 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %26 = getelementptr %struct.BackgroundBounds, ptr @gBackgroundBounds, i32 %21, i32 2
  store i16 %25, ptr %26, align 2
  %27 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %28 = getelementptr %struct.BackgroundBounds, ptr @gBackgroundBounds, i32 %21, i32 1
  store i16 %27, ptr %28, align 2
  %29 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 3), align 2
  %30 = getelementptr %struct.BackgroundBounds, ptr @gBackgroundBounds, i32 %21, i32 3
  store i16 %29, ptr %30, align 2
  store i32 10, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
