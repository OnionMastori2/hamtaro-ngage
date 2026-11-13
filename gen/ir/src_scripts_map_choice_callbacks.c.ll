; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.MapParticleEffect = type { i8, i8, [2 x i8], ptr }
%struct.MapParticleParameters = type { i32, i32, i32, i32, i32, i32, i32 }
%union.FollowerRoutePoint = type { [2 x i32] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderXZCollisionMap = external dso_local local_unnamed_addr global ptr, align 4
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gAnimationClassValues = external dso_local global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gMapChoicePackedNext = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMapChoicePackedFlags = external dso_local global [0 x i16], align 2
@gMapChoiceZWords = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMapChoiceXWords = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMapChoicePrimaryAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMapChoiceSecondaryAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMapChoiceVariantAnimations = external dso_local global [0 x ptr], align 4
@gMapChoiceMotionAnimations = external dso_local local_unnamed_addr global [0 x [3 x [4 x ptr]]], align 4
@gMapParticleEffect = external dso_local local_unnamed_addr global %struct.MapParticleEffect, align 4
@gMapParticleAlternateParameters = external dso_local constant [0 x %struct.MapParticleParameters], align 4
@gMapChoiceFacingAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gMapChoiceAnimation86AD = external dso_local constant [0 x i8], align 1
@gMapChoiceAnimation86C2 = external dso_local constant [0 x i8], align 1
@gTaskRenderSlotIndexFAC = external dso_local local_unnamed_addr global i8, align 1
@gTaskRenderAnimationWordF7C = external dso_local local_unnamed_addr global i32, align 4
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gMapChoiceField60Animations = external dso_local global [0 x ptr], align 4
@gMapChoiceFollowerPhase = external dso_local local_unnamed_addr global i8, align 1
@gAudioPlayerContext4E90 = external dso_local global [0 x i8], align 1
@gMapChoiceGraphicsToggle = external dso_local local_unnamed_addr global i8, align 1
@gFollowerRouteEndIndex = external dso_local local_unnamed_addr global i8, align 1
@gFollowerRoutePoints = external dso_local local_unnamed_addr global [0 x %union.FollowerRoutePoint], align 4
@gMapChoiceAuxAnimation88CB755 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CB749 = external dso_local constant [0 x i8], align 1
@gActorPresetResource88CB8BE = external dso_local constant [0 x i8], align 1
@gMapChoiceSlotAnimations = external dso_local global [0 x ptr], align 4
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackReadLeaderCollisionClass(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %6 = getelementptr i16, ptr %5, i32 1
  %7 = load i16, ptr %6, align 2
  %8 = sext i16 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %10 = getelementptr i16, ptr %9, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = sext i16 %11 to i32
  %13 = tail call i32 asm "", "={r0},{r0}"(i32 960) #13, !srcloc !4
  %14 = load ptr, ptr @gRenderXZCollisionMap, align 4
  %15 = tail call arm_apcscc ptr @GetRenderDirectionalCollisionSample(ptr noundef %14, i32 noundef %8, i32 noundef %12, i8 noundef zeroext 0) #14
  %16 = load i16, ptr %15, align 2
  %17 = zext i16 %16 to i32
  %18 = and i32 %13, %17
  %19 = icmp ult i32 %18, 64
  br i1 %19, label %20, label %41

20:                                               ; preds = %1
  %21 = load ptr, ptr @gRenderXZCollisionMap, align 4
  %22 = tail call arm_apcscc ptr @GetRenderDirectionalCollisionSample(ptr noundef %21, i32 noundef %8, i32 noundef %12, i8 noundef zeroext 1) #14
  %23 = load i16, ptr %22, align 2
  %24 = zext i16 %23 to i32
  %25 = and i32 %13, %24
  %26 = icmp ult i32 %25, 64
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load ptr, ptr @gRenderXZCollisionMap, align 4
  %29 = tail call arm_apcscc ptr @GetRenderDirectionalCollisionSample(ptr noundef %28, i32 noundef %8, i32 noundef %12, i8 noundef zeroext 2) #14
  %30 = load i16, ptr %29, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %13, %31
  %33 = icmp ult i32 %32, 64
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load ptr, ptr @gRenderXZCollisionMap, align 4
  %36 = tail call arm_apcscc ptr @GetRenderDirectionalCollisionSample(ptr noundef %35, i32 noundef %8, i32 noundef %12, i8 noundef zeroext 3) #14
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = and i32 %13, %38
  %40 = icmp ult i32 %39, 64
  br i1 %40, label %46, label %41

41:                                               ; preds = %34, %27, %20, %1
  %42 = phi i8 [ 1, %1 ], [ 2, %20 ], [ 3, %27 ], [ 4, %34 ]
  %43 = phi i32 [ %18, %1 ], [ %25, %20 ], [ %32, %27 ], [ %39, %34 ]
  %44 = lshr i32 %43, 6
  %45 = trunc i32 %44 to i16
  br label %46

46:                                               ; preds = %34, %41
  %47 = phi i8 [ %42, %41 ], [ 5, %34 ]
  %48 = phi i16 [ %45, %41 ], [ 0, %34 ]
  store i16 %48, ptr @gScriptResult, align 2
  store i16 %48, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %49 = zext nneg i8 %47 to i16
  store i16 %49, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc ptr @GetRenderDirectionalCollisionSample(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc i32 @ScriptCallbackSkipIfMapValuesDiffer(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca [4 x i16], align 2
  %3 = load i8, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #15
  %4 = ptrtoint ptr %2 to i32
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr %2, align 2
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = or disjoint i32 %4, 1
  %10 = inttoptr i32 %9 to ptr
  store i8 %8, ptr %10, align 1
  %11 = getelementptr i8, ptr %0, i32 3
  %12 = load i8, ptr %11, align 1
  %13 = add nuw i32 %4, 2
  %14 = inttoptr i32 %13 to ptr
  store i8 %12, ptr %14, align 2
  %15 = getelementptr i8, ptr %0, i32 4
  %16 = load i8, ptr %15, align 1
  %17 = add nuw i32 %4, 3
  %18 = inttoptr i32 %17 to ptr
  store i8 %16, ptr %18, align 1
  %19 = load i16, ptr %2, align 2
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds [4 x i16], ptr %2, i32 0, i32 1
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp eq i8 %3, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %1
  %26 = shl nuw nsw i32 %20, 1
  %27 = add i32 %26, ptrtoint (ptr @gAnimationClassValues to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = shl nuw nsw i32 %23, 1
  %30 = add i32 %29, ptrtoint (ptr @gAnimationClassValues to i32)
  %31 = inttoptr i32 %30 to ptr
  %32 = load i16, ptr %28, align 2
  %33 = zext i16 %32 to i32
  %34 = load i16, ptr %31, align 2
  %35 = zext i16 %34 to i32
  br label %45

36:                                               ; preds = %1
  %37 = add i32 %20, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %38 = inttoptr i32 %37 to ptr
  %39 = add i32 %23, ptrtoint (ptr @gRasterScriptControlBytes to i32)
  %40 = inttoptr i32 %39 to ptr
  %41 = load i8, ptr %38, align 1
  %42 = zext i8 %41 to i32
  %43 = load i8, ptr %40, align 1
  %44 = zext i8 %43 to i32
  br label %45

45:                                               ; preds = %36, %25
  %46 = phi i32 [ %35, %25 ], [ %44, %36 ]
  %47 = phi i32 [ %33, %25 ], [ %42, %36 ]
  %48 = icmp eq i32 %47, %46
  %49 = select i1 %48, i32 5, i32 10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #15
  ret i32 %49
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectPackedMapChoice(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = zext i8 %2 to i32
  %4 = load i8, ptr %0, align 1
  %5 = add nsw i32 %3, -1
  %6 = getelementptr [0 x i16], ptr @gMapChoicePackedNext, i32 0, i32 %5
  %7 = load i16, ptr %6, align 2
  %8 = icmp ugt i8 %4, 1
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = trunc i16 %7 to i8
  %11 = and i8 %10, 15
  store i8 %11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %12 = shl nsw i32 %5, 1
  %13 = add i32 %12, ptrtoint (ptr @gMapChoicePackedFlags to i32)
  %14 = inttoptr i32 %13 to ptr
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  br label %41

17:                                               ; preds = %1
  %18 = zext i8 %4 to i32
  %19 = zext i16 %7 to i32
  %20 = add nsw i32 %18, -1
  br label %21

21:                                               ; preds = %21, %17
  %22 = phi i32 [ %20, %17 ], [ %25, %21 ]
  %23 = phi i32 [ %19, %17 ], [ %24, %21 ]
  %24 = lshr i32 %23, 4
  %25 = add nsw i32 %22, -1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %21

27:                                               ; preds = %21
  %28 = trunc i32 %24 to i8
  %29 = and i8 %28, 15
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %30 = shl nsw i32 %5, 1
  %31 = add i32 %30, ptrtoint (ptr @gMapChoicePackedFlags to i32)
  %32 = inttoptr i32 %31 to ptr
  %33 = load i16, ptr %32, align 2
  %34 = zext i16 %33 to i32
  br label %35

35:                                               ; preds = %35, %27
  %36 = phi i32 [ %20, %27 ], [ %39, %35 ]
  %37 = phi i32 [ %34, %27 ], [ %38, %35 ]
  %38 = lshr i32 %37, 4
  %39 = add nsw i32 %36, -1
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %35

41:                                               ; preds = %35, %9
  %42 = phi i32 [ %16, %9 ], [ %38, %35 ]
  %43 = and i32 %42, 15
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 689, i32 noundef 1) #14
  br label %46

46:                                               ; preds = %45, %41
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 688, i32 noundef 0) #14
  ret i32 1
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConsumeMapChoiceFlag(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r2}"(i32 459) #15, !srcloc !5
  tail call void asm sideeffect "", "{r1}"(i32 459) #15, !srcloc !6
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 416), align 1
  %3 = zext i8 %2 to i32
  %4 = add nuw nsw i32 %3, 459
  tail call void asm sideeffect "", "{r1}"(i32 %4) #15, !srcloc !7
  %5 = trunc i32 %4 to i16
  %6 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %5) #14
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext %5, i32 noundef 1) #14
  br label %9

9:                                                ; preds = %1, %8
  %10 = phi i32 [ 0, %8 ], [ 5, %1 ]
  ret i32 %10
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapChoiceRenderSlots(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = add nsw i32 %3, -1
  %5 = icmp eq i32 %4, 7
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i16, ptr getelementptr ([0 x i16], ptr @gMapChoiceZWords, i32 0, i32 2), align 2
  br label %15

8:                                                ; preds = %1
  %9 = icmp ugt i8 %2, 2
  %10 = load ptr, ptr @gRenderSlots, align 4
  %11 = getelementptr i8, ptr %10, i32 1074
  %12 = getelementptr [0 x i16], ptr @gMapChoiceZWords, i32 0, i32 %4
  %13 = select i1 %9, ptr %11, ptr %12
  %14 = load i16, ptr %13, align 2
  store i16 40, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  br label %15

15:                                               ; preds = %8, %6
  %16 = phi i16 [ %7, %6 ], [ %14, %8 ]
  %17 = phi i32 [ 2, %6 ], [ %4, %8 ]
  %18 = zext i16 %16 to i32
  %19 = getelementptr [0 x i16], ptr @gMapChoiceXWords, i32 0, i32 %17
  %20 = load i16, ptr %19, align 2
  %21 = load i16, ptr @gScriptResult, align 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %15
  %24 = add nsw i32 %17, 4
  %25 = getelementptr [0 x ptr], ptr @gMapChoicePrimaryAnimations, i32 0, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  %28 = lshr i16 %27, 1
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  br label %32

29:                                               ; preds = %15
  %30 = getelementptr [0 x ptr], ptr @gMapChoicePrimaryAnimations, i32 0, i32 %17
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi ptr [ %26, %23 ], [ %31, %29 ]
  %34 = phi i32 [ 16, %23 ], [ 0, %29 ]
  %35 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  %36 = icmp ugt i8 %35, 22
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = icmp eq i32 %17, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %37
  %40 = add nuw nsw i32 %18, 65528
  %41 = and i32 %40, 65535
  br label %42

42:                                               ; preds = %37, %39, %32
  %43 = phi i32 [ %41, %39 ], [ %18, %32 ], [ 288, %37 ]
  %44 = phi i16 [ 104, %39 ], [ %20, %32 ], [ 104, %37 ]
  %45 = load i8, ptr %0, align 1
  tail call void asm sideeffect "", "r"(i32 %43) #15, !srcloc !8
  %46 = sext i16 %44 to i32
  %47 = shl nuw i32 %43, 16
  %48 = ashr exact i32 %47, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 10, i8 noundef zeroext %45, i8 noundef zeroext 51, i32 noundef %46, i32 noundef 0, i32 noundef %48, ptr noundef %33) #14
  %49 = icmp eq i32 %17, 0
  %50 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 110), align 1
  %51 = zext i8 %50 to i32
  br i1 %49, label %58, label %52

