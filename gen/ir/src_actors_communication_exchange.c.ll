; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.CommunicationExchangeStorage = type { i8, [16 x i8], %struct.CommunicationExchangeState }
%struct.CommunicationExchangeState = type { i8, i8, i8 }

@gCommunicationExchangeStorage = external dso_local local_unnamed_addr global %struct.CommunicationExchangeStorage, align 1
@gCommunicationContextPointer = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gCommunicationWord2F10 = external dso_local local_unnamed_addr global i16, align 2
@gCommunicationRetryCount = external dso_local local_unnamed_addr global i8, align 1
@gCommunicationBlock3B50 = external dso_local global [0 x i16], align 2
@gCommunicationFlag2F30 = external dso_local local_unnamed_addr global i8, align 1
@gCommunicationBlock3950 = external dso_local global [0 x i16], align 2
@gCommunicationWord2F00 = external dso_local local_unnamed_addr global i16, align 2
@gCommunicationReceivedRecord = external dso_local global [0 x i8], align 1
@gCommunicationStatus = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ProcessCommunicationExchange() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = load ptr, ptr @gCommunicationContextPointer, align 4
  %3 = getelementptr i8, ptr %2, i32 11020
  %4 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  switch i8 %4, label %139 [
    i8 0, label %5
    i8 1, label %25
    i8 2, label %54
    i8 4, label %97
    i8 5, label %131
    i8 6, label %135
  ]

5:                                                ; preds = %0
  %6 = load i32, ptr @gCommunicationStatus, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %5
  %9 = and i32 %6, 12288
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = and i32 %6, 128
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %6, 3
  %15 = select i1 %13, i32 1, i32 2
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %8, %11
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 411), align 1
  %19 = add i8 %18, -1
  store i8 %19, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 411), align 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %139

21:                                               ; preds = %17
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

22:                                               ; preds = %5, %11
  %23 = load i16, ptr @gCommunicationWord2F10, align 2
  switch i16 %23, label %139 [
    i16 -317, label %24
    i16 -319, label %24
    i16 -320, label %24
  ]

24:                                               ; preds = %22, %22, %22
  store i8 4, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

25:                                               ; preds = %0
  %26 = load i16, ptr @gCommunicationWord2F10, align 2
  %27 = icmp eq i16 %26, -317
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load i8, ptr @gCommunicationRetryCount, align 1
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %28
  %32 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 4) #4
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  tail call arm_apcscc void @InitializeCommunicationMode2(ptr noundef nonnull @gCommunicationBlock3B50) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  %35 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 5, i16 noundef zeroext 11) #4
  %36 = trunc i16 %35 to i8
  store i8 %36, ptr @gCommunicationRetryCount, align 1
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

37:                                               ; preds = %31
  tail call arm_apcscc void @InitializeCommunicationMode1(ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 256) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  %38 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 5, i16 noundef zeroext 11) #4
  %39 = trunc i16 %38 to i8
  store i8 %39, ptr @gCommunicationRetryCount, align 1
  br label %139

40:                                               ; preds = %28
  tail call arm_apcscc void @InitializeCommunicationMode1(ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 256) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  %41 = load i8, ptr @gCommunicationRetryCount, align 1
  %42 = add i8 %41, -1
  store i8 %42, ptr @gCommunicationRetryCount, align 1
  br label %139

43:                                               ; preds = %25
  %44 = load i8, ptr @gCommunicationFlag2F30, align 1
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

47:                                               ; preds = %43
  %48 = icmp eq i16 %26, -316
  br i1 %48, label %49, label %139

49:                                               ; preds = %47
  %50 = load i16, ptr @gCommunicationBlock3950, align 2
  switch i16 %50, label %53 [
    i16 255, label %51
    i16 254, label %52
  ]

51:                                               ; preds = %49
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

52:                                               ; preds = %49
  store i8 1, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

53:                                               ; preds = %49
  store i16 255, ptr @gCommunicationBlock3950, align 2
  store i8 5, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

54:                                               ; preds = %0
  %55 = load i16, ptr @gCommunicationWord2F10, align 2
  %56 = icmp eq i16 %55, -319
  %57 = load i16, ptr @gCommunicationWord2F00, align 2
  %58 = icmp eq i16 %57, -319
  %59 = select i1 %56, i1 true, i1 %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %54
  %61 = load i16, ptr @gCommunicationBlock3950, align 2
  %62 = icmp eq i16 %61, 255
  br i1 %62, label %139, label %63

63:                                               ; preds = %60
  %64 = load i8, ptr @gCommunicationRetryCount, align 1
  %65 = icmp eq i8 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 0, i16 noundef zeroext 4) #4
  %68 = icmp eq i16 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  tail call arm_apcscc void @InitializeCommunicationMode1(ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 256) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  %70 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 5, i16 noundef zeroext 11) #4
  %71 = trunc i16 %70 to i8
  store i8 %71, ptr @gCommunicationRetryCount, align 1
  store i8 1, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

72:                                               ; preds = %66
  tail call arm_apcscc void @InitializeCommunicationMode2(ptr noundef nonnull @gCommunicationBlock3B50) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  %73 = tail call arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext 5, i16 noundef zeroext 11) #4
  %74 = trunc i16 %73 to i8
  store i8 %74, ptr @gCommunicationRetryCount, align 1
  br label %139

75:                                               ; preds = %63
  tail call arm_apcscc void @InitializeCommunicationMode2(ptr noundef nonnull @gCommunicationBlock3B50) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  %76 = load i8, ptr @gCommunicationRetryCount, align 1
  %77 = add i8 %76, -1
  store i8 %77, ptr @gCommunicationRetryCount, align 1
  br label %139

