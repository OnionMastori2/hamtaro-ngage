; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gSaveDataVerifyCallback = external dso_local local_unnamed_addr global ptr, align 4
@gSaveDataIdentity = external dso_local global [16 x i8], align 1
@gSaveDataPrimarySources = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gSaveDataBackupSources = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gUnknown2BF4 = external dso_local local_unnamed_addr global i32, align 4
@gSaveDataBuffer = external dso_local global [0 x i8], align 1
@gSaveDataBackupBuffer = external dso_local global [0 x i8], align 1
@gSaveDataInitField10 = external dso_local local_unnamed_addr global ptr, align 4
@gSaveDataInitField1B = external dso_local local_unnamed_addr global ptr, align 4
@gSaveDataMarkerBytes = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeSaveStorage() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #3
  %2 = load ptr, ptr @gSaveDataVerifyCallback, align 4
  %3 = load ptr, ptr @gSaveDataPrimarySources, align 4
  %4 = tail call arm_apcscc i32 %2(ptr noundef nonnull @gSaveDataIdentity, ptr noundef %3, i32 noundef 16) #4
  %5 = load ptr, ptr @gSaveDataVerifyCallback, align 4
  %6 = load ptr, ptr @gSaveDataBackupSources, align 4
  %7 = tail call arm_apcscc i32 %5(ptr noundef nonnull @gSaveDataIdentity, ptr noundef %6, i32 noundef 16) #4
  %8 = load i32, ptr @gUnknown2BF4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %11, %0
  br label %38

11:                                               ; preds = %0
  %12 = icmp eq i32 %4, 0
  %13 = icmp eq i32 %7, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %10

15:                                               ; preds = %11
  %16 = load i8, ptr @gSaveDataIdentity, align 1
  store i8 %16, ptr @gSaveDataBuffer, align 1
  store i8 %16, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16384), align 1
  %17 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 1), align 1
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 1), align 1
  store i8 %17, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16385), align 1
  %18 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 2), align 1
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 2), align 1
  store i8 %18, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16386), align 1
  %19 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 3), align 1
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 3), align 1
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16387), align 1
  %20 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 4), align 1
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 4), align 1
  store i8 %20, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16388), align 1
  %21 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 5), align 1
  store i8 %21, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 5), align 1
  store i8 %21, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16389), align 1
  %22 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 6), align 1
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 6), align 1
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16390), align 1
  %23 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 7), align 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 7), align 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16391), align 1
  %24 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 8), align 1
  store i8 %24, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 8), align 1
  store i8 %24, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16392), align 1
  %25 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 9), align 1
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 9), align 1
  store i8 %25, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16393), align 1
  %26 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 10), align 1
  store i8 %26, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 10), align 1
  store i8 %26, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16394), align 1
  %27 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 11), align 1
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 11), align 1
  store i8 %27, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16395), align 1
  %28 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 12), align 1
  store i8 %28, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 12), align 1
  store i8 %28, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16396), align 1
  %29 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 13), align 1
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 13), align 1
  store i8 %29, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16397), align 1
  %30 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 14), align 1
  store i8 %30, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 14), align 1
  store i8 %30, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16398), align 1
  %31 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 15), align 1
  store i8 %31, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 15), align 1
  store i8 %31, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16399), align 1
  br i1 %12, label %35, label %32

32:                                               ; preds = %15
  br i1 %13, label %33, label %116

33:                                               ; preds = %32
  %34 = tail call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull @gSaveDataBuffer, ptr noundef nonnull inttoptr (i32 234881024 to ptr), i32 noundef 16) #4
  br label %116

35:                                               ; preds = %15
  br i1 %13, label %116, label %36

36:                                               ; preds = %35
  %37 = tail call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull @gSaveDataBackupBuffer, ptr noundef nonnull inttoptr (i32 234897408 to ptr), i32 noundef 16) #4
  br label %116