52:                                               ; preds = %42
  %53 = getelementptr [0 x ptr], ptr @gMapChoiceSecondaryAnimations, i32 0, i32 %51
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr ptr, ptr %54, i32 %17
  %56 = load ptr, ptr %55, align 4
  %57 = load i8, ptr %0, align 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext %57, i8 noundef zeroext 113, i32 noundef %46, i32 noundef 0, i32 noundef %48, ptr noundef %56) #14
  br label %68

58:                                               ; preds = %42
  %59 = mul nuw nsw i32 %51, 48
  %60 = add i32 %34, ptrtoint (ptr @gMapChoiceVariantAnimations to i32)
  %61 = add i32 %60, %59
  %62 = inttoptr i32 %61 to ptr
  %63 = load ptr, ptr %62, align 4
  %64 = load i8, ptr %0, align 1
  %65 = add i32 %47, 1572864
  %66 = ashr exact i32 %65, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext %64, i8 noundef zeroext 113, i32 noundef %46, i32 noundef 0, i32 noundef %66, ptr noundef %63) #14
  %67 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  br label %68

68:                                               ; preds = %58, %52
  %69 = phi i16 [ %67, %58 ], [ 0, %52 ]
  store i16 %69, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  ret i32 1
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareMapChoiceMotion(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr i8, ptr %0, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %9
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ult i8 %2, 3
  %14 = load ptr, ptr @gRenderSlots, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = add i32 %15, 1352
  %17 = inttoptr i32 %16 to ptr
  %18 = add i32 %15, 1040
  %19 = inttoptr i32 %18 to ptr
  br i1 %13, label %20, label %41

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.RenderSlot, ptr %19, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = ashr i32 %25, 16
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %69, label %28

28:                                               ; preds = %20
  %29 = icmp slt i32 %26, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = sub nsw i32 0, %26
  br label %69

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, -1081345
  %36 = icmp ult i32 %35, 7864319
  br i1 %36, label %39, label %37

37:                                               ; preds = %32
  %38 = add nsw i32 %3, -1
  br label %66

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.RenderSlot, ptr %19, i32 0, i32 5
  br label %57

41:                                               ; preds = %1
  %42 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 5
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.RenderSlot, ptr %19, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = sub i32 %43, %45
  %47 = ashr i32 %46, 16
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %69, label %49

49:                                               ; preds = %41
  %50 = icmp slt i32 %47, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %49
  %52 = sub nsw i32 0, %47
  br label %69

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.RenderSlot, ptr %19, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = getelementptr inbounds %struct.RenderSlot, ptr %17, i32 0, i32 3
  br label %57

57:                                               ; preds = %39, %53
  %58 = phi ptr [ %40, %39 ], [ %56, %53 ]
  %59 = phi i32 [ %34, %39 ], [ %55, %53 ]
  %60 = load i32, ptr %58, align 4
  %61 = sub i32 %59, %60
  %62 = ashr i32 %61, 16
  %63 = tail call i32 @llvm.abs.i32(i32 %62, i1 true)
  %64 = add nsw i32 %3, -1
  %65 = icmp ult i32 %61, 65536
  br i1 %65, label %66, label %69

66:                                               ; preds = %37, %57
  %67 = phi i32 [ %38, %37 ], [ %64, %57 ]
  %68 = getelementptr [0 x [3 x [4 x ptr]]], ptr @gMapChoiceMotionAnimations, i32 0, i32 %12, i32 2, i32 %67
  br label %80

69:                                               ; preds = %41, %51, %20, %30, %57
  %70 = phi i32 [ %63, %57 ], [ %47, %41 ], [ %52, %51 ], [ %26, %20 ], [ %31, %30 ]
  %71 = phi i32 [ %64, %57 ], [ 0, %41 ], [ 1, %51 ], [ 2, %20 ], [ 3, %30 ]
  %72 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = lshr i32 %70, 1
  %76 = getelementptr [0 x [3 x [4 x ptr]]], ptr @gMapChoiceMotionAnimations, i32 0, i32 %12, i32 1, i32 %71
  br label %80

77:                                               ; preds = %69
  %78 = getelementptr [0 x [3 x [4 x ptr]]], ptr @gMapChoiceMotionAnimations, i32 0, i32 %12
  %79 = getelementptr [4 x ptr], ptr %78, i32 0, i32 %71
  br label %80

80:                                               ; preds = %74, %77, %66
  %81 = phi ptr [ %68, %66 ], [ %76, %74 ], [ %79, %77 ]
  %82 = phi i32 [ 0, %66 ], [ %75, %74 ], [ %70, %77 ]
  %83 = load ptr, ptr %81, align 4
  %84 = trunc i32 %82 to i16
  %85 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %6
  store i16 %84, ptr %85, align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef %83) #14
  switch i8 %2, label %106 [
    i8 1, label %86
    i8 2, label %91
    i8 3, label %96
    i8 4, label %101
  ]

86:                                               ; preds = %80
  %87 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %86
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext -512) #14
  br label %106

90:                                               ; preds = %86
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext -256) #14
  br label %106

91:                                               ; preds = %80
  %92 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %91
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 512) #14
  br label %106

95:                                               ; preds = %91
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 256) #14
  br label %106

96:                                               ; preds = %80
  %97 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %96
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext -512, i16 noundef signext 0, i16 noundef signext 0) #14
  br label %106

100:                                              ; preds = %96
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext -256, i16 noundef signext 0, i16 noundef signext 0) #14
  br label %106

101:                                              ; preds = %80
  %102 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 512, i16 noundef signext 0, i16 noundef signext 0) #14
  br label %106

105:                                              ; preds = %101
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 10, i16 noundef signext 256, i16 noundef signext 0, i16 noundef signext 0) #14
  br label %106

106:                                              ; preds = %104, %105, %99, %100, %94, %95, %89, %90, %80
  ret i32 3
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc i32 @AnimationCallbackReadMapChoiceDistance(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) local_unnamed_addr #4 {
  %4 = load i8, ptr %1, align 1
  %5 = getelementptr i8, ptr %1, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i8, ptr @gRenderClassSlots0, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ult i8 %4, 3
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = sub i32 %13, %15
  %17 = ashr i32 %16, 16
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %11
  %20 = icmp ult i32 %16, 65536
  %21 = sub nsw i32 0, %17
  %22 = select i1 %20, i32 2, i32 22
  %23 = select i1 %20, i32 0, i32 %21
  br label %37

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 5
  %28 = load i32, ptr %27, align 4
  %29 = sub i32 %26, %28
  %30 = ashr i32 %29, 16
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %24
  %33 = icmp ult i32 %29, 65536
  %34 = sub nsw i32 0, %30
  %35 = select i1 %33, i32 2, i32 12
  %36 = select i1 %33, i32 0, i32 %34
  br label %37

