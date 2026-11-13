; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SaveGroup3ListDescriptor = type { ptr, i8, i8, i8, i8, [2 x i8], [3 x i16], ptr, ptr }
%struct.GameCounterDescriptor = type { ptr, i8, i8, [6 x i8], ptr, ptr }

@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gSaveGroup01Block1CC20 = external dso_local global [0 x i8], align 1
@gSaveGroup3ListDescriptors = external dso_local constant [0 x %struct.SaveGroup3ListDescriptor], align 4
@gRecordCounterStatusUnavailable = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRecordCounterStatusAvailable = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRecordCounterStatusSuffix = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gGameCounterDescriptorsD0D8 = external dso_local constant [0 x %struct.GameCounterDescriptor], align 4
@gGameCounterDisplayBuffer = external dso_local global [0 x i8], align 1
@gGameCounterSelectionKey = external dso_local local_unnamed_addr global i8, align 1
@gGameCounterDisplaySlots = external dso_local constant [0 x i32], align 4
@gGameCounterDisplayAnimation = external dso_local constant [0 x i8], align 1
@gGameCounterLocalizedGraphics = external dso_local local_unnamed_addr global [0 x [5 x ptr]], align 4
@gGameCounterTextGraphicsBuffer = external dso_local global [0 x i8], align 1
@gGameCounterForwardAnimation = external dso_local constant [0 x i8], align 1
@gGameCounterBackwardAnimation = external dso_local constant [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClearRecordBuffer40Words(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr ([0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 1), align 4
  %3 = inttoptr i32 %2 to ptr
  %4 = getelementptr i32, ptr %3, i32 1
  store i32 0, ptr %3, align 4
  %5 = getelementptr i32, ptr %3, i32 2
  store i32 0, ptr %4, align 4
  %6 = getelementptr i32, ptr %3, i32 3
  store i32 0, ptr %5, align 4
  %7 = getelementptr i32, ptr %3, i32 4
  store i32 0, ptr %6, align 4
  %8 = getelementptr i32, ptr %3, i32 5
  store i32 0, ptr %7, align 4
  %9 = getelementptr i32, ptr %3, i32 6
  store i32 0, ptr %8, align 4
  %10 = getelementptr i32, ptr %3, i32 7
  store i32 0, ptr %9, align 4
  %11 = getelementptr i32, ptr %3, i32 8
  store i32 0, ptr %10, align 4
  %12 = getelementptr i32, ptr %3, i32 9
  store i32 0, ptr %11, align 4
  %13 = getelementptr i32, ptr %3, i32 10
  store i32 0, ptr %12, align 4
  %14 = getelementptr i32, ptr %3, i32 11
  store i32 0, ptr %13, align 4
  %15 = getelementptr i32, ptr %3, i32 12
  store i32 0, ptr %14, align 4
  %16 = getelementptr i32, ptr %3, i32 13
  store i32 0, ptr %15, align 4
  %17 = getelementptr i32, ptr %3, i32 14
  store i32 0, ptr %16, align 4
  %18 = getelementptr i32, ptr %3, i32 15
  store i32 0, ptr %17, align 4
  %19 = getelementptr i32, ptr %3, i32 16
  store i32 0, ptr %18, align 4
  %20 = getelementptr i32, ptr %3, i32 17
  store i32 0, ptr %19, align 4
  %21 = getelementptr i32, ptr %3, i32 18
  store i32 0, ptr %20, align 4
  %22 = getelementptr i32, ptr %3, i32 19
  store i32 0, ptr %21, align 4
  %23 = getelementptr i32, ptr %3, i32 20
  store i32 0, ptr %22, align 4
  %24 = getelementptr i32, ptr %3, i32 21
  store i32 0, ptr %23, align 4
  %25 = getelementptr i32, ptr %3, i32 22
  store i32 0, ptr %24, align 4
  %26 = getelementptr i32, ptr %3, i32 23
  store i32 0, ptr %25, align 4
  %27 = getelementptr i32, ptr %3, i32 24
  store i32 0, ptr %26, align 4
  %28 = getelementptr i32, ptr %3, i32 25
  store i32 0, ptr %27, align 4
  %29 = getelementptr i32, ptr %3, i32 26
  store i32 0, ptr %28, align 4
  %30 = getelementptr i32, ptr %3, i32 27
  store i32 0, ptr %29, align 4
  %31 = getelementptr i32, ptr %3, i32 28
  store i32 0, ptr %30, align 4
  %32 = getelementptr i32, ptr %3, i32 29
  store i32 0, ptr %31, align 4
  %33 = getelementptr i32, ptr %3, i32 30
  store i32 0, ptr %32, align 4
  %34 = getelementptr i32, ptr %3, i32 31
  store i32 0, ptr %33, align 4
  %35 = getelementptr i32, ptr %3, i32 32
  store i32 0, ptr %34, align 4
  %36 = getelementptr i32, ptr %3, i32 33
  store i32 0, ptr %35, align 4
  %37 = getelementptr i32, ptr %3, i32 34
  store i32 0, ptr %36, align 4
  %38 = getelementptr i32, ptr %3, i32 35
  store i32 0, ptr %37, align 4
  %39 = getelementptr i32, ptr %3, i32 36
  store i32 0, ptr %38, align 4
  %40 = getelementptr i32, ptr %3, i32 37
  store i32 0, ptr %39, align 4
  %41 = getelementptr i32, ptr %3, i32 38
  store i32 0, ptr %40, align 4
  %42 = getelementptr i32, ptr %3, i32 39
  store i32 0, ptr %41, align 4
  store i32 0, ptr %42, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc void @WriteRecordCounterStatusPalette(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr i16, ptr %0, i32 1
  store i16 0, ptr %0, align 2
  %4 = and i32 %1, 65535
  %5 = mul nuw nsw i32 %4, 24
  %6 = add i32 %5, ptrtoint (ptr getelementptr inbounds ([0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 0, i32 6, i32 0) to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i16, ptr %7, align 2
  %9 = zext i16 %8 to i32
  %10 = lshr i32 %9, 7
  %11 = and i32 %10, 127
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = add i32 %11, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %15 = inttoptr i32 %14 to ptr
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = and i32 %9, 127
  %19 = icmp eq i8 %16, -1
  %20 = icmp ugt i32 %18, %17
  %21 = or i1 %19, %20
  br i1 %21, label %23, label %22

22:                                               ; preds = %13, %2
  br label %23

23:                                               ; preds = %13, %22
  %24 = phi ptr [ @gRecordCounterStatusAvailable, %22 ], [ @gRecordCounterStatusUnavailable, %13 ]
  %25 = phi ptr [ getelementptr ([0 x i16], ptr @gRecordCounterStatusAvailable, i32 0, i32 1), %22 ], [ getelementptr ([0 x i16], ptr @gRecordCounterStatusUnavailable, i32 0, i32 1), %13 ]
  %26 = phi ptr [ getelementptr ([0 x i16], ptr @gRecordCounterStatusAvailable, i32 0, i32 2), %22 ], [ getelementptr ([0 x i16], ptr @gRecordCounterStatusUnavailable, i32 0, i32 2), %13 ]
  %27 = load i16, ptr %24, align 2
  %28 = getelementptr i16, ptr %0, i32 2
  store i16 %27, ptr %3, align 2
  %29 = load i16, ptr %25, align 2
  %30 = getelementptr i16, ptr %0, i32 3
  store i16 %29, ptr %28, align 2
  %31 = load i16, ptr %26, align 2
  store i16 %31, ptr %30, align 2
  %32 = getelementptr i16, ptr %0, i32 4
  %33 = getelementptr i16, ptr %7, i32 1
  %34 = load i16, ptr %33, align 4
  %35 = zext i16 %34 to i32
  %36 = lshr i32 %35, 7
  %37 = and i32 %36, 127
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %23
  %40 = add i32 %37, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %41 = inttoptr i32 %40 to ptr
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %35, 127
  %45 = icmp eq i8 %42, -1
  %46 = icmp ugt i32 %44, %43
  %47 = or i1 %45, %46
  br i1 %47, label %49, label %48

48:                                               ; preds = %39, %23
  br label %49

49:                                               ; preds = %39, %48
  %50 = phi ptr [ @gRecordCounterStatusAvailable, %48 ], [ @gRecordCounterStatusUnavailable, %39 ]
  %51 = phi ptr [ getelementptr ([0 x i16], ptr @gRecordCounterStatusAvailable, i32 0, i32 1), %48 ], [ getelementptr ([0 x i16], ptr @gRecordCounterStatusUnavailable, i32 0, i32 1), %39 ]
  %52 = phi ptr [ getelementptr ([0 x i16], ptr @gRecordCounterStatusAvailable, i32 0, i32 2), %48 ], [ getelementptr ([0 x i16], ptr @gRecordCounterStatusUnavailable, i32 0, i32 2), %39 ]
  %53 = load i16, ptr %50, align 2
  %54 = getelementptr i16, ptr %0, i32 5
  store i16 %53, ptr %32, align 2
  %55 = load i16, ptr %51, align 2
  %56 = getelementptr i16, ptr %0, i32 6
  store i16 %55, ptr %54, align 2
  %57 = load i16, ptr %52, align 2
  store i16 %57, ptr %56, align 2
  %58 = getelementptr i16, ptr %7, i32 2
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  %61 = lshr i32 %60, 7
  %62 = and i32 %61, 127
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %49
  %65 = add i32 %62, ptrtoint (ptr @gSaveGroup01Block1CC20 to i32)
  %66 = inttoptr i32 %65 to ptr
  %67 = load i8, ptr %66, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %60, 127
  %70 = icmp eq i8 %67, -1
  %71 = icmp ugt i32 %69, %68
  %72 = or i1 %70, %71
  br i1 %72, label %74, label %73

73:                                               ; preds = %64, %49
  br label %74

74:                                               ; preds = %64, %73
  %75 = phi ptr [ @gRecordCounterStatusAvailable, %73 ], [ @gRecordCounterStatusUnavailable, %64 ]
  %76 = phi ptr [ getelementptr ([0 x i16], ptr @gRecordCounterStatusAvailable, i32 0, i32 1), %73 ], [ getelementptr ([0 x i16], ptr @gRecordCounterStatusUnavailable, i32 0, i32 1), %64 ]
  %77 = phi ptr [ getelementptr ([0 x i16], ptr @gRecordCounterStatusAvailable, i32 0, i32 2), %73 ], [ getelementptr ([0 x i16], ptr @gRecordCounterStatusUnavailable, i32 0, i32 2), %64 ]
  %78 = getelementptr i16, ptr %0, i32 7
  %79 = load i16, ptr %75, align 2
  %80 = getelementptr i16, ptr %0, i32 8
  store i16 %79, ptr %78, align 2
  %81 = load i16, ptr %76, align 2
  %82 = getelementptr i16, ptr %0, i32 9
  store i16 %81, ptr %80, align 2
  %83 = load i16, ptr %77, align 2
  store i16 %83, ptr %82, align 2
  %84 = getelementptr i16, ptr %0, i32 10
  %85 = load i16, ptr @gRecordCounterStatusSuffix, align 2
  %86 = getelementptr i16, ptr %0, i32 11
  store i16 %85, ptr %84, align 2
  %87 = load i16, ptr getelementptr ([0 x i16], ptr @gRecordCounterStatusSuffix, i32 0, i32 1), align 2
  %88 = getelementptr i16, ptr %0, i32 12
  store i16 %87, ptr %86, align 2
  %89 = load i16, ptr getelementptr ([0 x i16], ptr @gRecordCounterStatusSuffix, i32 0, i32 2), align 2
  %90 = getelementptr i16, ptr %0, i32 13
  store i16 %89, ptr %88, align 2
  %91 = load i16, ptr getelementptr ([0 x i16], ptr @gRecordCounterStatusSuffix, i32 0, i32 3), align 2
  %92 = getelementptr i16, ptr %0, i32 14
  store i16 %91, ptr %90, align 2
  %93 = load i16, ptr getelementptr ([0 x i16], ptr @gRecordCounterStatusSuffix, i32 0, i32 4), align 2
  %94 = getelementptr i16, ptr %0, i32 15
  store i16 %93, ptr %92, align 2
  %95 = load i16, ptr getelementptr ([0 x i16], ptr @gRecordCounterStatusSuffix, i32 0, i32 5), align 2
  store i16 %95, ptr %94, align 2
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @LoadGameCounterDisplayRows(i32 noundef %0) local_unnamed_addr #2 {
  %2 = and i32 %0, 255
  %3 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %6 = zext i8 %5 to i32
  %7 = add i32 %3, %6
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = mul nuw nsw i32 %10, 20
  %12 = add i32 %11, ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32)
  %13 = inttoptr i32 %12 to ptr
  %14 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %13, i32 0, i32 4
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 14), ptr %13
  %18 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %17, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %19, ptr noundef nonnull @gGameCounterDisplayBuffer, i32 noundef 256, i32 noundef 8, i32 noundef 1024) #6
  %20 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %17, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %21, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 -4096)) #6
  tail call void asm sideeffect "", "r"(ptr %4) #7, !srcloc !4
  %22 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %17, i32 0, i32 1
  %23 = load i8, ptr %22, align 4
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %24 = add i32 %3, %2
  %25 = inttoptr i32 %24 to ptr
  %26 = load i8, ptr %25, align 1
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %27, 20
  %29 = add i32 %28, ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32)
  %30 = inttoptr i32 %29 to ptr
  %31 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %30, i32 0, i32 4
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  %34 = select i1 %33, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 14), ptr %30
  %35 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %34, i32 0, i32 4
  %36 = load ptr, ptr %35, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %36, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 256), i32 noundef 256, i32 noundef 8, i32 noundef 1024) #6
  %37 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %34, i32 0, i32 5
  %38 = load ptr, ptr %37, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %38, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 -4064)) #6
  ret void
}

