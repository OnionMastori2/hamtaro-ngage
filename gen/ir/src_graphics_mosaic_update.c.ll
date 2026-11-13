; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }

@gMosaicState = external dso_local local_unnamed_addr global %struct.MosaicState, align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @UpdateMosaic() local_unnamed_addr #0 {
  %1 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 2), align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %94, label %3

3:                                                ; preds = %0
  %4 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 1), align 1
  %5 = zext i8 %4 to i32
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %94

8:                                                ; preds = %3
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  %11 = and i8 %1, 15
  %12 = icmp eq i8 %11, 0
  br i1 %10, label %47, label %13

13:                                               ; preds = %8
  br i1 %12, label %23, label %14

14:                                               ; preds = %13
  %15 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 3), align 1
  %16 = lshr i8 %15, 4
  %17 = zext nneg i8 %16 to i16
  %18 = load i16, ptr @gMosaicState, align 1
  %19 = shl nuw nsw i16 %17, 4
  %20 = and i16 %18, -256
  %21 = or disjoint i16 %19, %20
  %22 = or disjoint i16 %21, %17
  store i16 %22, ptr @gMosaicState, align 1
  br label %23

23:                                               ; preds = %14, %13
  %24 = and i8 %1, 16
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %94, label %26

26:                                               ; preds = %23
  %27 = and i32 %5, 8
  %28 = icmp eq i32 %27, 0
  %29 = load i16, ptr @gMosaicState, align 1
  %30 = and i16 %29, 255
  br i1 %28, label %39, label %31

31:                                               ; preds = %26
  %32 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 3), align 1
  %33 = lshr i8 %32, 4
  %34 = zext nneg i8 %33 to i16
  %35 = shl nuw i16 %34, 12
  %36 = shl nuw nsw i16 %34, 8
  %37 = or disjoint i16 %35, %36
  %38 = or disjoint i16 %37, %30
  br label %92

39:                                               ; preds = %26
  %40 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 5), align 1
  %41 = lshr i8 %40, 4
  %42 = zext nneg i8 %41 to i16
  %43 = shl nuw i16 %42, 12
  %44 = shl nuw nsw i16 %42, 8
  %45 = or disjoint i16 %43, %44
  %46 = or disjoint i16 %45, %30
  br label %92

47:                                               ; preds = %8
  br i1 %12, label %60, label %48

48:                                               ; preds = %47
  %49 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 3), align 1
  %50 = lshr i8 %49, 4
  %51 = zext nneg i8 %50 to i16
  %52 = load i16, ptr @gMosaicState, align 1
  %53 = and i16 %52, -16
  %54 = or disjoint i16 %53, %51
  store i16 %54, ptr @gMosaicState, align 1
  %55 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 4), align 1
  %56 = and i8 %55, -16
  %57 = zext i8 %56 to i16
  %58 = and i16 %54, -241
  %59 = or disjoint i16 %58, %57
  store i16 %59, ptr @gMosaicState, align 1
  br label %60

60:                                               ; preds = %48, %47
  %61 = and i8 %1, 16
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %94, label %63

63:                                               ; preds = %60
  %64 = and i32 %5, 8
  %65 = icmp eq i32 %64, 0
  %66 = load i16, ptr @gMosaicState, align 1
  %67 = and i16 %66, -3841
  br i1 %65, label %80, label %68

68:                                               ; preds = %63
  %69 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 3), align 1
  %70 = lshr i8 %69, 4
  %71 = zext nneg i8 %70 to i16
  %72 = shl nuw nsw i16 %71, 8
  %73 = or disjoint i16 %72, %67
  store i16 %73, ptr @gMosaicState, align 1
  %74 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 4), align 1
  %75 = lshr i8 %74, 4
  %76 = zext nneg i8 %75 to i16
  %77 = shl nuw i16 %76, 12
  %78 = and i16 %73, 4095
  %79 = or disjoint i16 %77, %78
  br label %92

80:                                               ; preds = %63
  %81 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 5), align 1
  %82 = lshr i8 %81, 4
  %83 = zext nneg i8 %82 to i16
  %84 = shl nuw nsw i16 %83, 8
  %85 = or disjoint i16 %84, %67
  store i16 %85, ptr @gMosaicState, align 1
  %86 = load i8, ptr getelementptr inbounds (%struct.MosaicState, ptr @gMosaicState, i32 0, i32 6), align 1
  %87 = lshr i8 %86, 4
  %88 = zext nneg i8 %87 to i16
  %89 = shl nuw i16 %88, 12
  %90 = and i16 %85, 4095
  %91 = or disjoint i16 %89, %90
  br label %92

92:                                               ; preds = %80, %68, %39, %31
  %93 = phi i16 [ %38, %31 ], [ %46, %39 ], [ %79, %68 ], [ %91, %80 ]
  store i16 %93, ptr @gMosaicState, align 1
  br label %94

94:                                               ; preds = %92, %23, %60, %3, %0
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
