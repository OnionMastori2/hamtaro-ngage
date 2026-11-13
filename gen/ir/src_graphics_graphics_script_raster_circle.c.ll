; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gRasterEffect = external dso_local local_unnamed_addr global ptr, align 4
@gRasterScanlineValue = external dso_local local_unnamed_addr global i16, align 2
@gVideoState = external dso_local local_unnamed_addr global %struct.VideoState, align 4
@gRasterScriptControlBytes = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateRasterCircleWindow() local_unnamed_addr #0 {
  %1 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %2 = icmp ult i16 %1, 160
  br i1 %2, label %3, label %60

3:                                                ; preds = %0
  %4 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %5 = icmp eq i16 %4, 158
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  %7 = load ptr, ptr @gRasterEffect, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  store i8 0, ptr %8, align 1
  br label %9

9:                                                ; preds = %6, %3
  %10 = load ptr, ptr @gRasterEffect, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = getelementptr i8, ptr %10, i32 5
  %15 = load i8, ptr %14, align 1
  %16 = zext i8 %15 to i32
  %17 = sub nsw i32 %13, %16
  %18 = getelementptr i8, ptr %10, i32 12
  %19 = load i8, ptr %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %17, %20
  %22 = add nuw nsw i32 %16, %13
  %23 = icmp ugt i32 %22, %20
  %24 = select i1 %21, i1 %23, i1 false
  br i1 %24, label %25, label %56

25:                                               ; preds = %9
  %26 = sub nsw i32 %13, %20
  %27 = icmp ult i8 %12, %19
  %28 = sub nsw i32 0, %26
  %29 = select i1 %27, i32 %28, i32 %26
  %30 = and i32 %29, 255
  %31 = getelementptr i8, ptr %10, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw nsw i32 %33, 8
  %35 = or disjoint i32 %34, %16
  %36 = ptrtoint ptr %10 to i32
  %37 = sub i32 %36, %30
  %38 = add i32 %37, %35
  %39 = inttoptr i32 %38 to ptr
  %40 = getelementptr i8, ptr %39, i32 16
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = getelementptr i8, ptr %10, i32 3
  %44 = load i8, ptr %43, align 1
  %45 = icmp ult i8 %44, %41
  %46 = zext i8 %44 to i32
  %47 = sub nsw i32 %46, %42
  %48 = shl nsw i32 %47, 8
  %49 = and i32 %48, 65280
  %50 = select i1 %45, i32 0, i32 %49
  %51 = add nuw nsw i32 %46, %42
  %52 = tail call i32 @llvm.umin.i32(i32 %51, i32 240)
  %53 = tail call i32 asm "", "={r0},{r0}"(i32 %50) #3, !srcloc !4
  %54 = add i32 %52, %53
  %55 = trunc i32 %54 to i16
  br label %56

56:                                               ; preds = %9, %25
  %57 = phi i16 [ %55, %25 ], [ 0, %9 ]
  store i16 %57, ptr @gRasterScanlineValue, align 2
  %58 = load i8, ptr %18, align 1
  %59 = add i8 %58, 1
  store i8 %59, ptr %18, align 1
  br label %60

60:                                               ; preds = %56, %0
  %61 = load volatile i16, ptr inttoptr (i32 67108870 to ptr), align 2
  %62 = icmp eq i16 %61, 160
  br i1 %62, label %63, label %110

63:                                               ; preds = %60
  %64 = load ptr, ptr @gRasterEffect, align 4
  %65 = getelementptr i8, ptr %64, i32 7
  %66 = load i8, ptr %65, align 1
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %110, label %68

68:                                               ; preds = %63
  %69 = getelementptr i8, ptr %64, i32 9
  %70 = load i8, ptr %69, align 1
  %71 = icmp sgt i8 %70, -1
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr i8, ptr %64, i32 5
  %74 = load i8, ptr %73, align 1
  %75 = icmp ugt i8 %74, %66
  br i1 %75, label %109, label %82

76:                                               ; preds = %68
  %77 = icmp eq i8 %70, 0
  br i1 %77, label %109, label %78

78:                                               ; preds = %76
  %79 = getelementptr i8, ptr %64, i32 5
  %80 = load i8, ptr %79, align 1
  %81 = icmp ult i8 %80, %66
  br i1 %81, label %109, label %84

82:                                               ; preds = %72
  %83 = load volatile i16, ptr inttoptr (i32 67108938 to ptr), align 2
  br label %90

84:                                               ; preds = %78
  %85 = load i8, ptr %64, align 1
  %86 = icmp eq i8 %85, 0
  %87 = load volatile i16, ptr inttoptr (i32 67108936 to ptr), align 8
  br i1 %86, label %88, label %89

88:                                               ; preds = %84
  store volatile i16 240, ptr inttoptr (i32 67108928 to ptr), align 64
  br label %90

89:                                               ; preds = %84
  store volatile i16 240, ptr inttoptr (i32 67108930 to ptr), align 2
  br label %90

90:                                               ; preds = %88, %89, %82
  %91 = load ptr, ptr @gRasterEffect, align 4
  %92 = getelementptr i8, ptr %91, i32 2
  %93 = load i8, ptr %92, align 1
  %94 = load i8, ptr %91, align 1
  %95 = icmp eq i8 %94, 0
  %96 = select i1 %95, i8 -33, i8 -65
  %97 = load i8, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %98 = and i8 %96, %97
  store i8 %98, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %99 = and i8 %93, 31
  tail call void asm sideeffect "", "{r0}"(i32 32) #4, !srcloc !5
  %100 = and i8 %98, -32
  %101 = or disjoint i8 %100, %99
  store i8 %101, ptr getelementptr (i8, ptr @gVideoState, i32 53), align 1
  %102 = load i32, ptr @gVideoState, align 4
  %103 = or i32 %102, 1
  store i32 %103, ptr @gVideoState, align 4
  tail call arm_apcscc void @SetHblankIrqEnabled(i32 noundef 0) #5
  store volatile i32 32768, ptr inttoptr (i32 67109048 to ptr), align 8
  store volatile i32 0, ptr inttoptr (i32 67109040 to ptr), align 16
  store volatile i32 0, ptr inttoptr (i32 67109044 to ptr), align 4
  store volatile i32 0, ptr inttoptr (i32 67109048 to ptr), align 8
  %104 = load ptr, ptr @gRasterEffect, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %90
  %107 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %104) #5
  store ptr null, ptr @gRasterEffect, align 4
  br label %108

108:                                              ; preds = %106, %90
  store i8 1, ptr getelementptr ([0 x i8], ptr @gRasterScriptControlBytes, i32 0, i32 96), align 1
  br label %110

109:                                              ; preds = %72, %78, %76
  tail call arm_apcscc void @UpdateRasterRadiusProfile() #5
  br label %110

110:                                              ; preds = %63, %109, %108, %60
  ret void
}

declare dso_local arm_apcscc void @SetHblankIrqEnabled(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @UpdateRasterRadiusProfile() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 2137}
!5 = !{i64 4654}
