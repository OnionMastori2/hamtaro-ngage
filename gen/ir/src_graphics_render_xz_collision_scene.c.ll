; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.BackgroundBounds = type { i16, i16, i16, i16, i8, [3 x i8] }

@gCoreScriptByte0784 = external dso_local local_unnamed_addr global i8, align 1
@gDefaultRenderXZCollisionMap = external dso_local global [0 x i16], align 2
@gRenderXZCollisionMap = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte2274 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerSecondaryRenderIndex = external dso_local local_unnamed_addr global i8, align 1
@gSaveGroup01Byte1F60 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptWord0778 = external dso_local local_unnamed_addr global i32, align 4
@gCoreScriptWord077C = external dso_local local_unnamed_addr global i32, align 4
@gBootGate2170 = external dso_local local_unnamed_addr global i8, align 1
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gBackgroundBounds = external dso_local local_unnamed_addr global [4 x %struct.BackgroundBounds], align 2
@gMainScriptDestinationWords21F0 = external dso_local global [0 x i32], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @ConfigureRenderXZCollisionScene(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) local_unnamed_addr #0 {
  %10 = alloca i32, align 4
  store i32 %7, ptr %10, align 4
  %11 = inttoptr i32 %7 to ptr
  call void asm sideeffect "", "*m"(ptr nonnull elementtype(i32) %10) #2, !srcloc !4
  %12 = trunc i32 %5 to i16
  %13 = trunc i32 %6 to i16
  store i8 3, ptr @gCoreScriptByte0784, align 1
  store ptr @gDefaultRenderXZCollisionMap, ptr @gRenderXZCollisionMap, align 4
  %14 = trunc i32 %0 to i8
  store i8 %14, ptr @gRenderClassSlots0, align 1
  %15 = trunc i32 %2 to i8
  store i8 %15, ptr @gCoreScriptByte2274, align 1
  %16 = trunc i32 %1 to i8
  store i8 %16, ptr @gRenderClassSlots1, align 1
  %17 = trunc i32 %3 to i8
  store i8 %17, ptr @gFollowerSecondaryRenderIndex, align 1
  store i8 0, ptr @gSaveGroup01Byte1F60, align 1
  store i32 0, ptr @gCoreScriptWord0778, align 4
  store i32 0, ptr @gCoreScriptWord077C, align 4
  store i8 0, ptr @gBootGate2170, align 1
  store i8 0, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 12), align 1
  %18 = icmp eq ptr %11, @gDefaultRenderXZCollisionMap
  br i1 %18, label %25, label %19

19:                                               ; preds = %9
  %20 = load i16, ptr %11, align 2
  %21 = and i16 %20, 15
  %22 = icmp eq i16 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull %11, ptr noundef nonnull @gDefaultRenderXZCollisionMap) #3
  br label %25

24:                                               ; preds = %19
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %11, ptr noundef nonnull @gDefaultRenderXZCollisionMap, i32 noundef 67110016) #3
  br label %25

25:                                               ; preds = %23, %24, %9
  %26 = icmp eq i32 %8, 0
  br i1 %26, label %92, label %27

