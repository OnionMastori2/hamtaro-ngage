; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.ActorScriptContext = type { ptr, [16 x i32], i32, i16, i16, i8, i8, i8, i8, i8, [3 x i8] }

@gActorScriptContexts = external dso_local global [0 x %struct.ActorScriptContext], align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1
@gScriptCursor = external dso_local global ptr, align 4
@gScriptCallDepth = external dso_local global i8, align 1
@gScriptReturnStack = external dso_local global [16 x i32], align 4
@gScriptBytesConsumed = external dso_local global i32, align 4
@gScriptCommandInitialized = external dso_local global i8, align 1
@gScriptWaitCounter = external dso_local global i16, align 2
@gScriptHandlerRunning = external dso_local local_unnamed_addr global i8, align 1
@gScriptYielded = external dso_local local_unnamed_addr global i8, align 1
@gScriptResult = external dso_local global i16, align 2
@gActorScriptFirstBytesConsumed = external dso_local global i32, align 4
@gBootScriptHandlers = external dso_local local_unnamed_addr constant [0 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @RunActorScriptFrames() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %112, %0
  %2 = phi ptr [ @gActorScriptContexts, %0 ], [ %113, %112 ]
  %3 = phi i32 [ 1, %0 ], [ %9, %112 ]
  %4 = mul nuw nsw i32 %3, 84
  %5 = ptrtoint ptr %2 to i32
  %6 = add i32 %4, %5
  %7 = inttoptr i32 %6 to ptr
  %8 = load ptr, ptr %7, align 4
  %9 = add nuw nsw i32 %3, 1
  tail call void asm sideeffect "", "r,{r1},{r9}"(ptr %8, ptr nonnull %7, ptr nonnull %7) #2, !srcloc !4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %112, label %11

11:                                               ; preds = %1
  %12 = load i8, ptr @gScriptOpcode, align 1
  %13 = getelementptr inbounds %struct.ActorScriptContext, ptr %2, i32 0, i32 5
  store i8 %12, ptr %13, align 4
  %14 = load ptr, ptr @gScriptCursor, align 4
  store ptr %14, ptr %2, align 4
  %15 = load i8, ptr @gScriptCallDepth, align 1
  %16 = getelementptr inbounds %struct.ActorScriptContext, ptr %2, i32 0, i32 6
  store i8 %15, ptr %16, align 1
  tail call arm_apcscc void @BiosCpuSet(ptr noundef nonnull @gScriptReturnStack, ptr noundef nonnull getelementptr inbounds ([0 x %struct.ActorScriptContext], ptr @gActorScriptContexts, i32 0, i32 0, i32 1), i32 noundef 67108880) #3
  %17 = load i32, ptr @gScriptBytesConsumed, align 4
  %18 = getelementptr inbounds %struct.ActorScriptContext, ptr %2, i32 0, i32 2
  store i32 %17, ptr %18, align 4
  %19 = load i8, ptr @gScriptCommandInitialized, align 1
  %20 = getelementptr inbounds %struct.ActorScriptContext, ptr %2, i32 0, i32 7
  store i8 %19, ptr %20, align 2
  %21 = load i16, ptr @gScriptWaitCounter, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr inbounds %struct.ActorScriptContext, ptr %2, i32 0, i32 3
  %24 = tail call i32 asm "", "=r,r,{r5},r,0"(i32 %22, ptr nonnull @gScriptWaitCounter, ptr nonnull %23, i32 0) #4, !srcloc !5
  store i16 %21, ptr %23, align 2
  %25 = load i8, ptr @gScriptHandlerRunning, align 1
  %26 = getelementptr inbounds %struct.ActorScriptContext, ptr %2, i32 0, i32 8
  store i8 %25, ptr %26, align 1
  %27 = load i8, ptr @gScriptYielded, align 1
  %28 = getelementptr inbounds %struct.ActorScriptContext, ptr %2, i32 0, i32 9
  store i8 %27, ptr %28, align 4
  %29 = load i16, ptr @gScriptResult, align 2
  %30 = getelementptr inbounds %struct.ActorScriptContext, ptr %2, i32 0, i32 4
  store i16 %29, ptr %30, align 2
  %31 = tail call { ptr, ptr } asm "", "=r,=r,0,1"(ptr nonnull @gScriptCommandInitialized, ptr nonnull @gScriptResult) #4, !srcloc !6
  %32 = extractvalue { ptr, ptr } %31, 0
  %33 = extractvalue { ptr, ptr } %31, 1
  %34 = getelementptr inbounds %struct.ActorScriptContext, ptr %7, i32 0, i32 5
  %35 = load i8, ptr %34, align 4
  store i8 %35, ptr @gScriptOpcode, align 1
  %36 = load ptr, ptr %7, align 4
  %37 = tail call ptr asm "", "=r,{r0},0"(ptr %36, ptr nonnull @gScriptCursor) #4, !srcloc !7
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.ActorScriptContext, ptr %7, i32 0, i32 6
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = tail call ptr asm "", "={r2},r,{r2}"(i32 %40, ptr nonnull @gScriptCallDepth) #4, !srcloc !8
  store i8 %39, ptr %41, align 1
  %42 = tail call ptr asm "", "={r1},{r1}"(ptr nonnull getelementptr inbounds ([0 x %struct.ActorScriptContext], ptr @gActorScriptContexts, i32 0, i32 0, i32 1)) #4, !srcloc !9
  %43 = ptrtoint ptr %42 to i32
  %44 = add i32 %4, %43
  %45 = inttoptr i32 %44 to ptr
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %45, ptr noundef nonnull @gScriptReturnStack, i32 noundef 67108880) #3
  %46 = add i32 %4, ptrtoint (ptr @gActorScriptFirstBytesConsumed to i32)
  %47 = inttoptr i32 %46 to ptr
  %48 = load i32, ptr %47, align 4
  %49 = tail call ptr asm "", "=r,{r0},0"(i32 %48, ptr nonnull @gScriptBytesConsumed) #4, !srcloc !10
  store i32 %48, ptr %49, align 4
  %50 = getelementptr inbounds %struct.ActorScriptContext, ptr %7, i32 0, i32 7
  %51 = load i8, ptr %50, align 2
  store i8 %51, ptr %32, align 1
  %52 = getelementptr inbounds %struct.ActorScriptContext, ptr %7, i32 0, i32 3
  %53 = load i16, ptr %52, align 4
  store i16 %53, ptr @gScriptWaitCounter, align 2
  %54 = getelementptr inbounds %struct.ActorScriptContext, ptr %7, i32 0, i32 8
  %55 = load i8, ptr %54, align 1
  store i8 %55, ptr @gScriptHandlerRunning, align 1
  %56 = getelementptr inbounds %struct.ActorScriptContext, ptr %7, i32 0, i32 9
  %57 = load i8, ptr %56, align 4
  store i8 %57, ptr @gScriptYielded, align 1
  %58 = getelementptr inbounds %struct.ActorScriptContext, ptr %7, i32 0, i32 4
  %59 = load i16, ptr %58, align 2
  store i16 %59, ptr %33, align 2
  %60 = trunc i32 %24 to i8
  store i8 %60, ptr @gScriptYielded, align 1
  %61 = tail call ptr asm "", "=r,0"(ptr nonnull %2) #4, !srcloc !11
  br label %62

