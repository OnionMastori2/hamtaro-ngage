; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMap10_4CounterTiles0 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMap10_4CounterTiles1 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMap10_4CounterTiles2 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMap10_4CounterTiles3 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gMap10_4CounterTiles4 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4
@gMap10_4Resource8F87A1 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8781 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8791 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8889 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8869 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8879 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8971 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8951 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8961 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8A59 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8A39 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8A49 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8B41 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8B21 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8B31 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F87B0 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8898 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8980 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8A68 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8B50 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7EB8 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8319 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7F73 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F83D4 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7F7D = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F83DE = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8008 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8469 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F807C = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F84DD = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7B69 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7B98 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7BC7 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7BF6 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7C25 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7C54 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7C83 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7CB2 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7D40 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7D1A = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7CEA = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7CCF = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7DD9 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7E24 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7DAA = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7D85 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7DB4 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7E01 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7E96 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7DF7 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7E74 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7DED = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7E52 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7DE3 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7E3B = external dso_local constant [0 x i8], align 1
@gMap10_4ScrollSteps = external dso_local local_unnamed_addr constant [0 x i8], align 1
@gMap10_4Resource8F7A36 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F81A3 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8604 = external dso_local constant [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gMap10_4Resource8F7AF3 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F80F1 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F8552 = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7DBE = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7D8F = external dso_local constant [0 x i8], align 1
@gMap10_4Resource8F7E0B = external dso_local constant [0 x i8], align 1
@switch.table.ScriptCallbackAdvanceMap10_4Sequence = private unnamed_addr constant [5 x ptr] [ptr @gMap10_4CounterTiles0, ptr @gMap10_4CounterTiles1, ptr @gMap10_4CounterTiles2, ptr @gMap10_4CounterTiles3, ptr @gMap10_4CounterTiles4], align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @Map10_4NoopC2C38() local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDrawMap10_4Counter(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  %3 = tail call ptr asm sideeffect "", "={r6}"() #5, !srcloc !4
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %5 = icmp ult i8 %4, 5
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = zext nneg i8 %4 to i32
  %8 = getelementptr inbounds [5 x ptr], ptr @switch.table.ScriptCallbackAdvanceMap10_4Sequence, i32 0, i32 %7
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi ptr [ %3, %1 ], [ %9, %6 ]
  %12 = zext i16 %2 to i32
  %13 = udiv i16 %2, 100
  %14 = and i16 %13, 255
  %15 = zext nneg i16 %14 to i32
  %16 = mul nsw i32 %15, -100
  %17 = add nsw i32 %16, %12
  %18 = sdiv i32 %17, 10
  %19 = getelementptr i16, ptr %11, i32 3
  store i16 -3486, ptr %19, align 2
  %20 = getelementptr i16, ptr %11, i32 6
  store i16 -3486, ptr %20, align 2
  %21 = icmp eq i16 %14, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %10
  %23 = add nuw nsw i16 %14, -3776
  store i16 %23, ptr %19, align 2
  %24 = and i32 %18, 255
  br label %28

25:                                               ; preds = %10
  %26 = and i32 %18, 255
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22, %25
  %29 = phi i32 [ %24, %22 ], [ %26, %25 ]
  %30 = trunc i32 %29 to i16
  %31 = add nuw nsw i16 %30, -3776
  store i16 %31, ptr %20, align 2
  br label %32

32:                                               ; preds = %25, %28
  %33 = urem i16 %2, 10
  %34 = or disjoint i16 %33, -3776
  %35 = getelementptr i16, ptr %11, i32 9
  store i16 %34, ptr %35, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetMap10_4CounterPalettes(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = icmp eq i8 %2, 0
  %4 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 3), align 2
  br i1 %3, label %5, label %29

5:                                                ; preds = %1
  %6 = and i16 %4, 4095
  store i16 %6, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 3), align 2
  %7 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 6), align 2
  %8 = and i16 %7, 4095
  store i16 %8, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 6), align 2
  %9 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 9), align 2
  %10 = and i16 %9, 4095
  store i16 %10, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 9), align 2
  %11 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 3), align 2
  %12 = and i16 %11, 4095
  store i16 %12, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 3), align 2
  %13 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 6), align 2
  %14 = and i16 %13, 4095
  store i16 %14, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 6), align 2
  %15 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 9), align 2
  %16 = and i16 %15, 4095
  %17 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 3), align 2
  %18 = and i16 %17, 4095
  %19 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 6), align 2
  %20 = and i16 %19, 4095
  %21 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 9), align 2
  %22 = and i16 %21, 4095
  %23 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 3), align 2
  %24 = and i16 %23, 4095
  %25 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 6), align 2
  %26 = and i16 %25, 4095
  %27 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 9), align 2
  %28 = and i16 %27, 4095
  br label %53

