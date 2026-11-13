; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorScriptContext = type { ptr, [16 x i32], i32, i16, i16, i8, i8, i8, i8, i8, [3 x i8] }

@gWordChoiceFamily = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceFlags = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceOptionFlags = external dso_local local_unnamed_addr global i16, align 2
@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gPendingScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gTaskIndirectCallbacks1FC0 = external dso_local local_unnamed_addr global [0 x ptr], align 4
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gActorScriptContexts = external dso_local global [0 x %struct.ActorScriptContext], align 4
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptConfigureWordChoice(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gWordChoiceFamily, align 1
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr @gWordChoiceFlags, align 1
  store i16 0, ptr @gWordChoiceOptionFlags, align 2
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %8 = load i8, ptr %6, align 1
  store i8 %8, ptr @gMainScriptArgumentWords5E8, align 4
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %11 = load i16, ptr @gMainScriptArgumentWords5E8, align 4
  %12 = zext i16 %11 to i32
  %13 = zext i8 %7 to i16
  store i16 %13, ptr @gPendingScriptResult, align 2
  %14 = icmp ult i16 %11, 16
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = icmp ult i16 %11, 512
  br i1 %16, label %20, label %17

17:                                               ; preds = %15
  %18 = add nsw i32 %12, -512
  %19 = icmp ugt i16 %11, 527
  br i1 %19, label %25, label %20

20:                                               ; preds = %17, %15
  %21 = phi i32 [ %12, %15 ], [ %18, %17 ]
  %22 = getelementptr [0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 %21
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  br label %25

25:                                               ; preds = %17, %1, %20
  %26 = phi i32 [ %12, %1 ], [ %24, %20 ], [ 0, %17 ]
  tail call arm_apcscc void @SetWordChoiceInitialIndex(i32 noundef %26) #3
  store i32 5, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @SetWordChoiceInitialIndex(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptStoreIndirectCallback1FC0(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr %0, align 1
  tail call void asm sideeffect "", "{r5}"(ptr nonnull @gMainScriptArgumentWords5E8) #4, !srcloc !4
  %3 = getelementptr i8, ptr %0, i32 1
  %4 = load i8, ptr %3, align 1
  store i8 %4, ptr @gMainScriptArgumentWords5E8, align 4
  %5 = getelementptr i8, ptr %0, i32 2
  %6 = load i8, ptr %5, align 1
  store i8 %6, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %7 = getelementptr i8, ptr %0, i32 3
  %8 = load i8, ptr %7, align 1
  store i8 %8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %9 = getelementptr i8, ptr %0, i32 4
  %10 = load i8, ptr %9, align 1
  store i8 %10, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %11 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %12 = icmp ult i32 %11, 16
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %11
  %15 = load i32, ptr %14, align 4
  store i32 %15, ptr @gMainScriptArgumentWords5E8, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi i32 [ %15, %13 ], [ %11, %1 ]
  %18 = zext i8 %2 to i32
  %19 = inttoptr i32 %17 to ptr
  %20 = getelementptr ptr, ptr @gTaskIndirectCallbacks1FC0, i32 %18
  store ptr %19, ptr %20, align 4
  store i32 5, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptSetActorContext(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = load i8, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  %4 = getelementptr i8, ptr %0, i32 1
  %5 = load i8, ptr %4, align 1
  store i8 %5, ptr @gMainScriptArgumentWords5E8, align 4
  %6 = getelementptr i8, ptr %0, i32 2
  %7 = load i8, ptr %6, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %8 = getelementptr i8, ptr %0, i32 3
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %10 = getelementptr i8, ptr %0, i32 4
  %11 = load i8, ptr %10, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %12 = zext i8 %3 to i32
  %13 = load i32, ptr @gMainScriptArgumentWords5E8, align 4
  %14 = icmp ult i32 %13, 16
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %13
  %17 = load i32, ptr %16, align 4
  store i32 %17, ptr @gMainScriptArgumentWords5E8, align 4
  br label %18

18:                                               ; preds = %15, %1
  %19 = phi i32 [ %17, %15 ], [ %13, %1 ]
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 0, ptr @gMainScriptArgumentWords5E8, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = phi i32 [ 0, %21 ], [ %19, %18 ]
  %24 = icmp eq i8 %3, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %22
  %26 = mul nuw nsw i32 %12, 84
  %27 = add i32 %26, ptrtoint (ptr @gActorScriptContexts to i32)
  %28 = inttoptr i32 %27 to ptr
  %29 = getelementptr inbounds %struct.ActorScriptContext, ptr %28, i32 0, i32 5
  store i8 0, ptr %29, align 4
  %30 = inttoptr i32 %23 to ptr
  store ptr %30, ptr %28, align 4
  %31 = getelementptr inbounds %struct.ActorScriptContext, ptr %28, i32 0, i32 6
  store i8 0, ptr %31, align 1
  store i32 0, ptr %2, align 4
  %32 = add i32 %26, ptrtoint (ptr getelementptr inbounds ([0 x %struct.ActorScriptContext], ptr @gActorScriptContexts, i32 0, i32 0, i32 1, i32 0) to i32)
  %33 = inttoptr i32 %32 to ptr
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef %33, i32 noundef 83886096) #3
  %34 = add i32 %26, ptrtoint (ptr getelementptr inbounds ([0 x %struct.ActorScriptContext], ptr @gActorScriptContexts, i32 0, i32 0, i32 2) to i32)
  %35 = inttoptr i32 %34 to ptr
  store i32 0, ptr %35, align 4
  %36 = getelementptr inbounds %struct.ActorScriptContext, ptr %28, i32 0, i32 7
  store i8 0, ptr %36, align 2
  %37 = getelementptr inbounds %struct.ActorScriptContext, ptr %28, i32 0, i32 3
  store i16 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ActorScriptContext, ptr %28, i32 0, i32 8
  store i8 0, ptr %38, align 1
  %39 = getelementptr inbounds %struct.ActorScriptContext, ptr %28, i32 0, i32 9
  store i8 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.ActorScriptContext, ptr %28, i32 0, i32 4
  store i16 0, ptr %40, align 2
  br label %41

41:                                               ; preds = %25, %22
  store i32 5, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  store i8 1, ptr @gScriptYielded, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret void
}

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1564}
