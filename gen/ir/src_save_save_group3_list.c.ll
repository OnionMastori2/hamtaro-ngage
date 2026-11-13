; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SaveGroup3ListDescriptor = type { ptr, i8, i8, i8, i8, [2 x i8], [3 x i16], ptr, ptr }

@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gSaveGroup3ListCells = external dso_local global [0 x i16], align 2
@gSaveGroup3Block1EE40 = external dso_local global [0 x i8], align 1
@gSaveGroup3ListBlankTiles = external dso_local global [0 x i16], align 2
@gSaveGroup3ListHeaderAnimation = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListStyleFrame0 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup3ListStyleFrame1 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup3ListStyleFrame2 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup3ListStyleAnimation0 = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListStyleAnimation1 = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListStyleAnimation2 = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListCursorAnimation = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListItemAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3ListDescriptors = external dso_local constant [0 x %struct.SaveGroup3ListDescriptor], align 4
@gSaveGroup3ListTextBundles = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gTaskTextPairContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3ListNumberFields = external dso_local constant [0 x i16], align 2
@gSaveGroup3ListCategoryAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3ListTileIndices = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gSaveGroup3ListGridAnimation = external dso_local constant [0 x i8], align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackDecrementSaveGroup3ListCells(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = and i8 %2, 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %25, label %5

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  br label %7

7:                                                ; preds = %5, %21
  %8 = phi i8 [ %6, %5 ], [ %22, %21 ]
  %9 = phi i32 [ 0, %5 ], [ %23, %21 ]
  %10 = zext i8 %8 to i32
  %11 = icmp ugt i32 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = mul nuw nsw i32 %9, 6
  %14 = add i32 %13, add (i32 ptrtoint (ptr @gSaveGroup3ListCells to i32), i32 4)
  %15 = inttoptr i32 %14 to ptr
  %16 = load i16, ptr %15, align 2
  %17 = add i16 %16, -1
  %18 = icmp ult i16 %17, 16384
  %19 = select i1 %18, i16 16895, i16 %17
  store i16 %19, ptr %15, align 2
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  br label %21

21:                                               ; preds = %7, %12
  %22 = phi i8 [ %8, %7 ], [ %20, %12 ]
  %23 = add nuw nsw i32 %9, 1
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %7

25:                                               ; preds = %21, %1
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @RemoveSaveGroup3ListEntry(i8 noundef zeroext %0) local_unnamed_addr #2 {
  %2 = icmp ult i8 %0, 31
  br i1 %2, label %3, label %13

3:                                                ; preds = %1
  %4 = zext nneg i8 %0 to i32
  br label %5

5:                                                ; preds = %3, %5
  %6 = phi i32 [ %4, %3 ], [ %7, %5 ]
  %7 = add nuw nsw i32 %6, 1
  %8 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %6
  store i8 %9, ptr %10, align 1
  %11 = and i32 %7, 255
  %12 = icmp eq i32 %11, 31
  br i1 %12, label %13, label %5

13:                                               ; preds = %5, %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 31), align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSaveGroup3ListDisplay(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 6
  %5 = add i32 %4, add (i32 ptrtoint (ptr @gSaveGroup3ListCells to i32), i32 6)
  %6 = inttoptr i32 %5 to ptr
  store i16 -19620, ptr %6, align 2
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 12, i8 noundef zeroext 0) #5
  store i16 130, ptr @gSaveGroup3ListBlankTiles, align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 32), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 1), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 33), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 2), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 34), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 3), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 35), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 4), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 36), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 5), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 37), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 6), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 38), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 7), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 39), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 8), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 40), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 9), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 41), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 10), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 42), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gSaveGroup3ListHeaderAnimation) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 40, ptr noundef nonnull @gSaveGroup3ListHeaderAnimation) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 56, ptr noundef nonnull @gSaveGroup3ListHeaderAnimation) #5
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 3), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 6), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 3), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 6), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 3), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 6), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gSaveGroup3ListStyleAnimation0) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 40, ptr noundef nonnull @gSaveGroup3ListStyleAnimation1) #5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 56, ptr noundef nonnull @gSaveGroup3ListStyleAnimation2) #5
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPositionSaveGroup3ListSelection(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 12, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @gSaveGroup3ListCursorAnimation) #5
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 12, i8 noundef zeroext 2) #5
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = freeze i8 %2
  %5 = udiv i8 %4, 10
  %6 = mul i8 %5, 10
  %7 = sub i8 %4, %6
  %8 = zext nneg i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 22
  %10 = add nuw nsw i32 %9, 5
  %11 = mul nuw nsw i8 %5, 5
  %12 = zext nneg i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 18
  %14 = add nuw nsw i32 %13, 5177344
  %15 = lshr exact i32 %14, 16
  %16 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %18, i32 1
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = getelementptr [0 x ptr], ptr @gSaveGroup3ListItemAnimations, i32 0, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %10, i32 noundef 0, i32 noundef %15, ptr noundef %23) #5
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRevealSaveGroup3ListText(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = alloca [20 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #6
  store i16 130, ptr @gSaveGroup3ListBlankTiles, align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 32), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 1), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 33), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 2), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 34), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 3), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 35), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 4), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 36), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 5), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 37), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 6), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 38), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 7), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 39), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 8), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 40), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 9), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 41), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 10), align 2
  store i16 130, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListBlankTiles, i32 0, i32 42), align 2
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %6 = add i8 %5, 1
  store i8 %6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %7 = add i32 %4, ptrtoint (ptr @gSaveGroup3Block1EE40 to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr ptr, ptr @gSaveGroup3ListTextBundles, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, @gDefaultTaskContextScript
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %16 = zext i8 %15 to i32
  %17 = getelementptr ptr, ptr %12, i32 %16
  %18 = load ptr, ptr %17, align 4
  br label %19

19:                                               ; preds = %1, %14
  %20 = phi ptr [ %18, %14 ], [ @gDefaultTaskContextScript, %1 ]
  %21 = icmp eq i8 %6, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %19
  %23 = zext i8 %6 to i32
  %24 = load i8, ptr %20, align 1
  br label %25

25:                                               ; preds = %22, %36
  %26 = phi i8 [ %24, %22 ], [ %31, %36 ]
  %27 = phi i32 [ 0, %22 ], [ %37, %36 ]
  %28 = phi ptr [ %20, %22 ], [ %29, %36 ]
  %29 = getelementptr i8, ptr %28, i32 1
  %30 = getelementptr [20 x i8], ptr %2, i32 0, i32 %27
  store i8 %26, ptr %30, align 1
  %31 = load i8, ptr %29, align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = trunc i32 %27 to i8
  store i8 -1, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 96) to ptr), align 1
  tail call void asm sideeffect "", "{r2}"(ptr nonnull @gRasterScriptControlBytes) #6, !srcloc !4
  %35 = add nuw i8 %34, 1
  br label %39

