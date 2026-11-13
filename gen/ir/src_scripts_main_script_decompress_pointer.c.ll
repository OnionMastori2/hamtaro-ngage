; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptDecompressPointer(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %16 = load i8, ptr %14, align 1
  store i8 %16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %17 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %18 = icmp ult i32 %17, 16
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %17
  %21 = load i32, ptr %20, align 4
  store i32 %21, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %22

22:                                               ; preds = %19, %1
  %23 = phi i32 [ %21, %19 ], [ %17, %1 ]
  %24 = add i32 %23, -33554432
  %25 = icmp ult i32 %24, 16809984
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %28 = inttoptr i32 %27 to ptr
  %29 = inttoptr i32 %23 to ptr
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %28, ptr noundef %29) #2
  %30 = load i32, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i32 [ %30, %26 ], [ %23, %22 ]
  %33 = icmp ugt i32 %32, 83886079
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %36 = and i16 %35, 128
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %40 = inttoptr i32 %39 to ptr
  %41 = inttoptr i32 %32 to ptr
  tail call arm_apcscc void @BiosLZ77VRAM(ptr noundef %40, ptr noundef nonnull %41) #2
  br label %42

42:                                               ; preds = %38, %34, %31
  store i32 8, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosLZ77VRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