62:                                               ; preds = %62, %11
  %63 = load i8, ptr @gScriptOpcode, align 1
  %64 = zext i8 %63 to i32
  %65 = getelementptr ptr, ptr @gBootScriptHandlers, i32 %64
  %66 = load ptr, ptr %65, align 4
  %67 = load ptr, ptr @gScriptCursor, align 4
  tail call arm_apcscc void %66(ptr noundef %67) #3
  %68 = load i8, ptr @gScriptYielded, align 1
  %69 = icmp eq i8 %68, 0
  %70 = load i8, ptr @gScriptHandlerRunning, align 1
  %71 = icmp ne i8 %70, 0
  %72 = select i1 %69, i1 true, i1 %71
  br i1 %72, label %62, label %73

73:                                               ; preds = %62
  %74 = ptrtoint ptr %61 to i32
  %75 = add i32 %4, %74
  %76 = inttoptr i32 %75 to ptr
  %77 = load i8, ptr @gScriptOpcode, align 1
  %78 = getelementptr inbounds %struct.ActorScriptContext, ptr %76, i32 0, i32 5
  store i8 %77, ptr %78, align 4
  %79 = load ptr, ptr @gScriptCursor, align 4
  store ptr %79, ptr %76, align 4
  %80 = load i8, ptr @gScriptCallDepth, align 1
  %81 = getelementptr inbounds %struct.ActorScriptContext, ptr %76, i32 0, i32 6
  store i8 %80, ptr %81, align 1
  %82 = getelementptr i8, ptr getelementptr inbounds ([0 x %struct.ActorScriptContext], ptr @gActorScriptContexts, i32 0, i32 0, i32 1), i32 %4
  tail call arm_apcscc void @BiosCpuSet(ptr noundef nonnull @gScriptReturnStack, ptr noundef %82, i32 noundef 67108880) #3
  %83 = load i32, ptr @gScriptBytesConsumed, align 4
  %84 = getelementptr i8, ptr @gActorScriptFirstBytesConsumed, i32 %4
  store i32 %83, ptr %84, align 4
  %85 = load i8, ptr @gScriptCommandInitialized, align 1
  %86 = getelementptr inbounds %struct.ActorScriptContext, ptr %76, i32 0, i32 7
  store i8 %85, ptr %86, align 1
  %87 = load i16, ptr @gScriptWaitCounter, align 2
  %88 = getelementptr inbounds %struct.ActorScriptContext, ptr %76, i32 0, i32 3
  store i16 %87, ptr %88, align 4
  %89 = load i8, ptr @gScriptHandlerRunning, align 1
  %90 = getelementptr inbounds %struct.ActorScriptContext, ptr %76, i32 0, i32 8
  store i8 %89, ptr %90, align 1
  %91 = load i8, ptr @gScriptYielded, align 1
  %92 = getelementptr inbounds %struct.ActorScriptContext, ptr %76, i32 0, i32 9
  store i8 %91, ptr %92, align 4
  %93 = load i16, ptr @gScriptResult, align 2
  %94 = getelementptr inbounds %struct.ActorScriptContext, ptr %76, i32 0, i32 4
  store i16 %93, ptr %94, align 2
  %95 = getelementptr inbounds %struct.ActorScriptContext, ptr %61, i32 0, i32 5
  %96 = load i8, ptr %95, align 4
  store i8 %96, ptr @gScriptOpcode, align 1
  %97 = load ptr, ptr %61, align 4
  store ptr %97, ptr @gScriptCursor, align 4
  %98 = getelementptr inbounds %struct.ActorScriptContext, ptr %61, i32 0, i32 6
  %99 = load i8, ptr %98, align 1
  store i8 %99, ptr @gScriptCallDepth, align 1
  tail call arm_apcscc void @BiosCpuSet(ptr noundef nonnull getelementptr inbounds ([0 x %struct.ActorScriptContext], ptr @gActorScriptContexts, i32 0, i32 0, i32 1), ptr noundef nonnull @gScriptReturnStack, i32 noundef 67108880) #3
  %100 = getelementptr inbounds %struct.ActorScriptContext, ptr %61, i32 0, i32 2
  %101 = load i32, ptr %100, align 4
  store i32 %101, ptr @gScriptBytesConsumed, align 4
  %102 = getelementptr inbounds %struct.ActorScriptContext, ptr %61, i32 0, i32 7
  %103 = load i8, ptr %102, align 2
  store i8 %103, ptr @gScriptCommandInitialized, align 1
  %104 = getelementptr inbounds %struct.ActorScriptContext, ptr %61, i32 0, i32 3
  %105 = load i16, ptr %104, align 4
  store i16 %105, ptr @gScriptWaitCounter, align 2
  %106 = getelementptr inbounds %struct.ActorScriptContext, ptr %61, i32 0, i32 8
  %107 = load i8, ptr %106, align 1
  store i8 %107, ptr @gScriptHandlerRunning, align 1
  %108 = getelementptr inbounds %struct.ActorScriptContext, ptr %61, i32 0, i32 9
  %109 = load i8, ptr %108, align 4
  store i8 %109, ptr @gScriptYielded, align 1
  %110 = getelementptr inbounds %struct.ActorScriptContext, ptr %61, i32 0, i32 4
  %111 = load i16, ptr %110, align 2
  store i16 %111, ptr @gScriptResult, align 2
  tail call void asm sideeffect "", "{r6},{r9}"(i32 %4, ptr nonnull %7) #2, !srcloc !12
  br label %112

112:                                              ; preds = %73, %1
  %113 = phi ptr [ %61, %73 ], [ %2, %1 ]
  %114 = icmp eq i32 %9, 17
  br i1 %114, label %115, label %1

115:                                              ; preds = %112
  ret void
}

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 640}
!5 = !{i64 1537}
!6 = !{i64 1878}
!7 = !{i64 2335}
!8 = !{i64 2626}
!9 = !{i64 2843}
!10 = !{i64 3396}
!11 = !{i64 4030}
!12 = !{i64 7084}
