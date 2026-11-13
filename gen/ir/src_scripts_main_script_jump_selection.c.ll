; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptPointerScratch = external dso_local global i32, align 4
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptJumpByHalf1FBC(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i16, ptr @gScriptResult, align 2
  %3 = icmp eq i16 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = or disjoint i32 %7, 1
  br label %24

9:                                                ; preds = %1
  %10 = zext i16 %2 to i32
  %11 = getelementptr i8, ptr %0, i32 1
  %12 = shl nuw nsw i32 %10, 2
  %13 = getelementptr i8, ptr %11, i32 %12
  %14 = getelementptr i8, ptr %13, i32 -4
  %15 = getelementptr i8, ptr %13, i32 -3
  %16 = load i8, ptr %14, align 1
  store i8 %16, ptr @gCoreScriptPointerScratch, align 4
  %17 = getelementptr i8, ptr %13, i32 -2
  %18 = load i8, ptr %15, align 1
  store i8 %18, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 1) to ptr), align 1
  %19 = getelementptr i8, ptr %13, i32 -1
  %20 = load i8, ptr %17, align 1
  store i8 %20, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 2) to ptr), align 2
  %21 = load i8, ptr %19, align 1
  store i8 %21, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 3) to ptr), align 1
  %22 = load i32, ptr @gCoreScriptPointerScratch, align 4
  %23 = inttoptr i32 %22 to ptr
  store ptr %23, ptr @gScriptCursor, align 4
  br label %24

24:                                               ; preds = %9, %4
  %25 = phi i32 [ 0, %9 ], [ %8, %4 ]
  store i32 %25, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