declare dso_local arm_apcscc void @DecompressStridedRows(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeGameCounterDisplay(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %3 = inttoptr i32 %2 to ptr
  br label %4

4:                                                ; preds = %15, %1
  %5 = phi i32 [ 0, %1 ], [ %17, %15 ]
  %6 = phi i32 [ 0, %1 ], [ %16, %15 ]
  %7 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %5
  %8 = load i8, ptr %7, align 1
  %9 = add i8 %8, -1
  %10 = icmp ult i8 %9, -2
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = trunc i32 %5 to i8
  %13 = add i32 %6, 1
  %14 = getelementptr i8, ptr %3, i32 %6
  store i8 %12, ptr %14, align 1
  br label %15

15:                                               ; preds = %11, %4
  %16 = phi i32 [ %13, %11 ], [ %6, %4 ]
  %17 = add nuw nsw i32 %5, 1
  %18 = icmp eq i32 %17, 32
  br i1 %18, label %19, label %4

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %3, i32 %16
  store i8 0, ptr %20, align 1
  %21 = add i32 %16, -1
  %22 = icmp sgt i32 %16, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %19
  %24 = load i8, ptr @gGameCounterSelectionKey, align 1
  br label %25

25:                                               ; preds = %40, %23
  %26 = phi i32 [ 0, %23 ], [ %41, %40 ]
  %27 = getelementptr i8, ptr %3, i32 %26
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  tail call void asm sideeffect "", "{r6}"(i32 %29) #7, !srcloc !5
  %30 = icmp ugt i8 %24, %28
  br i1 %30, label %40, label %31

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %3, i32 %26
  %33 = tail call ptr asm "", "=r,0"(ptr nonnull @gRasterScriptControlBytes) #8, !srcloc !6
  %34 = getelementptr i8, ptr %33, i32 97
  %35 = trunc i32 %26 to i8
  store i8 %35, ptr %34, align 1
  %36 = load i8, ptr %32, align 1
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = add i8 %35, -1
  store i8 %39, ptr %34, align 1
  br label %43

40:                                               ; preds = %25
  %41 = add nuw nsw i32 %26, 1
  %42 = icmp eq i32 %41, %16
  br i1 %42, label %47, label %25

43:                                               ; preds = %38, %31, %19
  %44 = phi i32 [ 0, %19 ], [ %26, %31 ], [ %26, %38 ]
  %45 = phi ptr [ @gRasterScriptControlBytes, %19 ], [ %33, %31 ], [ %33, %38 ]
  %46 = icmp eq i32 %44, %16
  br i1 %46, label %47, label %52

47:                                               ; preds = %40, %43
  %48 = phi ptr [ %45, %43 ], [ @gRasterScriptControlBytes, %40 ]
  %49 = getelementptr i8, ptr %48, i32 97
  %50 = trunc i32 %16 to i8
  %51 = add i8 %50, -1
  store i8 %51, ptr %49, align 1
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi ptr [ %48, %47 ], [ %45, %43 ]
  %54 = tail call ptr asm "", "=r,0"(ptr %53) #8, !srcloc !7
  %55 = getelementptr i8, ptr %54, i32 97
  %56 = load i8, ptr %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp eq i32 %21, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #6
  br label %60

60:                                               ; preds = %59, %52
  %61 = icmp eq i8 %56, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %60
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  br label %63

63:                                               ; preds = %62, %60
  %64 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %65 = inttoptr i32 %64 to ptr
  %66 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %67 = zext i8 %66 to i32
  %68 = add i32 %64, %67
  %69 = inttoptr i32 %68 to ptr
  %70 = load i8, ptr %69, align 1
  %71 = zext i8 %70 to i32
  %72 = mul nuw nsw i32 %71, 20
  %73 = add i32 %72, ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32)
  %74 = inttoptr i32 %73 to ptr
  %75 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %74, i32 0, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  %78 = select i1 %77, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 14), ptr %74
  %79 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %78, i32 0, i32 4
  %80 = load ptr, ptr %79, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %80, ptr noundef nonnull @gGameCounterDisplayBuffer, i32 noundef 256, i32 noundef 8, i32 noundef 1024) #6
  %81 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %78, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %82, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 -4096)) #6
  tail call void asm sideeffect "", "r"(ptr %65) #7, !srcloc !4
  %83 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %78, i32 0, i32 1
  %84 = load i8, ptr %83, align 4
  store i8 %84, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %85 = load i8, ptr %65, align 1
  %86 = zext i8 %85 to i32
  %87 = mul nuw nsw i32 %86, 20
  %88 = add i32 %87, ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32)
  %89 = inttoptr i32 %88 to ptr
  %90 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %89, i32 0, i32 4
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 14), ptr %89
  %94 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %93, i32 0, i32 4
  %95 = load ptr, ptr %94, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %95, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 256), i32 noundef 256, i32 noundef 8, i32 noundef 1024) #6
  %96 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %93, i32 0, i32 5
  %97 = load ptr, ptr %96, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %97, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 -4064)) #6
  %98 = load i8, ptr %55, align 1
  %99 = tail call i8 @llvm.usub.sat.i8(i8 4, i8 %98)
  %100 = add nuw nsw i32 %57, 1
  %101 = icmp ult i8 %99, 4
  br i1 %101, label %102, label %118

