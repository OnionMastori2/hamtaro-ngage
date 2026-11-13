; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTaskTextPairContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gTaskFlagsFirst = external dso_local global [0 x i8], align 1
@gTaskTextPairScriptsFirst = external dso_local constant [0 x ptr], align 4
@gTaskTextPairGraphicsFirst = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gTaskTextLanguageOrder = external dso_local local_unnamed_addr global [0 x i8], align 1
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gSaveGroup01Byte3E30 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Block37F0 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextPairScriptsSecond = external dso_local constant [0 x ptr], align 4
@gTaskTextPairGraphicsSecond = external dso_local local_unnamed_addr constant [0 x i32], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureTaskTextPairHeader(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r0}"(i32 9) #2, !srcloc !4
  %2 = tail call arm_apcscc ptr @AllocateTaskContext() #3
  store ptr %2, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %2, i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 0, i32 noundef 100679712, i32 noundef 100716032) #3
  %3 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %3, ptr noundef nonnull @gTaskFlagsFirst) #3
  ret i32 0
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureTaskContext(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackFillTaskTextPairFirst(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %82
  %3 = phi i32 [ 0, %1 ], [ %83, %82 ]
  %4 = phi i8 [ 0, %1 ], [ %84, %82 ]
  tail call void asm sideeffect "", "{r0}"(i32 8) #2, !srcloc !5
  %5 = tail call arm_apcscc ptr @AllocateTaskContext() #3
  %6 = getelementptr [0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 %3
  store ptr %5, ptr %6, align 4
  %7 = getelementptr [0 x i32], ptr @gTaskTextPairGraphicsFirst, i32 0, i32 %3
  %8 = load i32, ptr %7, align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %5, i32 noundef 8, i32 noundef 2, i32 noundef 255, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 16, i32 noundef %8, i32 noundef 100716032) #3
  %9 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 248) #3
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %50, label %11

11:                                               ; preds = %2
  %12 = tail call ptr asm sideeffect "", "=r,0,~{r9}"(ptr nonnull @gRasterScriptControlBytes) #2, !srcloc !6
  %13 = getelementptr i8, ptr %12, i32 113
  %14 = load i8, ptr %13, align 1
  %15 = shl i8 %14, 2
  %16 = add nuw nsw i8 %15, %4
  %17 = getelementptr i8, ptr %12, i32 235
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %19, 86
  br label %21

21:                                               ; preds = %11, %47
  %22 = phi i32 [ 0, %11 ], [ %48, %47 ]
  %23 = add nuw nsw i32 %20, %22
  %24 = getelementptr [0 x i8], ptr @gTaskTextLanguageOrder, i32 0, i32 %23
  %25 = load i8, ptr %24, align 1
  %26 = icmp eq i8 %16, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %21
  %28 = trunc i32 %22 to i8
  %29 = add nuw i8 %28, 71
  %30 = zext i8 %29 to i16
  %31 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %30) #3
  %32 = icmp eq i32 %31, 0
  %33 = shl nuw nsw i32 %22, 2
  %34 = add i32 %33, add (i32 ptrtoint (ptr @gTaskTextPairScriptsFirst to i32), i32 4)
  %35 = inttoptr i32 %34 to ptr
  %36 = select i1 %32, ptr @gTaskTextPairScriptsFirst, ptr %35
  %37 = load ptr, ptr %6, align 4
  %38 = load ptr, ptr %36, align 4
  %39 = icmp eq ptr %38, @gDefaultTaskContextScript
  br i1 %39, label %45, label %40

40:                                               ; preds = %27
  %41 = load i8, ptr %17, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr ptr, ptr %38, i32 %42
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %40, %27
  %46 = phi ptr [ %44, %40 ], [ @gDefaultTaskContextScript, %27 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %37, ptr noundef %46) #3
  br label %82

47:                                               ; preds = %21
  %48 = add nuw nsw i32 %22, 1
  %49 = icmp eq i32 %48, 86
  br i1 %49, label %82, label %21

50:                                               ; preds = %2
  %51 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %52 = zext i8 %51 to i32
  %53 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  %54 = zext i8 %53 to i32
  %55 = shl nuw nsw i32 %54, 2
  %56 = add nuw nsw i32 %3, %55
  %57 = sub nsw i32 %52, %56
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %82

59:                                               ; preds = %50
  %60 = add nsw i32 %57, -1
  %61 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %60
  %62 = load i8, ptr %61, align 1
  %63 = zext i8 %62 to i16
  %64 = add nuw nsw i16 %63, 70
  %65 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %64) #3
  %66 = icmp ne i32 %65, 0
  %67 = icmp ne i8 %62, 0
  %68 = and i1 %67, %66
  br i1 %68, label %69, label %82

69:                                               ; preds = %59
  %70 = zext i8 %62 to i32
  %71 = load ptr, ptr %6, align 4
  %72 = getelementptr ptr, ptr @gTaskTextPairScriptsFirst, i32 %70
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, @gDefaultTaskContextScript
  br i1 %74, label %80, label %75

75:                                               ; preds = %69
  %76 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %77 = zext i8 %76 to i32
  %78 = getelementptr ptr, ptr %73, i32 %77
  %79 = load ptr, ptr %78, align 4
  br label %80