27:                                               ; preds = %25
  %28 = inttoptr i32 %8 to ptr
  %29 = getelementptr i32, ptr %28, i32 1
  %30 = load i32, ptr %28, align 4
  store i32 %30, ptr @gMainScriptDestinationWords21F0, align 4
  %31 = getelementptr i32, ptr %28, i32 2
  %32 = load i32, ptr %29, align 4
  store i32 %32, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 1), align 4
  %33 = getelementptr i32, ptr %28, i32 3
  %34 = load i32, ptr %31, align 4
  store i32 %34, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 2), align 4
  %35 = getelementptr i32, ptr %28, i32 4
  %36 = load i32, ptr %33, align 4
  store i32 %36, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 3), align 4
  %37 = getelementptr i32, ptr %28, i32 5
  %38 = load i32, ptr %35, align 4
  store i32 %38, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 4), align 4
  %39 = getelementptr i32, ptr %28, i32 6
  %40 = load i32, ptr %37, align 4
  store i32 %40, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 5), align 4
  %41 = getelementptr i32, ptr %28, i32 7
  %42 = load i32, ptr %39, align 4
  store i32 %42, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 6), align 4
  %43 = getelementptr i32, ptr %28, i32 8
  %44 = load i32, ptr %41, align 4
  store i32 %44, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 7), align 4
  %45 = getelementptr i32, ptr %28, i32 9
  %46 = load i32, ptr %43, align 4
  store i32 %46, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 8), align 4
  %47 = getelementptr i32, ptr %28, i32 10
  %48 = load i32, ptr %45, align 4
  store i32 %48, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 9), align 4
  %49 = getelementptr i32, ptr %28, i32 11
  %50 = load i32, ptr %47, align 4
  store i32 %50, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 10), align 4
  %51 = getelementptr i32, ptr %28, i32 12
  %52 = load i32, ptr %49, align 4
  store i32 %52, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 11), align 4
  %53 = getelementptr i32, ptr %28, i32 13
  %54 = load i32, ptr %51, align 4
  store i32 %54, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 12), align 4
  %55 = getelementptr i32, ptr %28, i32 14
  %56 = load i32, ptr %53, align 4
  store i32 %56, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 13), align 4
  %57 = getelementptr i32, ptr %28, i32 15
  %58 = load i32, ptr %55, align 4
  store i32 %58, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 14), align 4
  %59 = getelementptr i32, ptr %28, i32 16
  %60 = load i32, ptr %57, align 4
  store i32 %60, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 15), align 4
  %61 = getelementptr i32, ptr %28, i32 17
  %62 = load i32, ptr %59, align 4
  store i32 %62, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 16), align 4
  %63 = getelementptr i32, ptr %28, i32 18
  %64 = load i32, ptr %61, align 4
  store i32 %64, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 17), align 4
  %65 = getelementptr i32, ptr %28, i32 19
  %66 = load i32, ptr %63, align 4
  store i32 %66, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 18), align 4
  %67 = getelementptr i32, ptr %28, i32 20
  %68 = load i32, ptr %65, align 4
  store i32 %68, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 19), align 4
  %69 = getelementptr i32, ptr %28, i32 21
  %70 = load i32, ptr %67, align 4
  store i32 %70, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 20), align 4
  %71 = getelementptr i32, ptr %28, i32 22
  %72 = load i32, ptr %69, align 4
  store i32 %72, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 21), align 4
  %73 = getelementptr i32, ptr %28, i32 23
  %74 = load i32, ptr %71, align 4
  store i32 %74, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 22), align 4
  %75 = getelementptr i32, ptr %28, i32 24
  %76 = load i32, ptr %73, align 4
  store i32 %76, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 23), align 4
  %77 = getelementptr i32, ptr %28, i32 25
  %78 = load i32, ptr %75, align 4
  store i32 %78, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 24), align 4
  %79 = getelementptr i32, ptr %28, i32 26
  %80 = load i32, ptr %77, align 4
  store i32 %80, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 25), align 4
  %81 = getelementptr i32, ptr %28, i32 27
  %82 = load i32, ptr %79, align 4
  store i32 %82, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 26), align 4
  %83 = getelementptr i32, ptr %28, i32 28
  %84 = load i32, ptr %81, align 4
  store i32 %84, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 27), align 4
  %85 = getelementptr i32, ptr %28, i32 29
  %86 = load i32, ptr %83, align 4
  store i32 %86, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 28), align 4
  %87 = getelementptr i32, ptr %28, i32 30
  %88 = load i32, ptr %85, align 4
  store i32 %88, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 29), align 4
  %89 = getelementptr i32, ptr %28, i32 31
  %90 = load i32, ptr %87, align 4
  store i32 %90, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 30), align 4
  %91 = load i32, ptr %89, align 4
  store i32 %91, ptr getelementptr ([0 x i32], ptr @gMainScriptDestinationWords21F0, i32 0, i32 31), align 4
  br label %97

92:                                               ; preds = %25, %92
  %93 = phi i32 [ %95, %92 ], [ add (i32 ptrtoint (ptr @gMainScriptDestinationWords21F0 to i32), i32 124), %25 ]
  %94 = inttoptr i32 %93 to ptr
  store i32 0, ptr %94, align 4
  %95 = add i32 %93, -4
  %96 = icmp slt i32 %95, ptrtoint (ptr @gMainScriptDestinationWords21F0 to i32)
  br i1 %96, label %97, label %92

97:                                               ; preds = %92, %27
  store i16 0, ptr @gBackgroundBounds, align 2
  store i16 %12, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 0, i32 1), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 0, i32 2), align 2
  store i16 %13, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 0, i32 3), align 2
  store i8 1, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 0, i32 4), align 2
  %98 = and i32 %4, 1
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %97
  store i8 1, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 1, i32 4), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 1), align 2
  store i16 %12, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 1, i32 1), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 1, i32 2), align 2
  store i16 %13, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 1, i32 3), align 2
  br label %101

101:                                              ; preds = %100, %97
  %102 = and i32 %4, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i8 1, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 2, i32 4), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 2), align 2
  store i16 %12, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 2, i32 1), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 2, i32 2), align 2
  store i16 %13, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 2, i32 3), align 2
  br label %105

105:                                              ; preds = %104, %101
  %106 = and i32 %4, 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  store i8 1, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 3, i32 4), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 3), align 2
  store i16 %12, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 3, i32 1), align 2
  store i16 0, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 3, i32 2), align 2
  store i16 %13, ptr getelementptr inbounds ([4 x %struct.BackgroundBounds], ptr @gBackgroundBounds, i32 0, i32 3, i32 3), align 2
  br label %109

109:                                              ; preds = %108, %105
  ret void
}

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 593}