36:                                               ; preds = %25
  %37 = add nuw nsw i32 %27, 1
  %38 = icmp eq i32 %37, %23
  br i1 %38, label %39, label %25

39:                                               ; preds = %36, %33, %19
  %40 = phi i8 [ %35, %33 ], [ 0, %19 ], [ %6, %36 ]
  %41 = zext i8 %40 to i32
  %42 = getelementptr [20 x i8], ptr %2, i32 0, i32 %41
  store i8 0, ptr %42, align 1
  tail call void asm sideeffect "", "{r0}"(i32 13) #6, !srcloc !5
  %43 = tail call arm_apcscc ptr @AllocateTaskContext() #5
  store ptr %43, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %43, i32 noundef 13, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100683776, i32 noundef ptrtoint (ptr @gSaveGroup3ListBlankTiles to i32)) #5
  %44 = load ptr, ptr @gTaskTextPairContexts, align 4
  call arm_apcscc void @SetTaskContextScript(ptr noundef %44, ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #6
  ret i32 0
}

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #4

declare dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRenderSaveGroup3ListNumbers(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = alloca [3 x i8], align 1
  %3 = alloca [3 x [2 x i16]], align 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %2) #6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #6
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr inbounds [2 x i16], ptr %3, i32 0, i32 1
  %7 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %5
  %8 = ptrtoint ptr %3 to i32
  %9 = ptrtoint ptr %6 to i32
  br label %10

