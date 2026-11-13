; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SaveGroup3ListDescriptor = type { ptr, i8, i8, i8, i8, [2 x i8], [3 x i16], ptr, ptr }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gSaveGroup3ListBlankTiles = external dso_local global [0 x i16], align 2
@gRasterScriptControlBytes = external dso_local global [0 x i8], align 1
@gTaskTextPairContexts = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3Block1EE40 = external dso_local global [0 x i8], align 1
@gSaveGroup3ListNumberFields = external dso_local constant [0 x i16], align 2
@gSaveGroup3ListCategoryAnimations = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup3ListStyleFrame0 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup3ListStyleFrame1 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup3ListStyleFrame2 = external dso_local local_unnamed_addr global [0 x i16], align 2
@gSaveGroup3ListStyleAnimation0 = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListStyleAnimation1 = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListStyleAnimation2 = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListTextBundles = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gDefaultTaskContextScript = external dso_local constant [0 x i8], align 1
@gSaveListSelectionText3650 = external dso_local global [0 x i8], align 1
@gSaveGroup3ListHeaderAnimation = external dso_local constant [0 x i8], align 1
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gSaveListCursorFA333 = external dso_local constant [0 x i8], align 1
@gSaveListCursorFA319 = external dso_local constant [0 x i8], align 1
@gSaveListCursorFA326 = external dso_local constant [0 x i8], align 1
@gRecordSelectionAnimation088FA30C = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListCells = external dso_local global [0 x i16], align 2
@gSaveListRemovalFA3C7 = external dso_local constant [0 x i8], align 1
@gSaveListRemovalFA348 = external dso_local constant [0 x i8], align 1
@gSaveListRemovalFA3E2 = external dso_local constant [0 x i8], align 1
@gSaveListRemovalBackgroundFA6A4 = external dso_local constant [0 x i8], align 1
@gSaveGroup3ListTileIndices = external dso_local local_unnamed_addr constant [0 x i16], align 2
@gSaveGroup3ListDescriptors = external dso_local local_unnamed_addr constant [0 x %struct.SaveGroup3ListDescriptor], align 4
@gSaveListGridBackgroundFA6B3 = external dso_local constant [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackBuildSaveListSelectionDetail(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = alloca [3 x [2 x i16]], align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #5
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
  %4 = tail call i8 @llvm.smax.i8(i8 %3, i8 -1)
  %5 = zext i8 %4 to i32
  tail call void asm sideeffect "", "{r0}"(i32 13) #5, !srcloc !4
  %6 = tail call arm_apcscc ptr @AllocateTaskContext() #6
  store ptr %6, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %6, i32 noundef 13, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100683776, i32 noundef ptrtoint (ptr @gSaveGroup3ListBlankTiles to i32)) #6
  %7 = add i32 %5, ptrtoint (ptr @gSaveGroup3Block1EE40 to i32)
  %8 = inttoptr i32 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = icmp ne i8 %9, 0
  %11 = icmp sgt i8 %3, -1
  %12 = and i1 %11, %10
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gSaveGroup3ListHeaderAnimation) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 40, ptr noundef nonnull @gSaveGroup3ListHeaderAnimation) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 56, ptr noundef nonnull @gSaveGroup3ListHeaderAnimation) #6
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 3), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 6), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 3), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 6), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 3), align 2
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 6), align 2
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gSaveGroup3ListStyleAnimation0) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 40, ptr noundef nonnull @gSaveGroup3ListStyleAnimation1) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 56, ptr noundef nonnull @gSaveGroup3ListStyleAnimation2) #6
  br label %197

