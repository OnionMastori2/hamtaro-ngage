; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSaveGroup3PairAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3DefaultPairAnimation = external dso_local constant [0 x i8], align 1
@gSaveGroup3PairGraphicsBuffers = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3PairTileDestinations = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gSaveGroup3PairGraphicsDimensions = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3PairCompressedGraphics = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3DefaultIndices = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gSaveGroup3PairPalettes = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3NumberAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3PairCounts = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gSaveGroup3SelectedNumberAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureSaveGroup3PairAnimation(i32 noundef %0, i8 noundef zeroext %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = and i32 %2, 255
  tail call arm_apcscc void @PrepareSaveGroup3PairGraphics(i8 noundef zeroext %1, i32 noundef %4) #2
  %5 = icmp ult i8 %1, 30
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = mul nuw nsw i32 %4, 3
  %8 = urem i8 %1, 3
  %9 = zext nneg i8 %8 to i32
  %10 = add nuw nsw i32 %7, %9
  %11 = getelementptr [0 x ptr], ptr @gSaveGroup3PairAnimations, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %0, ptr noundef %12) #3
  br label %34

13:                                               ; preds = %3
  %14 = icmp ult i8 %1, 51
  br i1 %14, label %15, label %19

15:                                               ; preds = %13
  %16 = mul nuw nsw i32 %4, 3
  %17 = getelementptr [0 x ptr], ptr @gSaveGroup3PairAnimations, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %0, ptr noundef %18) #3
  br label %34

19:                                               ; preds = %13
  %20 = icmp ult i8 %1, 68
  br i1 %20, label %21, label %26

21:                                               ; preds = %19
  %22 = mul nuw nsw i32 %4, 3
  %23 = add nuw nsw i32 %22, 1
  %24 = getelementptr [0 x ptr], ptr @gSaveGroup3PairAnimations, i32 0, i32 %23
  %25 = load ptr, ptr %24, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %0, ptr noundef %25) #3
  br label %34

26:                                               ; preds = %19
  %27 = icmp ult i8 %1, 110
  br i1 %27, label %28, label %33

28:                                               ; preds = %26
  %29 = mul nuw nsw i32 %4, 3
  %30 = add nuw nsw i32 %29, 2
  %31 = getelementptr [0 x ptr], ptr @gSaveGroup3PairAnimations, i32 0, i32 %30
  %32 = load ptr, ptr %31, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %0, ptr noundef %32) #3
  br label %34

33:                                               ; preds = %26
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %0, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #3
  br label %34

34:                                               ; preds = %15, %28, %33, %21, %6
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @PrepareSaveGroup3PairGraphics(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = zext i8 %0 to i32
  %4 = icmp ult i8 %0, 110
  br i1 %4, label %5, label %42

5:                                                ; preds = %2
  %6 = icmp ult i8 %0, 30
  br i1 %6, label %7, label %13

7:                                                ; preds = %5
  %8 = mul i32 %1, 3
  %9 = tail call arm_apcscc i32 @__umodsi3(i32 noundef %3, i32 noundef 3) #3
  %10 = add i32 %9, %8
  %11 = shl i32 %9, 1
  %12 = and i32 %11, 254
  br label %24

13:                                               ; preds = %5
  %14 = icmp ult i8 %0, 51
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = mul i32 %1, 3
  br label %24

17:                                               ; preds = %13
  %18 = icmp ult i8 %0, 68
  %19 = mul i32 %1, 3
  br i1 %18, label %20, label %22

20:                                               ; preds = %17
  %21 = add i32 %19, 1
  br label %24

22:                                               ; preds = %17
  %23 = add i32 %19, 2
  br label %24

24:                                               ; preds = %15, %22, %20, %7
  %25 = phi i32 [ %12, %7 ], [ 0, %15 ], [ 2, %20 ], [ 4, %22 ]
  %26 = phi i32 [ %10, %7 ], [ %16, %15 ], [ %21, %20 ], [ %23, %22 ]
  %27 = and i32 %26, 255
  %28 = getelementptr [0 x ptr], ptr @gSaveGroup3PairGraphicsBuffers, i32 0, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr [0 x i32], ptr @gSaveGroup3PairTileDestinations, i32 0, i32 %27
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr [0 x i8], ptr @gSaveGroup3PairGraphicsDimensions, i32 0, i32 %25
  %33 = load i8, ptr %32, align 1
  %34 = or disjoint i32 %25, 1
  %35 = getelementptr [0 x i8], ptr @gSaveGroup3PairGraphicsDimensions, i32 0, i32 %34
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr [0 x ptr], ptr @gSaveGroup3PairCompressedGraphics, i32 0, i32 %3
  %38 = load ptr, ptr %37, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %38, ptr noundef %29) #3
  %39 = ptrtoint ptr %29 to i32
  %40 = zext i8 %33 to i32
  %41 = zext i8 %36 to i32
  tail call arm_apcscc void @QueueDmaTileRows(i32 noundef %39, i32 noundef %31, i32 noundef %40, i32 noundef %41) #3
  br label %42