102:                                              ; preds = %63
  %103 = zext nneg i8 %99 to i32
  %104 = shl nuw nsw i32 %103, 2
  %105 = add i32 %104, ptrtoint (ptr @gGameCounterDisplaySlots to i32)
  %106 = inttoptr i32 %105 to ptr
  br label %107

107:                                              ; preds = %107, %102
  %108 = phi ptr [ %106, %102 ], [ %110, %107 ]
  %109 = phi i32 [ %103, %102 ], [ %116, %107 ]
  %110 = getelementptr i32, ptr %108, i32 1
  %111 = load i32, ptr %108, align 4
  %112 = trunc i32 %111 to i8
  %113 = trunc i32 %109 to i16
  %114 = shl i16 %113, 4
  %115 = sext i16 %114 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %112, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %115, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterDisplayAnimation) #6
  %116 = add nuw nsw i32 %109, 1
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %118, label %107

118:                                              ; preds = %107, %63
  %119 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %120 = zext i8 %119 to i32
  %121 = icmp ult i32 %100, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %118
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 25, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 176, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterDisplayAnimation) #6
  %123 = add nuw nsw i32 %57, 2
  %124 = icmp ult i32 %123, %120
  br i1 %124, label %125, label %132

125:                                              ; preds = %122
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 26, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 192, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterDisplayAnimation) #6
  %126 = add nuw nsw i32 %57, 3
  %127 = icmp ult i32 %126, %120
  br i1 %127, label %128, label %132

