; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gGameFlags = external dso_local global [0 x i8], align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @MainScriptJumpGameFlag(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %7 = getelementptr i8, ptr %0, i32 3
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %11 = getelementptr i8, ptr %0, i32 5
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %13 = getelementptr i8, ptr %0, i32 6
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %15 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %16 = icmp ult i32 %15, 16
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %15
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = phi i32 [ %19, %17 ], [ %15, %1 ]
  %22 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i8 %2, 0
  %25 = lshr i32 %23, 3
  %26 = add i32 %25, ptrtoint (ptr @gGameFlags to i32)
  %27 = inttoptr i32 %26 to ptr
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = and i32 %23, 7
  %31 = shl nuw nsw i32 1, %30
  %32 = and i32 %31, %29
  %33 = icmp eq i32 %32, 0
  %34 = xor i1 %24, %33
  br i1 %34, label %37, label %35

35:                                               ; preds = %20
  %36 = inttoptr i32 %21 to ptr
  store ptr %36, ptr @gScriptCursor, align 4
  br label %37

37:                                               ; preds = %20, %35
  %38 = phi i32 [ 0, %35 ], [ 7, %20 ]
  store i32 %38, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptDecompressRows(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
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
  %44 = inttoptr i32 %31 to ptr
  %45 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %46 = zext i16 %45 to i32
  %47 = load i16, ptr getelementptr (i16, ptr @gMainScriptArgumentWords5E8, i32 1), align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %50 = zext i16 %49 to i32
  %51 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %52 = and i16 %51, 128
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %30
  %55 = load i32, ptr %43, align 4
  %56 = lshr i32 %55, 8
  %57 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %56) #3
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull %43, ptr noundef %57) #3
  %58 = icmp eq i16 %47, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = lshr i32 %46, 1
  %61 = or disjoint i32 %60, -2147483648
  br label %62

62:                                               ; preds = %62, %59
  %63 = phi i32 [ %48, %59 ], [ %69, %62 ]
  %64 = phi ptr [ %44, %59 ], [ %67, %62 ]
  %65 = phi ptr [ %57, %59 ], [ %68, %62 ]
  store volatile ptr %65, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr %64, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 %61, ptr inttoptr (i32 67109084 to ptr), align 4
  %66 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %67 = getelementptr i8, ptr %64, i32 %50
  %68 = getelementptr i8, ptr %65, i32 %46
  %69 = add nsw i32 %63, -1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %62

71:                                               ; preds = %62, %54
  %72 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %57) #3
  br label %89

73:                                               ; preds = %30
  %74 = icmp ugt i32 %31, 100663295
  %75 = select i1 %74, i32 -67090656, i32 -50215136
  %76 = add i32 %75, %31
  %77 = inttoptr i32 %76 to ptr
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %43, ptr noundef %77) #3
  %78 = icmp eq i16 %47, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %73, %79
  %80 = phi ptr [ %85, %79 ], [ %44, %73 ]
  %81 = phi i32 [ %87, %79 ], [ %48, %73 ]
  %82 = phi ptr [ %86, %79 ], [ %77, %73 ]
  %83 = ptrtoint ptr %82 to i32
  %84 = ptrtoint ptr %80 to i32
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %83, i32 noundef %84, i32 noundef %46) #3
  %85 = getelementptr i8, ptr %80, i32 %50
  %86 = getelementptr i8, ptr %82, i32 %46
  %87 = add nsw i32 %81, -1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %79

89:                                               ; preds = %79, %73, %71
  store i32 14, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
