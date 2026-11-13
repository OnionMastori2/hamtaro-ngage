; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.IndexedCommunicationResource = type { ptr, ptr, ptr, i32, i16, i16, i16, i8, [5 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gCommunicationAvailableFlagList = external dso_local global [0 x i8], align 1
@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1
@gCommunicationRowTaskContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gWordChoiceTileAttributes = external dso_local global [0 x i16], align 2
@gCommunicationTaskContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gCommunicationContextPointer = external dso_local local_unnamed_addr global ptr, align 4
@gIndexedCommunicationTexts = external dso_local constant [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gCommunicationFlagOrder = external dso_local constant [0 x i8], align 1
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gIndexedCommunicationResources = external dso_local local_unnamed_addr constant [0 x %struct.IndexedCommunicationResource], align 4
@gCommunicationReceivedRecord = external dso_local local_unnamed_addr global [0 x i8], align 1
@gCommunicationPayloadFlagValues = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareCommunicationRenderContexts(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  %3 = load ptr, ptr @gRenderSlots, align 4
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  %5 = zext i8 %4 to i32
  %6 = getelementptr %struct.RenderSlot, ptr %3, i32 %5
  %7 = tail call arm_apcscc ptr @memcpy(ptr noundef nonnull @gSaveGroup01Block2EB0, ptr noundef %6, i32 noundef 104) #4
  %8 = load ptr, ptr @gRenderSlots, align 4
  %9 = load i8, ptr @gCoreScriptByte2274, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %8, i32 %10
  %12 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), ptr noundef %11, i32 noundef 104) #4
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = load i8, ptr @gRenderClassSlots1, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.RenderSlot, ptr %13, i32 %15
  %17 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), ptr noundef %16, i32 noundef 104) #4
  %18 = load ptr, ptr @gRenderSlots, align 4
  %19 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %20 = zext i8 %19 to i32
  %21 = getelementptr %struct.RenderSlot, ptr %18, i32 %20
  %22 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), ptr noundef %21, i32 noundef 104) #4
  tail call void asm sideeffect "", "{r0}"(i32 12) #3, !srcloc !4
  %23 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %23, ptr @gCommunicationRowTaskContexts, align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %23, i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext -120, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100663328, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  tail call void asm sideeffect "", "{r2}"(i32 100664096) #3, !srcloc !5
  tail call void asm sideeffect "", "r"(i32 12) #3, !srcloc !6
  %24 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %24, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 1), align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %24, i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100664096, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  tail call void asm sideeffect "", "{r2}"(i32 100664096) #3, !srcloc !5
  tail call void asm sideeffect "", "r"(i32 12) #3, !srcloc !6
  %25 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %25, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 2), align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %25, i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100664864, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  tail call void asm sideeffect "", "{r2}"(i32 100664096) #3, !srcloc !5
  tail call void asm sideeffect "", "r"(i32 12) #3, !srcloc !6
  %26 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %26, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 3), align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %26, i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100665632, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  tail call void asm sideeffect "", "{r2}"(i32 100664096) #3, !srcloc !5
  tail call void asm sideeffect "", "r"(i32 12) #3, !srcloc !6
  %27 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %27, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 4), align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %27, i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100666400, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  tail call void asm sideeffect "", "{r2}"(i32 100664096) #3, !srcloc !5
  tail call void asm sideeffect "", "r"(i32 12) #3, !srcloc !6
  %28 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %28, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 5), align 4
  tail call arm_apcscc void @ConfigureTaskContext(ptr noundef %28, i8 noundef zeroext 12, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100667168, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  store ptr null, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 6), align 4
  br label %29

