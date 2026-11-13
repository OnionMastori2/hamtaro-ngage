; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%union.FollowerRoutePoint = type { [2 x i32] }
%struct.anon = type { ptr, ptr, i32, i32, i32, i32 }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.anon.0 = type { i16, i16, i16, i16 }

@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gRenderClassSlots1 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gFollowerRouteReadIndex = external dso_local local_unnamed_addr global i8, align 1
@gFollowerRouteEndIndex = external dso_local local_unnamed_addr global i8, align 1
@gFollowerRoutePoints = external dso_local global [0 x %union.FollowerRoutePoint], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @RebuildFollowerRenderXZRoute() local_unnamed_addr #0 {
  %1 = alloca %struct.anon, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %1) #4
  %2 = load ptr, ptr @gRenderSlots, align 4
  %3 = load i8, ptr @gRenderClassSlots0, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr %struct.RenderSlot, ptr %2, i32 %4
  store ptr %5, ptr %1, align 4
  %6 = load i8, ptr @gRenderClassSlots1, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr %struct.RenderSlot, ptr %2, i32 %7
  %9 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  call void asm "", "=*m,=*m,*m,*m"(ptr nonnull elementtype(ptr) %1, ptr nonnull elementtype(ptr) %9, ptr nonnull elementtype(ptr) %1, ptr nonnull elementtype(ptr) %9) #4, !srcloc !4
  store i8 0, ptr @gFollowerRouteReadIndex, align 1
  store i8 0, ptr @gFollowerRouteEndIndex, align 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 26
  %12 = load i16, ptr %11, align 2
  store i16 %12, ptr @gFollowerRoutePoints, align 4
  %13 = getelementptr i8, ptr %10, i32 34
  %14 = load i16, ptr %13, align 2
  store i16 %14, ptr getelementptr inbounds (%struct.anon.0, ptr @gFollowerRoutePoints, i32 0, i32 1), align 2
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.RenderSlot, ptr %15, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.RenderSlot, ptr %10, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = sub i32 %17, %19
  %21 = call i32 asm "", "=r,0"(i32 %20) #5, !srcloc !5
  %22 = getelementptr inbounds %struct.RenderSlot, ptr %15, i32 0, i32 5
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds %struct.RenderSlot, ptr %10, i32 0, i32 5
  %25 = load i32, ptr %24, align 4
  %26 = sub i32 %23, %25
  %27 = call i32 asm "", "=r,0"(i32 %26) #5, !srcloc !6
  %28 = icmp eq i32 %21, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %0
  store i16 0, ptr getelementptr inbounds ([0 x %union.FollowerRoutePoint], ptr @gFollowerRoutePoints, i32 0, i32 0, i32 0, i32 1), align 4
  %30 = lshr i32 %27, 16
  %31 = trunc i32 %30 to i16
  store i16 %31, ptr getelementptr inbounds (%struct.anon.0, ptr @gFollowerRoutePoints, i32 0, i32 3), align 2
  br label %103

32:                                               ; preds = %0
  %33 = icmp eq i32 %27, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = lshr i32 %21, 16
  %36 = trunc i32 %35 to i16
  store i16 %36, ptr getelementptr inbounds ([0 x %union.FollowerRoutePoint], ptr @gFollowerRoutePoints, i32 0, i32 0, i32 0, i32 1), align 4
  store i16 0, ptr getelementptr inbounds (%struct.anon.0, ptr @gFollowerRoutePoints, i32 0, i32 3), align 2
  br label %103

37:                                               ; preds = %32
  %38 = ashr i32 %17, 16
  %39 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  store i32 %38, ptr %39, align 4
  %40 = ashr i32 %23, 16
  %41 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 5
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 3
  store i32 %40, ptr %42, align 4
  %43 = ashr i32 %19, 16
  %44 = call i32 asm "", "={r0},{r0}"(i32 %43) #5, !srcloc !7
  %45 = ashr i32 %25, 16
  %46 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 4
  store i32 0, ptr %46, align 4
  %47 = call arm_apcscc i32 @HasRenderXZRouteObstacle(i32 noundef %44, i32 noundef %45, i32 noundef %38, i32 noundef %45) #6
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load i32, ptr %41, align 4
  %51 = call arm_apcscc i32 @HasRenderXZRouteObstacle(i32 noundef %38, i32 noundef %45, i32 noundef %38, i32 noundef %50) #6
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, ptr %46, align 4
  br label %54

