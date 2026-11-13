; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gSaveGroup01Block2EB0 = external dso_local global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gFollowerPrimaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSaveActorsAndChangeMap10_4(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4
  %6 = tail call arm_apcscc ptr @memcpy(ptr noundef nonnull @gSaveGroup01Block2EB0, ptr noundef %5, i32 noundef 104) #2
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i8, ptr @gCoreScriptByte2274, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr %struct.RenderSlot, ptr %7, i32 %9
  %11 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), ptr noundef %10, i32 noundef 104) #2
  %12 = load ptr, ptr @gRenderSlots, align 4
  %13 = load i8, ptr @gRenderClassSlots1, align 1
  %14 = zext i8 %13 to i32
  %15 = getelementptr %struct.RenderSlot, ptr %12, i32 %14
  %16 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), ptr noundef %15, i32 noundef 104) #2
  %17 = load ptr, ptr @gRenderSlots, align 4
  %18 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %19 = zext i8 %18 to i32
  %20 = getelementptr %struct.RenderSlot, ptr %17, i32 %19
  %21 = tail call arm_apcscc ptr @memcpy(ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), ptr noundef %20, i32 noundef 104) #2
  %22 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 13), align 1
  store i8 %22, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 14), align 1
  store i8 %23, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  tail call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext 10, i8 noundef zeroext 4) #2
  ret i32 -4
}

declare dso_local arm_apcscc ptr @memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRestoreActorsAndPreviousMapC2A9C(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gScriptCursor, align 4
  %3 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 39), align 1
  %4 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 40), align 1
  tail call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext %3, i8 noundef zeroext %4) #2
  %5 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 96), align 1
  %6 = and i8 %5, 15
  %7 = add nsw i8 %6, -1
  %8 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 1
  %11 = or disjoint i32 %10, 1
  %12 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %11
  %13 = load ptr, ptr %12, align 4
  %14 = zext i8 %7 to i32
  %15 = getelementptr ptr, ptr %13, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = load i8, ptr @gRenderClassSlots0, align 1
  %18 = zext i8 %17 to i32
  %19 = load ptr, ptr @gRenderSlots, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = mul nuw nsw i32 %18, 104
  %22 = add i32 %21, %20
  %23 = inttoptr i32 %22 to ptr
  %24 = tail call arm_apcscc ptr @memcpy(ptr noundef %23, ptr noundef nonnull @gSaveGroup01Block2EB0, i32 noundef 104) #2
  %25 = load i8, ptr @gRenderClassSlots0, align 1
  %26 = zext i8 %25 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %26, ptr noundef %16) #2
  %27 = load i8, ptr @gCoreScriptByte2274, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %1
  %31 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 200), align 1
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %35 = zext i8 %34 to i32
  %36 = shl nuw nsw i32 %35, 1
  %37 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %36
  %38 = load ptr, ptr %37, align 4
  %39 = shl nuw nsw i32 %14, 1
  %40 = getelementptr ptr, ptr %38, i32 %39
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr @gRenderSlots, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = mul nuw nsw i32 %28, 104
  %45 = add i32 %44, %43
  %46 = inttoptr i32 %45 to ptr
  %47 = tail call arm_apcscc ptr @memcpy(ptr noundef %46, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 104), i32 noundef 104) #2
  %48 = load i8, ptr @gCoreScriptByte2274, align 1
  %49 = zext i8 %48 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %49, ptr noundef %41) #2
  br label %50

50:                                               ; preds = %33, %30, %1
  %51 = load i8, ptr @gRenderClassSlots1, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i8 %51, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %50
  %55 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 304), align 1
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %78, label %57

57:                                               ; preds = %54
  %58 = and i8 %55, 15
  %59 = add nsw i8 %58, -1
  %60 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %61 = xor i8 %60, 1
  %62 = zext i8 %61 to i32
  %63 = shl nuw nsw i32 %62, 1
  %64 = or disjoint i32 %63, 1
  %65 = getelementptr [0 x ptr], ptr @gFollowerPrimaryAnimationFamilies, i32 0, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = zext i8 %59 to i32
  %68 = getelementptr ptr, ptr %66, i32 %67
  %69 = load ptr, ptr %68, align 4
  %70 = load ptr, ptr @gRenderSlots, align 4
  %71 = ptrtoint ptr %70 to i32
  %72 = mul nuw nsw i32 %52, 104
  %73 = add i32 %72, %71
  %74 = inttoptr i32 %73 to ptr
  %75 = tail call arm_apcscc ptr @memcpy(ptr noundef %74, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 208), i32 noundef 104) #2
  %76 = load i8, ptr @gRenderClassSlots1, align 1
  %77 = zext i8 %76 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %77, ptr noundef %69) #2
  br label %78

78:                                               ; preds = %54, %57, %50
  %79 = phi i8 [ %7, %50 ], [ %59, %57 ], [ %7, %54 ]
  %80 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i8 %80, 0
  br i1 %82, label %105, label %83

83:                                               ; preds = %78
  %84 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 408), align 1
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %105, label %86

86:                                               ; preds = %83
  %87 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %88 = zext i8 %87 to i32
  %89 = shl nuw nsw i32 %88, 1
  %90 = or disjoint i32 %89, 1
  %91 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %90
  %92 = load ptr, ptr %91, align 4
  %93 = zext i8 %79 to i32
  %94 = shl nuw nsw i32 %93, 1
  %95 = getelementptr ptr, ptr %92, i32 %94
  %96 = load ptr, ptr %95, align 4
  %97 = load ptr, ptr @gRenderSlots, align 4
  %98 = ptrtoint ptr %97 to i32
  %99 = mul nuw nsw i32 %81, 104
  %100 = add i32 %99, %98
  %101 = inttoptr i32 %100 to ptr
  %102 = tail call arm_apcscc ptr @memcpy(ptr noundef %101, ptr noundef getelementptr ([0 x i8], ptr @gSaveGroup01Block2EB0, i32 0, i32 312), i32 noundef 104) #2
  %103 = load i8, ptr @gFollowerSecondaryRenderIndex, align 1
  %104 = zext i8 %103 to i32
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef %104, ptr noundef %96) #2
  br label %105

105:                                              ; preds = %83, %86, %78
  store ptr %2, ptr @gScriptCursor, align 4
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