29:                                               ; preds = %1, %29
  %30 = phi i32 [ 0, %1 ], [ %35, %29 ]
  %31 = mul nuw nsw i32 %30, 384
  %32 = add nuw nsw i32 %31, 100664096
  tail call void asm sideeffect "", "{r0}"(i32 6) #3, !srcloc !7
  %33 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  %34 = getelementptr [0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 %30
  store ptr %33, ptr %34, align 4
  tail call arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef %33, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef %32, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  %35 = add nuw nsw i32 %30, 1
  %36 = icmp eq i32 %35, 11
  br i1 %36, label %37, label %29

37:                                               ; preds = %29
  tail call void asm sideeffect "", "{r2}"(i32 100678016) #3, !srcloc !8
  tail call void asm sideeffect "", "{r0}"(i32 6) #3, !srcloc !9
  %38 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %38, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 11), align 4
  tail call arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef %38, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100678016, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  tail call void asm sideeffect "", "{r2}"(i32 100678016) #3, !srcloc !8
  tail call void asm sideeffect "", "{r0}"(i32 6) #3, !srcloc !9
  %39 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %39, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 12), align 4
  tail call arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef %39, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100678400, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  tail call void asm sideeffect "", "{r2}"(i32 100678016) #3, !srcloc !8
  tail call void asm sideeffect "", "{r0}"(i32 6) #3, !srcloc !9
  %40 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %40, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 13), align 4
  tail call arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef %40, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100678784, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  tail call void asm sideeffect "", "r"(i32 6) #3, !srcloc !10
  %41 = tail call arm_apcscc ptr @AllocateTaskContext() #4
  store ptr %41, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  tail call arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef %41, i8 noundef zeroext 6, i8 noundef zeroext 2, i8 noundef zeroext -1, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext 2, i32 noundef 100677248, i32 noundef ptrtoint (ptr @gWordChoiceTileAttributes to i32)) #4
  %42 = load ptr, ptr @gCommunicationContextPointer, align 4
  br label %43

43:                                               ; preds = %37, %123
  %44 = phi ptr [ %42, %37 ], [ %124, %123 ]
  %45 = phi i32 [ 0, %37 ], [ %125, %123 ]
  %46 = mul nuw nsw i32 %45, 1100
  %47 = ptrtoint ptr %44 to i32
  %48 = add i32 %46, %47
  %49 = inttoptr i32 %48 to ptr
  %50 = load i8, ptr %49, align 1
  %51 = icmp eq i8 %50, 1
  br i1 %51, label %52, label %123

52:                                               ; preds = %43
  %53 = getelementptr i8, ptr %49, i32 3
  tail call void asm sideeffect "", "{r2}"(i32 ptrtoint (ptr @gDefaultTaskContextScript to i32)) #3, !srcloc !11
  %54 = getelementptr i8, ptr %49, i32 4
  store i8 1, ptr %54, align 1
  %55 = getelementptr i8, ptr %49, i32 5
  store i8 1, ptr %55, align 1
  %56 = getelementptr i8, ptr %49, i32 6
  store i8 1, ptr %56, align 1
  %57 = getelementptr i8, ptr %49, i32 7
  store i8 1, ptr %57, align 1
  %58 = getelementptr i8, ptr %49, i32 8
  store i8 1, ptr %58, align 1
  %59 = getelementptr i8, ptr %49, i32 9
  store i8 1, ptr %59, align 1
  %60 = getelementptr i8, ptr %49, i32 10
  store i8 1, ptr %60, align 1
  %61 = getelementptr i8, ptr %49, i32 11
  store i8 1, ptr %61, align 1
  %62 = getelementptr i8, ptr %49, i32 12
  store i8 1, ptr %62, align 1
  %63 = getelementptr i8, ptr %49, i32 13
  store i8 1, ptr %63, align 1
  %64 = getelementptr i8, ptr %49, i32 14
  store i8 1, ptr %64, align 1
  %65 = getelementptr i8, ptr %49, i32 15
  store i8 0, ptr %65, align 1
  %66 = getelementptr i8, ptr %49, i32 16
  store i8 0, ptr %66, align 1
  br i1 icmp ne (ptr @gIndexedCommunicationTexts, ptr @gDefaultTaskContextScript), label %67, label %72

67:                                               ; preds = %52
  %68 = load i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 235) to ptr), align 1
  %69 = zext i8 %68 to i32
  %70 = getelementptr ptr, ptr @gIndexedCommunicationTexts, i32 %69
  %71 = load ptr, ptr %70, align 4
  br label %72

72:                                               ; preds = %67, %52
  %73 = phi ptr [ %71, %67 ], [ @gIndexedCommunicationTexts, %52 ]
  %74 = ptrtoint ptr %53 to i32
  %75 = add i32 %74, 2
  %76 = load i8, ptr %73, align 1
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %116, label %78

78:                                               ; preds = %72
  %79 = inttoptr i32 %75 to ptr
  store i8 %76, ptr %79, align 1
  %80 = getelementptr i8, ptr %73, i32 1
  %81 = load i8, ptr %80, align 1
  %82 = icmp eq i8 %81, 0
  br i1 %82, label %116, label %83