37:                                               ; preds = %32, %19, %24, %11
  %38 = phi i32 [ 17, %11 ], [ 7, %24 ], [ %22, %19 ], [ %35, %32 ]
  %39 = phi i32 [ %17, %11 ], [ %30, %24 ], [ %23, %19 ], [ %36, %32 ]
  %40 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %41 = icmp ne i8 %40, 0
  %42 = zext i1 %41 to i32
  %43 = lshr i32 %39, %42
  %44 = zext i8 %6 to i32
  %45 = trunc i32 %43 to i16
  %46 = getelementptr [0 x i16], ptr @gAnimationClassValues, i32 0, i32 %44
  store i16 %45, ptr %46, align 2
  ret i32 %38
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackStartAlternateMapParticleEffect(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  store i8 1, ptr @gMapParticleEffect, align 4
  store i8 14, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 1), align 1
  store ptr @gMapParticleAlternateParameters, ptr getelementptr inbounds (%struct.MapParticleEffect, ptr @gMapParticleEffect, i32 0, i32 3), align 4
  tail call arm_apcscc void @InitializeMapParticleRenderSlots() #14
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeMapParticleRenderSlots() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @FaceMapChoiceSlot10Toward13(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %3 = add i32 %2, 255
  %4 = and i32 %3, 255
  %5 = getelementptr [0 x ptr], ptr @gMapChoiceFacingAnimations, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef %6) #14
  ret i32 0
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapChoiceSlots13And14F5DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143355863 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143355875 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SelectMapChoiceSlot13DirectionalAnimation() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 13, i8 noundef zeroext 10) #14
  %2 = trunc i32 %1 to i8
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 110), align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr [0 x ptr], ptr @gMapChoiceSecondaryAnimations, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = shl i32 %1, 2
  %9 = and i32 %8, 1020
  %10 = add nsw i32 %9, -4
  %11 = add i32 %10, %7
  %12 = inttoptr i32 %11 to ptr
  %13 = load ptr, ptr %12, align 4
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 13, i8 noundef zeroext %2, ptr noundef %13) #14
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13Animation6FBBAndFace() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143355835 to ptr)) #14
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %2 = add i32 %1, 255
  %3 = and i32 %2, 255
  %4 = getelementptr [0 x ptr], ptr @gMapChoiceFacingAnimations, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @CallMapChoiceSlot10Facing() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %2 = add i32 %1, 255
  %3 = and i32 %2, 255
  %4 = getelementptr [0 x ptr], ptr @gMapChoiceFacingAnimations, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef %5) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlots12And13F688() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143491948 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 12, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i32 143488877 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13IndicatorF6A8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143492422 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143492422 to ptr)) #14
  ret void
}

declare dso_local arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13IndicatorF6C8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143492523 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143492523 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlots10And13F6E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143311046 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143492643 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot14IndicatorF708() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 13, i8 noundef zeroext 2, ptr noundef nonnull @gMapChoiceAnimation86AD) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gMapChoiceAnimation86AD) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMapChoiceAnimation86C2) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 14, ptr noundef nonnull @gMapChoiceAnimation86C2) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot14F75C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143492071 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143355875 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13IndicatorF798() local_unnamed_addr #0 {
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 44), align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143487056 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143487056 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13IndicatorF7C4() local_unnamed_addr #0 {
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 44), align 2
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143487076 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143487076 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13IndicatorF7F8() local_unnamed_addr #0 {
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 44), align 2
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143487096 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143487096 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13IndicatorF82C() local_unnamed_addr #0 {
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 44), align 2
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43), align 2
  store i16 16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143487116 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143487116 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot14F860() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143492696 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlots14And15F890() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %2 = add i32 %1, 255
  %3 = and i32 %2, 255
  %4 = getelementptr [0 x ptr], ptr @gMapChoiceFacingAnimations, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef %5) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143492857 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143492878 to ptr)) #14
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 14, i8 noundef zeroext 1) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143492903 to ptr)) #14
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 15, i8 noundef zeroext 1) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13AnimationF908() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %2 = add i32 %1, 255
  %3 = and i32 %2, 255
  %4 = getelementptr [0 x ptr], ptr @gMapChoiceFacingAnimations, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef %5) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143492836 to ptr)) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapChoiceCallbackF920() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapChoiceCallbackF924() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapChoiceCallbackF928() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlots15And16F92C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143491948 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143491969 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19AnimationF968() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143476293 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16InlineIndicatorF97C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143491890 to ptr)) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143491890, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19InlineIndicatorF9A4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143476758 to ptr)) #14
  store i8 19, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143476758, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlots16And19InlineIndicatorF9CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143493350 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143477048 to ptr)) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143493350, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceLeaderAnimationFA00() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143316545 to ptr)) #14
  ret void
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceFollowerLinkedSlotFA18() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143355863 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143355875 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceFollowerAnimationFA68() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143354589 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceFlag16AnimationsFA80() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 20, ptr noundef nonnull inttoptr (i32 143435985 to ptr)) #14
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143329964 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143435985 to ptr)) #14
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i8, ptr @gRenderClassSlots1, align 1
  %7 = zext i8 %6 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %7, ptr noundef nonnull inttoptr (i32 143356481 to ptr)) #14
  br label %8

8:                                                ; preds = %5, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16IndicatorFAE0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436555 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143436555 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15FB00() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436145 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532268 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143436145 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlots15And17FB58() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436431 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436499 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436527 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143436431 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceOrderedSlots15And17FBD4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436638 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436706 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @RepositionRenderOrder(i32 noundef 15, i32 noundef 16, i32 noundef 0) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436729 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @RepositionRenderOrder(i32 noundef 17, i32 noundef 16, i32 noundef 0) #14
  ret void
}

declare dso_local arm_apcscc void @RepositionRenderOrder(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapChoiceSlots15And17Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60(i32 noundef 15, i32 noundef 0) #14
  tail call arm_apcscc void @SetRenderField60(i32 noundef 17, i32 noundef 0) #14
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceClassLinkedSlotsFC70() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143286780 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = add i8 %3, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %4, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 143532366 to ptr)) #14
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = add i8 %5, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %6, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %5) #14
  %7 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %0
  %10 = load i8, ptr @gRenderClassSlots1, align 1
  %11 = zext i8 %10 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %11, ptr noundef nonnull inttoptr (i32 143304255 to ptr)) #14
  %12 = load i8, ptr @gRenderClassSlots1, align 1
  %13 = add i8 %12, 1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %13, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull inttoptr (i32 143532366 to ptr)) #14
  %14 = load i8, ptr @gRenderClassSlots1, align 1
  %15 = add i8 %14, 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %14) #14
  br label %16

16:                                               ; preds = %9, %0
  %17 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %17, ptr noundef nonnull inttoptr (i32 143286780 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceFollowerOffsetFD34() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143347827 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -18, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143539944 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceFollowerOffsetFD8C() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143347855 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -24, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143540356 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %3) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot17AndClear29FDE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143396541 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143396650 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderField60(i32 noundef 29, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceRenderGroupFE28() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143397239 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528768) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143397350 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143397377 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @RepositionRenderOrder(i32 noundef 15, i32 noundef 16, i32 noundef 1) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143552458 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 29, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i32 143397344 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143397239 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16AnimationFED4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143397404 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16IndicatorFEE8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143397432 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143397432 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlots16And29FF08() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143398082 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 29, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i32 143398165 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16AnimationFF28() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143398171 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16IndicatorFF3C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143398207 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143398207 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceOffsetSlot17FF5C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143398171 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -20, i32 noundef -18, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143539944 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceClassAnimationsFFAC() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143287078 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots1, align 1
  %4 = zext i8 %3 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %4, ptr noundef nonnull inttoptr (i32 143304654 to ptr)) #14
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %5, ptr noundef nonnull inttoptr (i32 143287078 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapChoiceActorPresetsFFE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetSecondaryAnimationPreset14034() #14
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A3B0() #14
  ret void
}

declare dso_local arm_apcscc void @SetSecondaryAnimationPreset14034() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A3B0() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc noundef i32 @AnimationCallbackSetMapChoiceTargetVelocity(ptr nocapture noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 14712832, %5
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = sub i32 12091392, %8
  %10 = sdiv i32 %6, 48
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  store i32 %10, ptr %11, align 4
  %12 = sdiv i32 %9, 48
  %13 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  store i32 %12, ptr %13, align 4
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateMapChoiceClassHeights(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots0, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6
  tail call arm_apcscc void @UpdateMapChoiceRenderHeight(ptr noundef %7) #16
  %8 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr @gRenderSlots, align 4
  %12 = load i8, ptr @gRenderClassSlots1, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr %struct.RenderSlot, ptr %11, i32 %13
  tail call arm_apcscc void @UpdateMapChoiceRenderHeight(ptr noundef %14) #16
  br label %15

15:                                               ; preds = %10, %3
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateMapChoiceRenderHeight(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 161) #14
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 36), align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %4, %1
  %8 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 273) #14
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  br label %29

13:                                               ; preds = %7, %4
  %14 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, -8159232
  %17 = icmp ult i32 %16, 1572865
  br i1 %17, label %18, label %29

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %20, -8880128
  %22 = icmp ult i32 %21, 3670017
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = add nsw i32 %25, -131072
  %27 = icmp sgt i32 %25, -557056
  %28 = select i1 %27, i32 %26, i32 -557056
  store i32 %28, ptr %24, align 4
  br label %50

29:                                               ; preds = %10, %18, %13
  %30 = phi i32 [ %12, %10 ], [ %15, %18 ], [ %15, %13 ]
  %31 = add i32 %30, -4227072
  %32 = icmp ult i32 %31, 1835009
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -4227072
  %37 = icmp ult i32 %36, 3538945
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %40 = load i32, ptr %39, align 4
  %41 = add nsw i32 %40, -131072
  %42 = icmp sgt i32 %40, -557056
  %43 = select i1 %42, i32 %41, i32 -557056
  store i32 %43, ptr %39, align 4
  br label %50