14:                                               ; preds = %1
  call void asm sideeffect "", "{r3}"(ptr nonnull %2) #5, !srcloc !5
  %15 = getelementptr inbounds [2 x i16], ptr %2, i32 0, i32 1
  call void asm sideeffect "", "{r0}"(ptr nonnull %15) #5, !srcloc !6
  call void asm sideeffect "", "{r1}"(i32 127) #5, !srcloc !7
  %16 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %5
  %17 = ptrtoint ptr %2 to i32
  %18 = ptrtoint ptr %15 to i32
  %19 = load i8, ptr %16, align 1
  %20 = zext i8 %19 to i32
  %21 = mul nuw nsw i32 %20, 24
  %22 = add i32 %21, ptrtoint (ptr @gSaveGroup3ListNumberFields to i32)
  %23 = inttoptr i32 %22 to ptr
  %24 = load i16, ptr %23, align 2
  %25 = lshr i16 %24, 7
  %26 = trunc i16 %25 to i8
  %27 = and i8 %26, 127
  %28 = trunc i16 %24 to i8
  %29 = and i8 %28, 127
  %30 = freeze i8 %29
  %31 = udiv i8 %30, 10
  %32 = zext nneg i8 %31 to i16
  store i16 %32, ptr %2, align 2
  call void asm sideeffect "", "{r1}"(ptr nonnull %15) #5, !srcloc !8
  %33 = mul i8 %31, 10
  %34 = sub i8 %30, %33
  %35 = zext nneg i8 %34 to i16
  store i16 %35, ptr %15, align 2
  %36 = icmp eq i8 %27, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %14
  %38 = zext nneg i8 %27 to i32
  %39 = getelementptr [0 x ptr], ptr @gSaveGroup3ListCategoryAnimations, i32 0, i32 %38
  %40 = load ptr, ptr %39, align 4
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 13, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 24, ptr noundef %40) #6
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 13, i8 noundef zeroext 1) #6
  br label %42

41:                                               ; preds = %14
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 13, i8 noundef zeroext 0) #6
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i8, ptr %16, align 1
  %44 = zext i8 %43 to i32
  %45 = mul nuw nsw i32 %44, 24
  %46 = add i32 %45, add (i32 ptrtoint (ptr @gSaveGroup3ListNumberFields to i32), i32 2)
  %47 = inttoptr i32 %46 to ptr
  %48 = load i16, ptr %47, align 2
  %49 = lshr i16 %48, 7
  %50 = trunc i16 %49 to i8
  %51 = and i8 %50, 127
  %52 = add nuw i32 %17, 4
  %53 = inttoptr i32 %52 to ptr
  %54 = trunc i16 %48 to i8
  %55 = and i8 %54, 127
  %56 = freeze i8 %55
  %57 = udiv i8 %56, 10
  %58 = zext nneg i8 %57 to i16
  store i16 %58, ptr %53, align 2
  call void asm sideeffect "", "{r1}"(ptr nonnull %15) #5, !srcloc !8
  %59 = add nuw i32 %18, 4
  %60 = inttoptr i32 %59 to ptr
  %61 = mul i8 %57, 10
  %62 = sub i8 %56, %61
  %63 = zext nneg i8 %62 to i16
  store i16 %63, ptr %60, align 2
  %64 = icmp eq i8 %51, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %42
  %66 = zext nneg i8 %51 to i32
  %67 = getelementptr [0 x ptr], ptr @gSaveGroup3ListCategoryAnimations, i32 0, i32 %66
  %68 = load ptr, ptr %67, align 4
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 14, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 40, ptr noundef %68) #6
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 14, i8 noundef zeroext 1) #6
  br label %70

69:                                               ; preds = %42
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 14, i8 noundef zeroext 0) #6
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i8, ptr %16, align 1
  %72 = zext i8 %71 to i32
  %73 = mul nuw nsw i32 %72, 24
  %74 = add i32 %73, add (i32 ptrtoint (ptr @gSaveGroup3ListNumberFields to i32), i32 4)
  %75 = inttoptr i32 %74 to ptr
  %76 = load i16, ptr %75, align 2
  %77 = lshr i16 %76, 7
  %78 = trunc i16 %77 to i8
  %79 = and i8 %78, 127
  %80 = add nuw i32 %17, 8
  %81 = inttoptr i32 %80 to ptr
  %82 = trunc i16 %76 to i8
  %83 = and i8 %82, 127
  %84 = freeze i8 %83
  %85 = udiv i8 %84, 10
  %86 = zext nneg i8 %85 to i16
  store i16 %86, ptr %81, align 2
  call void asm sideeffect "", "{r1}"(ptr nonnull %15) #5, !srcloc !8
  %87 = add nuw i32 %18, 8
  %88 = inttoptr i32 %87 to ptr
  %89 = mul i8 %85, 10
  %90 = sub i8 %84, %89
  %91 = zext nneg i8 %90 to i16
  store i16 %91, ptr %88, align 2
  %92 = icmp eq i8 %79, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %70
  %94 = zext nneg i8 %79 to i32
  %95 = getelementptr [0 x ptr], ptr @gSaveGroup3ListCategoryAnimations, i32 0, i32 %94
  %96 = load ptr, ptr %95, align 4
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 15, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 108, i32 noundef 0, i32 noundef 56, ptr noundef %96) #6
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 15, i8 noundef zeroext 1) #6
  br label %98

