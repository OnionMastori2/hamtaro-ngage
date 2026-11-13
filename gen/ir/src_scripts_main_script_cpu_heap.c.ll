; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptDecompressRowsCpu(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gMainScriptArgumentWords5E8, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %12 = getelementptr i8, ptr %0, i32 6
  %13 = load i8, ptr %10, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %14 = getelementptr i8, ptr %0, i32 7
  %15 = load i8, ptr %12, align 1
  store i8 %15, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %16 = getelementptr i8, ptr %0, i32 8
  %17 = load i8, ptr %14, align 1
  store i8 %17, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %18 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %19 = icmp ult i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %18
  %22 = load i32, ptr %21, align 4
  store i32 %22, ptr @gMainScriptArgumentWords5E8, align 4
  br label %23

23:                                               ; preds = %20, %1
  %24 = phi i32 [ %22, %20 ], [ %18, %1 ]
  %25 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %26 = icmp ult i32 %25, 16
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = phi i32 [ %29, %27 ], [ %25, %23 ]
  %32 = getelementptr i8, ptr %0, i32 9
  %33 = load i8, ptr %16, align 1
  store i8 %33, ptr @gMainScriptArgumentWords5E8, align 4
  %34 = getelementptr i8, ptr %0, i32 10
  %35 = load i8, ptr %32, align 1
  store i8 %35, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %36 = getelementptr i8, ptr %0, i32 11
  %37 = load i8, ptr %34, align 1
  store i8 %37, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %38 = getelementptr i8, ptr %0, i32 12
  %39 = load i8, ptr %36, align 1
  store i8 %39, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %40 = getelementptr i8, ptr %0, i32 13
  %41 = load i8, ptr %38, align 1
  store i8 %41, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %42 = load i8, ptr %40, align 1
  store i8 %42, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %43 = inttoptr i32 %24 to ptr
  %44 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %45 = zext i16 %44 to i32
  %46 = tail call i32 asm "", "={r1},{r1}"(i32 %45) #2, !srcloc !4
  %47 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %48 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %49 = zext i16 %48 to i32
  %50 = load i32, ptr %43, align 4
  %51 = lshr i32 %50, 8
  %52 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %51) #3
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull %43, ptr noundef %52) #3
  %53 = icmp eq i16 %47, 0
  br i1 %53, label %67, label %54

54:                                               ; preds = %30
  %55 = inttoptr i32 %31 to ptr
  %56 = zext i16 %47 to i32
  tail call void asm sideeffect "", "{r3}"(i32 %46) #4, !srcloc !5
  %57 = lshr i32 %46, 1
  %58 = and i32 %57, 65535
  br label %59

59:                                               ; preds = %59, %54
  %60 = phi ptr [ %55, %54 ], [ %63, %59 ]
  %61 = phi ptr [ %52, %54 ], [ %64, %59 ]
  %62 = phi i32 [ %56, %54 ], [ %65, %59 ]
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %61, ptr noundef %60, i32 noundef %58) #3
  %63 = getelementptr i8, ptr %60, i32 %49
  %64 = getelementptr i8, ptr %61, i32 %46
  %65 = add nsw i32 %62, -1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %59

67:                                               ; preds = %59, %30
  %68 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %52) #3
  store i32 14, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptAllocateHeapVariable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gMainScriptArgumentWords5E8, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %6 = load i8, ptr %4, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %7 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %8 = zext i16 %7 to i32
  %9 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %8) #3
  %10 = ptrtoint ptr %9 to i32
  store i32 %10, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %11 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %12 = zext i8 %11 to i32
  %13 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %12
  store i32 %10, ptr %13, align 4
  store i32 3, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptFreeHeapVariable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i32, ptr @gTaskTextVariables2BB0, i32 %3
  %5 = load i32, ptr %4, align 4
  %6 = inttoptr i32 %5 to ptr
  %7 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %6) #3
  store i32 1, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1133}
!5 = !{i64 1589}