78:                                               ; preds = %54
  %79 = load i8, ptr @gCommunicationFlag2F30, align 1
  %80 = icmp eq i8 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  store i8 4, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

82:                                               ; preds = %78
  %83 = icmp eq i16 %55, -318
  br i1 %83, label %84, label %139

84:                                               ; preds = %82
  %85 = load i16, ptr @gCommunicationBlock3B50, align 2
  switch i16 %85, label %88 [
    i16 254, label %86
    i16 255, label %87
  ]

86:                                               ; preds = %84
  store i8 1, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

87:                                               ; preds = %84
  tail call arm_apcscc void @InitializeCommunicationMode1(ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 256) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

88:                                               ; preds = %84
  %89 = trunc i16 %85 to i8
  store i8 %89, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  tail call arm_apcscc void @CopyBytes16(ptr noundef getelementptr ([0 x i16], ptr @gCommunicationBlock3B50, i32 0, i32 1), ptr noundef nonnull @gCommunicationReceivedRecord, i16 noundef zeroext 128) #4
  store i8 3, ptr @gCommunicationReceivedRecord, align 1
  %90 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %91 = zext i8 %90 to i32
  %92 = getelementptr i8, ptr %3, i32 %91
  store i8 1, ptr %92, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 645, i32 noundef 1) #4
  %93 = load i16, ptr @gCommunicationBlock3950, align 2
  %94 = icmp eq i16 %93, 255
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #5
  store i32 0, ptr %1, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %1, ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 83886144) #4
  store i16 254, ptr @gCommunicationBlock3950, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #5
  br label %96

96:                                               ; preds = %95, %88
  store i8 6, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

97:                                               ; preds = %0
  %98 = load i32, ptr @gCommunicationStatus, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %114, label %100

100:                                              ; preds = %97
  %101 = and i32 %98, 12288
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = and i32 %98, 128
  %105 = icmp eq i32 %104, 0
  %106 = and i32 %98, 3
  %107 = select i1 %105, i32 1, i32 2
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %114, label %109

109:                                              ; preds = %100, %103
  %110 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 411), align 1
  %111 = add i8 %110, -1
  store i8 %111, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 411), align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %109
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  store i8 3, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

114:                                              ; preds = %97, %103
  %115 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 1), align 1
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %114
  store i8 0, ptr @gCommunicationRetryCount, align 1
  %118 = load i16, ptr @gCommunicationWord2F10, align 2
  switch i16 %118, label %121 [
    i16 -319, label %119
    i16 -317, label %120
  ]

119:                                              ; preds = %117
  tail call arm_apcscc void @InitializeCommunicationMode1(ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 256) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  store i8 1, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

120:                                              ; preds = %117
  tail call arm_apcscc void @InitializeCommunicationMode2(ptr noundef nonnull @gCommunicationBlock3B50) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

121:                                              ; preds = %117
  %122 = load i16, ptr @gCommunicationBlock3950, align 2
  %123 = icmp eq i16 %122, 255
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  tail call arm_apcscc void @InitializeCommunicationMode2(ptr noundef nonnull @gCommunicationBlock3B50) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

125:                                              ; preds = %121
  tail call arm_apcscc void @InitializeCommunicationMode1(ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 256) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  store i8 1, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

126:                                              ; preds = %114
  store i8 0, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 1), align 1
  %127 = load i16, ptr @gCommunicationWord2F10, align 2
  %128 = and i16 %127, -3
  %129 = icmp eq i16 %128, -319
  %130 = zext i1 %129 to i8
  store i8 %130, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 1), align 1
  br label %139

131:                                              ; preds = %0
  %132 = load i16, ptr @gCommunicationWord2F10, align 2
  %133 = icmp eq i16 %132, -320
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  tail call arm_apcscc void @InitializeCommunicationMode2(ptr noundef nonnull @gCommunicationBlock3B50) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  store i8 0, ptr @gCommunicationRetryCount, align 1
  store i8 2, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

135:                                              ; preds = %0
  %136 = load i16, ptr @gCommunicationWord2F10, align 2
  %137 = icmp eq i16 %136, -320
  br i1 %137, label %138, label %139

138:                                              ; preds = %135
  tail call arm_apcscc void @InitializeCommunicationMode1(ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 256) #4
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  store i8 1, ptr @gCommunicationRetryCount, align 1
  store i8 1, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  br label %139

139:                                              ; preds = %113, %109, %126, %120, %125, %124, %119, %75, %72, %69, %60, %86, %96, %87, %82, %81, %47, %46, %34, %37, %40, %52, %53, %51, %24, %22, %135, %138, %131, %134, %21, %17, %0
  store i8 0, ptr @gCommunicationFlag2F30, align 1
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @HasCommunicationStatusError() local_unnamed_addr #2 {
  %1 = load i32, ptr @gCommunicationStatus, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %14, label %3

3:                                                ; preds = %0
  %4 = and i32 %1, 12288
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %14

6:                                                ; preds = %3
  %7 = and i32 %1, 128
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %1, 3
  br i1 %8, label %12, label %10

10:                                               ; preds = %6
  %11 = icmp ne i32 %9, 2
  br label %14

12:                                               ; preds = %6
  %13 = icmp ne i32 %9, 1
  br label %14

14:                                               ; preds = %12, %10, %3, %0
  %15 = phi i1 [ false, %0 ], [ true, %3 ], [ %11, %10 ], [ %13, %12 ]
  %16 = zext i1 %15 to i8
  ret i8 %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc zeroext i16 @RandomRange(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

declare dso_local arm_apcscc void @InitializeCommunicationMode2(ptr noundef) local_unnamed_addr #3

declare dso_local arm_apcscc void @InitializeCommunicationMode1(ptr noundef, i32 noundef) local_unnamed_addr #3

declare dso_local arm_apcscc void @CopyBytes16(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