128:                                              ; preds = %125
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 27, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 208, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterDisplayAnimation) #6
  %129 = add nuw nsw i32 %57, 4
  %130 = icmp ult i32 %129, %120
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 28, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef 224, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterDisplayAnimation) #6
  br label %132

132:                                              ; preds = %122, %125, %128, %131, %118
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackLoadSelectedGameCounterTextGraphics(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %3 = zext i8 %2 to i32
  %4 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %5 = inttoptr i32 %4 to ptr
  %6 = getelementptr i8, ptr %5, i32 %3
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i32
  %9 = mul nuw nsw i32 %8, 5
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr ptr, ptr @gGameCounterLocalizedGraphics, i32 %9
  %13 = getelementptr ptr, ptr %12, i32 %11
  %14 = load ptr, ptr %13, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %14, ptr noundef nonnull @gGameCounterTextGraphicsBuffer) #6
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectNextGameCounter(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %4 = zext i8 %2 to i32
  %5 = add nsw i32 %4, -1
  %6 = zext i8 %3 to i32
  %7 = icmp sgt i32 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  br label %105

9:                                                ; preds = %1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %10 = add i8 %3, 1
  store i8 %10, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ugt i32 %5, %11
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 0) #6
  br label %14

14:                                               ; preds = %13, %9
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 8, i8 noundef zeroext 1) #6
  %15 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %16 = inttoptr i32 %15 to ptr
  %17 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %18 = zext i8 %17 to i32
  %19 = add i32 %15, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = mul nuw nsw i32 %22, 20
  %24 = add i32 %23, ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32)
  %25 = inttoptr i32 %24 to ptr
  %26 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %25, i32 0, i32 4
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  %29 = select i1 %28, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 14), ptr %25
  %30 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %29, i32 0, i32 4
  %31 = load ptr, ptr %30, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %31, ptr noundef nonnull @gGameCounterDisplayBuffer, i32 noundef 256, i32 noundef 8, i32 noundef 1024) #6
  %32 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %29, i32 0, i32 5
  %33 = load ptr, ptr %32, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %33, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 -4096)) #6
  tail call void asm sideeffect "", "r"(ptr %16) #7, !srcloc !4
  %34 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %29, i32 0, i32 1
  %35 = load i8, ptr %34, align 4
  store i8 %35, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %36 = add i32 %15, %6
  %37 = inttoptr i32 %36 to ptr
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = mul nuw nsw i32 %39, 20
  %41 = add i32 %40, ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32)
  %42 = inttoptr i32 %41 to ptr
  %43 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %42, i32 0, i32 4
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  %46 = select i1 %45, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 14), ptr %42
  %47 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %46, i32 0, i32 4
  %48 = load ptr, ptr %47, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %48, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 256), i32 noundef 256, i32 noundef 8, i32 noundef 1024) #6
  %49 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %46, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %50, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 -4064)) #6
  %51 = load i32, ptr @gGameCounterDisplaySlots, align 4
  %52 = trunc i32 %51 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %52, i8 noundef zeroext 0) #6
  %53 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 1), align 4
  %54 = trunc i32 %53 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %54, i8 noundef zeroext 0) #6
  %55 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 2), align 4
  %56 = trunc i32 %55 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %56, i8 noundef zeroext 0) #6
  %57 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 3), align 4
  %58 = trunc i32 %57 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %58, i8 noundef zeroext 0) #6
  %59 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 4), align 4
  %60 = trunc i32 %59 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %60, i8 noundef zeroext 0) #6
  %61 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 5), align 4
  %62 = trunc i32 %61 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %62, i8 noundef zeroext 0) #6
  %63 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 6), align 4
  %64 = trunc i32 %63 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %64, i8 noundef zeroext 0) #6
  %65 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 7), align 4
  %66 = trunc i32 %65 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %66, i8 noundef zeroext 0) #6
  %67 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 8), align 4
  %68 = trunc i32 %67 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %68, i8 noundef zeroext 0) #6
  %69 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 9), align 4
  %70 = trunc i32 %69 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %70, i8 noundef zeroext 0) #6
  %71 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 10), align 4
  %72 = trunc i32 %71 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %72, i8 noundef zeroext 0) #6
  %73 = add nuw nsw i32 %11, 5
  %74 = icmp ult i8 %3, 4
  %75 = sub nuw nsw i32 4, %6
  %76 = select i1 %74, i32 %75, i32 0
  %77 = icmp ult i32 %76, 4
  br i1 %77, label %78, label %88