44:                                               ; preds = %33, %29
  %45 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %46 = load i32, ptr %45, align 4
  %47 = add nsw i32 %46, 131072
  %48 = icmp slt i32 %46, 32768
  %49 = select i1 %48, i32 %47, i32 32768
  store i32 %49, ptr %45, align 4
  br label %50

50:                                               ; preds = %38, %44, %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @StepMapChoiceRenderHeightDown(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = add nsw i32 %3, -131072
  %5 = icmp sgt i32 %3, -557056
  %6 = select i1 %5, i32 %4, i32 -557056
  store i32 %6, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite)
define dso_local arm_apcscc void @StepMapChoiceRenderHeightUp(ptr nocapture noundef %0) local_unnamed_addr #6 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = add nsw i32 %3, 131072
  %5 = icmp slt i32 %3, 32768
  %6 = select i1 %5, i32 %4, i32 32768
  store i32 %6, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30140() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527674 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30154() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527702 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30168() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527730 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation3017C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527758 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30190() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527786 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation301A4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527814 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation301B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527842 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation301CC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527981 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation301E0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143528009 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation301F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143528037 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30208() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143528065 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation3021C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143528118 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30230() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143527108 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @StartMapChoiceSong23() local_unnamed_addr #0 {
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 23) #14
  ret void
}

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SelectMapChoiceSlot16AnimationBySlot10Z() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 10, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 5767167
  %5 = select i1 %4, ptr inttoptr (i32 143520811 to ptr), ptr inttoptr (i32 143520864 to ptr)
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull %5) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation3028C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143520811 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SelectMapChoiceSlot16Animation302A0() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 10, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 5767167
  %5 = select i1 %4, ptr inttoptr (i32 143520917 to ptr), ptr inttoptr (i32 143520970 to ptr)
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull %5) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation302DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143520917 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SelectMapChoiceSlot16Animation302F0() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 10, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = icmp sgt i32 %3, 5767167
  %5 = select i1 %4, ptr inttoptr (i32 143520476 to ptr), ptr inttoptr (i32 143520532 to ptr)
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull %5) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation3032C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143520476 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapChoiceSlot15AndSet16Animation30340() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143520476 to ptr)) #14
  ret void
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16InlineIndicator3035C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521373 to ptr)) #14
  store i8 16, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143521373, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30384() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143520917 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30398() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521490 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation303AC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521593 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation303C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521462 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation303D4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522009 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation303E8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522112 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation303FC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521696 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlots8And9() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143330464 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 8, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143330492 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 8, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143330523 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot8InlineIndicator30474() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 8, ptr noundef nonnull inttoptr (i32 143553198 to ptr)) #14
  store i8 8, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143553198, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15BeforeAnimation3049C() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143541133 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143521373 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15AfterAnimation304D8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143522308 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143522320 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SelectMapChoiceSlot13OppositeDirection30514() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %2 = trunc i32 %1 to i8
  switch i8 %2, label %7 [
    i8 1, label %3
    i8 2, label %4
    i8 3, label %5
    i8 4, label %6
  ]

3:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 13, i8 noundef zeroext 2, ptr noundef nonnull inttoptr (i32 143487136 to ptr)) #14
  br label %7

4:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 13, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i32 143487189 to ptr)) #14
  br label %7

5:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 13, i8 noundef zeroext 4, ptr noundef nonnull inttoptr (i32 143487295 to ptr)) #14
  br label %7

6:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 13, i8 noundef zeroext 3, ptr noundef nonnull inttoptr (i32 143487242 to ptr)) #14
  br label %7

7:                                                ; preds = %0, %6, %5, %4, %3
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13Animation30580() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143489079 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13InlineIndicator30594() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext 10, i8 noundef zeroext 13) #14
  %2 = add i32 %1, 255
  %3 = and i32 %2, 255
  %4 = getelementptr [0 x ptr], ptr @gMapChoiceFacingAnimations, i32 0, i32 %3
  %5 = load ptr, ptr %4, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef %5) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143489203 to ptr)) #14
  store i8 13, ptr @gTaskRenderSlotIndexFAC, align 1
  store i32 143489203, ptr @gTaskRenderAnimationWordF7C, align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13Animation305C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143489269 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot12AfterAnimation305D4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143488172 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143488877 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSaveMapChoicePosition(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %7
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %7, 1
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %11
  store i32 %13, ptr %14, align 4
  %15 = add nuw nsw i32 %7, 2
  %16 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %15
  store i32 %17, ptr %18, align 4
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreMapChoicePosition(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i32 %7, 1
  %12 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %11
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 4
  store i32 %13, ptr %14, align 4
  %15 = add nuw nsw i32 %7, 2
  %16 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %15
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  store i32 %17, ptr %18, align 4
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSkipMapChoiceFollowerRegion(ptr nocapture noundef readnone %0) local_unnamed_addr #7 {
  %2 = load i8, ptr @gRenderClassSlots1, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = mul nuw nsw i32 %3, 104
  %7 = add i32 %6, %5
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 6848512
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp slt i32 %14, 7372800
  br i1 %15, label %17, label %16

16:                                               ; preds = %12, %1
  br label %17

17:                                               ; preds = %12, %16
  %18 = phi i32 [ 0, %16 ], [ 5, %12 ]
  ret i32 %18
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackOrientMapChoicePairToSlot(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext 10, i8 noundef zeroext %2) #14
  %4 = trunc i32 %3 to i8
  store i8 %4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %5 = tail call arm_apcscc i32 @ScriptCallbackUpdateActorTurnControl(ptr noundef nonnull inttoptr (i32 33559844 to ptr)) #14
  %6 = load i8, ptr %0, align 1
  %7 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext 13, i8 noundef zeroext %6) #14
  %8 = trunc i32 %7 to i8
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 100), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 102), align 1
  %9 = tail call arm_apcscc i32 @ScriptCallbackUpdateActorTurnControl(ptr noundef nonnull inttoptr (i32 33559847 to ptr)) #14
  ret i32 1
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots8(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @ScriptCallbackUpdateActorTurnControl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMapChoiceSlot9Indicator(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60AndAnimation(i8 noundef zeroext 9, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i32 143553563 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 9, ptr noundef nonnull inttoptr (i32 143553563 to ptr)) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackJumpMapChoiceActiveAnimation(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i8, ptr %0, align 1
  %3 = getelementptr i8, ptr %0, i32 5
  %4 = load i8, ptr %3, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr i8, ptr %0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 8
  %10 = or disjoint i32 %9, %5
  %11 = getelementptr i8, ptr %0, i32 7
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = or disjoint i32 %10, %14
  %16 = getelementptr i8, ptr %0, i32 8
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = shl nuw i32 %18, 24
  %20 = or disjoint i32 %15, %19
  %21 = load ptr, ptr @gRenderSlots, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = zext i8 %2 to i32
  %24 = mul nuw nsw i32 %23, 104
  %25 = add i32 %24, %22
  %26 = inttoptr i32 %25 to ptr
  %27 = getelementptr inbounds %struct.RenderSlot, ptr %26, i32 0, i32 23
  %28 = load i8, ptr %27, align 4
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %1
  %31 = getelementptr i8, ptr %0, i32 4
  %32 = getelementptr i8, ptr %0, i32 2
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = shl nuw nsw i32 %34, 8
  %36 = getelementptr i8, ptr %0, i32 1
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or disjoint i32 %35, %38
  %40 = getelementptr i8, ptr %0, i32 3
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = shl nuw nsw i32 %42, 16
  %44 = or disjoint i32 %39, %43
  %45 = load i8, ptr %31, align 1
  %46 = zext i8 %45 to i32
  %47 = shl nuw i32 %46, 24
  %48 = or disjoint i32 %44, %47
  %49 = getelementptr inbounds %struct.RenderSlot, ptr %26, i32 0, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %52, label %54

52:                                               ; preds = %30
  %53 = inttoptr i32 %20 to ptr
  store ptr %53, ptr @gScriptCursor, align 4
  br label %54

54:                                               ; preds = %1, %30, %52
  %55 = phi i32 [ -4, %52 ], [ 9, %30 ], [ 9, %1 ]
  ret i32 %55
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoicePairIndicator30794() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143287375 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143305097 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143287375 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoicePairIndicator307C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143287755 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143305711 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143287755 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation307EC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143404770 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30800() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143404839 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30814() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143405567 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30828() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410227 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15AfterAnimation3083C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143407949 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143407977 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30878() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410305 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation3088C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410358 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation308A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410474 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation308B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410577 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation308C8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410825 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation308DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410878 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15Priority0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143410929 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143411072 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapChoiceSlot15AndSet16Animation30934() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143411116 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30950() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143411212 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30964() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143404818 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation30978() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143443683 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Indicator3098C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143444154 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143444154 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation309AC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143374415 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation309C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143376607 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15Indicator309D4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143376635 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143376746 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143376635 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15Indicator30A1C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143376796 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143531475 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143376796 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot15AfterAnimation30A64() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143377035 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143538442 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30AA0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143377115 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30AB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143377201 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30AC8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143377254 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30ADC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143377282 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30AF0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143377385 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Indicator30B04() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143377438 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143377438 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoicePairAnimations30B24() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143311156 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143343756 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedRenderGroup30B44() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143286207 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143303031 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143286207 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532062 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532109 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532126 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532173 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceLeaderAnimationAndFixedIndicator30C04() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143281744 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143281744 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot14Offset30C28() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143355863 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -18, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143539944 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13Animation30C78() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143354589 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot14WithSong70() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143356829 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528875) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -18, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143537103 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 70) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143356829 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13Indicator30CF0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143297317 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143297317 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13Animation30D10() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143347681 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13Animation30D24() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143354527 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot13Animation30D38() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143343618 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlots12And14_30D4C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143343618 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 12, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143343673 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143343687 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30DBC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436752 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot17_30DD0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436814 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528804) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436888 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30E1C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436944 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot17Offset30E30() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436956 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -18, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143539944 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlots15And17_30E80() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143436968 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528760) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436989 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143437014 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30EF0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143437039 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Indicator30F04() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143439085 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143439085 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceLinkedSlot17_30F24() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143437051 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143437063 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Indicator30F70() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143437077 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143437077 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Animation30F90() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143435201 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot32Animation30FA4() local_unnamed_addr #0 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 32, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143457258 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot16Indicator30FC8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 16, ptr noundef nonnull inttoptr (i32 143437191 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143437191 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot17Offset30FE8() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -24, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143540356 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RefreshMapChoiceLeaderField60Animation() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %2, i32 23
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = add i32 %7, add (i32 ptrtoint (ptr @gMapChoiceField60Animations to i32), i32 -4)
  %9 = inttoptr i32 %8 to ptr
  %10 = load ptr, ptr %9, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef %10) #14
  %11 = load i8, ptr @gRenderClassSlots0, align 1
  %12 = zext i8 %11 to i32
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %13, i32 %12, i32 23
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 2
  %18 = add i32 %17, add (i32 ptrtoint (ptr @gMapChoiceField60Animations to i32), i32 -4)
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 4
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %11, ptr noundef %20) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceClassPairIndicator31088() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143286953 to ptr)) #14
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i8, ptr @gRenderClassSlots1, align 1
  %7 = zext i8 %6 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %7, ptr noundef nonnull inttoptr (i32 143304538 to ptr)) #14
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %9, ptr noundef nonnull inttoptr (i32 143286953 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceClassPairIndicator310C8() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143288161 to ptr)) #14
  %3 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #14
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %0
  %6 = load i8, ptr @gRenderClassSlots1, align 1
  %7 = zext i8 %6 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %7, ptr noundef nonnull inttoptr (i32 143305903 to ptr)) #14
  br label %8

