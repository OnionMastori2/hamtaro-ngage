; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextLeadingDigitDefaultAnimation = external dso_local constant [0 x i8], align 1
@gTaskTextDigitAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextLanguageOrder = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextCategorySlotStarts = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup01Byte3E30 = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Block37F0 = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderTaskTextByteNumber(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %0, align 1
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %3, align 1
  %7 = load i8, ptr %5, align 1
  %8 = zext i8 %6 to i32
  %9 = zext i8 %7 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef %8, i32 noundef %9, i32 noundef 0, ptr noundef nonnull @gTaskTextLeadingDigitDefaultAnimation) #2
  %10 = icmp ult i8 %2, 10
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = zext i8 %4 to i32
  br label %19

13:                                               ; preds = %1
  %14 = udiv i8 %2, 10
  %15 = zext nneg i8 %14 to i32
  %16 = zext i8 %4 to i32
  %17 = getelementptr [0 x ptr], ptr @gTaskTextDigitAnimations, i32 0, i32 %15
  %18 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %16, ptr noundef %18) #2
  br label %19

19:                                               ; preds = %11, %13
  %20 = phi i32 [ %12, %11 ], [ %16, %13 ]
  %21 = add nuw nsw i32 %20, 1
  %22 = trunc i32 %21 to i8
  %23 = add nuw nsw i32 %8, 5
  %24 = urem i8 %2, 10
  %25 = zext nneg i8 %24 to i32
  %26 = getelementptr [0 x ptr], ptr @gTaskTextDigitAnimations, i32 0, i32 %25
  %27 = load ptr, ptr %26, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef %23, i32 noundef %9, i32 noundef 0, ptr noundef %27) #2
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %20, i8 noundef zeroext 2) #2
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %21, i8 noundef zeroext 2) #2
  ret i32 3
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreTaskTextSelectionPage(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 34), align 1
  %3 = add i8 %2, -1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  %5 = icmp eq i8 %4, 0
  %6 = icmp eq i8 %2, 0
  %7 = select i1 %5, i1 true, i1 %6
  br i1 %7, label %107, label %8

8:                                                ; preds = %1
  %9 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 248) #2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %97, label %14

14:                                               ; preds = %11
  %15 = zext i8 %12 to i32
  %16 = zext i8 %12 to i32
  br label %88

17:                                               ; preds = %8
  %18 = zext i8 %3 to i32
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, 86
  %22 = add nuw nsw i32 %21, %18
  %23 = getelementptr [0 x i8], ptr @gTaskTextLanguageOrder, i32 0, i32 %22
  %24 = load i8, ptr %23, align 1
  %25 = mul nuw nsw i32 %20, 11
  %26 = add nuw nsw i32 %25, 9
  %27 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = icmp ult i8 %24, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %17
  %31 = add nuw nsw i32 %25, 8
  %32 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = icmp ult i8 %24, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %30
  %36 = add nuw nsw i32 %25, 7
  %37 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %36
  %38 = load i8, ptr %37, align 1
  %39 = icmp ult i8 %24, %38
  br i1 %39, label %40, label %72

40:                                               ; preds = %35
  %41 = add nuw nsw i32 %25, 6
  %42 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %41
  %43 = load i8, ptr %42, align 1
  %44 = icmp ult i8 %24, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = add nuw nsw i32 %25, 5
  %47 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %46
  %48 = load i8, ptr %47, align 1
  %49 = icmp ult i8 %24, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = add nuw nsw i32 %25, 4
  %52 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %51
  %53 = load i8, ptr %52, align 1
  %54 = icmp ult i8 %24, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = add nuw nsw i32 %25, 3
  %57 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %56
  %58 = load i8, ptr %57, align 1
  %59 = icmp ult i8 %24, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %55
  %61 = add nuw nsw i32 %25, 2
  %62 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %61
  %63 = load i8, ptr %62, align 1
  %64 = icmp ult i8 %24, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = add nuw nsw i32 %25, 1
  %67 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = icmp uge i8 %24, %68
  %70 = zext i1 %69 to i8
  %71 = zext i1 %69 to i32
  br label %72

72:                                               ; preds = %65, %60, %55, %50, %45, %40, %35, %30, %17
  %73 = phi i8 [ 9, %17 ], [ 8, %30 ], [ 7, %35 ], [ 6, %40 ], [ 5, %45 ], [ 4, %50 ], [ 3, %55 ], [ 2, %60 ], [ %70, %65 ]
  %74 = phi i32 [ 9, %17 ], [ 8, %30 ], [ 7, %35 ], [ 6, %40 ], [ 5, %45 ], [ 4, %50 ], [ 3, %55 ], [ 2, %60 ], [ %71, %65 ]
  %75 = zext i8 %24 to i16
  %76 = lshr i8 %24, 2
  %77 = add nuw nsw i32 %74, %25
  %78 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %77
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i16
  %81 = sub nsw i16 %75, %80
  %82 = srem i16 %81, 4
  %83 = trunc i16 %82 to i8
  %84 = add nsw i8 %83, 1
  br label %107