83:                                               ; preds = %78
  %84 = add i32 %74, 3
  %85 = inttoptr i32 %84 to ptr
  store i8 %81, ptr %85, align 1
  %86 = getelementptr i8, ptr %73, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %116, label %89

89:                                               ; preds = %83
  %90 = add i32 %74, 4
  %91 = inttoptr i32 %90 to ptr
  store i8 %87, ptr %91, align 1
  %92 = getelementptr i8, ptr %73, i32 3
  %93 = load i8, ptr %92, align 1
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %116, label %95

95:                                               ; preds = %89
  %96 = add i32 %74, 5
  %97 = inttoptr i32 %96 to ptr
  store i8 %93, ptr %97, align 1
  %98 = getelementptr i8, ptr %73, i32 4
  %99 = load i8, ptr %98, align 1
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %95
  %102 = add i32 %74, 6
  %103 = inttoptr i32 %102 to ptr
  store i8 %99, ptr %103, align 1
  %104 = getelementptr i8, ptr %73, i32 5
  %105 = load i8, ptr %104, align 1
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %101
  %108 = add i32 %74, 7
  %109 = inttoptr i32 %108 to ptr
  store i8 %105, ptr %109, align 1
  %110 = getelementptr i8, ptr %73, i32 6
  %111 = load i8, ptr %110, align 1
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %107
  %114 = add i32 %74, 8
  %115 = inttoptr i32 %114 to ptr
  store i8 %111, ptr %115, align 1
  br label %116

116:                                              ; preds = %113, %107, %101, %95, %89, %83, %78, %72
  %117 = phi i32 [ 0, %72 ], [ 1, %78 ], [ 2, %83 ], [ 3, %89 ], [ 4, %95 ], [ 5, %101 ], [ 6, %107 ], [ 7, %113 ]
  %118 = add i32 %75, %117
  %119 = inttoptr i32 %118 to ptr
  store i8 0, ptr %119, align 1
  %120 = trunc i32 %117 to i8
  %121 = getelementptr i8, ptr %49, i32 2
  store i8 %120, ptr %121, align 1
  %122 = load ptr, ptr @gCommunicationContextPointer, align 4
  br label %123

123:                                              ; preds = %116, %43
  %124 = phi ptr [ %122, %116 ], [ %44, %43 ]
  %125 = add nuw nsw i32 %45, 1
  %126 = icmp eq i32 %125, 10
  br i1 %126, label %127, label %43

127:                                              ; preds = %123
  store i32 0, ptr %2, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef nonnull @gCommunicationAvailableFlagList, i32 noundef 83886104) #4
  br label %128

128:                                              ; preds = %127, %160
  %129 = phi i32 [ 0, %127 ], [ %164, %160 ]
  %130 = phi ptr [ @gCommunicationAvailableFlagList, %127 ], [ %163, %160 ]
  %131 = phi i32 [ 0, %127 ], [ %162, %160 ]
  %132 = phi i8 [ 0, %127 ], [ %161, %160 ]
  %133 = icmp eq i32 %131, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = ptrtoint ptr %130 to i32
  call void asm sideeffect "", "r,{r2}"(i32 70, i32 %135) #3, !srcloc !12
  store i8 70, ptr %130, align 1
  %136 = getelementptr i8, ptr %130, i32 1
  br label %137

137:                                              ; preds = %134, %128
  %138 = phi i32 [ 1, %134 ], [ %131, %128 ]
  %139 = phi ptr [ %136, %134 ], [ %130, %128 ]
  %140 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %141 = zext i8 %140 to i32
  %142 = mul nuw nsw i32 %141, 86
  %143 = add i32 %129, ptrtoint (ptr @gCommunicationFlagOrder to i32)
  %144 = add i32 %143, %142
  %145 = inttoptr i32 %144 to ptr
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i16
  %148 = call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext %147) #4
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %160, label %150

150:                                              ; preds = %137
  %151 = ptrtoint ptr %139 to i32
  call void asm sideeffect "", "{r0}"(i32 %151) #3, !srcloc !13
  store i8 %146, ptr %139, align 1
  %152 = getelementptr i8, ptr %139, i32 1
  %153 = icmp eq i32 %138, 1
  %154 = zext i1 %153 to i8
  %155 = add i8 %132, %154
  %156 = add i32 %138, 1
  %157 = and i32 %156, 255
  %158 = icmp ugt i32 %157, 13
  %159 = select i1 %158, i32 0, i32 %157
  br label %160