29:                                               ; preds = %1
  %30 = or i16 %4, -4096
  store i16 %30, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 3), align 2
  %31 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 6), align 2
  %32 = or i16 %31, -4096
  store i16 %32, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 6), align 2
  %33 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 9), align 2
  %34 = or i16 %33, -4096
  store i16 %34, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles1, i32 0, i32 9), align 2
  %35 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 3), align 2
  %36 = or i16 %35, -4096
  store i16 %36, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 3), align 2
  %37 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 6), align 2
  %38 = or i16 %37, -4096
  store i16 %38, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 6), align 2
  %39 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 9), align 2
  %40 = or i16 %39, -4096
  %41 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 3), align 2
  %42 = or i16 %41, -4096
  %43 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 6), align 2
  %44 = or i16 %43, -4096
  %45 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 9), align 2
  %46 = or i16 %45, -4096
  %47 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 3), align 2
  %48 = or i16 %47, -4096
  %49 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 6), align 2
  %50 = or i16 %49, -4096
  %51 = load i16, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 9), align 2
  %52 = or i16 %51, -4096
  br label %53

53:                                               ; preds = %29, %5
  %54 = phi i16 [ %16, %5 ], [ %40, %29 ]
  %55 = phi i16 [ %18, %5 ], [ %42, %29 ]
  %56 = phi i16 [ %20, %5 ], [ %44, %29 ]
  %57 = phi i16 [ %22, %5 ], [ %46, %29 ]
  %58 = phi i16 [ %24, %5 ], [ %48, %29 ]
  %59 = phi i16 [ %26, %5 ], [ %50, %29 ]
  %60 = phi i16 [ %28, %5 ], [ %52, %29 ]
  store i16 %54, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles2, i32 0, i32 9), align 2
  store i16 %55, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 3), align 2
  store i16 %56, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 6), align 2
  store i16 %57, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles3, i32 0, i32 9), align 2
  store i16 %58, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 3), align 2
  store i16 %59, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 6), align 2
  store i16 %60, ptr getelementptr ([0 x i16], ptr @gMap10_4CounterTiles4, i32 0, i32 9), align 2
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackEnableMap10_4ObjectWindows(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  store volatile i16 -17969, ptr inttoptr (i32 67108930 to ptr), align 2
  %2 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %3 = and i16 %2, 8191
  %4 = or disjoint i16 %3, -16384
  store i16 %4, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %5 = load i32, ptr @gVideoState, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr @gVideoState, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackConfigureMap10_4Windows(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %3 = or i16 %2, 3072
  store i16 %3, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %4 = load i32, ptr @gVideoState, align 4
  %5 = or i32 %4, 1
  store i32 %5, ptr @gVideoState, align 4
  store volatile i16 15360, ptr inttoptr (i32 67108936 to ptr), align 8
  store volatile i16 15411, ptr inttoptr (i32 67108938 to ptr), align 2
  store volatile i16 -17969, ptr inttoptr (i32 67108930 to ptr), align 2
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackDisableMap10_4Windows(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i16, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %3 = and i16 %2, 255
  %4 = or disjoint i16 %3, 7936
  store i16 %4, ptr getelementptr inbounds (%struct.VideoState, ptr @gVideoState, i32 0, i32 12), align 4
  %5 = load i32, ptr @gVideoState, align 4
  %6 = or i32 %5, 1
  store i32 %6, ptr @gVideoState, align 4
  store volatile i16 0, ptr inttoptr (i32 67108936 to ptr), align 8
  store volatile i16 0, ptr inttoptr (i32 67108938 to ptr), align 2
  store volatile i16 0, ptr inttoptr (i32 67108930 to ptr), align 2
  store volatile i16 0, ptr inttoptr (i32 67108934 to ptr), align 2
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeMap10_4StageGraphics(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  switch i16 %2, label %11 [
    i16 0, label %7
    i16 1, label %3
    i16 2, label %4
    i16 3, label %5
    i16 4, label %6
  ]

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  br label %7

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %1, %3, %4, %5, %6
  %8 = phi i32 [ ptrtoint (ptr @gMap10_4Resource8F8B41 to i32), %6 ], [ ptrtoint (ptr @gMap10_4Resource8F8A59 to i32), %5 ], [ ptrtoint (ptr @gMap10_4Resource8F8971 to i32), %4 ], [ ptrtoint (ptr @gMap10_4Resource8F8889 to i32), %3 ], [ ptrtoint (ptr @gMap10_4Resource8F87A1 to i32), %1 ]
  %9 = phi i32 [ ptrtoint (ptr @gMap10_4Resource8F8B21 to i32), %6 ], [ ptrtoint (ptr @gMap10_4Resource8F8A39 to i32), %5 ], [ ptrtoint (ptr @gMap10_4Resource8F8951 to i32), %4 ], [ ptrtoint (ptr @gMap10_4Resource8F8869 to i32), %3 ], [ ptrtoint (ptr @gMap10_4Resource8F8781 to i32), %1 ]
  %10 = phi i32 [ ptrtoint (ptr @gMap10_4Resource8F8B31 to i32), %6 ], [ ptrtoint (ptr @gMap10_4Resource8F8A49 to i32), %5 ], [ ptrtoint (ptr @gMap10_4Resource8F8961 to i32), %4 ], [ ptrtoint (ptr @gMap10_4Resource8F8879 to i32), %3 ], [ ptrtoint (ptr @gMap10_4Resource8F8791 to i32), %1 ]
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef %8) #6
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef %9) #6
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef %10) #6
  br label %11

11:                                               ; preds = %7, %1
  ret i32 0
}

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @InitializeMap10_4StagePageGraphics(i32 noundef %0) local_unnamed_addr #1 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  switch i16 %2, label %9 [
    i16 0, label %7
    i16 1, label %3
    i16 2, label %4
    i16 3, label %5
    i16 4, label %6
  ]