10:                                               ; preds = %1, %53
  %11 = phi i32 [ 0, %1 ], [ %54, %53 ]
  %12 = shl nuw nsw i32 %11, 1
  %13 = load i8, ptr %7, align 1
  %14 = zext i8 %13 to i32
  %15 = mul nuw nsw i32 %14, 24
  %16 = add i32 %12, ptrtoint (ptr @gSaveGroup3ListNumberFields to i32)
  %17 = add i32 %16, %15
  %18 = inttoptr i32 %17 to ptr
  %19 = load i16, ptr %18, align 2
  %20 = getelementptr i8, ptr %2, i32 %11
  %21 = lshr i16 %19, 7
  %22 = zext nneg i16 %21 to i32
  call void asm sideeffect "", "r,r,{r2}"(ptr %20, i32 %22, i32 127) #6, !srcloc !6
  %23 = trunc i16 %21 to i8
  %24 = and i8 %23, 127
  store i8 %24, ptr %20, align 1
  call void asm sideeffect "", "{r3}"(i32 %11) #6, !srcloc !7
  %25 = shl nuw nsw i32 %11, 2
  call void asm sideeffect "", "{r4}"(ptr nonnull %3) #6, !srcloc !8
  %26 = add nuw i32 %25, %8
  %27 = inttoptr i32 %26 to ptr
  %28 = trunc i16 %19 to i8
  %29 = and i8 %28, 127
  %30 = freeze i8 %29
  %31 = udiv i8 %30, 10
  %32 = zext nneg i8 %31 to i16
  store i16 %32, ptr %27, align 2
  %33 = mul i8 %31, 10
  %34 = sub i8 %30, %33
  %35 = zext nneg i8 %34 to i16
  %36 = add nuw i32 %25, %9
  %37 = inttoptr i32 %36 to ptr
  store i16 %35, ptr %37, align 2
  %38 = load i8, ptr %20, align 1
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %10
  %41 = shl nuw nsw i32 %11, 20
  %42 = add nuw nsw i32 %41, 1572864
  %43 = lshr exact i32 %42, 16
  call void asm sideeffect "", "{r1}"(i32 0) #6, !srcloc !9
  %44 = load i8, ptr %20, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr [0 x ptr], ptr @gSaveGroup3ListCategoryAnimations, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = trunc i32 %11 to i8
  %49 = add i8 %48, 13
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %49, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef %43, ptr noundef %47) #5
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %49, i8 noundef zeroext 1) #5
  br label %53

50:                                               ; preds = %10
  %51 = trunc i32 %11 to i8
  %52 = add i8 %51, 13
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %52, i8 noundef zeroext 0) #5
  br label %53

53:                                               ; preds = %50, %40
  %54 = add nuw nsw i32 %11, 1
  %55 = icmp eq i32 %54, 3
  br i1 %55, label %56, label %10