160:                                              ; preds = %150, %137
  %161 = phi i8 [ %155, %150 ], [ %132, %137 ]
  %162 = phi i32 [ %159, %150 ], [ %138, %137 ]
  %163 = phi ptr [ %152, %150 ], [ %139, %137 ]
  %164 = add nuw nsw i32 %129, 1
  %165 = icmp eq i32 %164, 86
  br i1 %165, label %166, label %128

166:                                              ; preds = %160
  call void asm sideeffect "", "{r0},{r2}"(ptr nonnull @gRasterScriptControlBytes, i32 396) #3, !srcloc !14
  store i8 %161, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gRasterScriptControlBytes to i32), i32 396) to ptr), align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureTaskContext(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureTaskContextFlag8(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreCommunicationRenderContexts(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 14), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %2) #4
  %3 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 13), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %3) #4
  %4 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 12), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %4) #4
  %5 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 11), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %5) #4
  %6 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 10), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %6) #4
  %7 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 9), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %7) #4
  %8 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 8), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %8) #4
  %9 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 7), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %9) #4
  %10 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 6), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %10) #4
  %11 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 5), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %11) #4
  %12 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 4), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %12) #4
  %13 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 3), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %13) #4
  %14 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %14) #4
  %15 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationTaskContexts, i32 0, i32 1), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %15) #4
  %16 = load ptr, ptr @gCommunicationTaskContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %16) #4
  %17 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 6), align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef nonnull %17) #4
  br label %20

20:                                               ; preds = %19, %1
  %21 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 5), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %21) #4
  %22 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 4), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %22) #4
  %23 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 3), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %23) #4
  %24 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 2), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %24) #4
  %25 = load ptr, ptr getelementptr ([0 x ptr], ptr @gCommunicationRowTaskContexts, i32 0, i32 1), align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %25) #4
  %26 = load ptr, ptr @gCommunicationRowTaskContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %26) #4
  %27 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 96), align 1
  %28 = and i8 %27, 15
  %29 = add nsw i8 %28, -1
  %30 = load i8, ptr @gRenderClassSlots0, align 1
  %31 = zext i8 %30 to i32
  %32 = load ptr, ptr @gRenderSlots, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = mul nuw nsw i32 %31, 104
  %35 = add i32 %34, %33
  %36 = inttoptr i32 %35 to ptr
  %37 = tail call arm_apcscc ptr @memcpy(ptr noundef %36, ptr noundef nonnull @gSaveGroup01Block2EB0, i32 noundef 104) #4
  %38 = load i8, ptr @gRenderClassSlots0, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %41 = zext i8 %40 to i32
  %42 = shl nuw nsw i32 %41, 1
  %43 = or disjoint i32 %42, 1
  %44 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %43
  %45 = load ptr, ptr %44, align 4
  %46 = zext i8 %29 to i32
  %47 = getelementptr ptr, ptr %45, i32 %46
  %48 = load ptr, ptr %47, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %39, ptr noundef %48) #4
  %49 = load i8, ptr @gCoreScriptByte2274, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i8 %49, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %20
  %53 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 200), align 1
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %52
  %56 = load ptr, ptr @gRenderSlots, align 4
  %57 = ptrtoint ptr %56 to i32
  %58 = mul nuw nsw i32 %50, 104
  %59 = add i32 %58, %57
  %60 = inttoptr i32 %59 to ptr
  %61 = tail call arm_apcscc ptr @memcpy(ptr noundef %60, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), i32 noundef 104) #4
  %62 = load i8, ptr @gCoreScriptByte2274, align 1
  %63 = zext i8 %62 to i32
  %64 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %65 = zext i8 %64 to i32
  %66 = shl nuw nsw i32 %65, 1
  %67 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = shl nuw nsw i32 %46, 1
  %70 = getelementptr ptr, ptr %68, i32 %69
  %71 = load ptr, ptr %70, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %63, ptr noundef %71) #4
  br label %72

72:                                               ; preds = %55, %52, %20
  %73 = load i8, ptr @gRenderClassSlots1, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i8 %73, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %72
  %77 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 304), align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %100, label %79

