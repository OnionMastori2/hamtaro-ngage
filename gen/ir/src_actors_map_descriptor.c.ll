; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.BackgroundBounds = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct.MapDescriptor = type { ptr, ptr, i8, i8, i8, i8, [4 x i8] }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMapDescriptorBank = external dso_local local_unnamed_addr global i8, align 1
@gMapDescriptorIndex = external dso_local local_unnamed_addr global i8, align 1
@gMapDescriptorBanks = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gBackgroundRenderStateCount = external dso_local local_unnamed_addr global i8, align 1
@gGraphicsScriptCount = external dso_local local_unnamed_addr global i8, align 1
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gGraphicsScripts = external dso_local local_unnamed_addr global ptr, align 4
@gRenderStates = external dso_local local_unnamed_addr global ptr, align 4
@gRenderPriority = external dso_local local_unnamed_addr global ptr, align 4
@gRenderOrder = external dso_local local_unnamed_addr global ptr, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gBackgroundBounds = external dso_local global [4 x %struct.BackgroundBounds], align 2
@gMapInitializationWords = external dso_local local_unnamed_addr global [0 x i32], align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderClassSlots2 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots3 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #3
  store i8 %0, ptr @gMapDescriptorBank, align 1
  store i8 %0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 13), align 1
  store i8 %1, ptr @gMapDescriptorIndex, align 1
  store i8 %1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 14), align 1
  %4 = zext i8 %0 to i32
  %5 = getelementptr [0 x ptr], ptr @gMapDescriptorBanks, i32 0, i32 %4
  %6 = load ptr, ptr %5, align 4
  %7 = zext i8 %1 to i32
  %8 = getelementptr %struct.MapDescriptor, ptr %6, i32 %7, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = getelementptr i32, ptr %9, i32 1
  %13 = load i32, ptr %9, align 4
  br label %14

14:                                               ; preds = %2, %11
  %15 = phi i32 [ %13, %11 ], [ 0, %2 ]
  %16 = phi ptr [ %12, %11 ], [ null, %2 ]
  %17 = shl nuw nsw i32 %7, 4
  %18 = ptrtoint ptr %6 to i32
  %19 = add i32 %17, %18
  %20 = inttoptr i32 %19 to ptr
  %21 = getelementptr inbounds %struct.MapDescriptor, ptr %20, i32 0, i32 4
  %22 = load i8, ptr %21, align 2
  store i8 %22, ptr @gBackgroundRenderStateCount, align 1
  %23 = getelementptr inbounds %struct.MapDescriptor, ptr %20, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  store i8 %24, ptr @gGraphicsScriptCount, align 1
  %25 = load ptr, ptr %20, align 4
  store ptr %25, ptr @gScriptCursor, align 4
  store i32 0, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  %26 = load ptr, ptr @gGraphicsScripts, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %14
  %29 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %26) #4
  br label %30

30:                                               ; preds = %28, %14
  %31 = load ptr, ptr @gRenderStates, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %31) #4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load ptr, ptr @gRenderPriority, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %36) #4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load ptr, ptr @gRenderOrder, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %41) #4
  br label %45

45:                                               ; preds = %43, %40
  %46 = load ptr, ptr @gRenderSlots, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %46) #4
  br label %50