38:                                               ; preds = %10, %114
  %39 = load i8, ptr @gSaveDataIdentity, align 1
  store i8 %39, ptr @gSaveDataBuffer, align 1
  store i8 %39, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16384), align 1
  %40 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 1), align 1
  store i8 %40, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 1), align 1
  store i8 %40, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16385), align 1
  %41 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 2), align 1
  store i8 %41, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 2), align 1
  store i8 %41, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16386), align 1
  %42 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 3), align 1
  store i8 %42, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 3), align 1
  store i8 %42, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16387), align 1
  %43 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 4), align 1
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 4), align 1
  store i8 %43, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16388), align 1
  %44 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 5), align 1
  store i8 %44, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 5), align 1
  store i8 %44, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16389), align 1
  %45 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 6), align 1
  store i8 %45, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 6), align 1
  store i8 %45, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16390), align 1
  %46 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 7), align 1
  store i8 %46, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 7), align 1
  store i8 %46, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16391), align 1
  %47 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 8), align 1
  store i8 %47, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 8), align 1
  store i8 %47, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16392), align 1
  %48 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 9), align 1
  store i8 %48, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 9), align 1
  store i8 %48, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16393), align 1
  %49 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 10), align 1
  store i8 %49, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 10), align 1
  store i8 %49, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16394), align 1
  %50 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 11), align 1
  store i8 %50, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 11), align 1
  store i8 %50, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16395), align 1
  %51 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 12), align 1
  store i8 %51, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 12), align 1
  store i8 %51, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16396), align 1
  %52 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 13), align 1
  store i8 %52, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 13), align 1
  store i8 %52, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16397), align 1
  %53 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 14), align 1
  store i8 %53, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 14), align 1
  store i8 %53, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16398), align 1
  %54 = load i8, ptr getelementptr inbounds ([16 x i8], ptr @gSaveDataIdentity, i32 0, i32 15), align 1
  store i8 %54, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 15), align 1
  store i8 %54, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16399), align 1
  store i8 67, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16393), align 1
  store i8 67, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 9), align 1
  store i8 108, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16394), align 1
  store i8 108, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 10), align 1
  store i8 114, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16395), align 1
  store i8 114, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 11), align 1
  %55 = load ptr, ptr @gSaveDataInitField10, align 4
  %56 = load i8, ptr %55, align 1
  store i8 %56, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16), align 1
  store i8 %56, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16400), align 1
  %57 = getelementptr i8, ptr %55, i32 1
  %58 = load i8, ptr %57, align 1
  store i8 %58, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 17), align 1
  store i8 %58, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16401), align 1
  %59 = getelementptr i8, ptr %55, i32 2
  %60 = load i8, ptr %59, align 1
  store i8 %60, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 18), align 1
  store i8 %60, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16402), align 1
  %61 = getelementptr i8, ptr %55, i32 3
  %62 = load i8, ptr %61, align 1
  store i8 %62, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 19), align 1
  store i8 %62, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16403), align 1
  %63 = getelementptr i8, ptr %55, i32 4
  %64 = load i8, ptr %63, align 1
  store i8 %64, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 20), align 1
  store i8 %64, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16404), align 1
  %65 = getelementptr i8, ptr %55, i32 5
  %66 = load i8, ptr %65, align 1
  store i8 %66, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 21), align 1
  store i8 %66, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16405), align 1
  %67 = getelementptr i8, ptr %55, i32 6
  %68 = load i8, ptr %67, align 1
  store i8 %68, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 22), align 1
  store i8 %68, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16406), align 1
  %69 = getelementptr i8, ptr %55, i32 7
  %70 = load i8, ptr %69, align 1
  store i8 %70, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 23), align 1
  store i8 %70, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16407), align 1
  %71 = getelementptr i8, ptr %55, i32 8
  %72 = load i8, ptr %71, align 1
  store i8 %72, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 24), align 1
  store i8 %72, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16408), align 1
  %73 = getelementptr i8, ptr %55, i32 9
  %74 = load i8, ptr %73, align 1
  store i8 %74, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 25), align 1
  store i8 %74, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16409), align 1
  %75 = getelementptr i8, ptr %55, i32 10
  %76 = load i8, ptr %75, align 1
  store i8 %76, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 26), align 1
  store i8 %76, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16410), align 1
  %77 = load ptr, ptr @gSaveDataInitField1B, align 4
  %78 = load i8, ptr %77, align 1
  store i8 %78, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 27), align 1
  store i8 %78, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16411), align 1
  %79 = getelementptr i8, ptr %77, i32 1
  %80 = load i8, ptr %79, align 1
  store i8 %80, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 28), align 1
  store i8 %80, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16412), align 1
  %81 = getelementptr i8, ptr %77, i32 2
  %82 = load i8, ptr %81, align 1
  store i8 %82, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 29), align 1
  store i8 %82, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16413), align 1
  %83 = getelementptr i8, ptr %77, i32 3
  %84 = load i8, ptr %83, align 1
  store i8 %84, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 30), align 1
  store i8 %84, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16414), align 1
  %85 = getelementptr i8, ptr %77, i32 4
  %86 = load i8, ptr %85, align 1
  store i8 %86, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 31), align 1
  store i8 %86, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16415), align 1
  %87 = getelementptr i8, ptr %77, i32 5
  %88 = load i8, ptr %87, align 1
  store i8 %88, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 32), align 1
  store i8 %88, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16416), align 1
  %89 = getelementptr i8, ptr %77, i32 6
  %90 = load i8, ptr %89, align 1
  store i8 %90, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 33), align 1
  store i8 %90, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16417), align 1
  %91 = getelementptr i8, ptr %77, i32 7
  %92 = load i8, ptr %91, align 1
  store i8 %92, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 34), align 1
  store i8 %92, ptr getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 16418), align 1
  %93 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull @gSaveDataBuffer, ptr noundef nonnull inttoptr (i32 234881024 to ptr), i32 noundef 32768) #4
  call arm_apcscc void @WriteSaveRecord(i32 noundef 1, i32 noundef 0) #4
  call arm_apcscc void @WriteSaveRecord(i32 noundef 2, i32 noundef 0) #4
  call arm_apcscc void @WriteSaveRecord(i32 noundef 3, i32 noundef 0) #4
  br label %94