79:                                               ; preds = %76
  %80 = and i8 %77, 15
  %81 = add nsw i8 %80, -1
  %82 = load ptr, ptr @gRenderSlots, align 4
  %83 = ptrtoint ptr %82 to i32
  %84 = mul nuw nsw i32 %74, 104
  %85 = add i32 %84, %83
  %86 = inttoptr i32 %85 to ptr
  %87 = tail call arm_apcscc ptr @memcpy(ptr noundef %86, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), i32 noundef 104) #4
  %88 = load i8, ptr @gRenderClassSlots1, align 1
  %89 = zext i8 %88 to i32
  %90 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %91 = xor i8 %90, 1
  %92 = zext i8 %91 to i32
  %93 = shl nuw nsw i32 %92, 1
  %94 = or disjoint i32 %93, 1
  %95 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %94
  %96 = load ptr, ptr %95, align 4
  %97 = zext i8 %81 to i32
  %98 = getelementptr ptr, ptr %96, i32 %97
  %99 = load ptr, ptr %98, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %89, ptr noundef %99) #4
  br label %100

100:                                              ; preds = %76, %79, %72
  %101 = phi i8 [ %29, %72 ], [ %81, %79 ], [ %29, %76 ]
  %102 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i8 %102, 0
  br i1 %104, label %127, label %105

105:                                              ; preds = %100
  %106 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 408), align 1
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %127, label %108

108:                                              ; preds = %105
  %109 = load ptr, ptr @gRenderSlots, align 4
  %110 = ptrtoint ptr %109 to i32
  %111 = mul nuw nsw i32 %103, 104
  %112 = add i32 %111, %110
  %113 = inttoptr i32 %112 to ptr
  %114 = tail call arm_apcscc ptr @memcpy(ptr noundef %113, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), i32 noundef 104) #4
  %115 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %118 = zext i8 %117 to i32
  %119 = shl nuw nsw i32 %118, 1
  %120 = or disjoint i32 %119, 1
  %121 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %120
  %122 = load ptr, ptr %121, align 4
  %123 = zext i8 %101 to i32
  %124 = shl nuw nsw i32 %123, 1
  %125 = getelementptr ptr, ptr %122, i32 %124
  %126 = load ptr, ptr %125, align 4
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %116, ptr noundef %126) #4
  br label %127

127:                                              ; preds = %105, %108, %100
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackClassifyCommunicationPayload(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 2
  %5 = load ptr, ptr %4, align 4
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  switch i8 %6, label %102 [
    i8 0, label %7
    i8 1, label %36
    i8 2, label %57
  ]

7:                                                ; preds = %1
  %8 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 7
  %9 = load i8, ptr %8, align 2
  %10 = zext i8 %9 to i32
  tail call void asm sideeffect "", "r"(i32 %10) #3, !srcloc !15
  %11 = icmp eq i8 %9, 0
  br i1 %11, label %102, label %12

12:                                               ; preds = %7
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), align 1
  %14 = load i8, ptr %5, align 1
  %15 = icmp eq i8 %13, %14
  %16 = icmp ult i8 %13, 2
  %17 = or i1 %16, %15
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = tail call ptr asm "", "=r,{r8},{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6}"(ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), i32 1) #5, !srcloc !16
  %20 = getelementptr i8, ptr %19, i32 1
  store i8 1, ptr %20, align 1
  br label %102

21:                                               ; preds = %12, %27
  %22 = phi i8 [ %25, %27 ], [ 0, %12 ]
  %23 = phi ptr [ %28, %27 ], [ getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), %12 ]
  %24 = phi ptr [ %29, %27 ], [ %5, %12 ]
  %25 = add nuw i8 %22, 1
  %26 = icmp ult i8 %25, %9
  br i1 %26, label %27, label %102

27:                                               ; preds = %21
  %28 = getelementptr i8, ptr %23, i32 1
  %29 = getelementptr i8, ptr %24, i32 1
  %30 = load i8, ptr %28, align 1
  %31 = load i8, ptr %29, align 1
  %32 = icmp ne i8 %30, %31
  %33 = icmp ugt i8 %30, 1
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %21

35:                                               ; preds = %27
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %102

36:                                               ; preds = %1
  %37 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 7
  %38 = load i8, ptr %37, align 2
  %39 = zext i8 %38 to i32
  tail call void asm sideeffect "", "{r0}"(i32 %39) #3, !srcloc !17
  %40 = icmp eq i8 %38, 0
  br i1 %40, label %102, label %41

41:                                               ; preds = %36
  %42 = load i8, ptr getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), align 1
  %43 = icmp eq i8 %42, 52
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = tail call ptr asm "", "=l,{r8},{r1},~{r0},~{r2},~{r3},~{r4},~{r5},~{r6}"(ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), i32 1) #5, !srcloc !18
  %46 = getelementptr i8, ptr %45, i32 1
  store i8 1, ptr %46, align 1
  br label %102