8:                                                ; preds = %5, %0
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %9, ptr noundef nonnull inttoptr (i32 143288161 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapChoiceSlots15And17Field6031108() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60(i32 noundef 15, i32 noundef 0) #14
  tail call arm_apcscc void @SetRenderField60(i32 noundef 17, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackUpdateMapChoiceFollowerPhase(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = load i8, ptr @gMapChoiceFollowerPhase, align 1
  switch i8 %4, label %41 [
    i8 0, label %5
    i8 1, label %25
  ]

5:                                                ; preds = %3
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %6, i32 13, i32 1
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %9 [
    i32 143356696, label %11
    i32 143347774, label %11
  ]

9:                                                ; preds = %5
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143347774 to ptr)) #14
  %10 = load ptr, ptr @gRenderSlots, align 4
  br label %11

11:                                               ; preds = %5, %5, %9
  %12 = phi ptr [ %6, %5 ], [ %6, %5 ], [ %10, %9 ]
  %13 = load i8, ptr @gRenderClassSlots0, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.RenderSlot, ptr %12, i32 %14, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, -6848512
  %18 = icmp ult i32 %17, 6291457
  br i1 %18, label %19, label %41

19:                                               ; preds = %11
  %20 = getelementptr %struct.RenderSlot, ptr %12, i32 %14, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, -7831552
  %23 = icmp ult i32 %22, 589825
  br i1 %23, label %24, label %41

24:                                               ; preds = %19
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143355863 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528796) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 33, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef -18, i32 noundef -20, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143539944 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 33, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  br label %39

25:                                               ; preds = %3
  %26 = load ptr, ptr @gRenderSlots, align 4
  %27 = load i8, ptr @gRenderClassSlots0, align 1
  %28 = zext i8 %27 to i32
  %29 = getelementptr %struct.RenderSlot, ptr %26, i32 %28, i32 3
  %30 = load i32, ptr %29, align 4
  %31 = add i32 %30, -6848512
  %32 = icmp ult i32 %31, 6291457
  br i1 %32, label %33, label %38

33:                                               ; preds = %25
  %34 = getelementptr %struct.RenderSlot, ptr %26, i32 %28, i32 5
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, -7831552
  %37 = icmp ult i32 %36, 589825
  br i1 %37, label %41, label %38

38:                                               ; preds = %25, %33
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 13, ptr noundef nonnull inttoptr (i32 143356696 to ptr)) #14
  br label %39

39:                                               ; preds = %24, %38
  %40 = phi i8 [ 0, %38 ], [ 1, %24 ]
  store i8 %40, ptr @gMapChoiceFollowerPhase, align 1
  br label %41

41:                                               ; preds = %39, %19, %11, %33, %3
  store i32 1, ptr %2, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @IsMapChoiceLeaderInFollowerRegion() local_unnamed_addr #7 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -6848512
  %7 = icmp ult i32 %6, 6291457
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -7831552
  %12 = icmp ult i32 %11, 589825
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %0
  br label %14

14:                                               ; preds = %8, %13
  %15 = phi i32 [ 0, %13 ], [ 1, %8 ]
  ret i32 %15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreMapChoiceLeaderClassPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 17), align 1
  %6 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 23
  store i8 %5, ptr %6, align 4
  %7 = load i8, ptr %0, align 1
  %8 = icmp eq i8 %7, 0
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %10 = select i1 %8, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 16)
  %11 = select i1 %8, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 17), ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34)
  %12 = load i16, ptr %10, align 2
  %13 = zext i16 %12 to i32
  %14 = shl nuw i32 %13, 16
  %15 = or disjoint i32 %14, 32768
  store i32 %15, ptr %9, align 4
  %16 = load i16, ptr %11, align 2
  %17 = zext i16 %16 to i32
  %18 = shl nuw i32 %17, 16
  %19 = or disjoint i32 %18, 32768
  %20 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  store i32 %19, ptr %20, align 4
  ret i32 1
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMapChoiceInputMotion(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 240, i8 noundef zeroext 0) #14
  %6 = zext i16 %5 to i32
  %7 = and i32 %6, 192
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = and i32 %6, 128
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = and i32 %6, 64
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %9, %1
  %16 = phi i32 [ 0, %1 ], [ 32768, %9 ], [ -32768, %12 ]
  %17 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 2
  store i32 %16, ptr %17, align 4
  br label %18

18:                                               ; preds = %15, %12
  %19 = and i32 %6, 48
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load ptr, ptr @gRenderSlots, align 4
  %23 = load i8, ptr @gRenderClassSlots0, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr %struct.RenderSlot, ptr %22, i32 %24, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = sub i32 0, %26
  store i32 %29, ptr %25, align 4
  br label %30

30:                                               ; preds = %21, %28
  %31 = phi i32 [ %29, %28 ], [ %26, %21 ]
  %32 = phi i32 [ -1, %28 ], [ 1, %21 ]
  %33 = add i32 %31, -2048
  %34 = tail call i32 @llvm.smax.i32(i32 %33, i32 0)
  %35 = mul nsw i32 %34, %32
  store i32 %35, ptr %25, align 4
  br label %52

36:                                               ; preds = %18
  %37 = and i32 %6, 32
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %36
  %40 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, -2048
  %43 = tail call i32 @llvm.smax.i32(i32 %42, i32 -65536)
  store i32 %43, ptr %40, align 4
  br label %52

44:                                               ; preds = %36
  %45 = and i32 %6, 16
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %44
  %48 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, 2048
  %51 = tail call i32 @llvm.smin.i32(i32 %50, i32 98304)
  store i32 %51, ptr %48, align 4
  br label %52

52:                                               ; preds = %47, %39, %44, %30
  %53 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  %54 = load i32, ptr %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 42), align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = lshr i32 %54, 11
  %61 = mul i32 %60, 3014656
  %62 = ashr exact i32 %61, 16
  tail call arm_apcscc void @SetAudioTrackPitch(ptr noundef nonnull @gAudioPlayerContext4E90, i16 noundef zeroext 3, i32 noundef %62) #14
  tail call arm_apcscc void @SetAudioTrackVolume(ptr noundef nonnull @gAudioPlayerContext4E90, i32 noundef 3, i32 noundef 255) #14
  tail call arm_apcscc void @StartSongOrChange(i16 noundef zeroext 27) #14
  br label %69

63:                                               ; preds = %56
  tail call arm_apcscc void @SetAudioTrackPitch(ptr noundef nonnull @gAudioPlayerContext4E90, i16 noundef zeroext 3, i32 noundef 0) #14
  br label %69

64:                                               ; preds = %52
  tail call arm_apcscc void @StopSong(i16 noundef zeroext 27) #14
  %65 = load i32, ptr %53, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call arm_apcscc void @SetMapChoiceReverseMotionAnimations() #16
  br label %69

68:                                               ; preds = %64
  tail call arm_apcscc void @SetMapChoiceIdleMotionAnimations() #16
  br label %69

69:                                               ; preds = %67, %68, %59, %63
  ret i32 0
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @SlowMapChoiceLeaderHorizontalVelocity() local_unnamed_addr #3 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = load i8, ptr @gRenderClassSlots0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr %struct.RenderSlot, ptr %1, i32 %3, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = sub i32 0, %5
  store i32 %8, ptr %4, align 4
  br label %9

9:                                                ; preds = %7, %0
  %10 = phi i32 [ %8, %7 ], [ %5, %0 ]
  %11 = phi i32 [ -1, %7 ], [ 1, %0 ]
  %12 = add i32 %10, -2048
  %13 = tail call i32 @llvm.smax.i32(i32 %12, i32 0)
  %14 = mul nsw i32 %13, %11
  store i32 %14, ptr %4, align 4
  ret void
}

