; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MainScriptTaskResource = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, ptr }
%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }

@gMainScriptTaskResourcesBFD0 = external dso_local local_unnamed_addr constant [0 x %struct.MainScriptTaskResource], align 4
@gMainScriptTaskResourceIndices600 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptCommandInitialized = external dso_local local_unnamed_addr global i8, align 1
@gTaskContexts5F0 = external dso_local global [0 x ptr], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1
@gMainScriptTaskFlags604 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptConfigureTaskContextAndScript(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @gMainScriptTaskResourceIndices600, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr @gScriptCommandInitialized, align 1
  switch i8 %7, label %8 [
    i8 0, label %17
    i8 1, label %55
  ]

8:                                                ; preds = %1
  %9 = add i8 %7, -2
  %10 = zext i8 %9 to i32
  %11 = getelementptr [0 x ptr], ptr @gTaskContexts5F0, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = load i8, ptr %12, align 4
  %14 = icmp eq i8 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  store i32 5, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %95

16:                                               ; preds = %8
  store i8 1, ptr @gScriptYielded, align 1
  br label %95

17:                                               ; preds = %1
  %18 = getelementptr [0 x ptr], ptr @gTaskContexts5F0, i32 0, i32 %3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.TaskContext, ptr %19, i32 0, i32 10
  %23 = load i8, ptr %22, align 2
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  tail call arm_apcscc void @DisableTaskRenderSlots(ptr noundef nonnull %19) #2
  %26 = load ptr, ptr %18, align 4
  br label %27

27:                                               ; preds = %25, %21, %17
  %28 = phi ptr [ %26, %25 ], [ %19, %21 ], [ null, %17 ]
  %29 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 6
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 7
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 8
  %36 = load i8, ptr %35, align 2
  %37 = zext i8 %36 to i32
  %38 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 9
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 11
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 10
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 12
  %48 = load i8, ptr %47, align 2
  %49 = zext i8 %48 to i32
  %50 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 4
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 5
  %53 = load i32, ptr %52, align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %28, i32 noundef %31, i32 noundef %34, i32 noundef %37, i32 noundef %40, i32 noundef %43, i32 noundef %46, i32 noundef %49, i32 noundef %51, i32 noundef %53) #2
  %54 = getelementptr [0 x i8], ptr @gMainScriptTaskFlags604, i32 0, i32 %3
  store i8 1, ptr %54, align 1
  store i8 1, ptr @gScriptCommandInitialized, align 1
  store i8 1, ptr @gScriptYielded, align 1
  br label %95

55:                                               ; preds = %1
  %56 = getelementptr i8, ptr %0, i32 1
  %57 = load i8, ptr %56, align 1
  store i8 %57, ptr @gMainScriptArgumentWords5E8, align 4
  %58 = getelementptr i8, ptr %0, i32 2
  %59 = load i8, ptr %58, align 1
  store i8 %59, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %60 = getelementptr i8, ptr %0, i32 3
  %61 = load i8, ptr %60, align 1
  store i8 %61, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %62 = getelementptr i8, ptr %0, i32 4
  %63 = load i8, ptr %62, align 1
  store i8 %63, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %64 = shl nuw nsw i32 %3, 2
  %65 = load ptr, ptr @gRenderStates, align 4
  %66 = ptrtoint ptr %65 to i32
  %67 = mul nuw nsw i32 %3, 80
  %68 = add i32 %67, %66
  %69 = inttoptr i32 %68 to ptr
  %70 = getelementptr inbounds %struct.BackgroundRenderState, ptr %69, i32 0, i32 9
  %71 = load i8, ptr %70, align 4
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %55
  %74 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %75 = icmp ult i32 %74, 16
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %74
  %78 = load i32, ptr %77, align 4
  store i32 %78, ptr @gMainScriptArgumentWords5E8, align 4
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i32 [ %78, %76 ], [ %74, %73 ]
  %81 = add i32 %64, ptrtoint (ptr @gTaskContexts5F0 to i32)
  %82 = inttoptr i32 %81 to ptr
  %83 = load ptr, ptr %82, align 4
  %84 = inttoptr i32 %80 to ptr
  tail call void asm sideeffect "", "r"(i32 %64) #3, !srcloc !4
  %85 = icmp eq ptr %84, @gDefaultTaskContextScript
  br i1 %85, label %91, label %86

86:                                               ; preds = %79
  %87 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %88 = zext i8 %87 to i32
  %89 = getelementptr ptr, ptr %84, i32 %88
  %90 = load ptr, ptr %89, align 4
  br label %91

91:                                               ; preds = %86, %79
  %92 = phi ptr [ %90, %86 ], [ @gDefaultTaskContextScript, %79 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %83, ptr noundef %92) #2
  %93 = add i8 %2, 2
  store i8 %93, ptr @gScriptCommandInitialized, align 1
  br label %94

94:                                               ; preds = %91, %55
  store i8 1, ptr @gScriptYielded, align 1
  br label %95

95:                                               ; preds = %15, %94, %27, %16
  ret void
}

declare dso_local arm_apcscc void @DisableTaskRenderSlots(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2422}