97:                                               ; preds = %70
  call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 15, i8 noundef zeroext 0) #6
  br label %98

98:                                               ; preds = %97, %93
  %99 = load i16, ptr %2, align 2
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %105, label %101

101:                                              ; preds = %98
  %102 = add i16 %99, -3370
  store i16 %102, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 3), align 2
  %103 = load i16, ptr %15, align 2
  %104 = add i16 %103, -3370
  br label %110

105:                                              ; preds = %98
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 3), align 2
  %106 = load i16, ptr %15, align 2
  %107 = icmp eq i16 %106, 0
  %108 = add i16 %106, -3370
  %109 = select i1 %107, i16 -3371, i16 %108
  br label %110

110:                                              ; preds = %105, %101
  %111 = phi i16 [ %104, %101 ], [ %109, %105 ]
  store i16 %111, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame0, i32 0, i32 6), align 2
  %112 = getelementptr inbounds [2 x i16], ptr %2, i32 1
  %113 = load i16, ptr %112, align 2
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %110
  %116 = add i16 %113, -3370
  store i16 %116, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 3), align 2
  %117 = getelementptr inbounds [2 x i16], ptr %2, i32 1, i32 1
  %118 = load i16, ptr %117, align 2
  %119 = add i16 %118, -3370
  br label %126

120:                                              ; preds = %110
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 3), align 2
  %121 = getelementptr inbounds [2 x i16], ptr %2, i32 1, i32 1
  %122 = load i16, ptr %121, align 2
  %123 = icmp eq i16 %122, 0
  %124 = add i16 %122, -3370
  %125 = select i1 %123, i16 -3371, i16 %124
  br label %126

126:                                              ; preds = %120, %115
  %127 = phi i16 [ %119, %115 ], [ %125, %120 ]
  store i16 %127, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame1, i32 0, i32 6), align 2
  %128 = getelementptr inbounds [2 x i16], ptr %2, i32 2
  %129 = load i16, ptr %128, align 2
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %136, label %131

131:                                              ; preds = %126
  %132 = add i16 %129, -3370
  store i16 %132, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 3), align 2
  %133 = getelementptr inbounds [2 x i16], ptr %2, i32 2, i32 1
  %134 = load i16, ptr %133, align 2
  %135 = add i16 %134, -3370
  br label %142

136:                                              ; preds = %126
  store i16 -3371, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 3), align 2
  %137 = getelementptr inbounds [2 x i16], ptr %2, i32 2, i32 1
  %138 = load i16, ptr %137, align 2
  %139 = icmp eq i16 %138, 0
  %140 = add i16 %138, -3370
  %141 = select i1 %139, i16 -3371, i16 %140
  br label %142

142:                                              ; preds = %136, %131
  %143 = phi i16 [ %135, %131 ], [ %141, %136 ]
  store i16 %143, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListStyleFrame2, i32 0, i32 6), align 2
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 16, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 24, ptr noundef nonnull @gSaveGroup3ListStyleAnimation0) #6
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 16, i8 noundef zeroext 1) #6
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 17, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 40, ptr noundef nonnull @gSaveGroup3ListStyleAnimation1) #6
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 17, i8 noundef zeroext 1) #6
  call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 18, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 192, i32 noundef 0, i32 noundef 56, ptr noundef nonnull @gSaveGroup3ListStyleAnimation2) #6
  call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 18, i8 noundef zeroext 1) #6
  %144 = load i8, ptr %16, align 1
  %145 = zext i8 %144 to i32
  %146 = getelementptr [0 x ptr], ptr @gSaveGroup3ListTextBundles, i32 0, i32 %145
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, @gDefaultTaskContextScript
  br i1 %148, label %154, label %149