3:                                                ; preds = %1
  br label %7

4:                                                ; preds = %1
  br label %7

5:                                                ; preds = %1
  br label %7

6:                                                ; preds = %1
  br label %7

7:                                                ; preds = %1, %3, %4, %5, %6
  %8 = phi i32 [ ptrtoint (ptr @gMap10_4Resource8F8B50 to i32), %6 ], [ ptrtoint (ptr @gMap10_4Resource8F8A68 to i32), %5 ], [ ptrtoint (ptr @gMap10_4Resource8F8980 to i32), %4 ], [ ptrtoint (ptr @gMap10_4Resource8F8898 to i32), %3 ], [ ptrtoint (ptr @gMap10_4Resource8F87B0 to i32), %1 ]
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef %8) #6
  br label %9

9:                                                ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @InitializeMap10_4StageRenderPair(i32 %0) local_unnamed_addr #1 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  %3 = trunc i16 %2 to i8
  %4 = shl i8 %3, 1
  %5 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  switch i16 %5, label %21 [
    i16 0, label %6
    i16 1, label %9
    i16 2, label %12
    i16 3, label %15
    i16 4, label %18
  ]

6:                                                ; preds = %1
  %7 = zext i8 %4 to i32
  %8 = sub nsw i32 110, %7
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 156, i32 noundef 0, i32 noundef %8, ptr noundef nonnull @gMap10_4Resource8F7EB8) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 204, i32 noundef 0, i32 noundef %8, ptr noundef nonnull @gMap10_4Resource8F8319) #6
  br label %21

9:                                                ; preds = %1
  %10 = zext i8 %4 to i32
  %11 = sub nsw i32 110, %10
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 156, i32 noundef 0, i32 noundef %11, ptr noundef nonnull @gMap10_4Resource8F7F73) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 204, i32 noundef 0, i32 noundef %11, ptr noundef nonnull @gMap10_4Resource8F83D4) #6
  br label %21

12:                                               ; preds = %1
  %13 = zext i8 %4 to i32
  %14 = sub nsw i32 110, %13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 156, i32 noundef 0, i32 noundef %14, ptr noundef nonnull @gMap10_4Resource8F7F7D) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 204, i32 noundef 0, i32 noundef %14, ptr noundef nonnull @gMap10_4Resource8F83DE) #6
  br label %21

15:                                               ; preds = %1
  %16 = zext i8 %4 to i32
  %17 = sub nsw i32 110, %16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 156, i32 noundef 0, i32 noundef %17, ptr noundef nonnull @gMap10_4Resource8F8008) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 204, i32 noundef 0, i32 noundef %17, ptr noundef nonnull @gMap10_4Resource8F8469) #6
  br label %21

18:                                               ; preds = %1
  %19 = zext i8 %4 to i32
  %20 = sub nsw i32 110, %19
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 23, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 156, i32 noundef 0, i32 noundef %20, ptr noundef nonnull @gMap10_4Resource8F807C) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 24, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 204, i32 noundef 0, i32 noundef %20, ptr noundef nonnull @gMap10_4Resource8F84DD) #6
  br label %21