54:                                               ; preds = %53, %49, %37
  %55 = load i32, ptr %42, align 4
  %56 = call arm_apcscc i32 @HasRenderXZRouteObstacle(i32 noundef %44, i32 noundef %45, i32 noundef %44, i32 noundef %55) #6
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, ptr %42, align 4
  %60 = load i32, ptr %39, align 4
  %61 = call arm_apcscc i32 @HasRenderXZRouteObstacle(i32 noundef %44, i32 noundef %59, i32 noundef %60, i32 noundef %59) #6
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  br label %64

64:                                               ; preds = %58, %54
  %65 = phi i32 [ 0, %54 ], [ %63, %58 ]
  %66 = load i32, ptr %46, align 4
  %67 = call i32 asm "", "=r,0"(i32 %66) #5, !srcloc !8
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = call i32 @llvm.abs.i32(i32 %21, i1 false)
  %71 = call i32 @llvm.abs.i32(i32 %27, i1 false)
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %75, label %92

73:                                               ; preds = %64
  %74 = icmp eq i32 %66, 0
  br i1 %74, label %92, label %75

75:                                               ; preds = %69, %73
  %76 = lshr i32 %21, 16
  %77 = trunc i32 %76 to i16
  store i16 %77, ptr getelementptr inbounds ([0 x %union.FollowerRoutePoint], ptr @gFollowerRoutePoints, i32 0, i32 0, i32 0, i32 1), align 4
  store i16 0, ptr getelementptr inbounds (%struct.anon.0, ptr @gFollowerRoutePoints, i32 0, i32 3), align 2
  store i8 1, ptr @gFollowerRouteEndIndex, align 1
  %78 = call i32 asm "", "={r4},{r4}"(i32 8) #5, !srcloc !9
  %79 = add i32 %78, ptrtoint (ptr @gFollowerRoutePoints to i32)
  %80 = inttoptr i32 %79 to ptr
  %81 = load ptr, ptr %1, align 4
  %82 = getelementptr i8, ptr %81, i32 26
  %83 = load i16, ptr %82, align 2
  store i16 %83, ptr %80, align 4
  %84 = load ptr, ptr %9, align 4
  %85 = getelementptr i8, ptr %84, i32 34
  %86 = load i16, ptr %85, align 2
  %87 = getelementptr inbounds %struct.anon.0, ptr %80, i32 0, i32 1
  store i16 %86, ptr %87, align 2
  %88 = getelementptr inbounds %struct.anon.0, ptr %80, i32 0, i32 2
  store i16 0, ptr %88, align 4
  %89 = lshr i32 %27, 16
  %90 = trunc i32 %89 to i16
  %91 = getelementptr inbounds %struct.anon.0, ptr %80, i32 0, i32 3
  store i16 %90, ptr %91, align 2
  br label %103

92:                                               ; preds = %69, %73
  store i16 0, ptr getelementptr inbounds ([0 x %union.FollowerRoutePoint], ptr @gFollowerRoutePoints, i32 0, i32 0, i32 0, i32 1), align 4
  %93 = lshr i32 %27, 16
  %94 = trunc i32 %93 to i16
  store i16 %94, ptr getelementptr inbounds (%struct.anon.0, ptr @gFollowerRoutePoints, i32 0, i32 3), align 2
  store i8 1, ptr @gFollowerRouteEndIndex, align 1
  %95 = load ptr, ptr %9, align 4
  %96 = getelementptr i8, ptr %95, i32 26
  %97 = load i16, ptr %96, align 2
  call void asm sideeffect "", "{r4}"(i32 %27) #4, !srcloc !10
  store i16 %97, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gFollowerRoutePoints to i32), i32 8) to ptr), align 4
  %98 = load ptr, ptr %1, align 4
  %99 = getelementptr i8, ptr %98, i32 34
  %100 = load i16, ptr %99, align 2
  store i16 %100, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gFollowerRoutePoints to i32), i32 8) to ptr), i32 2), align 2
  %101 = lshr i32 %21, 16
  %102 = trunc i32 %101 to i16
  store i16 %102, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gFollowerRoutePoints to i32), i32 8) to ptr), i32 4), align 4
  store i16 0, ptr getelementptr inbounds (i8, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gFollowerRoutePoints to i32), i32 8) to ptr), i32 6), align 2
  br label %103

103:                                              ; preds = %92, %75, %34, %29
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %1) #4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @HasRenderXZRouteObstacle(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nounwind memory(none) }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1152}
!5 = !{i64 2036}
!6 = !{i64 2295}
!7 = !{i64 3208}
!8 = !{i64 3944}
!9 = !{i64 4888}
!10 = !{i64 6325}
