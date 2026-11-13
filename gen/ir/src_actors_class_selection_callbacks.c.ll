; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderInfo = type { i32, i32, i16, i16, [4 x i8], i8, [3 x i8] }

@gScriptCallbackHalf3564 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3AF4 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3E38 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3670 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3CD0 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3AF8 = external dso_local local_unnamed_addr global i16, align 2
@gScriptCallbackHalf3724 = external dso_local local_unnamed_addr global i16, align 2
@gRenderInfo = external dso_local local_unnamed_addr global %struct.RenderInfo, align 4
@gBackgroundRenderStateCount = external dso_local local_unnamed_addr global i8, align 1
@gGraphicsScriptCount = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackReturnZero12710(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackDelay16_12714(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackInitializeClassSelection12724(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  store i16 0, ptr @gScriptCallbackHalf3564, align 2
  %2 = load i16, ptr @gScriptCallbackHalf3AF4, align 2
  %3 = shl i16 %2, 1
  %4 = or disjoint i16 %3, 1
  store i16 %4, ptr @gScriptCallbackHalf3E38, align 2
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  store i16 1, ptr @gScriptCallbackHalf3724, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackAdjustClassSelection12768(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  %2 = load i8, ptr %0, align 1
  %3 = load i16, ptr @gScriptCallbackHalf3E38, align 2
  %4 = icmp slt i8 %2, 0
  %5 = select i1 %4, i16 -2, i16 2
  %6 = add i16 %5, %3
  %7 = tail call i16 @llvm.umax.i16(i16 %6, i16 3)
  %8 = tail call i16 @llvm.umin.i16(i16 %7, i16 11)
  store i16 %8, ptr @gScriptCallbackHalf3E38, align 2
  %9 = add nsw i16 %8, -1
  %10 = lshr i16 %9, 1
  store i16 %10, ptr @gScriptCallbackHalf3AF4, align 2
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetRenderSelection127B0(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  store i16 0, ptr @gScriptCallbackHalf3E38, align 2
  store i16 0, ptr @gScriptCallbackHalf3564, align 2
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  %2 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %3 = icmp eq i8 %2, 0
  %4 = sext i1 %3 to i16
  store i16 %4, ptr @gScriptCallbackHalf3670, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClampRenderSelection127EC(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %3 = icmp ugt i16 %2, 127
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i16 [ 0, %4 ], [ %2, %1 ]
  %7 = load i8, ptr getelementptr inbounds (%struct.RenderInfo, ptr @gRenderInfo, i32 0, i32 5), align 4
  %8 = zext i8 %7 to i16
  %9 = icmp ult i16 %6, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = add nsw i16 %8, -1
  store i16 %11, ptr @gScriptCallbackHalf3670, align 2
  br label %12

12:                                               ; preds = %10, %5
  %13 = load i16, ptr @gScriptCallbackHalf3AF8, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 4, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = load i16, ptr %19, align 2
  %21 = or i16 %20, 4096
  store i16 %21, ptr %19, align 2
  br label %22

22:                                               ; preds = %15, %12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetBackgroundSelection1283C(ptr nocapture noundef readnone %0) local_unnamed_addr #4 {
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  store i16 0, ptr @gScriptCallbackHalf3E38, align 2
  store i16 0, ptr @gScriptCallbackHalf3564, align 2
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClampBackgroundSelection12878(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %3 = icmp ugt i16 %2, 127
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i16 [ 0, %4 ], [ %2, %1 ]
  %7 = zext nneg i16 %6 to i32
  %8 = load i8, ptr @gBackgroundRenderStateCount, align 1
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %9, 8
  %11 = icmp ugt i32 %10, %7
  br i1 %11, label %15, label %12

12:                                               ; preds = %5
  %13 = zext i8 %8 to i16
  %14 = add nuw nsw i16 %13, 7
  store i16 %14, ptr @gScriptCallbackHalf3670, align 2
  br label %15

15:                                               ; preds = %12, %5
  %16 = load i16, ptr @gScriptCallbackHalf3AF8, align 2
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %20 = zext i16 %19 to i32
  %21 = sub nsw i32 4, %20
  %22 = inttoptr i32 %21 to ptr
  %23 = load i16, ptr %22, align 2
  %24 = or i16 %23, 4096
  store i16 %24, ptr %22, align 2
  br label %25

25:                                               ; preds = %18, %15
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackResetGraphicsSelection128CC(ptr nocapture noundef readnone %0) local_unnamed_addr #1 {
  store i16 0, ptr @gScriptCallbackHalf3AF8, align 2
  store i16 0, ptr @gScriptCallbackHalf3CD0, align 2
  store i16 0, ptr @gScriptCallbackHalf3E38, align 2
  store i16 0, ptr @gScriptCallbackHalf3564, align 2
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  %2 = load i8, ptr @gGraphicsScriptCount, align 1
  %3 = icmp eq i8 %2, 0
  %4 = sext i1 %3 to i16
  store i16 %4, ptr @gScriptCallbackHalf3670, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none)
define dso_local arm_apcscc noundef i32 @ScriptCallbackClampGraphicsSelection12908(ptr nocapture noundef readnone %0) local_unnamed_addr #3 {
  %2 = load i16, ptr @gScriptCallbackHalf3670, align 2
  %3 = icmp ugt i16 %2, 127
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store i16 0, ptr @gScriptCallbackHalf3670, align 2
  br label %5

5:                                                ; preds = %4, %1
  %6 = phi i16 [ 0, %4 ], [ %2, %1 ]
  %7 = load i8, ptr @gGraphicsScriptCount, align 1
  %8 = zext i8 %7 to i16
  %9 = icmp ult i16 %6, %8
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = add nsw i16 %8, -1
  store i16 %11, ptr @gScriptCallbackHalf3670, align 2
  br label %12

12:                                               ; preds = %10, %5
  %13 = load i16, ptr @gScriptCallbackHalf3AF8, align 2
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %12
  %16 = load i16, ptr @gScriptCallbackHalf3CD0, align 2
  %17 = zext i16 %16 to i32
  %18 = sub nsw i32 4, %17
  %19 = inttoptr i32 %18 to ptr
  %20 = load i16, ptr %19, align 2
  %21 = or i16 %20, 4096
  store i16 %21, ptr %19, align 2
  br label %22

22:                                               ; preds = %15, %12
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
