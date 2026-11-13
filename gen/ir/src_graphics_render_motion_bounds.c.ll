; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }
%struct.RenderMotionContext = type { i32, i32, i32, i32, i32, i32, i16, i8, i8, i8, i8, i8, i8, i8 }

@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1
@gTaskTextVariables2BB0 = external dso_local local_unnamed_addr global [0 x i32], align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @CheckRenderMotionBounds(ptr nocapture noundef readonly %0, ptr noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.RenderSlot, ptr %1, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.RenderSlot, ptr %1, i32 0, i32 6
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, %5
  %9 = getelementptr inbounds %struct.RenderSlot, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.RenderSlot, ptr %1, i32 0, i32 6, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = add i32 %12, %10
  %14 = load i32, ptr %0, align 4
  %15 = icmp sgt i32 %14, %8
  %16 = icmp slt i32 %7, 0
  %17 = and i1 %16, %15
  br i1 %17, label %78, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.RenderMotionContext, ptr %0, i32 0, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp slt i32 %20, %8
  %22 = icmp sgt i32 %7, 0
  %23 = and i1 %22, %21
  br i1 %23, label %78, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.RenderMotionContext, ptr %0, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, %13
  %28 = icmp slt i32 %12, 0
  %29 = and i1 %28, %27
  br i1 %29, label %78, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.RenderMotionContext, ptr %0, i32 0, i32 3
  %32 = load i32, ptr %31, align 4
  %33 = icmp slt i32 %32, %13
  %34 = icmp sgt i32 %12, 0
  %35 = and i1 %34, %33
  br i1 %35, label %78, label %36

36:                                               ; preds = %30
  %37 = load i8, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 173), align 1
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = zext i8 %2 to i32
  br label %50

41:                                               ; preds = %36
  %42 = zext i8 %37 to i32
  %43 = add nsw i32 %42, -1
  %44 = getelementptr [0 x i32], ptr @gTaskTextVariables2BB0, i32 0, i32 %43
  %45 = load i32, ptr %44, align 4
  %46 = inttoptr i32 %45 to ptr
  %47 = zext i8 %2 to i32
  %48 = tail call arm_apcscc i32 %46(ptr noundef nonnull %1, i32 noundef %47) #3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %39, %41
  %51 = phi i32 [ %40, %39 ], [ %47, %41 ]
  %52 = icmp eq i8 %2, -1
  br i1 %52, label %80, label %53

53:                                               ; preds = %50
  %54 = load ptr, ptr @gRenderSlots, align 4
  %55 = load i8, ptr @gRenderClassSlots0, align 1
  %56 = zext i8 %55 to i32
  %57 = load i32, ptr %4, align 4
  %58 = getelementptr %struct.RenderSlot, ptr %54, i32 %56, i32 3
  %59 = load i32, ptr %58, align 4
  %60 = sub i32 %57, %59
  %61 = tail call i32 @llvm.abs.i32(i32 %60, i1 false)
  %62 = load i32, ptr %9, align 4
  %63 = getelementptr %struct.RenderSlot, ptr %54, i32 %56, i32 5
  %64 = load i32, ptr %63, align 4
  %65 = sub i32 %62, %64
  %66 = tail call i32 @llvm.abs.i32(i32 %65, i1 false)
  %67 = icmp sgt i32 %61, 2621439
  %68 = icmp sgt i32 %66, 2621439
  %69 = or i1 %67, %68
  br i1 %69, label %80, label %70

70:                                               ; preds = %53
  %71 = getelementptr inbounds %struct.RenderMotionContext, ptr %0, i32 0, i32 11
  %72 = load i8, ptr %71, align 2
  %73 = tail call arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext %72, i8 noundef zeroext %55) #3
  %74 = and i32 %73, 255
  %75 = add nsw i32 %74, -1
  %76 = icmp eq i32 %75, %51
  br i1 %76, label %77, label %80

77:                                               ; preds = %70, %41
  store i32 0, ptr %6, align 4
  br label %78

78:                                               ; preds = %24, %30, %3, %18, %77
  %79 = phi ptr [ %11, %77 ], [ %6, %18 ], [ %6, %3 ], [ %11, %30 ], [ %11, %24 ]
  store i32 0, ptr %79, align 4
  br label %80

80:                                               ; preds = %78, %70, %53, %50
  %81 = phi i32 [ 0, %50 ], [ 0, %53 ], [ 0, %70 ], [ 1, %78 ]
  ret i32 %81
}

declare dso_local arm_apcscc i32 @GetRenderXZDirectionBetweenSlots4(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