149:                                              ; preds = %142
  %150 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 235), align 1
  %151 = zext i8 %150 to i32
  %152 = getelementptr ptr, ptr %147, i32 %151
  %153 = load ptr, ptr %152, align 4
  br label %154

154:                                              ; preds = %142, %149
  %155 = phi ptr [ %153, %149 ], [ @gDefaultTaskContextScript, %142 ]
  %156 = load i8, ptr %155, align 1
  br label %157

157:                                              ; preds = %187, %154
  %158 = phi i8 [ %156, %154 ], [ %188, %187 ]
  %159 = phi ptr [ %155, %154 ], [ %164, %187 ]
  %160 = phi i8 [ 0, %154 ], [ %190, %187 ]
  %161 = zext i8 %160 to i32
  %162 = add i32 %161, ptrtoint (ptr @gSaveListSelectionText3650 to i32)
  %163 = inttoptr i32 %162 to ptr
  store i8 %158, ptr %163, align 1
  %164 = getelementptr i8, ptr %159, i32 1
  %165 = icmp eq i8 %160, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %157
  %167 = load i8, ptr @gSaveListSelectionText3650, align 1
  %168 = add i8 %167, -97
  %169 = icmp ult i8 %168, 50
  br i1 %169, label %183, label %187

170:                                              ; preds = %157
  %171 = add i32 %161, add (i32 ptrtoint (ptr @gSaveListSelectionText3650 to i32), i32 -1)
  %172 = inttoptr i32 %171 to ptr
  %173 = load i8, ptr %172, align 1
  %174 = icmp eq i8 %173, 1
  br i1 %174, label %175, label %187

175:                                              ; preds = %170
  %176 = call ptr asm sideeffect "", "=r,0"(ptr nonnull @gRasterScriptControlBytes) #5, !srcloc !9
  %177 = getelementptr i8, ptr %176, i32 235
  %178 = load i8, ptr %177, align 1
  %179 = icmp ne i8 %178, 3
  %180 = add i8 %158, -97
  %181 = icmp ult i8 %180, 50
  %182 = select i1 %179, i1 %181, i1 false
  br i1 %182, label %183, label %187

183:                                              ; preds = %175, %166
  %184 = phi i8 [ %167, %166 ], [ %158, %175 ]
  %185 = phi ptr [ @gSaveListSelectionText3650, %166 ], [ %163, %175 ]
  %186 = add i8 %184, -85
  store i8 %186, ptr %185, align 1
  br label %187

187:                                              ; preds = %183, %170, %175, %166
  %188 = load i8, ptr %164, align 1
  %189 = icmp eq i8 %188, 0
  %190 = add i8 %160, 1
  br i1 %189, label %191, label %157

191:                                              ; preds = %187
  %192 = zext i8 %190 to i32
  %193 = add i32 %192, ptrtoint (ptr @gSaveListSelectionText3650 to i32)
  %194 = inttoptr i32 %193 to ptr
  store i8 0, ptr %194, align 1
  call void asm sideeffect "", "r"(i32 13) #5, !srcloc !10
  %195 = call arm_apcscc ptr @AllocateTaskContext() #6
  store ptr %195, ptr @gTaskTextPairContexts, align 4
  call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %195, i32 noundef 13, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100683776, i32 noundef ptrtoint (ptr @gSaveGroup3ListBlankTiles to i32)) #6
  %196 = load ptr, ptr @gTaskTextPairContexts, align 4
  call arm_apcscc void @SetTaskContextScript(ptr noundef %196, ptr noundef nonnull @gSaveListSelectionText3650) #6
  br label %197

