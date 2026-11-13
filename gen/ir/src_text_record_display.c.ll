; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SaveGroup3ListDescriptor = type { ptr, i8, i8, i8, i8, [2 x i8], [3 x i16], ptr, ptr }
%struct.TextTilePairEntry = type { i32 }

@gSaveGroup01Block1CC20 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup3ListDescriptors = external dso_local local_unnamed_addr constant [0 x %struct.SaveGroup3ListDescriptor], align 4
@gTaskTextPairContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gRecordCaptionTitleTileMap = external dso_local global [0 x i16], align 2
@gRecordCaptionTextBundles = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRecordCaptionText3B00 = external dso_local global [0 x i8], align 1
@gRecordCaptionDigits3DCC = external dso_local global [0 x i8], align 1
@gRecordCaptionValueTileMap = external dso_local global [0 x i16], align 2

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @WriteTextTilePairs(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = shl i32 %4, 12
  %7 = load i8, ptr %0, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %5, %39
  %10 = phi ptr [ %42, %39 ], [ %0, %5 ]
  %11 = phi ptr [ %41, %39 ], [ %2, %5 ]
  %12 = phi ptr [ %40, %39 ], [ %3, %5 ]
  %13 = load i32, ptr %1, align 1
  %14 = and i32 %13, 255
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %9, %34
  %17 = phi i32 [ %36, %34 ], [ %13, %9 ]
  %18 = phi ptr [ %35, %34 ], [ %1, %9 ]
  %19 = load volatile i8, ptr %10, align 1
  %20 = trunc i32 %17 to i8
  %21 = icmp eq i8 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = lshr i32 %17, 8
  %24 = and i32 %23, 1023
  %25 = or disjoint i32 %24, %6
  %26 = trunc i32 %25 to i16
  %27 = getelementptr i16, ptr %11, i32 1
  store i16 %26, ptr %11, align 2
  %28 = load i32, ptr %18, align 1
  %29 = lshr i32 %28, 18
  %30 = and i32 %29, 1023
  %31 = or disjoint i32 %30, %6
  %32 = trunc i32 %31 to i16
  %33 = getelementptr i16, ptr %12, i32 1
  store i16 %32, ptr %12, align 2
  br label %39

34:                                               ; preds = %16
  %35 = getelementptr %struct.TextTilePairEntry, ptr %18, i32 1
  %36 = load i32, ptr %35, align 1
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %16

39:                                               ; preds = %34, %9, %22
  %40 = phi ptr [ %33, %22 ], [ %12, %9 ], [ %12, %34 ]
  %41 = phi ptr [ %27, %22 ], [ %11, %9 ], [ %11, %34 ]
  %42 = getelementptr i8, ptr %10, i32 1
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %9

45:                                               ; preds = %39, %5
  ret void
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @SetBG2VerticalOffset8() local_unnamed_addr #0 {
  store volatile i16 8, ptr inttoptr (i32 67108890 to ptr), align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @InitializeRecordCounterDefaults() local_unnamed_addr #1 {
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 1), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 2), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 3), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 4), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 5), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 6), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 7), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 8), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 9), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 10), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 11), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 12), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 13), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 14), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 15), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 16), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 17), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 18), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 19), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 20), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 21), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 22), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 23), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 24), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 25), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 26), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 27), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 28), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 29), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 30), align 1
  store i16 256, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 9), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCreateRecordCaption(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %3
  %5 = load i16, ptr %4, align 2
  %6 = zext i16 %5 to i32
  tail call void asm sideeffect "", "r"(i32 12) #4, !srcloc !4
  %7 = tail call arm_apcscc ptr @AllocateTaskContext() #5
  store ptr %7, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %7, i32 noundef 12, i32 noundef 2, i32 noundef 255, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100684800, i32 noundef ptrtoint (ptr @gRecordCaptionTitleTileMap to i32)) #5
  %8 = getelementptr [0 x ptr], ptr @gRecordCaptionTextBundles, i32 0, i32 %6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, @gDefaultTaskContextScript
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr ptr, ptr %9, i32 %13
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %1, %11
  %17 = phi ptr [ %15, %11 ], [ @gDefaultTaskContextScript, %1 ]
  %18 = load i8, ptr %17, align 1
  br label %19

