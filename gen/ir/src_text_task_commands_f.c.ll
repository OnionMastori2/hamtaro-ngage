; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2,0"

%struct.TaskContext = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, ptr, i32, i32, i16, i16, i16, i16, i32, ptr, ptr, i32 }

@gTaskConstructorByte646 = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextBundles = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gTaskTextGroupsCFC8 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskScript648 = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gTaskRenderAnimationsE788 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextGroupsCF98 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextGroupsCFA4 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextGroupsCFB0 = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextGroupsCFBC = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gTaskTextVariables2BB0 = external dso_local global [0 x i32], align 4
@switch.table.TaskCommandFF = private unnamed_addr constant [14 x i8] c"\01\00\00\00\00\01\01\01\01\00\01\01\01\01", align 1
@switch.table.SelectTaskTextSecondaryVariant = private unnamed_addr constant [14 x i8] c"\02\00\00\00\00\02\02\02\02\00\02\02\02\02", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @TaskCommandFF(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = load i8, ptr %3, align 1
  %5 = add i8 %4, 15
  %6 = icmp ult i8 %5, 14
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i8 %5 to i32
  %9 = getelementptr inbounds [14 x i8], ptr @switch.table.TaskCommandFF, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi i8 [ %10, %7 ], [ 0, %1 ]
  store i8 %12, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @SelectTaskTextSecondaryVariant(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = load i8, ptr %3, align 1
  %5 = add i8 %4, 15
  %6 = icmp ult i8 %5, 14
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = zext nneg i8 %5 to i32
  %9 = getelementptr inbounds [14 x i8], ptr @switch.table.SelectTaskTextSecondaryVariant, i32 0, i32 %8
  %10 = load i8, ptr %9, align 1
  br label %11

11:                                               ; preds = %1, %7
  %12 = phi i8 [ %10, %7 ], [ 0, %1 ]
  store i8 %12, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF0(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = getelementptr [0 x ptr], ptr @gTaskTextBundles, i32 0, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @gDefaultTaskContextScript
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr ptr, ptr %15, i32 %19
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %9, %17
  %23 = phi ptr [ %21, %17 ], [ @gDefaultTaskContextScript, %9 ]
  %24 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %23) #3
  store ptr %24, ptr %2, align 4
  ret i32 1
}

declare dso_local arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF1(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = load i8, ptr @gTaskConstructorByte646, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFC8, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @gDefaultTaskContextScript
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr ptr, ptr %19, i32 %23
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %9, %21
  %27 = phi ptr [ %25, %21 ], [ @gDefaultTaskContextScript, %9 ]
  %28 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %27) #3
  store ptr %28, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF2(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  store ptr %7, ptr %2, align 4
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = tail call arm_apcscc zeroext i16 @ReadScriptValueByWidth(i8 noundef zeroext 98, i32 noundef %9) #3
  %11 = zext i16 %10 to i32
  tail call arm_apcscc void @FormatTaskNumericText(i32 noundef %6, i32 noundef %11) #3
  %12 = load ptr, ptr %2, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %13, ptr %14, align 4
  store ptr @gTaskScript648, ptr %2, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @FormatTaskNumericText(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc zeroext i16 @ReadScriptValueByWidth(i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF3(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %3, i32 2
  store ptr %7, ptr %2, align 4
  %8 = load i8, ptr %4, align 1
  %9 = zext i8 %8 to i32
  %10 = tail call arm_apcscc zeroext i16 @ReadScriptValueByWidth(i8 noundef zeroext 119, i32 noundef %9) #3
  %11 = zext i16 %10 to i32
  tail call arm_apcscc void @FormatTaskNumericText(i32 noundef %6, i32 noundef %11) #3
  %12 = load ptr, ptr %2, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %13, ptr %14, align 4
  store ptr @gTaskScript648, ptr %2, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF4(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  tail call arm_apcscc void @CallCoreIndirectCallback(i8 noundef zeroext %5) #3
  ret i32 1
}

declare dso_local arm_apcscc void @CallCoreIndirectCallback(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF5(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 23
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %99, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr @gRenderSlots, align 4
  %12 = getelementptr i8, ptr %11, i32 408
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 10
  %15 = load i8, ptr %14, align 2
  %16 = shl nuw nsw i32 %6, 2
  %17 = icmp eq i8 %13, 0
  br i1 %17, label %52, label %18

18:                                               ; preds = %10
  %19 = zext i8 %13 to i32
  tail call void asm sideeffect "", "r,r,r"(i32 %19, i32 %16, i32 408) #4, !srcloc !4
  %20 = load ptr, ptr @gRenderSlots, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = add i32 %21, 512
  %23 = inttoptr i32 %22 to ptr
  %24 = load i8, ptr %23, align 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %52, label %26

26:                                               ; preds = %18
  %27 = zext i8 %24 to i32
  tail call void asm sideeffect "", "r,r,r"(i32 %27, i32 %16, i32 408) #4, !srcloc !4
  %28 = load ptr, ptr @gRenderSlots, align 4
  %29 = ptrtoint ptr %28 to i32
  %30 = add i32 %29, 616
  %31 = inttoptr i32 %30 to ptr
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %26
  %35 = zext i8 %32 to i32
  tail call void asm sideeffect "", "r,r,r"(i32 %35, i32 %16, i32 408) #4, !srcloc !4
  %36 = load ptr, ptr @gRenderSlots, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = add i32 %37, 720
  %39 = inttoptr i32 %38 to ptr
  %40 = load i8, ptr %39, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %34
  %43 = zext i8 %40 to i32
  tail call void asm sideeffect "", "r,r,r"(i32 %43, i32 %16, i32 408) #4, !srcloc !4
  %44 = load ptr, ptr @gRenderSlots, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = add i32 %45, 824
  %47 = inttoptr i32 %46 to ptr
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = zext i8 %48 to i32
  tail call void asm sideeffect "", "r,r,r"(i32 %51, i32 %16, i32 408) #4, !srcloc !4
  br label %52

52:                                               ; preds = %18, %26, %34, %42, %50, %10
  %53 = phi i32 [ 0, %10 ], [ 1, %18 ], [ 2, %26 ], [ 3, %34 ], [ 4, %42 ], [ 5, %50 ]
  %54 = tail call i32 asm "", "={r6},{r6}"(i32 %53) #5, !srcloc !5
  %55 = shl nuw i32 1, %54
  %56 = trunc i32 %55 to i8
  %57 = or i8 %15, %56
  store i8 %57, ptr %14, align 2
  %58 = add nuw nsw i32 %53, 3
  tail call arm_apcscc void @ResetRenderSlot(i32 noundef %58) #3
  %59 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 17
  %60 = load i16, ptr %59, align 2
  %61 = zext i16 %60 to i32
  %62 = shl nuw nsw i32 %61, 1
  %63 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 2
  %64 = load i8, ptr %63, align 2
  %65 = zext i8 %64 to i32
  %66 = icmp ult i32 %62, %65
  %67 = load i32, ptr %7, align 4
  %68 = add i32 %67, 32
  %69 = inttoptr i32 %68 to ptr
  %70 = load i16, ptr %69, align 2
  %71 = zext i16 %70 to i32
  %72 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 16
  %73 = load i16, ptr %72, align 4
  %74 = zext i16 %73 to i32
  %75 = add nuw nsw i32 %74, %71
  %76 = shl i32 %75, 16
  %77 = or disjoint i32 %76, 32768
  %78 = add i32 %67, 34
  %79 = inttoptr i32 %78 to ptr
  %80 = load i16, ptr %79, align 2
  %81 = zext i16 %80 to i32
  br i1 %66, label %82, label %86

82:                                               ; preds = %52
  %83 = shl i32 %61, 20
  %84 = shl nuw i32 %81, 16
  %85 = add i32 %84, %83
  br label %92

86:                                               ; preds = %52
  %87 = shl nuw nsw i32 %65, 3
  %88 = and i32 %87, 2032
  %89 = add nuw nsw i32 %88, 65520
  %90 = add nuw nsw i32 %89, %81
  %91 = shl i32 %90, 16
  br label %92

92:                                               ; preds = %86, %82
  %93 = phi i32 [ %91, %86 ], [ %85, %82 ]
  %94 = or disjoint i32 %93, 32768
  tail call arm_apcscc void @SetRenderPosition(i32 noundef %58, i32 noundef %77, i32 noundef %94, i32 noundef 0) #3
  tail call arm_apcscc void @SetRenderField60(i32 noundef %58, i32 noundef 1) #3
  tail call arm_apcscc void @SetRenderField62(i32 noundef %58, i32 noundef 120) #3
  %95 = mul nuw nsw i32 %6, 5
  %96 = add nuw nsw i32 %53, %95
  %97 = getelementptr [0 x ptr], ptr @gTaskRenderAnimationsE788, i32 0, i32 %96
  %98 = load ptr, ptr %97, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %58, ptr noundef %98) #3
  tail call arm_apcscc void @SetRenderPriorityBits(i32 noundef %58, i8 noundef zeroext 0) #3
  br label %99

99:                                               ; preds = %92, %1
  %100 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 16
  %101 = load i16, ptr %100, align 4
  %102 = add i16 %101, 16
  store i16 %102, ptr %100, align 4
  ret i32 1
}

declare dso_local arm_apcscc void @ResetRenderSlot(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField62(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderPriorityBits(i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF6(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = icmp ult i8 %10, 4
  %15 = load i8, ptr @gTaskConstructorByte646, align 1
  %16 = zext i8 %15 to i32
  br i1 %14, label %17, label %23

17:                                               ; preds = %9
  %18 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCF98, i32 0, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr ptr, ptr %19, i32 %11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @gDefaultTaskContextScript
  br i1 %22, label %37, label %31

23:                                               ; preds = %9
  %24 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFA4, i32 0, i32 %16
  %25 = load ptr, ptr %24, align 4
  %26 = shl nuw nsw i32 %11, 2
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = getelementptr i8, ptr %27, i32 -12
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @gDefaultTaskContextScript
  br i1 %30, label %37, label %31

31:                                               ; preds = %17, %23
  %32 = phi ptr [ %21, %17 ], [ %29, %23 ]
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr ptr, ptr %32, i32 %34
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %17, %23, %31
  %38 = phi ptr [ %36, %31 ], [ @gDefaultTaskContextScript, %23 ], [ @gDefaultTaskContextScript, %17 ]
  %39 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %38) #3
  store ptr %39, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF7(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = load i8, ptr @gTaskConstructorByte646, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFB0, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @gDefaultTaskContextScript
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr ptr, ptr %19, i32 %23
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %9, %21
  %27 = phi ptr [ %25, %21 ], [ @gDefaultTaskContextScript, %9 ]
  %28 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %27) #3
  store ptr %28, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF8(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = load i8, ptr @gTaskConstructorByte646, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFBC, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @gDefaultTaskContextScript
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr ptr, ptr %19, i32 %23
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %9, %21
  %27 = phi ptr [ %25, %21 ], [ @gDefaultTaskContextScript, %9 ]
  %28 = tail call arm_apcscc ptr @IdentityTaskTextPointer(ptr noundef %27) #3
  store ptr %28, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandF9(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 15
  %7 = zext nneg i8 %6 to i32
  %8 = ptrtoint ptr %4 to i32
  %9 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %8, ptr %9, align 4
  %10 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %7
  tail call arm_apcscc void @RetargetTaskTextBundle(ptr noundef %10) #3
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i32 %11 to ptr
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
  store ptr %20, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

declare dso_local arm_apcscc void @RetargetTaskTextBundle(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandFA(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = getelementptr [0 x ptr], ptr @gTaskTextBundles, i32 0, i32 %11
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, @gDefaultTaskContextScript
  br i1 %16, label %22, label %17

17:                                               ; preds = %9
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr ptr, ptr %15, i32 %19
  %21 = load ptr, ptr %20, align 4
  br label %22

22:                                               ; preds = %9, %17
  %23 = phi ptr [ %21, %17 ], [ @gDefaultTaskContextScript, %9 ]
  %24 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %23) #3
  store ptr %24, ptr %2, align 4
  ret i32 1
}

declare dso_local arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandFB(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = load i8, ptr @gTaskConstructorByte646, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFC8, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @gDefaultTaskContextScript
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr ptr, ptr %19, i32 %23
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %9, %21
  %27 = phi ptr [ %25, %21 ], [ @gDefaultTaskContextScript, %9 ]
  %28 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %27) #3
  store ptr %28, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandFC(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = icmp ult i8 %10, 4
  %15 = load i8, ptr @gTaskConstructorByte646, align 1
  %16 = zext i8 %15 to i32
  br i1 %14, label %17, label %23

17:                                               ; preds = %9
  %18 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCF98, i32 0, i32 %16
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr ptr, ptr %19, i32 %11
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, @gDefaultTaskContextScript
  br i1 %22, label %37, label %31

23:                                               ; preds = %9
  %24 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFA4, i32 0, i32 %16
  %25 = load ptr, ptr %24, align 4
  %26 = shl nuw nsw i32 %11, 2
  %27 = getelementptr i8, ptr %25, i32 %26
  %28 = getelementptr i8, ptr %27, i32 -12
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @gDefaultTaskContextScript
  br i1 %30, label %37, label %31

31:                                               ; preds = %17, %23
  %32 = phi ptr [ %21, %17 ], [ %29, %23 ]
  %33 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %34 = zext i8 %33 to i32
  %35 = getelementptr ptr, ptr %32, i32 %34
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %17, %23, %31
  %38 = phi ptr [ %36, %31 ], [ @gDefaultTaskContextScript, %23 ], [ @gDefaultTaskContextScript, %17 ]
  %39 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %38) #3
  store ptr %39, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandFD(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = load i8, ptr @gTaskConstructorByte646, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFB0, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @gDefaultTaskContextScript
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr ptr, ptr %19, i32 %23
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %9, %21
  %27 = phi ptr [ %25, %21 ], [ @gDefaultTaskContextScript, %9 ]
  %28 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %27) #3
  store ptr %28, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @TaskCommandFE(ptr nocapture noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 13
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  store ptr %4, ptr %2, align 4
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, -1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i8 [ %8, %7 ], [ %5, %1 ]
  %11 = zext i8 %10 to i32
  %12 = ptrtoint ptr %4 to i32
  %13 = getelementptr inbounds %struct.TaskContext, ptr %0, i32 0, i32 14
  store i32 %12, ptr %13, align 4
  %14 = load i8, ptr @gTaskConstructorByte646, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr [0 x ptr], ptr @gTaskTextGroupsCFBC, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr ptr, ptr %17, i32 %11
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, @gDefaultTaskContextScript
  br i1 %20, label %26, label %21

21:                                               ; preds = %9
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %23 = zext i8 %22 to i32
  %24 = getelementptr ptr, ptr %19, i32 %23
  %25 = load ptr, ptr %24, align 4
  br label %26

26:                                               ; preds = %9, %21
  %27 = phi ptr [ %25, %21 ], [ @gDefaultTaskContextScript, %9 ]
  %28 = tail call arm_apcscc ptr @CopyTaskTextAdjustedInitialDefault(ptr noundef %27) #3
  store ptr %28, ptr %2, align 4
  store i8 0, ptr @gTaskConstructorByte646, align 1
  ret i32 1
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 3932}
!5 = !{i64 4481}