declare dso_local arm_apcscc void @SetAudioTrackPitch(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetAudioTrackVolume(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @StartSongOrChange(i16 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @StopSong(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceReverseMotionAnimations() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 29, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 143554696
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 29, ptr noundef nonnull inttoptr (i32 143554696 to ptr)) #14
  %6 = load ptr, ptr @gRenderSlots, align 4
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi ptr [ %6, %5 ], [ %1, %0 ]
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 143313720
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %10, ptr noundef nonnull inttoptr (i32 143313720 to ptr)) #14
  %15 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr @gRenderClassSlots1, align 1
  %19 = zext i8 %18 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %19, ptr noundef nonnull inttoptr (i32 143347746 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 13, i32 noundef -20, i32 noundef 0, i32 noundef 0) #14
  br label %20

20:                                               ; preds = %14, %17, %7
  %21 = load i8, ptr @gMapChoiceGraphicsToggle, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 12, i8 noundef zeroext 1, i32 noundef 143554555) #14
  store i8 1, ptr @gMapChoiceGraphicsToggle, align 1
  br label %24

24:                                               ; preds = %20, %23
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceIdleMotionAnimations() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 29, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 143554688
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 29, ptr noundef nonnull inttoptr (i32 143554688 to ptr)) #14
  %6 = load ptr, ptr @gRenderSlots, align 4
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi ptr [ %6, %5 ], [ %1, %0 ]
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 143314324
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %10, ptr noundef nonnull inttoptr (i32 143314324 to ptr)) #14
  %15 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr @gRenderClassSlots1, align 1
  %19 = zext i8 %18 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %19, ptr noundef nonnull inttoptr (i32 143347994 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 13, i32 noundef -20, i32 noundef -1, i32 noundef 1) #14
  br label %20

20:                                               ; preds = %14, %17, %7
  %21 = load i8, ptr @gMapChoiceGraphicsToggle, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 12, i8 noundef zeroext 1, i32 noundef 143554438) #14
  store i8 0, ptr @gMapChoiceGraphicsToggle, align 1
  br label %24

24:                                               ; preds = %20, %23
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConstrainMapChoiceMotion(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = icmp slt i32 %14, 7897088
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = icmp ugt i32 %14, 9994240
  br i1 %17, label %18, label %20

18:                                               ; preds = %16, %1
  %19 = phi i32 [ 7897088, %1 ], [ 9994240, %16 ]
  store i32 %19, ptr %10, align 4
  store i32 0, ptr %12, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = icmp slt i32 %14, 8617984
  %22 = select i1 %21, i32 4620287, i32 3964927
  %23 = icmp sgt i32 %9, %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  store i32 0, ptr %7, align 4
  store i32 0, ptr %12, align 4
  br label %28

25:                                               ; preds = %20
  %26 = icmp sgt i32 %8, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %25
  tail call arm_apcscc void @SetMapChoiceForwardMotionAnimations() #16
  br label %28

28:                                               ; preds = %24, %27, %25
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceForwardMotionAnimations() local_unnamed_addr #0 {
  %1 = load ptr, ptr @gRenderSlots, align 4
  %2 = getelementptr %struct.RenderSlot, ptr %1, i32 29, i32 1
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 143554688
  br i1 %4, label %7, label %5

5:                                                ; preds = %0
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 29, ptr noundef nonnull inttoptr (i32 143554688 to ptr)) #14
  %6 = load ptr, ptr @gRenderSlots, align 4
  br label %7

7:                                                ; preds = %5, %0
  %8 = phi ptr [ %6, %5 ], [ %1, %0 ]
  %9 = load i8, ptr @gRenderClassSlots0, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %8, i32 %10, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 143313667
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %10, ptr noundef nonnull inttoptr (i32 143313667 to ptr)) #14
  %15 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 16) #14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8, ptr @gRenderClassSlots1, align 1
  %19 = zext i8 %18 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %19, ptr noundef nonnull inttoptr (i32 143347693 to ptr)) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 23, i8 noundef zeroext 1) #14
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 13, i32 noundef -20, i32 noundef 0, i32 noundef 0) #14
  br label %20

20:                                               ; preds = %14, %17, %7
  %21 = load i8, ptr @gMapChoiceGraphicsToggle, align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 12, i8 noundef zeroext 1, i32 noundef 143554555) #14
  store i8 1, ptr @gMapChoiceGraphicsToggle, align 1
  br label %24

24:                                               ; preds = %20, %23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClassifyMapChoiceLeaderRegion(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  store i16 0, ptr @gScriptResult, align 2
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 7897089
  %8 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %9 = load i32, ptr %8, align 4
  br i1 %7, label %10, label %13

10:                                               ; preds = %1
  %11 = add i32 %9, -13664256
  %12 = icmp ult i32 %11, 2621441
  br i1 %12, label %20, label %18

13:                                               ; preds = %1
  %14 = icmp ugt i32 %6, 9994239
  %15 = add i32 %9, -3964928
  %16 = icmp ult i32 %15, 1310721
  %17 = select i1 %14, i1 %16, i1 false
  br i1 %17, label %20, label %18

18:                                               ; preds = %13, %10
  %19 = icmp sgt i32 %9, 17334271
  br i1 %19, label %20, label %22

20:                                               ; preds = %18, %13, %10
  %21 = phi i16 [ 1, %10 ], [ 2, %13 ], [ 3, %18 ]
  store i16 %21, ptr @gScriptResult, align 2
  br label %22

22:                                               ; preds = %20, %18
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackApproachMapChoiceLeaderPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = load i8, ptr %0, align 1
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 16
  %8 = getelementptr i8, ptr %0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl nuw i32 %10, 24
  %12 = or disjoint i32 %7, %11
  %13 = or disjoint i32 %12, 32768
  %14 = getelementptr i8, ptr %0, i32 2
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = getelementptr i8, ptr %0, i32 3
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 %20, 24
  %22 = or disjoint i32 %17, %21
  %23 = or disjoint i32 %22, 32768
  %24 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %23
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, %13
  br i1 %30, label %53, label %41

31:                                               ; preds = %1
  %32 = sub i32 %23, %25
  %33 = tail call i32 @llvm.abs.i32(i32 %32, i1 false)
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 32768)
  %35 = sub i32 0, %34
  %36 = icmp slt i32 %32, 0
  %37 = select i1 %36, i32 %35, i32 %34
  %38 = add i32 %37, %25
  store i32 %38, ptr %24, align 4
  %39 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %40 = load i32, ptr %39, align 4
  br label %41

41:                                               ; preds = %27, %31
  %42 = phi i32 [ %29, %27 ], [ %40, %31 ]
  %43 = icmp eq i32 %42, %13
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = sub i32 %13, %42
  %46 = tail call i32 @llvm.abs.i32(i32 %45, i1 false)
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 32768)
  %48 = sub i32 0, %47
  %49 = icmp slt i32 %45, 0
  %50 = select i1 %49, i32 %48, i32 %47
  %51 = add i32 %50, %42
  %52 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  store i32 %51, ptr %52, align 4
  br label %53

53:                                               ; preds = %41, %44, %27
  %54 = phi i16 [ 1, %27 ], [ 0, %44 ], [ 0, %41 ]
  store i16 %54, ptr @gScriptResult, align 2
  ret i32 4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStoreMapChoiceMotionActive(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, %6
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, ptr @gMapParticleEffect, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @EnableMapChoiceMotionGraphics() local_unnamed_addr #0 {
  %1 = load i8, ptr @gMapChoiceGraphicsToggle, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %3, label %4

3:                                                ; preds = %0
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 12, i8 noundef zeroext 1, i32 noundef 143554555) #14
  store i8 1, ptr @gMapChoiceGraphicsToggle, align 1
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @DisableMapChoiceMotionGraphics() local_unnamed_addr #0 {
  %1 = load i8, ptr @gMapChoiceGraphicsToggle, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 12, i8 noundef zeroext 1, i32 noundef 143554438) #14
  store i8 0, ptr @gMapChoiceGraphicsToggle, align 1
  br label %4