21:                                               ; preds = %1, %18, %15, %12, %9, %6
  ret i32 0
}

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @InitializeMap10_4RenderSlots(i32 %0) local_unnamed_addr #1 {
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMap10_4Resource8F7B69) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 2, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMap10_4Resource8F7B98) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 3, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMap10_4Resource8F7BC7) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 4, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMap10_4Resource8F7BF6) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 5, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMap10_4Resource8F7C25) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 6, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMap10_4Resource8F7C54) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 7, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gMap10_4Resource8F7C83) #6
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @UpdateMap10_4StageIndicators(i8 noundef zeroext %0) local_unnamed_addr #1 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  %3 = and i16 %2, 120
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %15, label %5

5:                                                ; preds = %1
  %6 = icmp eq i8 %0, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %5
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 188, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @gMap10_4Resource8F7CB2) #6
  br label %15

8:                                                ; preds = %5
  %9 = tail call arm_apcscc i32 @SetRenderField60AndAnimation(i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  %10 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  switch i16 %10, label %15 [
    i16 4, label %11
    i16 3, label %12
    i16 2, label %13
    i16 0, label %14
    i16 1, label %14
  ]

11:                                               ; preds = %8
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 188, i32 noundef 0, i32 noundef 80, ptr noundef nonnull @gMap10_4Resource8F7D40) #6
  br label %12

12:                                               ; preds = %8, %11
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 20, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 188, i32 noundef 0, i32 noundef 96, ptr noundef nonnull @gMap10_4Resource8F7D1A) #6
  br label %13

13:                                               ; preds = %8, %12
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 188, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @gMap10_4Resource8F7CEA) #6
  br label %14

14:                                               ; preds = %8, %8, %13
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 22, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 188, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @gMap10_4Resource8F7CCF) #6
  br label %15

15:                                               ; preds = %7, %8, %14, %1
  ret i32 0
}

declare dso_local arm_apcscc i32 @SetRenderField60AndAnimation(...) local_unnamed_addr #4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackUpdateMap10_4ScrollDisplay(ptr nocapture readnone %0) local_unnamed_addr #1 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  %3 = trunc i16 %2 to i8
  %4 = shl i8 %3, 1
  %5 = tail call arm_apcscc i32 @InitializeMap10_4StageRenderPair(i32 poison) #7
  %6 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  switch i16 %6, label %12 [
    i16 0, label %7
    i16 4, label %11
  ]

7:                                                ; preds = %1
  store volatile i16 0, ptr inttoptr (i32 67108934 to ptr), align 2
  %8 = tail call arm_apcscc i32 @SetRenderField60AndAnimation(i32 noundef 25, i32 noundef 0, i32 noundef 0) #6
  %9 = tail call arm_apcscc i32 @SetRenderField60AndAnimation(i32 noundef 26, i32 noundef 0, i32 noundef 0) #6
  %10 = tail call arm_apcscc i32 @SetRenderField60AndAnimation(i32 noundef 27, i32 noundef 0, i32 noundef 0) #6
  br label %34

11:                                               ; preds = %1
  store volatile i16 0, ptr inttoptr (i32 67108934 to ptr), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7DD9) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @gMap10_4Resource8F7E24) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7DAA) #6
  br label %34

12:                                               ; preds = %1
  %13 = icmp ugt i16 %6, 55
  br i1 %13, label %14, label %16

14:                                               ; preds = %12
  store volatile i16 8322, ptr inttoptr (i32 67108934 to ptr), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gMap10_4Resource8F7D85) #6
  %15 = tail call arm_apcscc i32 @SetRenderField60AndAnimation(i32 noundef 27, i32 noundef 0, i32 noundef 0) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7DB4) #6
  br label %34

16:                                               ; preds = %12
  %17 = icmp eq i16 %6, 55
  br i1 %17, label %18, label %19

18:                                               ; preds = %16
  store volatile i16 8322, ptr inttoptr (i32 67108934 to ptr), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7E01) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7E96) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7DB4) #6
  br label %34

19:                                               ; preds = %16
  %20 = icmp ugt i16 %6, 53
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  store volatile i16 8322, ptr inttoptr (i32 67108934 to ptr), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7DF7) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7E74) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7DB4) #6
  br label %34

22:                                               ; preds = %19
  %23 = icmp eq i16 %6, 53
  br i1 %23, label %24, label %25