197:                                              ; preds = %13, %191
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc ptr @AllocateTaskContext() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeTaskContextGraphics(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetTaskContextScript(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveSaveListSelectionText(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @RemoveTaskContext(ptr noundef %2) #6
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveTaskContext(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackNavigateSaveListGrid(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  store i16 0, ptr @gScriptResult, align 2
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp ne i8 %5, 0
  %7 = zext i1 %6 to i32
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 255, i32 noundef %7) #6
  %8 = load i8, ptr %0, align 1
  switch i8 %8, label %100 [
    i8 0, label %9
    i8 1, label %36
    i8 2, label %69
    i8 3, label %87
  ]

9:                                                ; preds = %1
  %10 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %11 = icmp ult i8 %10, 20
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = add nuw nsw i8 %10, 10
  store i8 %13, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %14 = load ptr, ptr @gRenderSlots, align 4
  %15 = getelementptr %struct.RenderSlot, ptr %14, i32 21, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = add i32 %16, 1310720
  store i32 %17, ptr %15, align 4
  br label %103

18:                                               ; preds = %9
  %19 = icmp sgt i8 %10, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %18
  %21 = or disjoint i8 %10, -128
  store i8 %21, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %22 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 253) #6
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 195, i32 noundef 0, i32 noundef 140, ptr noundef nonnull @gSaveListCursorFA333) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 21, i8 noundef zeroext 1) #6
  br label %103

25:                                               ; preds = %20
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 195, i32 noundef 0, i32 noundef 140, ptr noundef nonnull @gSaveListCursorFA319) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 21, i8 noundef zeroext 1) #6
  store i16 1, ptr @gScriptResult, align 2
  br label %112

26:                                               ; preds = %18
  %27 = and i8 %10, 127
  %28 = urem i8 %27, 10
  store i8 %28, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %29 = mul nuw i8 %28, 22
  %30 = add nuw i8 %29, 5
  %31 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 253) #6
  %32 = icmp eq i32 %31, 0
  %33 = zext i8 %30 to i32
  br i1 %32, label %35, label %34

34:                                               ; preds = %26
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %33, i32 noundef 0, i32 noundef 79, ptr noundef nonnull @gSaveListCursorFA326) #6
  tail call void asm sideeffect "", ""() #5, !srcloc !11
  br label %103

35:                                               ; preds = %26
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %33, i32 noundef 0, i32 noundef 79, ptr noundef nonnull @gRecordSelectionAnimation088FA30C) #6
  store i16 2, ptr @gScriptResult, align 2
  br label %112

36:                                               ; preds = %1
  %37 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %38 = icmp sgt i8 %37, -1
  br i1 %38, label %55, label %39

39:                                               ; preds = %36
  %40 = and i8 %37, 127
  store i8 %40, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %41 = freeze i8 %40
  %42 = udiv i8 %41, 10
  %43 = mul i8 %42, 10
  %44 = sub i8 %41, %43
  %45 = mul nuw i8 %44, 22
  %46 = add nuw i8 %45, 5
  %47 = mul nuw i8 %42, 20
  %48 = add i8 %47, 79
  %49 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 253) #6
  %50 = icmp eq i32 %49, 0
  %51 = zext i8 %46 to i32
  %52 = zext i8 %48 to i32
  br i1 %50, label %53, label %54

53:                                               ; preds = %39
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %51, i32 noundef 0, i32 noundef %52, ptr noundef nonnull @gRecordSelectionAnimation088FA30C) #6
  store i16 2, ptr @gScriptResult, align 2
  br label %112

54:                                               ; preds = %39
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %51, i32 noundef 0, i32 noundef %52, ptr noundef nonnull @gSaveListCursorFA326) #6
  br label %103

55:                                               ; preds = %36
  %56 = icmp ugt i8 %37, 9
  br i1 %56, label %57, label %63

57:                                               ; preds = %55
  %58 = add nsw i8 %37, -10
  store i8 %58, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %59 = load ptr, ptr @gRenderSlots, align 4
  %60 = getelementptr %struct.RenderSlot, ptr %59, i32 21, i32 5
  %61 = load i32, ptr %60, align 4
  %62 = add i32 %61, -1310720
  store i32 %62, ptr %60, align 4
  tail call void asm sideeffect "", "r"(i32 %62) #5, !srcloc !12
  br label %103

63:                                               ; preds = %55
  %64 = add nuw nsw i8 %37, -108
  store i8 %64, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %65 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 253) #6
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 195, i32 noundef 0, i32 noundef 140, ptr noundef nonnull @gSaveListCursorFA333) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 21, i8 noundef zeroext 1) #6
  tail call void asm sideeffect "", ""() #5, !srcloc !13
  br label %103

