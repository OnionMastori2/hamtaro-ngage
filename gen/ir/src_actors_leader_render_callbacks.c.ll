; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundBounds = type { i16, i16, i16, i16, i8, [3 x i8] }
%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gAnimationClassValues = external dso_local local_unnamed_addr global [0 x i16], align 2
@gBackgroundBounds = external dso_local local_unnamed_addr global [4 x %struct.BackgroundBounds], align 2
@gLeaderApproachAnimation8E4B6D = external dso_local constant [0 x i8], align 1
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gScriptRenderOffsets2BB0 = external dso_local local_unnamed_addr global [2 x i32], align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gScriptCallDepth = external dso_local local_unnamed_addr global i8, align 1
@gScriptSavedCallDepth = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackApproachClampedLeader(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 228), align 1
  %7 = load ptr, ptr @gRenderSlots, align 4
  %8 = load i16, ptr getelementptr ([0 x i16], ptr @gAnimationClassValues, i32 0, i32 55), align 2
  %9 = load i16, ptr @gBackgroundBounds, align 2
  %10 = load i16, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 0, i32 1), align 2
  %11 = load i16, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 0, i32 2), align 2
  %12 = load i16, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 0, i32 3), align 2
  %13 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 231), align 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %5, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext %13) #5
  %14 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 232), align 1
  %15 = and i8 %14, 15
  %16 = or disjoint i8 %15, 48
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext %2, i8 noundef zeroext 1, i8 noundef zeroext %16, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @gLeaderApproachAnimation8E4B6D) #5
  %17 = icmp eq i16 %8, 0
  br i1 %17, label %58, label %18

18:                                               ; preds = %1
  %19 = zext i16 %8 to i32
  %20 = zext i16 %12 to i32
  %21 = shl nuw i32 %20, 16
  %22 = add i32 %21, -6291456
  %23 = zext i16 %11 to i32
  %24 = shl nuw i32 %23, 16
  %25 = add i32 %24, 4194304
  %26 = zext i16 %10 to i32
  %27 = shl nuw i32 %26, 16
  %28 = add i32 %27, -8912896
  %29 = zext i16 %9 to i32
  %30 = shl nuw i32 %29, 16
  %31 = add i32 %30, 6815744
  %32 = zext i8 %6 to i32
  %33 = zext i8 %5 to i32
  %34 = getelementptr %struct.RenderSlot, ptr %7, i32 %33, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = tail call arm_apcscc i32 @ClampRenderApproachCoordinate(i32 noundef %35, i32 noundef %31, i32 noundef %28) #5
  %37 = getelementptr %struct.RenderSlot, ptr %7, i32 %33, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr %struct.RenderSlot, ptr %7, i32 %33, i32 5
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = tail call arm_apcscc i32 @ClampRenderApproachCoordinate(i32 noundef %41, i32 noundef %25, i32 noundef %22) #5
  %43 = getelementptr %struct.RenderSlot, ptr %7, i32 %32, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = tail call arm_apcscc i32 @ClampRenderApproachCoordinate(i32 noundef %44, i32 noundef %31, i32 noundef %28) #5
  %46 = getelementptr %struct.RenderSlot, ptr %7, i32 %32, i32 4
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr %struct.RenderSlot, ptr %7, i32 %32, i32 5
  %49 = load i32, ptr %48, align 4
  %50 = add i32 %49, %47
  %51 = tail call arm_apcscc i32 @ClampRenderApproachCoordinate(i32 noundef %50, i32 noundef %25, i32 noundef %22) #5
  %52 = sub i32 %45, %36
  %53 = tail call arm_apcscc i32 @__divsi3(i32 noundef %52, i32 noundef %19) #5
  %54 = getelementptr %struct.RenderSlot, ptr %7, i32 %3, i32 6
  store i32 %53, ptr %54, align 4
  %55 = getelementptr %struct.RenderSlot, ptr %7, i32 %3, i32 6, i32 1
  store i32 0, ptr %55, align 4
  %56 = sub i32 %51, %42
  %57 = tail call arm_apcscc i32 @__divsi3(i32 noundef %56, i32 noundef %19) #5
  br label %61

