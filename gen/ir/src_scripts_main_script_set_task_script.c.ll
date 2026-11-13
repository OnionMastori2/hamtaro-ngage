; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gScriptCommandInitialized = external dso_local local_unnamed_addr global i8, align 1
@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gTaskContexts5F0 = external dso_local global [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetTaskContextScript(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gScriptCommandInitialized, align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %45

4:                                                ; preds = %1
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 1
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr @gMainScriptArgumentWords5E8, align 4
  %9 = getelementptr i8, ptr %0, i32 2
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %11 = getelementptr i8, ptr %0, i32 3
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %13 = getelementptr i8, ptr %0, i32 4
  %14 = load i8, ptr %13, align 1
  store i8 %14, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %15 = shl nuw nsw i32 %6, 2
  %16 = load ptr, ptr @gRenderStates, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = mul nuw nsw i32 %6, 80
  %19 = add i32 %18, %17
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.BackgroundRenderState, ptr %20, i32 0, i32 9
  %22 = load i8, ptr %21, align 4
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %4
  %25 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %26 = icmp ult i32 %25, 16
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %25
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr @gMainScriptArgumentWords5E8, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %29, %27 ], [ %25, %24 ]
  %32 = add i32 %15, ptrtoint (ptr @gTaskContexts5F0 to i32)
  %33 = inttoptr i32 %32 to ptr
  %34 = load ptr, ptr %33, align 4
  %35 = inttoptr i32 %31 to ptr
  %36 = icmp eq ptr %35, @gDefaultTaskContextScript
  br i1 %36, label %42, label %37

37:                                               ; preds = %30
  %38 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr ptr, ptr %35, i32 %39
  %41 = load ptr, ptr %40, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = phi ptr [ %41, %37 ], [ @gDefaultTaskContextScript, %30 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %34, ptr noundef %43) #2
  %44 = add i8 %5, 1
  store i8 %44, ptr @gScriptCommandInitialized, align 1
  br label %53

45:                                               ; preds = %1
  %46 = add i8 %2, -1
  %47 = zext i8 %46 to i32
  %48 = getelementptr [0 x ptr], ptr @gTaskContexts5F0, i32 0, i32 %47
  %49 = load ptr, ptr %48, align 4
  %50 = load i8, ptr %49, align 4
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  store i32 5, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %54

53:                                               ; preds = %45, %4, %42
  store i8 1, ptr @gScriptYielded, align 1
  br label %54

54:                                               ; preds = %52, %53
  ret void
}

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
