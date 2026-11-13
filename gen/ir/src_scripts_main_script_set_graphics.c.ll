; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gCoreScriptPointerScratch = external dso_local global i32, align 4
@gGraphicsScripts = external dso_local local_unnamed_addr global ptr, align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4

; Function Attrs: nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptSetGraphicsScript(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %13 = zext i8 %3 to i32
  %14 = load ptr, ptr @gGraphicsScripts, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = mul nuw nsw i32 %13, 44
  %17 = add i32 %16, %15
  %18 = inttoptr i32 %17 to ptr
  store i8 %5, ptr %18, align 4
  %19 = tail call { i32, ptr } asm "", "=r,=r,0,1"(i32 %16, ptr nonnull @gCoreScriptPointerScratch) #1, !srcloc !4
  %20 = extractvalue { i32, ptr } %19, 0
  %21 = extractvalue { i32, ptr } %19, 1
  %22 = load i32, ptr %21, align 4
  %23 = icmp ult i32 %22, 16
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %22
  %26 = load i32, ptr %25, align 4
  store i32 %26, ptr %21, align 4
  br label %27

27:                                               ; preds = %24, %1
  %28 = load i32, ptr @gCoreScriptPointerScratch, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = inttoptr i32 %28 to ptr
  %32 = load ptr, ptr @gGraphicsScripts, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = add i32 %20, %33
  %35 = inttoptr i32 %34 to ptr
  %36 = getelementptr inbounds %struct.GraphicsScript, ptr %35, i32 0, i32 6
  store ptr %31, ptr %36, align 4
  br label %37

37:                                               ; preds = %30, %27
  store i32 6, ptr @gScriptBytesConsumed, align 4
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
!4 = !{i64 803}