24:                                               ; preds = %22
  store volatile i16 8322, ptr inttoptr (i32 67108934 to ptr), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7DED) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7E52) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7DB4) #6
  br label %34

25:                                               ; preds = %22
  %26 = icmp ugt i16 %6, 4
  br i1 %26, label %27, label %31

27:                                               ; preds = %25
  %28 = zext i8 %4 to i16
  %29 = shl nuw i16 %28, 8
  %30 = sub i16 -30590, %29
  store volatile i16 %30, ptr inttoptr (i32 67108934 to ptr), align 2
  br label %31

31:                                               ; preds = %27, %25
  %32 = zext i8 %4 to i32
  %33 = sub nsw i32 128, %32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef %33, ptr noundef nonnull @gMap10_4Resource8F7DE3) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef %33, ptr noundef nonnull @gMap10_4Resource8F7E3B) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7DB4) #6
  br label %34

34:                                               ; preds = %11, %18, %24, %31, %21, %14, %7
  %35 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  %36 = and i16 %35, 120
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 188, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @gMap10_4Resource8F7CB2) #6
  br label %39

39:                                               ; preds = %34, %38
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdvanceMap10_4Sequence(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  %2 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  %3 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 121), align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr [0 x i8], ptr @gMap10_4ScrollSteps, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = zext i16 %3 to i32
  %9 = zext i8 %7 to i32
  %10 = add nuw nsw i32 %9, %8
  %11 = icmp ugt i32 %10, 56
  %12 = trunc i16 %3 to i8
  %13 = sub i8 56, %12
  %14 = select i1 %11, i8 %13, i8 %7
  %15 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  switch i8 %15, label %216 [
    i8 0, label %16
    i8 2, label %67
    i8 4, label %81
    i8 5, label %116
    i8 6, label %122
    i8 7, label %144
    i8 9, label %161
    i8 10, label %182
  ]

16:                                               ; preds = %1
  %17 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = icmp ugt i16 %3, 68
  br i1 %20, label %21, label %22

21:                                               ; preds = %19
  store i8 8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

22:                                               ; preds = %19
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 13, ptr noundef nonnull @gMap10_4Resource8F7A36) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 13, i8 noundef zeroext 0) #6
  store i16 1, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  br label %216

23:                                               ; preds = %16
  %24 = add i16 %17, 1
  store i16 %24, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %25 = icmp eq i16 %24, 48
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 14), align 2
  %28 = add i16 %27, 1
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 14), align 2
  store i16 %28, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %29 = tail call ptr asm sideeffect "", "={r6}"() #5, !srcloc !4
  %30 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %31 = icmp ult i8 %30, 5
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = zext nneg i8 %30 to i32
  %34 = getelementptr inbounds [5 x ptr], ptr @switch.table.ScriptCallbackAdvanceMap10_4Sequence, i32 0, i32 %33
  %35 = load ptr, ptr %34, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = phi ptr [ %29, %26 ], [ %35, %32 ]
  %38 = zext i16 %28 to i32
  %39 = udiv i16 %28, 100
  %40 = and i16 %39, 255
  %41 = zext nneg i16 %40 to i32
  %42 = mul nsw i32 %41, -100
  %43 = add nsw i32 %42, %38
  %44 = sdiv i32 %43, 10
  %45 = getelementptr i16, ptr %37, i32 3
  store i16 -3486, ptr %45, align 2
  %46 = getelementptr i16, ptr %37, i32 6
  store i16 -3486, ptr %46, align 2
  %47 = icmp eq i16 %40, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %36
  %49 = add nuw nsw i16 %40, -3776
  store i16 %49, ptr %45, align 2
  %50 = and i32 %44, 255
  br label %54

51:                                               ; preds = %36
  %52 = and i32 %44, 255
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51, %48
  %55 = phi i32 [ %50, %48 ], [ %52, %51 ]
  %56 = trunc i32 %55 to i16
  %57 = add nuw nsw i16 %56, -3776
  store i16 %57, ptr %46, align 2
  br label %58

58:                                               ; preds = %51, %54
  %59 = urem i16 %28, 10
  %60 = or disjoint i16 %59, -3776
  %61 = getelementptr i16, ptr %37, i32 9
  store i16 %60, ptr %61, align 2
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 332) #6
  %62 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  br label %63

63:                                               ; preds = %58, %23
  %64 = phi i16 [ %62, %58 ], [ %24, %23 ]
  %65 = icmp eq i16 %64, 96
  br i1 %65, label %66, label %216

66:                                               ; preds = %63
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 13, i8 noundef zeroext 2) #6
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  br label %216