80:                                               ; preds = %75, %69
  %81 = phi ptr [ %79, %75 ], [ @gDefaultTaskContextScript, %69 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %71, ptr noundef %81) #3
  br label %82

82:                                               ; preds = %47, %50, %80, %59, %45
  %83 = add nuw nsw i32 %3, 1
  %84 = add nuw nsw i8 %4, 1
  %85 = icmp eq i32 %83, 4
  br i1 %85, label %86, label %2

86:                                               ; preds = %82
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackFillTaskTextPairSecond(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %83
  %3 = phi i32 [ 0, %1 ], [ %84, %83 ]
  %4 = phi i8 [ 0, %1 ], [ %85, %83 ]
  tail call void asm sideeffect "", "{r0}"(i32 10) #2, !srcloc !7
  %5 = tail call arm_apcscc ptr @AllocateTaskContext() #3
  %6 = or disjoint i32 %3, 4
  %7 = getelementptr [0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 %6
  store ptr %5, ptr %7, align 4
  %8 = getelementptr [0 x i32], ptr @gTaskTextPairGraphicsSecond, i32 0, i32 %3
  %9 = load i32, ptr %8, align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %5, i32 noundef 10, i32 noundef 2, i32 noundef 255, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 16, i32 noundef %9, i32 noundef 100716032) #3
  %10 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 248) #3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %51, label %12

12:                                               ; preds = %2
  %13 = tail call ptr asm sideeffect "", "=r,0,~{r9}"(ptr nonnull @gRasterScriptControlBytes) #2, !srcloc !8
  %14 = getelementptr i8, ptr %13, i32 113
  %15 = load i8, ptr %14, align 1
  %16 = shl i8 %15, 2
  %17 = add nuw nsw i8 %16, %4
  %18 = getelementptr i8, ptr %13, i32 235
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, 86
  br label %22

22:                                               ; preds = %12, %48
  %23 = phi i32 [ 0, %12 ], [ %49, %48 ]
  %24 = add nuw nsw i32 %21, %23
  %25 = getelementptr [0 x i8], ptr @gTaskTextLanguageOrder, i32 0, i32 %24
  %26 = load i8, ptr %25, align 1
  %27 = icmp eq i8 %17, %26
  br i1 %27, label %28, label %48

28:                                               ; preds = %22
  %29 = trunc i32 %23 to i8
  %30 = add nuw i8 %29, 71
  %31 = zext i8 %30 to i16
  %32 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %31) #3
  %33 = icmp eq i32 %32, 0
  %34 = shl nuw nsw i32 %23, 2
  %35 = add i32 %34, add (i32 ptrtoint (ptr @gTaskTextPairScriptsSecond to i32), i32 4)
  %36 = inttoptr i32 %35 to ptr
  %37 = select i1 %33, ptr @gTaskTextPairScriptsSecond, ptr %36
  %38 = load ptr, ptr %7, align 4
  %39 = load ptr, ptr %37, align 4
  %40 = icmp eq ptr %39, @gDefaultTaskContextScript
  br i1 %40, label %46, label %41

41:                                               ; preds = %28
  %42 = load i8, ptr %18, align 1
  %43 = zext i8 %42 to i32
  %44 = getelementptr ptr, ptr %39, i32 %43
  %45 = load ptr, ptr %44, align 4
  br label %46

46:                                               ; preds = %41, %28
  %47 = phi ptr [ %45, %41 ], [ @gDefaultTaskContextScript, %28 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %38, ptr noundef %47) #3
  br label %83

48:                                               ; preds = %22
  %49 = add nuw nsw i32 %23, 1
  %50 = icmp eq i32 %49, 86
  br i1 %50, label %83, label %22

51:                                               ; preds = %2
  %52 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %53 = zext i8 %52 to i32
  %54 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  %55 = zext i8 %54 to i32
  %56 = shl nuw nsw i32 %55, 2
  %57 = add nuw nsw i32 %3, %56
  %58 = sub nsw i32 %53, %57
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %83

60:                                               ; preds = %51
  %61 = add nsw i32 %58, -1
  %62 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = zext i8 %63 to i16
  %65 = add nuw nsw i16 %64, 70
  %66 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %65) #3
  %67 = icmp ne i32 %66, 0
  %68 = icmp ne i8 %63, 0
  %69 = and i1 %68, %67
  br i1 %69, label %70, label %83

70:                                               ; preds = %60
  %71 = zext i8 %63 to i32
  %72 = load ptr, ptr %7, align 4
  %73 = getelementptr ptr, ptr @gTaskTextPairScriptsSecond, i32 %71
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, @gDefaultTaskContextScript
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %78 = zext i8 %77 to i32
  %79 = getelementptr ptr, ptr %74, i32 %78
  %80 = load ptr, ptr %79, align 4
  br label %81

81:                                               ; preds = %76, %70
  %82 = phi ptr [ %80, %76 ], [ @gDefaultTaskContextScript, %70 ]
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %72, ptr noundef %82) #3
  br label %83

83:                                               ; preds = %48, %51, %81, %60, %46
  %84 = add nuw nsw i32 %3, 1
  %85 = add nuw nsw i8 %4, 1
  %86 = icmp eq i32 %84, 4
  br i1 %86, label %87, label %2

87:                                               ; preds = %83
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 305}
!5 = !{i64 939}
!6 = !{i64 1421}
!7 = !{i64 3591}
!8 = !{i64 4079}