78:                                               ; preds = %14, %78
  %79 = phi i32 [ %86, %78 ], [ %76, %14 ]
  %80 = shl nuw nsw i32 %79, 2
  %81 = add i32 %80, ptrtoint (ptr @gGameCounterDisplaySlots to i32)
  %82 = inttoptr i32 %81 to ptr
  %83 = load i8, ptr %82, align 4
  %84 = shl i32 %79, 4
  %85 = and i32 %84, 65520
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %83, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %85, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterForwardAnimation) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %83, i8 noundef zeroext 0) #6
  %86 = add nuw nsw i32 %79, 1
  %87 = icmp slt i32 %79, 3
  br i1 %87, label %78, label %88

88:                                               ; preds = %78, %14
  %89 = icmp ugt i32 %73, %4
  %90 = xor i32 %11, -1
  %91 = add nsw i32 %90, %4
  %92 = select i1 %89, i32 %91, i32 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %88, %94
  %95 = phi ptr [ %98, %94 ], [ getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 6), %88 ]
  %96 = phi i32 [ %103, %94 ], [ 0, %88 ]
  %97 = phi i32 [ %102, %94 ], [ 12582912, %88 ]
  %98 = getelementptr i32, ptr %95, i32 1
  %99 = load i32, ptr %95, align 4
  tail call void asm sideeffect "", "r"(ptr %98) #7, !srcloc !8
  %100 = trunc i32 %99 to i8
  %101 = lshr exact i32 %97, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %100, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %101, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterForwardAnimation) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %100, i8 noundef zeroext 0) #6
  %102 = add nuw nsw i32 %97, 1048576
  %103 = add nuw nsw i32 %96, 1
  %104 = icmp slt i32 %103, %92
  br i1 %104, label %94, label %105

