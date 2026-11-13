; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%union.FollowerRoutePoint = type { [2 x i32] }
%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.anon = type { i16, i16, i16, i16 }

@gFollowerRouteEndIndex = external dso_local local_unnamed_addr global i8, align 1
@gFollowerRoutePoints = external dso_local global [0 x %union.FollowerRoutePoint], align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateLeaderFollowerRouteSegment() local_unnamed_addr #0 {
  %1 = load i8, ptr @gFollowerRouteEndIndex, align 1
  %2 = zext i8 %1 to i32
  %3 = shl nuw nsw i32 %2, 3
  %4 = add i32 %3, ptrtoint (ptr @gFollowerRoutePoints to i32)
  %5 = inttoptr i32 %4 to ptr
  %6 = load i8, ptr @gRenderClassSlots0, align 1
  %7 = zext i8 %6 to i32
  %8 = mul nuw nsw i32 %7, 104
  %9 = load ptr, ptr @gRenderSlots, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %8, %10
  %12 = inttoptr i32 %11 to ptr
  %13 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.RenderSlot, ptr %12, i32 0, i32 5
  %16 = getelementptr i8, ptr %12, i32 34
  %17 = load i16, ptr %16, align 2
  %18 = ashr i32 %14, 16
  %19 = load i16, ptr %5, align 4
  %20 = zext i16 %19 to i32
  tail call void asm sideeffect "", "r"(i32 %20) #1, !srcloc !4
  %21 = load i16, ptr %5, align 4
  %22 = sext i16 %21 to i32
  %23 = icmp eq i32 %18, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %0
  %25 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %26 = load i16, ptr %25, align 2
  %27 = icmp eq i16 %17, %26
  br i1 %27, label %28, label %66

28:                                               ; preds = %24, %0
  tail call void asm sideeffect "", "r,~{memory}"(ptr nonnull %5) #1, !srcloc !5
  %29 = load i16, ptr %5, align 4
  %30 = sext i16 %29 to i32
  %31 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %32 = load i16, ptr %31, align 4
  %33 = sext i16 %32 to i32
  %34 = add nsw i32 %33, %30
  %35 = icmp eq i32 %18, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %38 = load i16, ptr %37, align 2
  br label %49

39:                                               ; preds = %28
  %40 = sext i16 %17 to i32
  %41 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 1
  %42 = load i16, ptr %41, align 2
  %43 = sext i16 %42 to i32
  %44 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  %45 = load i16, ptr %44, align 2
  %46 = sext i16 %45 to i32
  %47 = add nsw i32 %46, %43
  %48 = icmp eq i32 %47, %40
  br i1 %48, label %96, label %49

49:                                               ; preds = %36, %39
  %50 = phi i16 [ %38, %36 ], [ %42, %39 ]
  %51 = icmp eq i16 %17, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = shl nsw i32 %30, 16
  %54 = sub i32 %14, %53
  %55 = lshr i32 %54, 16
  %56 = trunc i32 %55 to i16
  store i16 %56, ptr %31, align 4
  %57 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  store i16 0, ptr %57, align 2
  br label %96

58:                                               ; preds = %49
  store i16 0, ptr %31, align 4
  %59 = load i32, ptr %15, align 4
  %60 = sext i16 %50 to i32
  %61 = shl nsw i32 %60, 16
  %62 = sub i32 %59, %61
  %63 = lshr i32 %62, 16
  %64 = trunc i32 %63 to i16
  %65 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  store i16 %64, ptr %65, align 2
  br label %96

66:                                               ; preds = %24
  %67 = trunc i32 %18 to i16
  %68 = sub i16 %67, %19
  %69 = sub i16 %17, %26
  %70 = sext i16 %68 to i32
  %71 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 3
  %72 = load i16, ptr %71, align 2
  %73 = sext i16 %72 to i32
  %74 = mul nsw i32 %73, %70
  %75 = sext i16 %69 to i32
  %76 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %77 = load i16, ptr %76, align 4
  %78 = sext i16 %77 to i32
  %79 = mul nsw i32 %78, %75
  %80 = icmp eq i32 %74, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  store i16 %68, ptr %76, align 4
  store i16 %69, ptr %71, align 2
  br label %96

82:                                               ; preds = %66
  %83 = add i16 %77, %19
  %84 = add i16 %72, %26
  %85 = add i8 %1, 1
  %86 = and i8 %85, 31
  store i8 %86, ptr @gFollowerRouteEndIndex, align 1
  %87 = shl i8 %85, 3
  %88 = zext i8 %87 to i32
  %89 = add i32 %88, ptrtoint (ptr @gFollowerRoutePoints to i32)
  %90 = inttoptr i32 %89 to ptr
  store i16 %83, ptr %90, align 4
  %91 = getelementptr inbounds %struct.anon, ptr %90, i32 0, i32 1
  store i16 %84, ptr %91, align 2
  %92 = sub i16 %67, %83
  %93 = getelementptr inbounds %struct.anon, ptr %90, i32 0, i32 2
  store i16 %92, ptr %93, align 4
  %94 = sub i16 %17, %84
  %95 = getelementptr inbounds %struct.anon, ptr %90, i32 0, i32 3
  store i16 %94, ptr %95, align 2
  br label %96

96:                                               ; preds = %39, %52, %58, %82, %81
  ret void
}

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1139}
!5 = !{i64 1572}
