; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gClassTransitionPrimaryAnimationFamilies00F8 = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gFollowerSecondaryAnimationFamilies = external dso_local local_unnamed_addr constant [0 x ptr], align 4
@gSaveGroup01Byte1F90 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackRepositionLeaderAndSelectAnimations(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
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
  %21 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %69, label %23

23:                                               ; preds = %1
  %24 = tail call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 2, i8 noundef zeroext 0) #2
  %25 = lshr i16 %24, 1
  %26 = load i8, ptr @gSaveGroup01Byte1F60, align 1
  %27 = zext i8 %26 to i32
  %28 = getelementptr [0 x ptr], ptr @gClassTransitionPrimaryAnimationFamilies00F8, i32 0, i32 %27
  %29 = load ptr, ptr %28, align 4
  %30 = load i8, ptr %6, align 4
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 1
  %33 = and i16 %25, 255
  %34 = zext nneg i16 %33 to i32
  %35 = getelementptr ptr, ptr %29, i32 %32
  %36 = getelementptr ptr, ptr %35, i32 -2
  %37 = getelementptr ptr, ptr %36, i32 %34
  %38 = load i8, ptr @gRenderClassSlots0, align 1
  %39 = load ptr, ptr %37, align 4
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %38, ptr noundef %39) #2
  %40 = load i8, ptr @gCoreScriptByte2274, align 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %61, label %42

42:                                               ; preds = %23
  %43 = zext i8 %40 to i32
  %44 = load i8, ptr @gSaveGroup01Byte1F90, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr [0 x ptr], ptr @gFollowerSecondaryAnimationFamilies, i32 0, i32 %45
  %47 = load ptr, ptr %46, align 4
  %48 = load i8, ptr %6, align 4
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 1
  %51 = getelementptr ptr, ptr %47, i32 %50
  %52 = getelementptr ptr, ptr %51, i32 -2
  %53 = getelementptr ptr, ptr %52, i32 %34
  %54 = load ptr, ptr @gRenderSlots, align 4
  %55 = getelementptr %struct.RenderSlot, ptr %54, i32 %43, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = inttoptr i32 %56 to ptr
  %58 = load ptr, ptr %53, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %61, label %60

60:                                               ; preds = %42
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext %40, ptr noundef %58) #2
  br label %61

61:                                               ; preds = %42, %60, %23
  %62 = icmp eq i16 %33, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %61
  %64 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 347) #2
  %65 = icmp eq i32 %64, 0
  %66 = select i1 %65, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 42), ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 43)
  %67 = load i16, ptr %66, align 2
  %68 = lshr i16 %67, 1
  store i16 %68, ptr %66, align 2
  br label %69

69:                                               ; preds = %63, %61, %1
  ret i32 1
}

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