4:                                                ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation3178C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478681 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation317A0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143477907 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation317B4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478068 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation317C8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478600 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation317DC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478157 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureMapChoiceSlot20Offset317F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478040 to ptr)) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef -28, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143540395 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @RefreshMapChoiceLeaderField60Animation31840() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %2, i32 23
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = shl nuw nsw i32 %6, 2
  %8 = add i32 %7, add (i32 ptrtoint (ptr @gMapChoiceField60Animations to i32), i32 -4)
  %9 = inttoptr i32 %8 to ptr
  %10 = load ptr, ptr %9, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef %10) #14
  %11 = load i8, ptr @gRenderClassSlots0, align 1
  %12 = zext i8 %11 to i32
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %13, i32 %12, i32 23
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i32
  %17 = shl nuw nsw i32 %16, 2
  %18 = add i32 %17, add (i32 ptrtoint (ptr @gMapChoiceField60Animations to i32), i32 -4)
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 4
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %11, ptr noundef %20) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation3189C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143476967 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation318B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143476265 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Indicator318C4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478096 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143478096 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceLeaderIndicator318E4() local_unnamed_addr #0 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %2, ptr noundef nonnull inttoptr (i32 143288332 to ptr)) #14
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext %3, ptr noundef nonnull inttoptr (i32 143288332 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation31908() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478653 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation3191C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478213 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation31930() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143476905 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation31944() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478185 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetMapChoiceSlot19Animation31958() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 19, ptr noundef nonnull inttoptr (i32 143478241 to ptr)) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConstrainMapChoiceZ3196C(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  %8 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %6
  %11 = icmp slt i32 %10, 7897088
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = icmp ugt i32 %10, 9994240
  br i1 %13, label %14, label %16

14:                                               ; preds = %12, %1
  %15 = phi i32 [ 7897088, %1 ], [ 9994240, %12 ]
  store i32 %15, ptr %5, align 4
  store i32 0, ptr %8, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load i32, ptr %7, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  tail call arm_apcscc void @SetMapChoiceForwardMotionAnimations() #16
  br label %20

20:                                               ; preds = %19, %16
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClassifyMapChoiceRegion319B8(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  store i16 0, ptr @gScriptResult, align 2
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp sgt i32 %6, 9994239
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -4227072
  %12 = icmp ult i32 %11, 3145729
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i16 1, ptr @gScriptResult, align 2
  br label %14

14:                                               ; preds = %13, %8, %1
  %15 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 2129921
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = icmp ugt i32 %16, 17334271
  br i1 %19, label %20, label %22

20:                                               ; preds = %18, %14
  %21 = phi i16 [ 2, %14 ], [ 3, %18 ]
  store i16 %21, ptr @gScriptResult, align 2
  br label %22

22:                                               ; preds = %20, %18
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConstrainMapChoiceUpperX31A20(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 6, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, %11
  %15 = icmp slt i32 %14, 7897088
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = icmp ugt i32 %14, 9994240
  br i1 %17, label %18, label %20

18:                                               ; preds = %16, %1
  %19 = phi i32 [ 7897088, %1 ], [ 9994240, %16 ]
  store i32 %19, ptr %10, align 4
  store i32 0, ptr %12, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = icmp sgt i32 %9, 9797631
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  store i32 9797632, ptr %5, align 4
  store i32 0, ptr %7, align 4
  tail call arm_apcscc void @SetMapChoiceIdleMotionAnimations() #16
  br label %26

23:                                               ; preds = %20
  %24 = icmp sgt i32 %8, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %23
  tail call arm_apcscc void @SetMapChoiceForwardMotionAnimations() #16
  br label %26

26:                                               ; preds = %23, %25, %22
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClassifyMapChoiceRegion31A8C(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  store i16 0, ptr @gScriptResult, align 2
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 7897089
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, -5799936
  %12 = icmp ult i32 %11, 3670017
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  store i16 1, ptr @gScriptResult, align 2
  br label %14

14:                                               ; preds = %13, %8, %1
  %15 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp slt i32 %16, 2129921
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i16 2, ptr @gScriptResult, align 2
  br label %19

19:                                               ; preds = %18, %14
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @BuildMapChoiceHorizontalRoute() local_unnamed_addr #8 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = getelementptr %struct.RenderSlot, ptr %3, i32 %2, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, -65536
  %7 = load i8, ptr @gRenderClassSlots1, align 1
  %8 = zext i8 %7 to i32
  %9 = getelementptr %struct.RenderSlot, ptr %3, i32 %8, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, -65536
  %12 = sub i32 %6, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %0
  store i8 0, ptr @gFollowerRouteEndIndex, align 1
  br label %31

15:                                               ; preds = %0, %15
  %16 = phi i32 [ %24, %15 ], [ 0, %0 ]
  %17 = phi i32 [ %22, %15 ], [ %12, %0 ]
  %18 = phi ptr [ %23, %15 ], [ @gFollowerRoutePoints, %0 ]
  %19 = icmp sgt i32 %17, 0
  %20 = select i1 %19, i32 -524288, i32 524288
  %21 = select i1 %19, i8 4, i8 3
  %22 = add nsw i32 %17, %20
  store i8 %21, ptr %18, align 1
  %23 = getelementptr i8, ptr %18, i32 1
  %24 = add nuw nsw i32 %16, 1
  %25 = icmp ugt i32 %16, 14
  %26 = icmp eq i32 %22, 0
  %27 = select i1 %25, i1 true, i1 %26
  br i1 %27, label %28, label %15

28:                                               ; preds = %15
  %29 = trunc i32 %24 to i8
  store i8 %29, ptr @gFollowerRouteEndIndex, align 1
  %30 = icmp ult i32 %16, 15
  br i1 %30, label %31, label %38

31:                                               ; preds = %14, %28
  %32 = phi i32 [ %24, %28 ], [ 0, %14 ]
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i32 [ %36, %33 ], [ %32, %31 ]
  %35 = getelementptr i8, ptr @gFollowerRoutePoints, i32 %34
  store i8 0, ptr %35, align 1
  %36 = add nuw nsw i32 %34, 1
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %33

38:                                               ; preds = %33, %28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackStopMapChoiceFollowerX(ptr nocapture noundef readnone %0) local_unnamed_addr #9 {
  %2 = load i8, ptr @gRenderClassSlots1, align 1
  %3 = zext i8 %2 to i32
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = mul nuw nsw i32 %3, 104
  %7 = add i32 %6, %5
  %8 = inttoptr i32 %7 to ptr
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %8, i32 0, i32 6
  store i32 0, ptr %9, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @StoreMapChoiceEqualX() local_unnamed_addr #4 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = mul nuw nsw i32 %2, 104
  %6 = add i32 %5, %4
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr @gRenderClassSlots1, align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 104
  %11 = add i32 %10, %4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %14, %16
  %18 = zext i1 %17 to i8
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @StoreMapChoiceXDistance32() local_unnamed_addr #4 {
  %1 = load i8, ptr @gRenderClassSlots0, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = mul nuw nsw i32 %2, 104
  %6 = add i32 %5, %4
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr @gRenderClassSlots1, align 1
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 104
  %11 = add i32 %10, %4
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = sub i32 %14, %16
  %18 = tail call i32 @llvm.abs.i32(i32 %17, i1 false)
  %19 = icmp sgt i32 %18, 2097151
  %20 = zext i1 %19 to i8
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackLatchMapChoiceXUpperBoundary(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %20

4:                                                ; preds = %1
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 425), align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, ptr @gRenderClassSlots0, align 1
  %8 = zext i8 %7 to i32
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = mul nuw nsw i32 %8, 104
  %12 = add i32 %11, %10
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr i8, ptr %13, i32 26
  %15 = load i16, ptr %14, align 2
  %16 = sext i16 %15 to i32
  %17 = shl nuw nsw i32 %6, 3
  %18 = add nuw nsw i32 %17, 80
  %19 = icmp sgt i32 %18, %16
  br i1 %19, label %32, label %31

20:                                               ; preds = %1
  %21 = load i8, ptr @gRenderClassSlots0, align 1
  %22 = zext i8 %21 to i32
  %23 = load ptr, ptr @gRenderSlots, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = mul nuw nsw i32 %22, 104
  %26 = add i32 %25, %24
  %27 = inttoptr i32 %26 to ptr
  %28 = getelementptr i8, ptr %27, i32 26
  %29 = load i16, ptr %28, align 2
  %30 = icmp sgt i16 %29, 191
  br i1 %30, label %31, label %32

31:                                               ; preds = %20, %4
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %32

32:                                               ; preds = %31, %20, %4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackLatchMapChoiceXLowerBoundary(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %3 = icmp eq i8 %2, 0
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  %5 = zext i8 %4 to i32
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = mul nuw nsw i32 %5, 104
  %9 = add i32 %8, %7
  %10 = inttoptr i32 %9 to ptr
  %11 = getelementptr i8, ptr %10, i32 26
  %12 = load i16, ptr %11, align 2
  br i1 %3, label %13, label %20

13:                                               ; preds = %1
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 425), align 1
  %15 = zext i8 %14 to i32
  %16 = sext i16 %12 to i32
  %17 = shl nuw nsw i32 %15, 3
  %18 = sub nsw i32 200, %17
  %19 = icmp slt i32 %18, %16
  br i1 %19, label %28, label %27

20:                                               ; preds = %1
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 123), align 1
  %22 = icmp eq i8 %21, 1
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = icmp slt i16 %12, 89
  br i1 %24, label %27, label %28

25:                                               ; preds = %20
  %26 = icmp slt i16 %12, 121
  br i1 %26, label %27, label %28

27:                                               ; preds = %25, %23, %13
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %28

28:                                               ; preds = %27, %23, %25, %13
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSnapMapChoiceLanePositions(ptr nocapture noundef readnone %0) local_unnamed_addr #9 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 425), align 1
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = zext i8 %2 to i32
  %6 = load i8, ptr @gRenderClassSlots0, align 1
  %7 = zext i8 %6 to i32
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %8, i32 %7, i32 4
  store i32 0, ptr %9, align 4
  %10 = mul nsw i32 %5, -1572864
  %11 = add nsw i32 %10, 9994240
  %12 = load i8, ptr @gRenderClassSlots0, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr %struct.RenderSlot, ptr %8, i32 %13, i32 5
  store i32 %11, ptr %14, align 4
  br label %15

15:                                               ; preds = %4, %1
  %16 = load i8, ptr @gRenderClassSlots1, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i8 %16, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  %20 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 426), align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = zext i8 %20 to i32
  %24 = load ptr, ptr @gRenderSlots, align 4
  %25 = getelementptr %struct.RenderSlot, ptr %24, i32 %17, i32 4
  store i32 0, ptr %25, align 4
  %26 = mul nsw i32 %23, -1572864
  %27 = add nsw i32 %26, 9994240
  br label %31

28:                                               ; preds = %19
  %29 = load ptr, ptr @gRenderSlots, align 4
  %30 = getelementptr %struct.RenderSlot, ptr %29, i32 %17, i32 4
  store i32 0, ptr %30, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi ptr [ %24, %22 ], [ %29, %28 ]
  %33 = phi i32 [ %27, %22 ], [ 9994240, %28 ]
  %34 = load i8, ptr @gRenderClassSlots1, align 1
  %35 = zext i8 %34 to i32
  %36 = getelementptr %struct.RenderSlot, ptr %32, i32 %35, i32 5
  store i32 %33, ptr %36, align 4
  br label %37

37:                                               ; preds = %31, %15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackToggleMapChoiceRaisedPosition(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = load ptr, ptr @gRenderSlots, align 4
  %7 = icmp eq i8 %5, 0
  %8 = getelementptr %struct.RenderSlot, ptr %6, i32 %3, i32 4
  %9 = getelementptr %struct.RenderSlot, ptr %6, i32 %3, i32 5
  %10 = select i1 %7, i32 0, i32 1081344
  %11 = select i1 %7, i32 1081344, i32 -1081344
  store i32 %10, ptr %8, align 4
  %12 = load i32, ptr %9, align 4
  %13 = add i32 %12, %11
  store i32 %13, ptr %9, align 4
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @SetMapChoiceFollowerZ988000() local_unnamed_addr #9 {
  %1 = load i8, ptr @gRenderClassSlots1, align 1
  %2 = zext i8 %1 to i32
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = mul nuw nsw i32 %2, 104
  %6 = add i32 %5, %4
  %7 = inttoptr i32 %6 to ptr
  %8 = getelementptr inbounds %struct.RenderSlot, ptr %7, i32 0, i32 5
  store i32 9994240, ptr %8, align 4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapChoiceSlots15And17Field6031E60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapChoiceSlots18And20Field60() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ClearMapChoiceFourLinkedSlotFields() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @StartMapChoiceRelativeMotion31EA0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143281351 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143296837 to ptr)) #14
  store i8 13, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  store i8 10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  store i8 32, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %1 = tail call arm_apcscc i32 @ScriptCallbackSetSlotRelativePlanarVelocity(ptr noundef null) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143296837 to ptr)) #14
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScriptCallbackSetSlotRelativePlanarVelocity(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapChoicePairIndicator31EEC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143289446 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143307417 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143289446 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapChoiceLinkedPair31F18() local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528752) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143287581 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull inttoptr (i32 143305300 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 11, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532553 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 11, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 10) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532553 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 14, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 13) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 10, ptr noundef nonnull inttoptr (i32 143287581 to ptr)) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc void @EmptyMapChoiceCallback31F9C() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ConfigureMapChoiceSlot15_31FA0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441426 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @SetMapChoiceSlots16And19_31FE4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143448891 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143448891 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32008() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441426 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMapChoiceAuxAnimation88CB755) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439689 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3207C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143439085 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439243 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143439085 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset320AC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143439724 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset320C4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143440537 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440601 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143440537 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset320F4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441642 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3210C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445762 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143445783 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32150() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143451934 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143447318 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143451934 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32180() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef 143528768) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143440665 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529721 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440776 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143529721 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143440665 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32208() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143438879 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143435952 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3222C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143448891 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32244() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439724 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3225C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441663 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439758 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441663 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3228C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441376 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143441404 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143438561 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143438601 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32300() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88CB749) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439689 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32370() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441743 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440022 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32394() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull @gActorPresetResource88CB8BE) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440062 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset323B8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 22, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441783 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440083 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441783 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset323F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143440271 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143440292 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143440334 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143435449 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32464() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440376 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143440450 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143440495 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143435421 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset324D8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143439689 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445504 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32528() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143445532 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445553 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3254C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441642 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445574 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32570() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143435201 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445762 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143445783 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset325C0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143445602 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445682 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset325E4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143439689 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMapChoiceAuxAnimation88CB755) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445504 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439701 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32658() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143445833 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445845 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3267C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440376 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143440292 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143440334 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143435421 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset326F0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143440271 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143440450 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143440495 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 17, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143435449 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32764() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143436867 to ptr)) #14
  tail call arm_apcscc void @ConfigureRenderSetupPreset19A0C() #14
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19A0C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32780() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143443830 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32798() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143451904 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143451904 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset327BC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439569 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439622 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439667 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32824() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143443830 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3283C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143445394 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143445481 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3287C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143440062 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440022 to ptr)) #14
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 19, i32 noundef 256, i32 noundef 0, i32 noundef 152) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset328B0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441454 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143438674 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143438811 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143438674 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset3290C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143438879 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143439569 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439622 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143439667 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 19, i32 noundef 256, i32 noundef 0, i32 noundef 152) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32990() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143435952 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset329A8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143444737 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143444950 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143444737 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset329D8() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441743 to ptr)) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143436678 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436706 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 18, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143436729 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 20, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 19) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32A4C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143445330 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143445351 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143435349 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32A9C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143441642 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32AB4() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143440062 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32ACC() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143439088 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143439088 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32AF0() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143441190 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143441190 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32B14() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441110 to ptr)) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143441110 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32B38() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 17, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143442093 to ptr)) #14
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull inttoptr (i32 143532553 to ptr)) #14
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 15, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext 16) #14
  tail call arm_apcscc void @SetTaskRenderIndicator(i8 noundef zeroext 16, ptr noundef nonnull inttoptr (i32 143442093 to ptr)) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32B88() local_unnamed_addr #5 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ApplyMapChoicePreset32B8C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 18, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 20, i8 noundef zeroext 0) #14
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 19, ptr noundef nonnull inttoptr (i32 143448891 to ptr)) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackFaceMapChoiceControlSlot32BA4(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 18), align 1
  %3 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %2, i8 noundef zeroext 10) #14
  %4 = shl i32 %3, 2
  %5 = and i32 %4, 1020
  %6 = add i32 %5, add (i32 ptrtoint (ptr @gMapChoiceSlotAnimations to i32), i32 -4)
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %2, ptr noundef %8) #14
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMapChoiceClassPair32BD4(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 37), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %4 = add i16 %3, -9
  %5 = icmp ult i16 %4, 14
  %6 = tail call i16 @llvm.smin.i16(i16 %2, i16 25)
  %7 = select i1 %5, i16 %6, i16 %2
  %8 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %9 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %10 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 38), align 2
  %11 = zext i16 %10 to i32
  %12 = trunc i16 %10 to i8
  %13 = shl i16 %8, 3
  %14 = sext i16 %13 to i32
  %15 = shl i16 %9, 3
  %16 = sext i16 %15 to i32
  %17 = shl nuw nsw i32 %11, 2
  %18 = add i32 %17, add (i32 ptrtoint (ptr @gMapChoiceSlotAnimations to i32), i32 -4)
  %19 = inttoptr i32 %18 to ptr
  %20 = load ptr, ptr %19, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext %12, i8 noundef zeroext 114, i32 noundef %14, i32 noundef 0, i32 noundef %16, ptr noundef %20) #14
  %21 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 39), align 2
  %22 = zext i16 %21 to i32
  %23 = trunc i16 %21 to i8
  %24 = shl i16 %3, 3
  %25 = sext i16 %24 to i32
  %26 = shl i16 %7, 3
  %27 = sext i16 %26 to i32
  %28 = shl nuw nsw i32 %22, 2
  %29 = add i32 %28, add (i32 ptrtoint (ptr @gMapChoiceSlotAnimations to i32), i32 -4)
  %30 = inttoptr i32 %29 to ptr
  %31 = load ptr, ptr %30, align 4
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext %23, i8 noundef zeroext 114, i32 noundef %25, i32 noundef 0, i32 noundef %27, ptr noundef %31) #14
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read)
define dso_local arm_apcscc noundef i32 @IsMapChoiceProspectiveSlotRegion(ptr nocapture noundef readonly %0) local_unnamed_addr #10 {
  %2 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 6
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = getelementptr inbounds %struct.RenderSlot, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %0, i32 0, i32 6, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = add i32 %10, %8
  %12 = add i32 %6, -4718592
  %13 = icmp ult i32 %12, 7340033
  %14 = icmp sgt i32 %11, 13631487
  %15 = select i1 %13, i1 %14, i1 false
  br i1 %15, label %16, label %30