67:                                               ; preds = %1
  %68 = tail call arm_apcscc i32 @UpdateMap10_4StageIndicators(i8 noundef zeroext 1) #7
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 23, ptr noundef nonnull @gMap10_4Resource8F81A3) #6
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 24, ptr noundef nonnull @gMap10_4Resource8F8604) #6
  %69 = shl i16 %2, 12
  %70 = sub i16 -28534, %69
  store i16 %70, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 34), align 2
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  tail call arm_apcscc void @StartSong(i16 noundef zeroext 327) #6
  %71 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  store i8 9, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

74:                                               ; preds = %67
  %75 = icmp ugt i16 %71, 51
  br i1 %75, label %76, label %77

76:                                               ; preds = %74
  store i8 10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

77:                                               ; preds = %74
  %78 = icmp eq i16 %71, 4
  br i1 %78, label %79, label %80

79:                                               ; preds = %77
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @gMap10_4Resource8F7DE3) #6
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 27, ptr noundef nonnull @gMap10_4Resource8F7E3B) #6
  br label %80

80:                                               ; preds = %79, %77
  store i8 4, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

81:                                               ; preds = %1
  %82 = icmp ugt i16 %2, 4
  %83 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %84 = zext i16 %83 to i32
  %85 = zext i8 %14 to i32
  %86 = shl nuw nsw i32 %85, 2
  %87 = icmp ugt i32 %86, %84
  %88 = select i1 %82, i1 true, i1 %87
  br i1 %88, label %97, label %89

89:                                               ; preds = %81
  %90 = load ptr, ptr @gRenderSlots, align 4
  %91 = getelementptr %struct.RenderSlot, ptr %90, i32 23, i32 6, i32 2
  store i32 0, ptr %91, align 4
  %92 = load ptr, ptr @gRenderSlots, align 4
  %93 = getelementptr %struct.RenderSlot, ptr %92, i32 24, i32 6, i32 2
  store i32 0, ptr %93, align 4
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 25, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #6
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 27, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext 0) #6
  %94 = icmp eq i16 %2, 4
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #6
  br label %96

96:                                               ; preds = %95, %89
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  store i8 5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

97:                                               ; preds = %81
  %98 = add i16 %83, 1
  store i16 %98, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %99 = zext i16 %98 to i32
  %100 = add nsw i32 %99, -1
  %101 = ashr i32 %100, 2
  %102 = add nsw i32 %101, %8
  %103 = icmp sgt i32 %102, 51
  br i1 %103, label %104, label %105

104:                                              ; preds = %97
  store i8 10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %105

105:                                              ; preds = %104, %97
  %106 = load ptr, ptr @gRenderSlots, align 4
  %107 = getelementptr %struct.RenderSlot, ptr %106, i32 23, i32 6, i32 2
  store i32 -32768, ptr %107, align 4
  %108 = load ptr, ptr @gRenderSlots, align 4
  %109 = getelementptr %struct.RenderSlot, ptr %108, i32 24, i32 6, i32 2
  store i32 -32768, ptr %109, align 4
  %110 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %111 = shl i16 %110, 7
  %112 = and i16 %111, -256
  %113 = shl i16 %3, 9
  %114 = add i16 %113, %112
  %115 = sub i16 -30590, %114
  store volatile i16 %115, ptr inttoptr (i32 67108934 to ptr), align 2
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 25, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext -128) #6
  tail call arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext 27, i16 noundef signext 0, i16 noundef signext 0, i16 noundef signext -128) #6
  br label %216

116:                                              ; preds = %1
  %117 = load ptr, ptr @gRenderSlots, align 4
  %118 = getelementptr %struct.RenderSlot, ptr %117, i32 23, i32 1
  %119 = load i32, ptr %118, align 4
  %120 = icmp eq i32 %119, ptrtoint (ptr @gMap10_4Resource8F81A3 to i32)
  br i1 %120, label %216, label %121

121:                                              ; preds = %116
  store i8 6, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

122:                                              ; preds = %1
  %123 = zext i8 %14 to i16
  %124 = add i16 %3, %123
  store i16 %124, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  %125 = zext i16 %124 to i32
  %126 = zext i16 %2 to i32
  %127 = mul nuw nsw i32 %126, 14
  %128 = add nuw nsw i32 %127, 14
  %129 = icmp ugt i32 %128, %125
  br i1 %129, label %144, label %130