19:                                               ; preds = %45, %16
  %20 = phi i8 [ %18, %16 ], [ %46, %45 ]
  %21 = phi i32 [ 0, %16 ], [ %49, %45 ]
  %22 = phi ptr [ %17, %16 ], [ %24, %45 ]
  %23 = getelementptr [0 x i8], ptr @gRecordCaptionText3B00, i32 0, i32 %21
  store i8 %20, ptr %23, align 1
  %24 = getelementptr i8, ptr %22, i32 1
  %25 = icmp eq i32 %21, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i8, ptr @gRecordCaptionText3B00, align 1
  %28 = add i8 %27, -97
  %29 = icmp ult i8 %28, 50
  br i1 %29, label %41, label %45

30:                                               ; preds = %19
  %31 = add nsw i32 %21, -1
  %32 = getelementptr [0 x i8], ptr @gRecordCaptionText3B00, i32 0, i32 %31
  %33 = load i8, ptr %32, align 1
  %34 = icmp eq i8 %33, 1
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %37 = icmp ne i8 %36, 3
  %38 = add i8 %20, -97
  %39 = icmp ult i8 %38, 50
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %45

41:                                               ; preds = %35, %26
  %42 = phi i8 [ %27, %26 ], [ %20, %35 ]
  %43 = phi ptr [ @gRecordCaptionText3B00, %26 ], [ %23, %35 ]
  %44 = add i8 %42, -85
  store i8 %44, ptr %43, align 1
  br label %45

45:                                               ; preds = %41, %30, %35, %26
  %46 = load i8, ptr %24, align 1
  %47 = icmp eq i8 %46, 0
  %48 = add nuw nsw i32 %21, 1
  %49 = and i32 %48, 255
  br i1 %47, label %50, label %19

50:                                               ; preds = %45
  %51 = getelementptr [0 x i8], ptr @gRecordCaptionText3B00, i32 0, i32 %49
  store i8 0, ptr %51, align 1
  tail call void asm sideeffect "", "r"(i32 %49) #4, !srcloc !5
  %52 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %52, ptr noundef nonnull @gRecordCaptionText3B00) #5
  %53 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %6, i32 4
  %54 = load i8, ptr %53, align 1
  %55 = zext i8 %54 to i32
  %56 = tail call arm_apcscc i32 @__udivsi3(i32 noundef %55, i32 noundef 10) #5
  %57 = trunc i32 %56 to i8
  %58 = add i8 %57, 2
  store i8 %58, ptr @gRecordCaptionDigits3DCC, align 1
  %59 = tail call arm_apcscc i32 @__umodsi3(i32 noundef %55, i32 noundef 10) #5
  %60 = trunc i32 %59 to i8
  %61 = add i8 %60, 2
  store i8 %61, ptr getelementptr ([0 x i8], ptr @gRecordCaptionDigits3DCC, i32 0, i32 1), align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRecordCaptionDigits3DCC, i32 0, i32 2), align 1
  tail call void asm sideeffect "", "r"(i32 2) #4, !srcloc !6
  %62 = tail call arm_apcscc ptr @AllocateTaskContext() #5
  store ptr %62, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 1), align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %62, i32 noundef 2, i32 noundef 2, i32 noundef 255, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100686848, i32 noundef ptrtoint (ptr @gRecordCaptionValueTileMap to i32)) #5
  %63 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 1), align 4
  tail call arm_apcscc void @SetTaskContextScript(ptr noundef %63, ptr noundef nonnull @gRecordCaptionDigits3DCC) #5
  ret i32 1
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #3

declare dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #3

declare dso_local arm_apcscc i32 @__udivsi3(i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local arm_apcscc i32 @__umodsi3(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveRecordCaption(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load ptr, ptr getelementptr ([0 x ptr], ptr @gTaskTextPairContexts, i32 0, i32 1), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %2) #5
  %3 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %3) #5
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #3

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1905}
!5 = !{i64 3081}
!6 = !{i64 3412}