85:                                               ; preds = %88
  %86 = add nuw nsw i32 %89, 1
  %87 = icmp eq i32 %86, %16
  br i1 %87, label %93, label %88

88:                                               ; preds = %14, %85
  %89 = phi i32 [ 0, %14 ], [ %86, %85 ]
  %90 = getelementptr [0 x i8], ptr @gSaveGroup01Block37F0, i32 0, i32 %89
  %91 = load i8, ptr %90, align 1
  %92 = icmp eq i8 %91, %2
  br i1 %92, label %93, label %85

93:                                               ; preds = %88, %85
  %94 = phi i32 [ %15, %85 ], [ %89, %88 ]
  %95 = sub nsw i32 %16, %94
  %96 = trunc i32 %95 to i16
  br label %97

97:                                               ; preds = %93, %11
  %98 = phi i16 [ 0, %11 ], [ %96, %93 ]
  %99 = add nsw i16 %98, -1
  %100 = sdiv i16 %99, 4
  %101 = trunc i16 %100 to i8
  %102 = srem i16 %98, 4
  %103 = trunc i16 %102 to i8
  %104 = and i16 %102, 255
  %105 = icmp eq i16 %104, 0
  %106 = select i1 %105, i8 4, i8 %103
  br label %107

107:                                              ; preds = %1, %72, %97
  %108 = phi i8 [ %73, %72 ], [ 0, %97 ], [ 0, %1 ]
  %109 = phi i8 [ %76, %72 ], [ %101, %97 ], [ 0, %1 ]
  %110 = phi i8 [ %84, %72 ], [ %106, %97 ], [ 1, %1 ]
  store i8 %108, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  store i8 %109, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  store i8 %110, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectTaskTextAcquiredPage(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 118), align 1
  tail call void asm sideeffect "", "~{r5}"() #3, !srcloc !4
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 248) #2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %74, label %5

5:                                                ; preds = %1
  %6 = add i8 %2, -1
  %7 = zext i8 %6 to i32
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 86
  %11 = add nuw nsw i32 %10, %7
  %12 = getelementptr [0 x i8], ptr @gTaskTextLanguageOrder, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = mul nuw nsw i32 %9, 11
  %15 = add nuw nsw i32 %14, 9
  %16 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  %18 = icmp ult i8 %13, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %5
  %20 = add nuw nsw i32 %14, 8
  %21 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %20
  %22 = load i8, ptr %21, align 1
  %23 = icmp ult i8 %13, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = add nuw nsw i32 %14, 7
  %26 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %25
  %27 = load i8, ptr %26, align 1
  %28 = icmp ult i8 %13, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %24
  %30 = add nuw nsw i32 %14, 6
  %31 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %30
  %32 = load i8, ptr %31, align 1
  %33 = icmp ult i8 %13, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = add nuw nsw i32 %14, 5
  %36 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %35
  %37 = load i8, ptr %36, align 1
  %38 = icmp ult i8 %13, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = add nuw nsw i32 %14, 4
  %41 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %40
  %42 = load i8, ptr %41, align 1
  %43 = icmp ult i8 %13, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %39
  %45 = add nuw nsw i32 %14, 3
  %46 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %45
  %47 = load i8, ptr %46, align 1
  %48 = icmp ult i8 %13, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = add nuw nsw i32 %14, 2
  %51 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %50
  %52 = load i8, ptr %51, align 1
  %53 = icmp ult i8 %13, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = add nuw nsw i32 %14, 1
  %56 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %55
  %57 = load i8, ptr %56, align 1
  %58 = icmp uge i8 %13, %57
  %59 = zext i1 %58 to i8
  %60 = zext i1 %58 to i32
  br label %61

61:                                               ; preds = %54, %49, %44, %39, %34, %29, %24, %19, %5
  %62 = phi i8 [ 9, %5 ], [ 8, %19 ], [ 7, %24 ], [ 6, %29 ], [ 5, %34 ], [ 4, %39 ], [ 3, %44 ], [ 2, %49 ], [ %59, %54 ]
  %63 = phi i32 [ 9, %5 ], [ 8, %19 ], [ 7, %24 ], [ 6, %29 ], [ 5, %34 ], [ 4, %39 ], [ 3, %44 ], [ 2, %49 ], [ %60, %54 ]
  %64 = zext i8 %13 to i16
  %65 = lshr i8 %13, 2
  %66 = add nuw nsw i32 %63, %14
  %67 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %66
  %68 = load i8, ptr %67, align 1
  %69 = zext i8 %68 to i16
  %70 = sub nsw i16 %64, %69
  %71 = srem i16 %70, 4
  %72 = trunc i16 %71 to i8
  %73 = add nsw i8 %72, 1
  br label %74

74:                                               ; preds = %1, %61
  %75 = phi i8 [ %62, %61 ], [ 0, %1 ]
  %76 = phi i8 [ %65, %61 ], [ 0, %1 ]
  %77 = phi i8 [ %73, %61 ], [ 1, %1 ]
  store i8 %75, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  store i8 %76, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  store i8 %77, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 114), align 1
  ret i32 0
}

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
!4 = !{i64 2355}