16:                                               ; preds = %1
  %17 = add nsw i32 %6, -4718593
  %18 = icmp ult i32 %17, 3670015
  %19 = icmp sgt i32 %5, 0
  %20 = and i1 %19, %18
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = add nsw i32 %6, -8388609
  %23 = icmp ult i32 %22, 3670015
  %24 = icmp slt i32 %5, 0
  %25 = and i1 %24, %23
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = icmp ugt i32 %11, 13631488
  %28 = icmp sgt i32 %10, 0
  %29 = and i1 %28, %27
  br i1 %29, label %31, label %30

30:                                               ; preds = %26, %1
  br label %31

31:                                               ; preds = %16, %21, %26, %30
  %32 = phi i32 [ 0, %30 ], [ 1, %26 ], [ 1, %21 ], [ 1, %16 ]
  ret i32 %32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @AnimationCallbackSwapMapChoiceClass3YZ(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) local_unnamed_addr #3 {
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = load i8, ptr @gRenderClassSlots3, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr %struct.RenderSlot, ptr %4, i32 %6, i32 4
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %7, align 4
  store i32 %8, ptr %9, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreMapChoiceClassHalfwords(ptr nocapture noundef readnone %0) local_unnamed_addr #11 {
  %2 = load i16, ptr getelementptr (i16, ptr @gTaskTextVariables2BB0, i32 1), align 2
  store i16 %2, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %3 = load i16, ptr getelementptr (i16, ptr @gTaskTextVariables2BB0, i32 5), align 2
  store i16 %3, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 35), align 2
  %4 = load i16, ptr getelementptr (i16, ptr @gTaskTextVariables2BB0, i32 7), align 2
  store i16 %4, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %5 = load i16, ptr getelementptr (i16, ptr @gTaskTextVariables2BB0, i32 11), align 2
  store i16 %5, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 37), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapChoicePresets32D3C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset17694() #14
  tail call arm_apcscc void @ConfigureRenderSetupPreset19FE4() #14
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset17694() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset19FE4() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapChoicePresets32D4C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset176C4() #14
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E2C() #14
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset176C4() local_unnamed_addr #2

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E2C() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapChoicePresets32D5C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset176AC() #14
  tail call arm_apcscc void @ConfigureRenderSetupPreset1A028() #14
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset176AC() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureRenderSetupPreset1A028() local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ApplyMapChoicePresets32D6C() local_unnamed_addr #0 {
  tail call arm_apcscc void @SetDirectionalAnimationPreset178D0() #14
  tail call arm_apcscc void @ClearRenderSetupNeighborFields6018E90() #14
  ret void
}

declare dso_local arm_apcscc void @SetDirectionalAnimationPreset178D0() local_unnamed_addr #2

declare dso_local arm_apcscc void @ClearRenderSetupNeighborFields6018E90() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind memory(none) }
attributes #14 = { nobuiltin nounwind "no-builtins" }
attributes #15 = { nounwind }
attributes #16 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2947}
!5 = !{i64 5623}
!6 = !{i64 5692}
!7 = !{i64 5765}
!8 = !{i64 7078}