68:                                               ; preds = %63
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 195, i32 noundef 0, i32 noundef 140, ptr noundef nonnull @gSaveListCursorFA319) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 21, i8 noundef zeroext 1) #6
  store i16 1, ptr @gScriptResult, align 2
  br label %112

69:                                               ; preds = %1
  %70 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %71 = icmp ugt i8 %70, 126
  br i1 %71, label %100, label %72

72:                                               ; preds = %69
  %73 = urem i8 %70, 10
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %72
  %76 = add nsw i8 %70, -1
  store i8 %76, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %77 = load ptr, ptr @gRenderSlots, align 4
  %78 = getelementptr %struct.RenderSlot, ptr %77, i32 21, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, -1441792
  store i32 %80, ptr %78, align 4
  br label %103

81:                                               ; preds = %72
  %82 = add nuw i8 %70, 9
  store i8 %82, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %83 = load ptr, ptr @gRenderSlots, align 4
  %84 = getelementptr %struct.RenderSlot, ptr %83, i32 21, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = add i32 %85, 12976128
  store i32 %86, ptr %84, align 4
  br label %103

87:                                               ; preds = %1
  %88 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %89 = icmp ugt i8 %88, 126
  br i1 %89, label %100, label %90

90:                                               ; preds = %87
  %91 = urem i8 %88, 10
  %92 = icmp eq i8 %91, 9
  %93 = select i1 %92, i8 -9, i8 1
  %94 = select i1 %92, i32 -12976128, i32 1441792
  %95 = add nsw i8 %88, %93
  store i8 %95, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %96 = load ptr, ptr @gRenderSlots, align 4
  %97 = getelementptr %struct.RenderSlot, ptr %96, i32 21, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = add i32 %98, %94
  store i32 %99, ptr %97, align 4
  br label %103

100:                                              ; preds = %87, %69, %1
  %101 = load i16, ptr @gScriptResult, align 2
  %102 = icmp eq i16 %101, 3
  br i1 %102, label %104, label %112

103:                                              ; preds = %81, %75, %34, %24, %12, %67, %54, %57, %90
  store i16 3, ptr @gScriptResult, align 2
  br label %104

104:                                              ; preds = %103, %100
  %105 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %106 = zext i8 %105 to i32
  %107 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %106
  %108 = load i8, ptr %107, align 1
  %109 = icmp eq i8 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 256, i32 noundef 1) #6
  br label %112

111:                                              ; preds = %104
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 256, i32 noundef 0) #6
  br label %112

112:                                              ; preds = %35, %25, %53, %68, %100, %111, %110
  ret i32 1
}

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCheckSaveListSelectionEmpty(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  store i16 0, ptr @gScriptResult, align 2
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = icmp ugt i8 %2, 40
  br i1 %3, label %9, label %4

4:                                                ; preds = %1
  %5 = zext nneg i8 %2 to i32
  %6 = getelementptr [0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 %5
  %7 = load i8, ptr %6, align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %4, %1
  store i16 1, ptr @gScriptResult, align 2
  br label %10

10:                                               ; preds = %9, %4
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackPrepareSaveListRemoval(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %3 = zext i8 %2 to i32
  %4 = mul nuw nsw i32 %3, 6
  %5 = add i32 %4, add (i32 ptrtoint (ptr @gSaveGroup3ListCells to i32), i32 6)
  %6 = inttoptr i32 %5 to ptr
  store i16 -19620, ptr %6, align 2
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 12, ptr noundef nonnull @gSaveListRemovalFA3C7) #6
  tail call arm_apcscc void @SetRenderPriorityByte(i8 noundef zeroext 12, i8 noundef zeroext 0) #6
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 22, ptr noundef nonnull @gSaveListRemovalFA348) #6
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
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackCreateSaveListRemovalText(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call void asm sideeffect "", "r"(i32 13) #5, !srcloc !14
  %2 = tail call arm_apcscc ptr @AllocateTaskContext() #6
  store ptr %2, ptr @gTaskTextPairContexts, align 4
  tail call arm_apcscc void @InitializeTaskContextGraphics(ptr noundef %2, i32 noundef 13, i32 noundef 2, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 3, i32 noundef 24, i32 noundef 100683776, i32 noundef ptrtoint (ptr @gSaveGroup3ListBlankTiles to i32)) #6
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRemoveSelectedSaveListEntry(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  tail call arm_apcscc void @RemoveSaveGroup3ListEntry(i8 noundef zeroext %2) #6
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 19, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef 102, i32 noundef 0, i32 noundef 80, ptr noundef nonnull @gSaveListRemovalFA3E2) #6
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gSaveListRemovalBackgroundFA6A4 to i32)) #6
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %4 = icmp ult i8 %3, 10
  br i1 %4, label %5, label %15