47:                                               ; preds = %41, %52
  %48 = phi i8 [ %50, %52 ], [ 0, %41 ]
  %49 = phi ptr [ %53, %52 ], [ getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 18), %41 ]
  %50 = add nuw i8 %48, 1
  %51 = icmp ult i8 %50, %38
  br i1 %51, label %52, label %102

52:                                               ; preds = %47
  %53 = getelementptr i8, ptr %49, i32 1
  %54 = load i8, ptr %49, align 1
  %55 = icmp eq i8 %54, 52
  br i1 %55, label %56, label %47

56:                                               ; preds = %52
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %102

57:                                               ; preds = %1
  %58 = getelementptr [0 x %struct.IndexedCommunicationResource], ptr @gIndexedCommunicationResources, i32 0, i32 %3, i32 7
  %59 = load i8, ptr %58, align 2
  %60 = icmp eq i8 %59, 0
  %61 = add i8 %59, -1
  %62 = zext i8 %61 to i32
  %63 = getelementptr i8, ptr @gCommunicationReceivedRecord, i32 %62
  %64 = getelementptr i8, ptr %63, i32 17
  br label %65

65:                                               ; preds = %57, %86
  %66 = phi i32 [ 0, %57 ], [ %68, %86 ]
  %67 = phi i8 [ 0, %57 ], [ %87, %86 ]
  %68 = add nuw nsw i32 %66, 1
  br i1 %60, label %86, label %69

69:                                               ; preds = %65
  %70 = add i32 %66, ptrtoint (ptr @gCommunicationPayloadFlagValues to i32)
  %71 = inttoptr i32 %70 to ptr
  %72 = trunc i32 %66 to i8
  br label %73

73:                                               ; preds = %69, %83
  %74 = phi ptr [ getelementptr ([0 x i8], ptr @gCommunicationReceivedRecord, i32 0, i32 17), %69 ], [ %84, %83 ]
  tail call void asm sideeffect "", "r"(i8 %72) #3, !srcloc !19
  %75 = load i8, ptr %74, align 1
  %76 = zext i8 %75 to i32
  %77 = load volatile i8, ptr %71, align 1
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %78, -69
  %80 = icmp eq i32 %79, %76
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = add i8 %67, 1
  br label %86

83:                                               ; preds = %73
  %84 = getelementptr i8, ptr %74, i32 1
  %85 = icmp eq ptr %74, %64
  br i1 %85, label %86, label %73

86:                                               ; preds = %83, %65, %81
  %87 = phi i8 [ %82, %81 ], [ %67, %65 ], [ %67, %83 ]
  %88 = icmp eq i32 %68, 10
  br i1 %88, label %89, label %65

89:                                               ; preds = %86
  %90 = icmp ult i8 %87, 5
  br i1 %90, label %96, label %91

91:                                               ; preds = %89
  %92 = icmp ult i8 %87, 8
  br i1 %92, label %93, label %94

93:                                               ; preds = %91
  store i8 2, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  br label %102

94:                                               ; preds = %91
  %95 = icmp ugt i8 %87, 9
  br i1 %95, label %101, label %96

96:                                               ; preds = %94, %89
  %97 = phi i32 [ 1, %89 ], [ 3, %94 ]
  %98 = tail call ptr asm "", "=r,{r8},{r0},~{r1},~{r2},~{r3},~{r4},~{r5},~{r6}"(ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), i32 %97) #5, !srcloc !20
  %99 = trunc i32 %97 to i8
  %100 = getelementptr i8, ptr %98, i32 2
  store i8 %99, ptr %100, align 1
  br label %102

101:                                              ; preds = %94
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 98), align 1
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 97), align 1
  br label %102

102:                                              ; preds = %47, %21, %35, %18, %93, %96, %101, %44, %36, %56, %7, %1
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }
attributes #5 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 939}
!5 = !{i64 1347}
!6 = !{i64 1483}
!7 = !{i64 2012}
!8 = !{i64 2481}
!9 = !{i64 2639}
!10 = !{i64 3005}
!11 = !{i64 4306}
!12 = !{i64 6829}
!13 = !{i64 7488}
!14 = !{i64 8071}
!15 = !{i64 11615}
!16 = !{i64 11920}
!17 = !{i64 12816}
!18 = !{i64 13001}
!19 = !{i64 14379}
!20 = !{i64 15051}
