; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MainScriptTaskResource = type { ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, ptr }
%struct.BackgroundRenderState = type { i32, i32, i32, i32, i16, i16, ptr, [4 x ptr], [4 x ptr], i8, [4 x i8], i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gMainScriptTaskResourcesBFD0 = external dso_local constant [0 x %struct.MainScriptTaskResource], align 4
@gMainScriptTaskResourceIndices600 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1
@gTaskContexts5F0 = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptCommandInitialized = external dso_local local_unnamed_addr global i8, align 1
@gMainScriptTaskFlags604 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetTaskContextEnabled(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @gMainScriptTaskResourceIndices600, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6
  %8 = load ptr, ptr @gRenderStates, align 4
  %9 = getelementptr %struct.BackgroundRenderState, ptr %8, i32 %3, i32 9
  %10 = load i8, ptr %9, align 4
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i8 1, ptr @gScriptYielded, align 1
  br label %91

13:                                               ; preds = %1
  %14 = getelementptr i8, ptr %0, i32 1
  %15 = load i8, ptr %14, align 1
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %64, label %17

17:                                               ; preds = %13
  %18 = getelementptr [0 x ptr], ptr @gTaskContexts5F0, i32 0, i32 %3
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  %21 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 6
  br i1 %20, label %24, label %22

22:                                               ; preds = %17
  %23 = load i8, ptr %21, align 4
  br label %27

24:                                               ; preds = %17
  %25 = load volatile i8, ptr %21, align 4
  %26 = tail call arm_apcscc ptr @AllocateTaskContext() #2
  store ptr %26, ptr %18, align 4
  br label %27

27:                                               ; preds = %22, %24
  %28 = phi i8 [ %25, %24 ], [ %23, %22 ]
  %29 = phi ptr [ %26, %24 ], [ %19, %22 ]
  %30 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, 1048575
  %33 = add nuw nsw i32 %32, 33572640
  %34 = getelementptr inbounds %struct.TaskContext, ptr %29, i32 0, i32 15
  store i32 %33, ptr %34, align 4
  %35 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 10
  %36 = load i8, ptr %35, align 4
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 2
  %39 = shl nuw nsw i32 %37, 6
  %40 = or i32 %38, %39
  %41 = shl nuw nsw i32 %40, 8
  %42 = or i32 %41, %40
  %43 = shl i32 %42, 16
  %44 = or i32 %43, %42
  %45 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 7
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = zext i8 %28 to i32
  %49 = shl nuw nsw i32 %47, 5
  %50 = mul nuw nsw i32 %49, %48
  tail call arm_apcscc void @QueueDmaFill(i32 noundef %44, i32 noundef %31, i32 noundef %50) #2
  %51 = ptrtoint ptr %7 to i32
  %52 = load ptr, ptr %18, align 4
  %53 = getelementptr inbounds %struct.TaskContext, ptr %52, i32 0, i32 23
  store i32 %51, ptr %53, align 4
  %54 = load ptr, ptr %7, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %27
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef %3, i32 noundef 136, ptr noundef nonnull %54) #2
  br label %57

57:                                               ; preds = %56, %27
  %58 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  tail call arm_apcscc void @InitializeGraphicsScript(i8 noundef zeroext %2, ptr noundef nonnull %59) #2
  br label %62

62:                                               ; preds = %61, %57
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  store i8 1, ptr @gScriptYielded, align 1
  %63 = load ptr, ptr %18, align 4
  store i8 1, ptr %63, align 4
  br label %91

64:                                               ; preds = %13
  %65 = load i8, ptr @gScriptCommandInitialized, align 1
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = getelementptr [0 x ptr], ptr @gTaskContexts5F0, i32 0, i32 %3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %82, label %71

71:                                               ; preds = %67
  tail call arm_apcscc void @DisableTaskRenderSlots(ptr noundef nonnull %69) #2
  %72 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef %3, i32 noundef 136, ptr noundef nonnull %73) #2
  br label %76

76:                                               ; preds = %75, %71
  %77 = getelementptr [0 x %struct.MainScriptTaskResource], ptr @gMainScriptTaskResourcesBFD0, i32 0, i32 %6, i32 3
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %76
  tail call arm_apcscc void @InitializeGraphicsScript(i8 noundef zeroext %2, ptr noundef nonnull %78) #2
  br label %81

81:                                               ; preds = %80, %76
  store i8 1, ptr @gScriptCommandInitialized, align 1
  store i8 1, ptr @gScriptYielded, align 1
  br label %91

82:                                               ; preds = %67
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %91

83:                                               ; preds = %64
  %84 = getelementptr [0 x i8], ptr @gMainScriptTaskFlags604, i32 0, i32 %3
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = getelementptr [0 x ptr], ptr @gTaskContexts5F0, i32 0, i32 %3
  %89 = load ptr, ptr %88, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %89) #2
  store ptr null, ptr %88, align 4
  store i8 0, ptr %84, align 1
  br label %90

90:                                               ; preds = %87, %83
  store i32 2, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %91

91:                                               ; preds = %81, %82, %90, %62, %12
  ret void
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #1

declare dso_local arm_apcscc void @QueueDmaFill(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeGraphicsScript(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @DisableTaskRenderSlots(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