56:                                               ; preds = %53
  %57 = load i16, ptr %3, align 2
  %58 = icmp eq i16 %57, 0
  %59 = add i16 %57, -3370
  %60 = select i1 %58, i16 -3371, i16 %59
  store i16 %60, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 3), align 2
  %61 = load i16, ptr %6, align 2
  %62 = add i16 %61, -3370
  store i16 %62, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 6), align 2
  %63 = getelementptr inbounds i16, ptr %3, i32 2
  %64 = load i16, ptr %63, align 2
  %65 = icmp eq i16 %64, 0
  %66 = add i16 %64, -3370
  %67 = select i1 %65, i16 -3371, i16 %66
  store i16 %67, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 3), align 2
  %68 = getelementptr inbounds i16, ptr %3, i32 3
  %69 = load i16, ptr %68, align 2
  %70 = add i16 %69, -3370
  store i16 %70, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 6), align 2
  %71 = getelementptr inbounds i16, ptr %3, i32 4
  %72 = load i16, ptr %71, align 2
  %73 = icmp eq i16 %72, 0
  %74 = add i16 %72, -3370
  %75 = select i1 %73, i16 -3371, i16 %74
  store i16 %75, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 3), align 2
  %76 = getelementptr inbounds i16, ptr %3, i32 5
  %77 = load i16, ptr %76, align 2
  %78 = add i16 %77, -3370
  store i16 %78, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 6), align 2
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gSaveGroup3ListStyleAnimation0) #5
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 16, i8 noundef zeroext 1) #5
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 40, ptr noundef nonnull @gSaveGroup3ListStyleAnimation1) #5
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 17, i8 noundef zeroext 1) #5
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 56, ptr noundef nonnull @gSaveGroup3ListStyleAnimation2) #5
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 18, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %2) #6
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureSaveGroup3ListGrid(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  br label %2

2:                                                ; preds = %1, %36
  %3 = phi i32 [ 0, %1 ], [ %37, %36 ]
  %4 = mul nuw nsw i32 %3, 6
  %5 = add i32 %4, add (i32 ptrtoint (ptr @gSaveGroup3ListCells to i32), i32 2)
  %6 = inttoptr i32 %5 to ptr
  %7 = trunc i32 %3 to i8
  %8 = freeze i8 %7
  %9 = udiv i8 %8, 10
  %10 = mul nuw nsw i8 %9, 20
  %11 = add nuw nsw i8 %10, 79
  %12 = zext nneg i8 %11 to i16
  store i16 %12, ptr %6, align 2
  %13 = add i32 %4, add (i32 ptrtoint (ptr @gSaveGroup3ListCells to i32), i32 4)
  %14 = inttoptr i32 %13 to ptr
  %15 = mul i8 %9, 10
  %16 = sub i8 %8, %15
  %17 = zext nneg i8 %16 to i16
  %18 = mul nuw nsw i16 %17, 22
  %19 = add nuw nsw i16 %18, 16389
  store i16 %19, ptr %14, align 2
  %20 = add i32 %3, ptrtoint (ptr @gSaveGroup3Block1EE40 to i32)
  %21 = inttoptr i32 %20 to ptr
  %22 = load i8, ptr %21, align 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %2
  %25 = zext i8 %22 to i32
  %26 = add i32 %4, add (i32 ptrtoint (ptr @gSaveGroup3ListCells to i32), i32 6)
  %27 = inttoptr i32 %26 to ptr
  tail call void asm sideeffect "", "{r3}"(ptr nonnull @gSaveGroup3ListDescriptors) #6, !srcloc !10
  %28 = getelementptr %struct.SaveGroup3ListDescriptor, ptr @gSaveGroup3ListDescriptors, i32 %25, i32 1
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = getelementptr i16, ptr @gSaveGroup3ListTileIndices, i32 %30
  %32 = load i16, ptr %31, align 2
  store i16 %32, ptr %27, align 2
  br label %36

33:                                               ; preds = %2
  %34 = add i32 %4, add (i32 ptrtoint (ptr @gSaveGroup3ListCells to i32), i32 6)
  %35 = inttoptr i32 %34 to ptr
  store i16 -19620, ptr %35, align 2
  br label %36

36:                                               ; preds = %33, %24
  %37 = add nuw nsw i32 %3, 1
  %38 = icmp eq i32 %37, 30
  br i1 %38, label %39, label %2

39:                                               ; preds = %36
  store i16 79, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 91), align 2
  store i16 16609, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 92), align 2
  store i16 -19620, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 93), align 2
  tail call void asm sideeffect "", "{r1}"(ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 94)) #6, !srcloc !11
  store i16 99, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 94), align 2
  store i16 16609, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 95), align 2
  store i16 -19620, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 96), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 10, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef -128, i32 noundef 128, ptr noundef nonnull @gSaveGroup3ListGridAnimation) #5
  ret i32 0
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin nounwind "no-builtins" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 3837}
!5 = !{i64 4506}
!6 = !{i64 5743}
!7 = !{i64 5982}
!8 = !{i64 6141}
!9 = !{i64 6778}
!10 = !{i64 9453}
!11 = !{i64 10124}