42:                                               ; preds = %24, %2
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @__umodsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @QueueDmaTileRows(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @CopySaveGroup3PairPalette(i8 noundef zeroext %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i32 noundef %3) local_unnamed_addr #0 {
  %5 = icmp eq i8 %0, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %4
  %7 = zext i8 %0 to i32
  %8 = getelementptr i8, ptr @gSaveGroup3DefaultIndices, i32 %7
  br label %9

9:                                                ; preds = %6, %9
  %10 = phi i8 [ %16, %9 ], [ %0, %6 ]
  %11 = phi i8 [ %15, %9 ], [ 0, %6 ]
  %12 = phi ptr [ %13, %9 ], [ %8, %6 ]
  %13 = getelementptr i8, ptr %12, i32 -1
  %14 = load i8, ptr %13, align 1
  %15 = add i8 %14, %11
  %16 = add i8 %10, -1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %9

18:                                               ; preds = %9
  %19 = zext i8 %15 to i32
  %20 = icmp ult i8 %0, 30
  br i1 %20, label %21, label %27

21:                                               ; preds = %4, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %4 ]
  %23 = urem i8 %0, 3
  %24 = shl nuw nsw i8 %23, 5
  %25 = zext nneg i8 %24 to i32
  %26 = or disjoint i32 %25, 83886720
  br label %32

27:                                               ; preds = %18
  %28 = icmp ult i8 %0, 51
  br i1 %28, label %32, label %29

29:                                               ; preds = %27
  %30 = icmp ult i8 %0, 68
  %31 = select i1 %30, i32 83886752, i32 83886784
  br label %32

32:                                               ; preds = %29, %27, %21
  %33 = phi i32 [ %22, %21 ], [ %19, %27 ], [ %19, %29 ]
  %34 = phi i32 [ %26, %21 ], [ 83886720, %27 ], [ %31, %29 ]
  %35 = zext i8 %1 to i32
  %36 = add nuw nsw i32 %33, %35
  %37 = getelementptr [0 x ptr], ptr @gSaveGroup3PairPalettes, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = and i32 %3, 255
  %41 = mul nuw nsw i32 %40, 96
  %42 = add nuw nsw i32 %34, %41
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %39, i32 noundef %42, i32 noundef 32) #3
  ret void
}

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @RenderSaveGroup3Number(i32 noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = zext i8 %3 to i32
  %6 = trunc i32 %0 to i8
  %7 = zext i8 %2 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %6, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %7, i32 noundef %5, i32 noundef 0, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #3
  %8 = icmp ult i8 %1, 10
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = udiv i8 %1, 10
  %11 = zext nneg i8 %10 to i32
  %12 = getelementptr [0 x ptr], ptr @gSaveGroup3NumberAnimations, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %0, ptr noundef %13) #3
  br label %14

14:                                               ; preds = %9, %4
  %15 = add i32 %0, 1
  %16 = trunc i32 %15 to i8
  %17 = add nuw nsw i32 %7, 8
  %18 = urem i8 %1, 10
  %19 = zext nneg i8 %18 to i32
  %20 = getelementptr [0 x ptr], ptr @gSaveGroup3NumberAnimations, i32 0, i32 %19
  %21 = load ptr, ptr %20, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %16, i8 noundef zeroext 1, i8 noundef zeroext 116, i32 noundef %17, i32 noundef %5, i32 noundef 0, ptr noundef %21) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %0, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %15, i8 noundef zeroext 1) #3
  ret void
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateSaveGroup3CountRenderSlots() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 15, i32 noundef 8912896, i32 noundef 1441792, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 15, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 16, i32 noundef 9437184, i32 noundef 1441792, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 16, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 17, i32 noundef 8912896, i32 noundef 3014656, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 17, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 18, i32 noundef 9437184, i32 noundef 3014656, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 18, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 19, i32 noundef 8912896, i32 noundef 4587520, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 19, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 20, i32 noundef 9437184, i32 noundef 4587520, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef 20, i8 noundef zeroext 1) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #3
  %1 = load i8, ptr @gSaveGroup3PairCounts, align 1
  %2 = icmp ult i8 %1, 10
  br i1 %2, label %8, label %3