94:                                               ; preds = %38, %94
  %95 = phi i32 [ 0, %38 ], [ %97, %94 ]
  %96 = call arm_apcscc i32 @InitializeIndexedCommunicationRecord(i32 noundef %95) #4
  call arm_apcscc void @WriteSaveRecord(i32 noundef 4, i32 noundef %95) #4
  %97 = add nuw nsw i32 %95, 1
  %98 = icmp eq i32 %97, 51
  br i1 %98, label %99, label %94

99:                                               ; preds = %94
  store i32 0, ptr @gUnknown2BF4, align 4
  store i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr @gSaveDataBuffer, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063589376, ptr inttoptr (i32 67109084 to ptr), align 4
  %100 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %101 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 9), ptr noundef nonnull inttoptr (i32 234881033 to ptr), i32 noundef 3) #4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 9), ptr noundef nonnull inttoptr (i32 234881033 to ptr), i32 noundef 3) #4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  call arm_apcscc void @WriteSram(ptr noundef getelementptr ([0 x i8], ptr @gSaveDataBuffer, i32 0, i32 9), ptr noundef nonnull inttoptr (i32 234881033 to ptr), i32 noundef 3) #4
  br label %107

107:                                              ; preds = %103, %106, %99
  %108 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull @gSaveDataMarkerBytes, ptr noundef nonnull inttoptr (i32 234897417 to ptr), i32 noundef 3) #4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %107
  %111 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull @gSaveDataMarkerBytes, ptr noundef nonnull inttoptr (i32 234897417 to ptr), i32 noundef 3) #4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  call arm_apcscc void @WriteSram(ptr noundef nonnull @gSaveDataMarkerBytes, ptr noundef nonnull inttoptr (i32 234897417 to ptr), i32 noundef 3) #4
  br label %114

114:                                              ; preds = %110, %113, %107
  %115 = icmp eq i32 %93, 0
  br i1 %115, label %116, label %38

116:                                              ; preds = %114, %33, %32, %36, %35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @WriteAndVerifySram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @WriteSaveRecord(i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @InitializeIndexedCommunicationRecord(...) local_unnamed_addr #2

declare dso_local arm_apcscc void @WriteSram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