50:                                               ; preds = %48, %45
  %51 = getelementptr inbounds %struct.MapDescriptor, ptr %20, i32 0, i32 2
  %52 = load i8, ptr %51, align 4
  %53 = zext i8 %52 to i32
  %54 = mul nuw nsw i32 %53, 104
  %55 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %54) #4
  store ptr %55, ptr @gRenderSlots, align 4
  %56 = load i8, ptr %51, align 4
  %57 = zext i8 %56 to i32
  %58 = tail call arm_apcscc ptr @AllocateHeapRaw(i32 noundef %57) #4
  store ptr %58, ptr @gRenderOrder, align 4
  %59 = load i8, ptr %51, align 4
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 3
  %62 = tail call arm_apcscc ptr @AllocateHeapRaw(i32 noundef %61) #4
  store ptr %62, ptr @gRenderPriority, align 4
  store i16 448, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 2), align 4
  store i16 192, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 3), align 2
  store i32 4194304, ptr @gRenderInfo, align 4
  store i32 4194304, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 1), align 4
  store i16 105, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 4), align 4
  store i16 65, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 4, i32 2), align 2
  %63 = load i8, ptr %51, align 4
  store i8 %63, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %64 = getelementptr inbounds %struct.MapDescriptor, ptr %20, i32 0, i32 3
  %65 = load i8, ptr %64, align 1
  tail call arm_apcscc void @SetRenderActiveRange(i8 noundef zeroext 8, i8 noundef zeroext %65) #4
  tail call arm_apcscc void @ResetRenderSlots() #4
  store i32 0, ptr %3, align 4
  store volatile ptr %3, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr @gBackgroundBounds, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597556, ptr inttoptr (i32 67109084 to ptr), align 4
  %66 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  %67 = load i8, ptr @gBackgroundRenderStateCount, align 1
  %68 = zext i8 %67 to i32
  %69 = mul nuw nsw i32 %68, 80
  %70 = call arm_apcscc ptr @AllocateHeapRaw(i32 noundef %69) #4
  store ptr %70, ptr @gRenderStates, align 4
  call arm_apcscc void @InitializeBackgroundRenderState() #4
  %71 = load i8, ptr @gGraphicsScriptCount, align 1
  %72 = zext i8 %71 to i32
  %73 = mul nuw nsw i32 %72, 44
  %74 = call arm_apcscc ptr @AllocateHeap(i32 noundef %73) #4
  store ptr %74, ptr @gGraphicsScripts, align 4
  call arm_apcscc void @SetBlendTargets(i8 noundef zeroext -1, i8 noundef zeroext 0) #4
  %75 = icmp eq i32 %15, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %50, %76
  %77 = phi ptr [ %80, %76 ], [ %16, %50 ]
  %78 = phi i32 [ %83, %76 ], [ 0, %50 ]
  %79 = phi ptr [ %82, %76 ], [ @gMapInitializationWords, %50 ]
  %80 = getelementptr i32, ptr %77, i32 1
  %81 = load i32, ptr %77, align 4
  %82 = getelementptr i32, ptr %79, i32 1
  store i32 %81, ptr %79, align 4
  %83 = add nuw i32 %78, 1
  %84 = icmp eq i32 %83, %15
  br i1 %84, label %85, label %76

85:                                               ; preds = %76, %50
  %86 = call ptr asm "", "={r5},{r5}"(ptr %6) #5, !srcloc !4
  %87 = getelementptr i8, ptr %86, i32 %17
  %88 = getelementptr inbounds %struct.MapDescriptor, ptr %87, i32 0, i32 6
  %89 = load i8, ptr %88, align 4
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %85
  store i8 %89, ptr @gRenderClassSlots0, align 1
  br label %92

92:                                               ; preds = %91, %85
  %93 = getelementptr %struct.MapDescriptor, ptr %87, i32 0, i32 6, i32 1
  %94 = load i8, ptr %93, align 1
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i8 %94, ptr @gRenderClassSlots1, align 1
  br label %97

97:                                               ; preds = %96, %92
  %98 = getelementptr %struct.MapDescriptor, ptr %87, i32 0, i32 6, i32 2
  %99 = load i8, ptr %98, align 2
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  store i8 %99, ptr @gRenderClassSlots2, align 1
  br label %102

102:                                              ; preds = %101, %97
  %103 = getelementptr %struct.MapDescriptor, ptr %87, i32 0, i32 6, i32 3
  %104 = load i8, ptr %103, align 1
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  store i8 %104, ptr @gRenderClassSlots3, align 1
  br label %107

107:                                              ; preds = %106, %102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc ptr @AllocateHeapRaw(i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @SetRenderActiveRange(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

declare dso_local arm_apcscc void @ResetRenderSlots() local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeBackgroundRenderState() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetBlendTargets(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
!4 = !{i64 2565}