130:                                              ; preds = %122
  %131 = add i16 %2, 1
  store i16 %131, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  %132 = shl i16 %124, 1
  %133 = sub i16 112, %132
  %134 = sext i16 %133 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 174, i32 noundef 0, i32 noundef %134, ptr noundef nonnull @gMap10_4Resource8F7AF3) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 28, i8 noundef zeroext 0) #6
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 23, ptr noundef nonnull @gMap10_4Resource8F80F1) #6
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 24, ptr noundef nonnull @gMap10_4Resource8F8552) #6
  %135 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  switch i16 %135, label %142 [
    i16 0, label %140
    i16 1, label %136
    i16 2, label %137
    i16 3, label %138
    i16 4, label %139
  ]

136:                                              ; preds = %130
  br label %140

137:                                              ; preds = %130
  br label %140

138:                                              ; preds = %130
  br label %140

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %138, %137, %136, %130
  %141 = phi i32 [ ptrtoint (ptr @gMap10_4Resource8F8B50 to i32), %139 ], [ ptrtoint (ptr @gMap10_4Resource8F8A68 to i32), %138 ], [ ptrtoint (ptr @gMap10_4Resource8F8980 to i32), %137 ], [ ptrtoint (ptr @gMap10_4Resource8F8898 to i32), %136 ], [ ptrtoint (ptr @gMap10_4Resource8F87B0 to i32), %130 ]
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef %141) #6
  br label %142

142:                                              ; preds = %130, %140
  %143 = tail call arm_apcscc i32 @InitializeMap10_4RenderSlots(i32 poison) #7
  store i8 11, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %144

144:                                              ; preds = %122, %142, %1
  %145 = load ptr, ptr @gRenderSlots, align 4
  %146 = getelementptr %struct.RenderSlot, ptr %145, i32 28, i32 1
  %147 = load i32, ptr %146, align 4
  %148 = icmp eq i32 %147, ptrtoint (ptr @gMap10_4Resource8F7AF3 to i32)
  br i1 %148, label %216, label %149

149:                                              ; preds = %144
  %150 = tail call arm_apcscc i32 @ScriptCallbackUpdateMap10_4ScrollDisplay(ptr poison) #7
  %151 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 12), align 2
  switch i16 %151, label %160 [
    i16 0, label %156
    i16 1, label %152
    i16 2, label %153
    i16 3, label %154
    i16 4, label %155
  ]

152:                                              ; preds = %149
  br label %156

153:                                              ; preds = %149
  br label %156

154:                                              ; preds = %149
  br label %156

155:                                              ; preds = %149
  br label %156

156:                                              ; preds = %155, %154, %153, %152, %149
  %157 = phi i32 [ ptrtoint (ptr @gMap10_4Resource8F8B41 to i32), %155 ], [ ptrtoint (ptr @gMap10_4Resource8F8A59 to i32), %154 ], [ ptrtoint (ptr @gMap10_4Resource8F8971 to i32), %153 ], [ ptrtoint (ptr @gMap10_4Resource8F8889 to i32), %152 ], [ ptrtoint (ptr @gMap10_4Resource8F87A1 to i32), %149 ]
  %158 = phi i32 [ ptrtoint (ptr @gMap10_4Resource8F8B21 to i32), %155 ], [ ptrtoint (ptr @gMap10_4Resource8F8A39 to i32), %154 ], [ ptrtoint (ptr @gMap10_4Resource8F8951 to i32), %153 ], [ ptrtoint (ptr @gMap10_4Resource8F8869 to i32), %152 ], [ ptrtoint (ptr @gMap10_4Resource8F8781 to i32), %149 ]
  %159 = phi i32 [ ptrtoint (ptr @gMap10_4Resource8F8B31 to i32), %155 ], [ ptrtoint (ptr @gMap10_4Resource8F8A49 to i32), %154 ], [ ptrtoint (ptr @gMap10_4Resource8F8961 to i32), %153 ], [ ptrtoint (ptr @gMap10_4Resource8F8879 to i32), %152 ], [ ptrtoint (ptr @gMap10_4Resource8F8791 to i32), %149 ]
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 5, i8 noundef zeroext 1, i32 noundef %157) #6
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 3, i8 noundef zeroext 1, i32 noundef %158) #6
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef %159) #6
  br label %160

160:                                              ; preds = %149, %156
  store i8 8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