3:                                                ; preds = %0
  %4 = udiv i8 %1, 10
  %5 = zext nneg i8 %4 to i32
  %6 = getelementptr [0 x ptr], ptr @gSaveGroup3NumberAnimations, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 15, ptr noundef %7) #3
  br label %8

8:                                                ; preds = %3, %0
  %9 = urem i8 %1, 10
  %10 = zext nneg i8 %9 to i32
  %11 = getelementptr [0 x ptr], ptr @gSaveGroup3NumberAnimations, i32 0, i32 %10
  %12 = load ptr, ptr %11, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef %12) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 17, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #3
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 1), align 1
  %14 = icmp ult i8 %13, 10
  br i1 %14, label %20, label %15

15:                                               ; preds = %8
  %16 = udiv i8 %13, 10
  %17 = zext nneg i8 %16 to i32
  %18 = getelementptr [0 x ptr], ptr @gSaveGroup3NumberAnimations, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 17, ptr noundef %19) #3
  br label %20

20:                                               ; preds = %15, %8
  %21 = urem i8 %13, 10
  %22 = zext nneg i8 %21 to i32
  %23 = getelementptr [0 x ptr], ptr @gSaveGroup3NumberAnimations, i32 0, i32 %22
  %24 = load ptr, ptr %23, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 18, ptr noundef %24) #3
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #3
  %25 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 2), align 1
  %26 = icmp ult i8 %25, 10
  br i1 %26, label %32, label %27

27:                                               ; preds = %20
  %28 = udiv i8 %25, 10
  %29 = zext nneg i8 %28 to i32
  %30 = getelementptr [0 x ptr], ptr @gSaveGroup3NumberAnimations, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef %31) #3
  br label %32

32:                                               ; preds = %27, %20
  %33 = urem i8 %25, 10
  %34 = zext nneg i8 %33 to i32
  %35 = getelementptr [0 x ptr], ptr @gSaveGroup3NumberAnimations, i32 0, i32 %34
  %36 = load ptr, ptr %35, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 20, ptr noundef %36) #3
  ret void
}

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateSaveGroup3SelectedCountRenderSlots() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 112), align 1
  %2 = zext i8 %1 to i32
  %3 = add nsw i32 %2, -1
  %4 = shl nsw i32 %3, 1
  %5 = add nsw i32 %4, 15
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %5, ptr noundef nonnull @gSaveGroup3DefaultPairAnimation) #3
  %6 = getelementptr [0 x i8], ptr @gSaveGroup3PairCounts, i32 0, i32 %3
  %7 = load i8, ptr %6, align 1
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %14, label %9

9:                                                ; preds = %0
  %10 = udiv i8 %7, 10
  %11 = zext nneg i8 %10 to i32
  %12 = getelementptr [0 x ptr], ptr @gSaveGroup3SelectedNumberAnimations, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %5, ptr noundef %13) #3
  br label %14

14:                                               ; preds = %9, %0
  %15 = add nsw i32 %4, 16
  %16 = urem i8 %7, 10
  %17 = zext nneg i8 %16 to i32
  %18 = getelementptr [0 x ptr], ptr @gSaveGroup3SelectedNumberAnimations, i32 0, i32 %17
  %19 = load ptr, ptr %18, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %15, ptr noundef %19) #3
  %20 = mul nsw i32 %3, 1572864
  %21 = add nsw i32 %20, 1572864
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %5, i32 noundef 8912896, i32 noundef %21, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %5, i8 noundef zeroext 0) #3
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %15, i32 noundef 9437184, i32 noundef %21, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %15, i8 noundef zeroext 0) #3
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin "no-builtins" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