105:                                              ; preds = %94, %88, %8
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSelectPreviousGameCounter(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  br label %105

7:                                                ; preds = %1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  %8 = add i8 %3, -1
  store i8 %8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 8, i8 noundef zeroext 0) #6
  br label %11

11:                                               ; preds = %10, %7
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 9, i8 noundef zeroext 1) #6
  %12 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %13 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %14 = inttoptr i32 %13 to ptr
  %15 = zext i8 %12 to i32
  %16 = add i32 %13, %15
  %17 = inttoptr i32 %16 to ptr
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i32
  %20 = mul nuw nsw i32 %19, 20
  %21 = add i32 %20, ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32)
  %22 = inttoptr i32 %21 to ptr
  %23 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %22, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 14), ptr %22
  %27 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %26, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %28, ptr noundef nonnull @gGameCounterDisplayBuffer, i32 noundef 256, i32 noundef 8, i32 noundef 1024) #6
  %29 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %26, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %30, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 -4096)) #6
  tail call void asm sideeffect "", "r"(ptr %14) #7, !srcloc !4
  %31 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %26, i32 0, i32 1
  %32 = load i8, ptr %31, align 4
  store i8 %32, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 99), align 1
  %33 = add i32 %13, %4
  %34 = inttoptr i32 %33 to ptr
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = mul nuw nsw i32 %36, 20
  %38 = add i32 %37, ptrtoint (ptr @gGameCounterDescriptorsD0D8 to i32)
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %39, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  %43 = select i1 %42, ptr getelementptr ([0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 14), ptr %39
  %44 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %43, i32 0, i32 4
  %45 = load ptr, ptr %44, align 4
  tail call arm_apcscc void @DecompressStridedRows(ptr noundef %45, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 256), i32 noundef 256, i32 noundef 8, i32 noundef 1024) #6
  %46 = getelementptr inbounds %struct.GameCounterDescriptor, ptr %43, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %47, ptr noundef getelementptr ([0 x i8], ptr @gGameCounterDisplayBuffer, i32 0, i32 -4064)) #6
  %48 = load i32, ptr @gGameCounterDisplaySlots, align 4
  %49 = trunc i32 %48 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %49, i8 noundef zeroext 0) #6
  %50 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 1), align 4
  %51 = trunc i32 %50 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %51, i8 noundef zeroext 0) #6
  %52 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 2), align 4
  %53 = trunc i32 %52 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %53, i8 noundef zeroext 0) #6
  %54 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 3), align 4
  %55 = trunc i32 %54 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %55, i8 noundef zeroext 0) #6
  %56 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 4), align 4
  %57 = trunc i32 %56 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %57, i8 noundef zeroext 0) #6
  %58 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 5), align 4
  %59 = trunc i32 %58 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %59, i8 noundef zeroext 0) #6
  %60 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 6), align 4
  %61 = trunc i32 %60 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %61, i8 noundef zeroext 0) #6
  %62 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 7), align 4
  %63 = trunc i32 %62 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %63, i8 noundef zeroext 0) #6
  %64 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 8), align 4
  %65 = trunc i32 %64 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %65, i8 noundef zeroext 0) #6
  %66 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 9), align 4
  %67 = trunc i32 %66 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %67, i8 noundef zeroext 0) #6
  %68 = load i32, ptr getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 10), align 4
  %69 = trunc i32 %68 to i8
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext %69, i8 noundef zeroext 0) #6
  %70 = add nuw nsw i32 %4, 4
  %71 = tail call i8 @llvm.usub.sat.i8(i8 4, i8 %12)
  %72 = icmp ult i8 %71, 4
  br i1 %72, label %73, label %88

