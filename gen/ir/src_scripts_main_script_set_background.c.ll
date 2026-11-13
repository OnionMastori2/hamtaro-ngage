; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gCoreScriptPointerScratch = external dso_local global i32, align 4
@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetBackgroundScript(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr @gCoreScriptPointerScratch, align 4
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 1) to ptr), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 2) to ptr), align 2
  %12 = load i8, ptr %10, align 1
  store i8 %12, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 3) to ptr), align 1
  %13 = icmp sgt i8 %5, -1
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = and i8 %5, 127
  br label %17

16:                                               ; preds = %1
  tail call arm_apcscc void @ResetBackgroundLayers(i8 noundef zeroext %5) #2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i8 [ %15, %14 ], [ %5, %16 ]
  tail call arm_apcscc void @ResetBackgroundRenderState(i8 noundef zeroext %3) #2
  %19 = load ptr, ptr @gRenderStates, align 4
  %20 = zext i8 %3 to i32
  %21 = getelementptr %struct.BackgroundRenderState, ptr %19, i32 %20, i32 9
  store i8 %18, ptr %21, align 4
  %22 = load i32, ptr @gCoreScriptPointerScratch, align 4
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr @gCoreScriptPointerScratch, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %17, %24
  %29 = phi i32 [ %26, %24 ], [ %22, %17 ]
  %30 = inttoptr i32 %29 to ptr
  %31 = load ptr, ptr @gRenderStates, align 4
  %32 = getelementptr %struct.BackgroundRenderState, ptr %31, i32 %20, i32 6
  store ptr %30, ptr %32, align 4
  br label %33

33:                                               ; preds = %28, %24
  store i32 6, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @ResetBackgroundLayers(i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @ResetBackgroundRenderState(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