5:                                                ; preds = %1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 9), align 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = zext i8 %6 to i32
  %10 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %9, i32 1
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = getelementptr [0 x i16], ptr @gSaveGroup3ListTileIndices, i32 0, i32 %12
  %14 = load i16, ptr %13, align 2
  store i16 %14, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 93), align 2
  br label %17

15:                                               ; preds = %1
  %16 = icmp ult i8 %3, 20
  br i1 %16, label %17, label %27

17:                                               ; preds = %5, %8, %15
  %18 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup3Block1EE40, i32 0, i32 19), align 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %17
  %21 = zext i8 %18 to i32
  %22 = getelementptr [0 x %struct.SaveGroup3ListDescriptor], ptr @gSaveGroup3ListDescriptors, i32 0, i32 %21, i32 1
  %23 = load i8, ptr %22, align 4
  %24 = zext i8 %23 to i32
  %25 = getelementptr [0 x i16], ptr @gSaveGroup3ListTileIndices, i32 0, i32 %24
  %26 = load i16, ptr %25, align 2
  store i16 %26, ptr getelementptr ([0 x i16], ptr @gSaveGroup3ListCells, i32 0, i32 96), align 2
  br label %27

27:                                               ; preds = %20, %17, %15
  %28 = tail call arm_apcscc i32 @ScriptCallbackLoadSaveListSelectionDetail(ptr noundef null) #6
  tail call arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext 12, i32 noundef 76, i32 noundef 0, i32 noundef 8) #6
  %29 = load ptr, ptr @gRenderSlots, align 4
  %30 = ptrtoint ptr %29 to i32
  %31 = add i32 %30, 1248
  %32 = inttoptr i32 %31 to ptr
  %33 = getelementptr inbounds %struct.RenderSlot, ptr %32, i32 0, i32 6
  store i32 -98304, ptr %33, align 4
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 21, i8 noundef zeroext 0) #6
  ret i32 0
}

declare dso_local arm_apcscc void @RemoveSaveGroup3ListEntry(i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @ScriptCallbackLoadSaveListSelectionDetail(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderHalfwordCellPosition(i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreSaveListGridCursor(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 4, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gSaveListGridBackgroundFA6B3 to i32)) #6
  tail call arm_apcscc void @SetRenderField60Byte(i8 noundef zeroext 19, i8 noundef zeroext 0) #6
  %2 = tail call arm_apcscc i32 @ScriptCallbackConfigureSaveGroup3ListGrid(ptr noundef null) #6
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 384), align 1
  %4 = freeze i8 %3
  %5 = udiv i8 %4, 10
  %6 = mul i8 %5, 10
  %7 = sub i8 %4, %6
  %8 = mul nuw i8 %7, 22
  %9 = add nuw i8 %8, 5
  %10 = mul i8 %5, 20
  %11 = add i8 %10, 79
  %12 = zext i8 %9 to i32
  %13 = zext i8 %11 to i32
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 21, i8 noundef zeroext 1, i8 noundef zeroext 114, i32 noundef %12, i32 noundef 0, i32 noundef %13, ptr noundef nonnull @gSaveListCursorFA326) #6
  ret i32 0
}

declare dso_local arm_apcscc i32 @ScriptCallbackConfigureSaveGroup3ListGrid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.smax.i8(i8, i8) #4

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1319}
!5 = !{i64 2027}
!6 = !{i64 2185}
!7 = !{i64 2336}
!8 = !{i64 3379}
!9 = !{i64 6881}
!10 = !{i64 7680}
!11 = !{i64 10850}
!12 = !{i64 12261}
!13 = !{i64 12859}
!14 = !{i64 16203}