73:                                               ; preds = %11
  %74 = zext nneg i8 %71 to i32
  %75 = shl nuw nsw i32 %74, 20
  %76 = add nsw i32 %75, -1048576
  br label %77

77:                                               ; preds = %77, %73
  %78 = phi i32 [ %76, %73 ], [ %85, %77 ]
  %79 = phi i32 [ %74, %73 ], [ %86, %77 ]
  %80 = shl i32 %79, 2
  %81 = add i32 %80, ptrtoint (ptr @gGameCounterDisplaySlots to i32)
  %82 = inttoptr i32 %81 to ptr
  %83 = load i8, ptr %82, align 4
  %84 = ashr exact i32 %78, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %83, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %84, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterBackwardAnimation) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %83, i8 noundef zeroext 0) #6
  %85 = add nsw i32 %78, 1048576
  %86 = add nuw nsw i32 %79, 1
  %87 = icmp eq i32 %86, 4
  br i1 %87, label %88, label %77

88:                                               ; preds = %77, %11
  %89 = zext i8 %2 to i32
  %90 = icmp ugt i32 %70, %89
  %91 = sub nsw i32 %89, %4
  %92 = select i1 %90, i32 %91, i32 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %88, %94
  %95 = phi ptr [ %98, %94 ], [ getelementptr ([0 x i32], ptr @gGameCounterDisplaySlots, i32 0, i32 6), %88 ]
  %96 = phi i32 [ %102, %94 ], [ 10485760, %88 ]
  %97 = phi i32 [ %103, %94 ], [ 0, %88 ]
  %98 = getelementptr i32, ptr %95, i32 1
  %99 = load i32, ptr %95, align 4
  tail call void asm sideeffect "", "r"(ptr %98) #7, !srcloc !9
  %100 = trunc i32 %99 to i8
  %101 = lshr exact i32 %96, 16
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %100, i8 noundef zeroext 1, i8 noundef zeroext 113, i32 noundef %101, i32 noundef 48, i32 noundef 0, ptr noundef nonnull @gGameCounterBackwardAnimation) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext %100, i8 noundef zeroext 0) #6
  tail call void asm sideeffect "", "{r1}"(i32 1048576) #7, !srcloc !10
  %102 = add nuw nsw i32 %96, 1048576
  %103 = add nuw nsw i32 %97, 1
  %104 = icmp slt i32 %103, %92
  br i1 %104, label %94, label %105

105:                                              ; preds = %94, %88, %6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCaptureSelectedGameCounter(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %3 = load i32, ptr @gTaskTextVariables2BB0, align 4
  %4 = inttoptr i32 %3 to ptr
  %5 = zext i8 %2 to i32
  %6 = getelementptr i8, ptr %4, i32 %5
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 9), align 1
  store i8 %7, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 421), align 1
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.usub.sat.i8(i8, i8) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nobuiltin nounwind "no-builtins" }
attributes #7 = { nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 3506}
!5 = !{i64 5132}
!6 = !{i64 5247}
!7 = !{i64 5785}
!8 = !{i64 9606}
!9 = !{i64 12257}
!10 = !{i64 12607}