58:                                               ; preds = %1
  %59 = getelementptr %struct.RenderSlot, ptr %7, i32 %3, i32 6
  %60 = getelementptr %struct.RenderSlot, ptr %7, i32 %3, i32 6, i32 1
  store i32 0, ptr %60, align 4
  store i32 0, ptr %59, align 4
  br label %61

61:                                               ; preds = %58, %18
  %62 = phi i32 [ 0, %58 ], [ %57, %18 ]
  %63 = phi i32 [ undef, %58 ], [ %42, %18 ]
  %64 = phi i32 [ undef, %58 ], [ %36, %18 ]
  %65 = getelementptr %struct.RenderSlot, ptr %7, i32 %3, i32 6, i32 2
  store i32 %62, ptr %65, align 4
  %66 = getelementptr %struct.RenderSlot, ptr %7, i32 %3, i32 3
  store i32 %64, ptr %66, align 4
  %67 = getelementptr %struct.RenderSlot, ptr %7, i32 %3, i32 4
  store i32 32768, ptr %67, align 4
  %68 = getelementptr %struct.RenderSlot, ptr %7, i32 %3, i32 5
  store i32 %63, ptr %68, align 4
  ret i32 2
}

declare dso_local arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @ClampRenderApproachCoordinate(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @__divsi3(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackTransferLeaderRenderModes(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 228), align 1
  %3 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr @gRenderSlots, align 4
  br label %8

8:                                                ; preds = %6, %13
  %9 = phi i32 [ 0, %6 ], [ %14, %13 ]
  %10 = getelementptr %struct.RenderSlot, ptr %7, i32 %9, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, ptrtoint (ptr @gLeaderApproachAnimation8E4B6D to i32)
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = add nuw nsw i32 %9, 1
  %15 = icmp eq i32 %14, %4
  br i1 %15, label %19, label %8

16:                                               ; preds = %8, %1
  %17 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %18 = icmp eq i32 %17, %4
  br i1 %18, label %19, label %21

19:                                               ; preds = %13, %16
  br label %20

20:                                               ; preds = %19, %20
  br label %20

21:                                               ; preds = %16
  %22 = trunc i32 %17 to i8
  %23 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 231), align 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %22, i8 noundef zeroext 1, i8 noundef zeroext 3, i8 noundef zeroext %23) #5
  %24 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 232), align 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext %2, i8 noundef zeroext 0, i8 noundef zeroext 3, i8 noundef zeroext %24) #5
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeLinkedScreenSlot9(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @gScriptRenderOffsets2BB0, align 4
  %3 = inttoptr i32 %2 to ptr
  tail call arm_apcscc void @ConfigureWordChoiceRenderSlot(i8 noundef zeroext 9, i8 noundef zeroext 1, i8 noundef zeroext -80, i32 noundef 20, i32 noundef -8, i32 noundef 0, ptr noundef %3) #5
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #5
  ret i32 0
}

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @ScriptCallbackSetLinkedScreenSlot9Animation(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @gScriptRenderOffsets2BB0, i32 0, i32 1), align 4
  %3 = inttoptr i32 %2 to ptr
  tail call arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext 9, ptr noundef %3) #5
  %4 = load i8, ptr @gRenderClassSlots0, align 1
  tail call arm_apcscc void @SetRenderModeBytes(i8 noundef zeroext 9, i8 noundef zeroext 2, i8 noundef zeroext 3, i8 noundef zeroext %4) #5
  ret i32 0
}

declare dso_local arm_apcscc void @SetRenderAnimationAndClearBootGate(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_11EA4(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackCompareRenderZ(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %0, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %7
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i32
  %11 = getelementptr %struct.RenderSlot, ptr %2, i32 %4, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.RenderSlot, ptr %2, i32 %10, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %12, %14
  %16 = icmp sgt i32 %12, %14
  %17 = select i1 %16, i8 1, i8 2
  %18 = select i1 %15, i8 0, i8 %17
  store i8 %18, ptr %8, align 1
  ret i32 2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_11EEC(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_11EF0(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackSaveField2BF0(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  %2 = load i8, ptr @gScriptCallDepth, align 1
  store i8 %2, ptr @gScriptSavedCallDepth, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturn0_11F08(ptr nocapture noundef readnone %0) local_unnamed_addr #2 {
  ret i32 0
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
