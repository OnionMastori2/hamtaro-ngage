; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @AnimationCallbackCopyCommunicationRenderSlots(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  store volatile ptr %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  %10 = load ptr, ptr @gRenderSlots, align 4
  %11 = ptrtoint ptr %10 to i32
  tail call void asm sideeffect "", "{r2}"(i32 1040) #3, !srcloc !4
  %12 = add i32 %11, 1040
  %13 = inttoptr i32 %12 to ptr
  tail call void asm sideeffect "", "{r4}"(i32 1352) #3, !srcloc !5
  %14 = add i32 %11, 1352
  %15 = inttoptr i32 %14 to ptr
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  store volatile i32 %17, ptr %5, align 4
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  tail call void asm sideeffect "", "{r1}"(i32 %19) #3, !srcloc !6
  %20 = getelementptr inbounds %struct.RenderSlot, ptr %13, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  tail call void asm sideeffect "", "{r2}"(i32 %21) #3, !srcloc !7
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %15, i32 0, i32 3
  %23 = load i32, ptr %22, align 4
  store volatile i32 %23, ptr %6, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %15, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  store volatile i32 %25, ptr %7, align 4
  %26 = getelementptr inbounds %struct.RenderSlot, ptr %15, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  store volatile i32 %27, ptr %8, align 4
  store volatile ptr %15, ptr %9, align 4
  %28 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 641) #4
  %29 = load volatile ptr, ptr %9, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %90

31:                                               ; preds = %3
  %32 = load ptr, ptr @gRenderSlots, align 4
  %33 = ptrtoint ptr %32 to i32
  %34 = add i32 %33, 1664
  %35 = inttoptr i32 %34 to ptr
  %36 = add i32 %33, 1976
  %37 = inttoptr i32 %36 to ptr
  %38 = load i32, ptr %13, align 4
  store i32 %38, ptr %35, align 4
  %39 = load volatile i32, ptr %5, align 4
  %40 = add i32 %39, -3080192
  %41 = getelementptr inbounds %struct.RenderSlot, ptr %35, i32 0, i32 3
  store i32 %40, ptr %41, align 4
  tail call void asm sideeffect "", "{r4}"(i32 65536) #3, !srcloc !8
  %42 = add i32 %19, 65536
  %43 = getelementptr inbounds %struct.RenderSlot, ptr %35, i32 0, i32 4
  store i32 %42, ptr %43, align 4
  %44 = add i32 %21, -2097152
  %45 = getelementptr inbounds %struct.RenderSlot, ptr %35, i32 0, i32 5
  store i32 %44, ptr %45, align 4
  tail call void asm sideeffect "", "{r4}"(i32 1763) #3, !srcloc !9
  %46 = add i32 %33, 1763
  %47 = inttoptr i32 %46 to ptr
  store i8 127, ptr %47, align 1
  %48 = add i32 %33, 1767
  %49 = inttoptr i32 %48 to ptr
  store i8 64, ptr %49, align 1
  %50 = load i32, ptr %29, align 4
  store i32 %50, ptr %37, align 4
  %51 = load volatile i32, ptr %6, align 4
  tail call void asm sideeffect "", "{r1},{r4}"(i32 %51, i32 -3080192) #3, !srcloc !10
  %52 = add i32 %51, -3080192
  %53 = getelementptr inbounds %struct.RenderSlot, ptr %37, i32 0, i32 3
  store i32 %52, ptr %53, align 4
  %54 = load volatile i32, ptr %7, align 4
  %55 = add i32 %54, 65536
  %56 = getelementptr inbounds %struct.RenderSlot, ptr %37, i32 0, i32 4
  store i32 %55, ptr %56, align 4
  %57 = load volatile i32, ptr %8, align 4
  %58 = add i32 %57, -2097152
  %59 = getelementptr inbounds %struct.RenderSlot, ptr %37, i32 0, i32 5
  store i32 %58, ptr %59, align 4
  %60 = add i32 %33, 2075
  %61 = inttoptr i32 %60 to ptr
  store i8 127, ptr %61, align 1
  %62 = add i32 %33, 2079
  %63 = inttoptr i32 %62 to ptr
  store i8 80, ptr %63, align 1
  %64 = load ptr, ptr @gRenderSlots, align 4
  %65 = ptrtoint ptr %64 to i32
  tail call void asm sideeffect "", "r"(i32 2496) #3, !srcloc !11
  %66 = add i32 %65, 2496
  %67 = inttoptr i32 %66 to ptr
  %68 = add i32 %65, 2808
  %69 = inttoptr i32 %68 to ptr
  %70 = load i32, ptr %13, align 4
  store i32 %70, ptr %67, align 4
  %71 = load volatile i32, ptr %5, align 4
  %72 = add i32 %71, 3211264
  %73 = getelementptr inbounds %struct.RenderSlot, ptr %67, i32 0, i32 3
  store i32 %72, ptr %73, align 4
  tail call void asm sideeffect "", "{r5}"(i32 %42) #3, !srcloc !12
  %74 = getelementptr inbounds %struct.RenderSlot, ptr %67, i32 0, i32 4
  store i32 %42, ptr %74, align 4
  %75 = getelementptr inbounds %struct.RenderSlot, ptr %67, i32 0, i32 5
  store i32 %44, ptr %75, align 4
  %76 = add i32 %65, 2595
  %77 = inttoptr i32 %76 to ptr
  store i8 127, ptr %77, align 1
  %78 = add i32 %65, 2599
  %79 = inttoptr i32 %78 to ptr
  store i8 96, ptr %79, align 1
  %80 = load i32, ptr %29, align 4
  store i32 %80, ptr %69, align 4
  %81 = load volatile i32, ptr %6, align 4
  %82 = add i32 %81, 3211264
  %83 = getelementptr inbounds %struct.RenderSlot, ptr %69, i32 0, i32 3
  store i32 %82, ptr %83, align 4
  tail call void asm sideeffect "", "{r5}"(i32 %55) #3, !srcloc !13
  %84 = getelementptr inbounds %struct.RenderSlot, ptr %69, i32 0, i32 4
  store i32 %55, ptr %84, align 4
  %85 = getelementptr inbounds %struct.RenderSlot, ptr %69, i32 0, i32 5
  store i32 %58, ptr %85, align 4
  %86 = add i32 %65, 2907
  %87 = inttoptr i32 %86 to ptr
  store i8 127, ptr %87, align 1
  tail call void asm sideeffect "", "{r4}"(i32 2911) #3, !srcloc !14
  %88 = add i32 %65, 2911
  %89 = inttoptr i32 %88 to ptr
  store i8 112, ptr %89, align 1
  br label %90

90:                                               ; preds = %31, %3
  %91 = load volatile ptr, ptr %4, align 4
  store i32 1, ptr %91, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #2

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
!4 = !{i64 916}
!5 = !{i64 1052}
!6 = !{i64 1233}
!7 = !{i64 1358}
!8 = !{i64 2929}
!9 = !{i64 3402}
!10 = !{i64 4017}
!11 = !{i64 5029}
!12 = !{i64 5707}
!13 = !{i64 6656}
!14 = !{i64 7016}
