; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextPageSpecialAnimation25 = external dso_local constant [0 x i8], align 1
@gTaskTextPageSpecialAnimation32 = external dso_local constant [0 x i8], align 1
@gTaskTextPageRegularAnimation25 = external dso_local constant [0 x i8], align 1
@gTaskTextPageSelectedAnimations = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextPageGraphicsScripts = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte3E30 = external dso_local local_unnamed_addr global i8, align 1
@gTaskTextCategorySlotStarts = external dso_local constant [0 x i8], align 1
@switch.table.ScriptCallbackStoreTaskTextPageCount = private unnamed_addr constant [5 x i8] c"\18\19\1A\19\1A", align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureTaskTextPageSlots(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %3 = icmp eq i8 %2, 9
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 168, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gTaskTextPageSpecialAnimation25) #3
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 32, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef 168, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gTaskTextPageSpecialAnimation32) #3
  br label %18

5:                                                ; preds = %1
  %6 = zext i8 %2 to i32
  %7 = shl nuw nsw i32 %6, 20
  %8 = tail call i32 asm "", "=r,0"(i32 1572864) #4, !srcloc !4
  %9 = add i32 %8, %7
  %10 = ashr i32 %9, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef %10, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gTaskTextPageRegularAnimation25) #3
  %11 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 20
  %14 = add nuw nsw i32 %13, 1572864
  %15 = lshr exact i32 %14, 16
  %16 = getelementptr [0 x ptr], ptr @gTaskTextPageSelectedAnimations, i32 0, i32 %12
  %17 = load ptr, ptr %16, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 32, i8 noundef zeroext 1, i8 noundef zeroext 120, i32 noundef %15, i32 noundef 0, i32 noundef 0, ptr noundef %17) #3
  br label %18

18:                                               ; preds = %5, %4
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 25, i8 noundef zeroext 3) #3
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 32, i8 noundef zeroext 3) #3
  %19 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr [0 x ptr], ptr @gTaskTextPageGraphicsScripts, i32 0, i32 %20
  %22 = load ptr, ptr %21, align 4
  %23 = ptrtoint ptr %22 to i32
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef %23) #3
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreTaskTextPageCount(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 248) #3
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %6 = icmp ult i8 %5, 5
  br i1 %6, label %14, label %20

7:                                                ; preds = %1
  %8 = load i8, ptr @gSaveGroup01Byte3E30, align 1
  %9 = lshr i8 %8, 2
  %10 = and i8 %8, 3
  %11 = icmp ne i8 %10, 0
  %12 = zext i1 %11 to i8
  %13 = add nuw nsw i8 %9, %12
  br label %18

14:                                               ; preds = %4
  %15 = zext nneg i8 %5 to i32
  %16 = getelementptr inbounds [5 x i8], ptr @switch.table.ScriptCallbackStoreTaskTextPageCount, i32 0, i32 %15
  %17 = load i8, ptr %16, align 1
  br label %18

18:                                               ; preds = %14, %7
  %19 = phi i8 [ %13, %7 ], [ %17, %14 ]
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %20

20:                                               ; preds = %4, %18
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackTestTaskTextCategoryPage(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  %7 = add nuw nsw i32 %6, %4
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 11
  %11 = add nuw nsw i32 %7, %10
  %12 = getelementptr [0 x i8], ptr @gTaskTextCategorySlotStarts, i32 0, i32 %11
  %13 = load i8, ptr %12, align 1
  %14 = lshr i8 %13, 2
  %15 = icmp eq i8 %2, %14
  %16 = zext i1 %15 to i8
  store i8 %16, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectTaskTextCategoryPage(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 11
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %6 = zext i8 %5 to i32
  %7 = add i32 %6, ptrtoint (ptr @gTaskTextCategorySlotStarts to i32)
  %8 = add i32 %7, %4
  %9 = inttoptr i32 %8 to ptr
  %10 = load i8, ptr %9, align 1
  %11 = lshr i8 %10, 2
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 113), align 1
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 658}
