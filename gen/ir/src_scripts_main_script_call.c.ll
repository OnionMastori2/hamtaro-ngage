; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gCoreScriptPointerScratch = external dso_local global i32, align 4
@gScriptReturnStack = external dso_local local_unnamed_addr global [16 x i32], align 4
@gScriptCallDepth = external dso_local local_unnamed_addr global i8, align 1
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptCall(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gCoreScriptPointerScratch, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 1) to ptr), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 2) to ptr), align 2
  %8 = load i8, ptr %6, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gCoreScriptPointerScratch to i32), i32 3) to ptr), align 1
  %9 = tail call ptr asm "", "=r,0"(ptr nonnull @gCoreScriptPointerScratch) #1, !srcloc !4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, 16
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %10
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %9, align 4
  br label %15

15:                                               ; preds = %12, %1
  %16 = load i8, ptr @gScriptCallDepth, align 1
  %17 = zext i8 %16 to i32
  %18 = add i8 %16, 1
  store i8 %18, ptr @gScriptCallDepth, align 1
  %19 = tail call i32 asm "", "=r,0"(i32 %17) #1, !srcloc !5
  %20 = load ptr, ptr @gScriptCursor, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = and i32 %19, 255
  %23 = getelementptr i32, ptr @gScriptReturnStack, i32 %22
  store i32 %21, ptr %23, align 4
  %24 = load i32, ptr @gCoreScriptPointerScratch, align 4
  %25 = inttoptr i32 %24 to ptr
  store ptr %25, ptr @gScriptCursor, align 4
  store i32 0, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 587}
!5 = !{i64 793}
