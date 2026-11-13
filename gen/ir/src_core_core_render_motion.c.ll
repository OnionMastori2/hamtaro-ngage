; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gSaveGroup01Byte21E0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1F8C = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2C50 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2174 = external dso_local local_unnamed_addr global i8, align 1
@gPendingScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gCoreScriptByte0785 = external dso_local local_unnamed_addr global i8, align 1
@gBootMode0786 = external dso_local local_unnamed_addr global i8, align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @AdvanceCoreRenderMotion() local_unnamed_addr #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %1) #3
  store i8 0, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #3
  store i8 0, ptr %2, align 1
  %3 = load i8, ptr @gSaveGroup01Byte21E0, align 1
  %4 = and i8 %3, 4
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  store i8 16, ptr @gCoreScriptByte1FA8, align 1
  store i8 0, ptr @gCoreScriptByte1F8C, align 1
  store i8 0, ptr @gCoreScriptByte2C50, align 1
  store i8 0, ptr @gCoreScriptByte2174, align 1
  %7 = load i16, ptr @gPendingScriptResult, align 2
  store i16 %7, ptr @gScriptResult, align 2
  store i16 0, ptr @gPendingScriptResult, align 2
  %8 = and i8 %3, -5
  store i8 %8, ptr @gSaveGroup01Byte21E0, align 1
  br label %53

9:                                                ; preds = %0
  store i8 0, ptr @gCoreScriptByte1FA8, align 1
  store i8 0, ptr @gCoreScriptByte1F8C, align 1
  store i8 0, ptr @gCoreScriptByte2C50, align 1
  store i8 0, ptr @gCoreScriptByte2174, align 1
  store i8 0, ptr @gCoreScriptByte0785, align 1
  tail call arm_apcscc void @SetGameFlag(i16 noundef zeroext 24, i32 noundef 0) #4
  store i8 0, ptr @gBootMode0786, align 1
  tail call arm_apcscc void @UpdateCoreMotionControl() #4
  %10 = call arm_apcscc i32 @UpdateLeaderRenderXZMotion(ptr noundef nonnull %1, ptr noundef nonnull %2) #4
  call arm_apcscc void @UpdateCoreRenderCollision() #4
  %11 = call arm_apcscc i32 @ClassifyLeaderRenderXZMotion() #4
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr @gBootMode0786, align 1
  %13 = load ptr, ptr @gRenderSlots, align 4
  %14 = load i8, ptr @gRenderClassSlots0, align 1
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.RenderSlot, ptr %13, i32 %15, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.RenderSlot, ptr %13, i32 %15, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, %17
  store i32 %20, ptr %16, align 4
  %21 = getelementptr %struct.RenderSlot, ptr %13, i32 %15, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr %struct.RenderSlot, ptr %13, i32 %15, i32 6, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  store i32 %25, ptr %21, align 4
  store i32 0, ptr %18, align 4
  store i32 0, ptr %23, align 4
  %26 = load i8, ptr @gRenderClassSlots1, align 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %43, label %28

28:                                               ; preds = %9
  call arm_apcscc void @UpdateLeaderFollowerRouteSegment() #4
  %29 = call arm_apcscc i32 @UpdateFollowerRenderXZMotion() #4
  %30 = load ptr, ptr @gRenderSlots, align 4
  %31 = load i8, ptr @gRenderClassSlots1, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr %struct.RenderSlot, ptr %30, i32 %32, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.RenderSlot, ptr %30, i32 %32, i32 6
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, %34
  store i32 %37, ptr %33, align 4
  %38 = getelementptr %struct.RenderSlot, ptr %30, i32 %32, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.RenderSlot, ptr %30, i32 %32, i32 6, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, %39
  store i32 %42, ptr %38, align 4
  store i32 0, ptr %35, align 4
  store i32 0, ptr %40, align 4
  br label %43

43:                                               ; preds = %28, %9
  %44 = call arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext 1023, i8 noundef zeroext 0) #4
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 12), align 1
  %48 = icmp sgt i8 %47, -1
  %49 = zext i1 %48 to i8
  %50 = add nuw i8 %47, %49
  br label %51

51:                                               ; preds = %43, %46
  %52 = phi i8 [ %50, %46 ], [ 0, %43 ]
  store i8 %52, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 12), align 1
  br label %53

53:                                               ; preds = %51, %6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @UpdateCoreMotionControl() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @UpdateLeaderRenderXZMotion(ptr noundef, ptr noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @UpdateCoreRenderCollision() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @ClassifyLeaderRenderXZMotion() local_unnamed_addr #2

declare dso_local arm_apcscc void @UpdateLeaderFollowerRouteSegment() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @UpdateFollowerRenderXZMotion() local_unnamed_addr #2

declare dso_local arm_apcscc zeroext i16 @QueryKeys(i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