161:                                              ; preds = %1
  %162 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %161
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7DBE) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 128, ptr noundef nonnull @gMap10_4Resource8F7D8F) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @gMap10_4Resource8F7E0B) #6
  %165 = load ptr, ptr @gRenderSlots, align 4
  %166 = getelementptr %struct.RenderSlot, ptr %165, i32 23, i32 6, i32 2
  store i32 -32768, ptr %166, align 4
  %167 = load ptr, ptr @gRenderSlots, align 4
  %168 = getelementptr %struct.RenderSlot, ptr %167, i32 24, i32 6, i32 2
  store i32 -32768, ptr %168, align 4
  store i16 1, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  br label %216

169:                                              ; preds = %161
  %170 = load ptr, ptr @gRenderSlots, align 4
  %171 = getelementptr %struct.RenderSlot, ptr %170, i32 23, i32 6, i32 2
  store i32 -32768, ptr %171, align 4
  %172 = load ptr, ptr @gRenderSlots, align 4
  %173 = getelementptr %struct.RenderSlot, ptr %172, i32 24, i32 6, i32 2
  store i32 -32768, ptr %173, align 4
  %174 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %175 = add i16 %174, 1
  store i16 %175, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %176 = icmp eq i16 %175, 16
  br i1 %176, label %177, label %216

177:                                              ; preds = %169
  %178 = load ptr, ptr @gRenderSlots, align 4
  %179 = getelementptr %struct.RenderSlot, ptr %178, i32 23, i32 6, i32 2
  store i32 0, ptr %179, align 4
  %180 = load ptr, ptr @gRenderSlots, align 4
  %181 = getelementptr %struct.RenderSlot, ptr %180, i32 24, i32 6, i32 2
  store i32 0, ptr %181, align 4
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  store i8 5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

182:                                              ; preds = %1
  %183 = icmp ugt i16 %2, 5
  %184 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %185 = zext i16 %184 to i32
  %186 = zext i8 %14 to i32
  %187 = shl nuw nsw i32 %186, 2
  %188 = icmp ugt i32 %187, %185
  %189 = select i1 %183, i1 true, i1 %188
  br i1 %189, label %198, label %190

190:                                              ; preds = %182
  %191 = load ptr, ptr @gRenderSlots, align 4
  %192 = getelementptr %struct.RenderSlot, ptr %191, i32 23, i32 6, i32 2
  store i32 0, ptr %192, align 4
  %193 = load ptr, ptr @gRenderSlots, align 4
  %194 = getelementptr %struct.RenderSlot, ptr %193, i32 24, i32 6, i32 2
  store i32 0, ptr %194, align 4
  %195 = icmp eq i16 %2, 5
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 25, i8 noundef zeroext 0) #6
  br label %197

197:                                              ; preds = %196, %190
  store i16 0, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  store i8 5, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %216

198:                                              ; preds = %182
  %199 = add i16 %184, 1
  store i16 %199, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %200 = load ptr, ptr @gRenderSlots, align 4
  %201 = getelementptr %struct.RenderSlot, ptr %200, i32 23, i32 6, i32 2
  store i32 -32768, ptr %201, align 4
  %202 = load ptr, ptr @gRenderSlots, align 4
  %203 = getelementptr %struct.RenderSlot, ptr %202, i32 24, i32 6, i32 2
  store i32 -32768, ptr %203, align 4
  %204 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 36), align 2
  %205 = zext i16 %204 to i32
  %206 = add nsw i32 %205, -1
  %207 = ashr i32 %206, 2
  %208 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 13), align 2
  %209 = zext i16 %208 to i32
  %210 = add nsw i32 %207, %209
  switch i32 %210, label %216 [
    i32 52, label %211
    i32 53, label %212
    i32 54, label %213
    i32 55, label %214
  ]

211:                                              ; preds = %198
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7DED) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7E52) #6
  br label %216

212:                                              ; preds = %198
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7DF7) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7E74) #6
  br label %216

213:                                              ; preds = %198
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7E01) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 32, ptr noundef nonnull @gMap10_4Resource8F7E96) #6
  br label %216

214:                                              ; preds = %198
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 184, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gMap10_4Resource8F7D85) #6
  %215 = tail call arm_apcscc i32 @SetRenderField60AndAnimation(i32 noundef 27, i32 noundef 0, i32 noundef 0) #6
  br label %216

216:                                              ; preds = %197, %198, %214, %213, %212, %211, %164, %177, %169, %144, %160, %116, %121, %96, %105, %73, %80, %76, %22, %21, %66, %63, %1
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

declare dso_local arm_apcscc void @StartSong(i16 noundef zeroext) local_unnamed_addr #4

declare dso_local arm_apcscc void @SetRenderVector24SignedHalves(i8 noundef zeroext, i16 noundef signext, i16 noundef signext, i16 noundef signext) local_unnamed_addr #4

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 3488}
