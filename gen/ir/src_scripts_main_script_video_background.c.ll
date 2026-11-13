; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.VideoState = type { i32, i32, i32, i8, i8, [14 x i8], i32, i32, i32, i32, i32, i32, %struct.DisplayControl, i16, [4 x %struct.BackgroundState], %struct.MosaicState, %struct.BlendState }
%struct.DisplayControl = type { i16 }
%struct.BackgroundState = type { %struct.BackgroundControl, i16, i16, i16, i16, i16, i16, i16, i32, i32, [24 x i8] }
%struct.BackgroundControl = type { i16 }
%struct.MosaicState = type { i16, i8, i8, i8, i8, i8, i8 }
%struct.BlendState = type { %struct.BlendControl, i8, i8, i8, i8, i8, i8 }
%struct.BlendControl = type { i16 }

@gMainScriptArgumentWords5E8 = external dso_local global [0 x i32], align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptConfigureVideoBackground(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr i8, ptr %0, i32 1
  %3 = load i8, ptr %0, align 1
  store i8 %3, ptr @gMainScriptArgumentWords5E8, align 4
  %4 = getelementptr i8, ptr %0, i32 2
  %5 = load i8, ptr %2, align 1
  store i8 %5, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 1) to ptr), align 1
  %6 = getelementptr i8, ptr %0, i32 3
  %7 = load i8, ptr %4, align 1
  store i8 %7, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 2) to ptr), align 2
  %8 = getelementptr i8, ptr %0, i32 4
  %9 = load i8, ptr %6, align 1
  store i8 %9, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 3) to ptr), align 1
  %10 = getelementptr i8, ptr %0, i32 5
  %11 = load i8, ptr %8, align 1
  store i8 %11, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 4) to ptr), align 4
  %12 = getelementptr i8, ptr %0, i32 6
  %13 = load i8, ptr %10, align 1
  store i8 %13, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 5) to ptr), align 1
  %14 = getelementptr i8, ptr %0, i32 7
  %15 = load i8, ptr %12, align 1
  store i8 %15, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 6) to ptr), align 2
  %16 = load i8, ptr %14, align 1
  store i8 %16, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gMainScriptArgumentWords5E8 to i32), i32 7) to ptr), align 1
  %17 = tail call arm_apcscc ptr @GetVideoState() #2
  %18 = load i8, ptr @gMainScriptArgumentWords5E8, align 4
  %19 = zext i8 %18 to i32
  %20 = shl nuw i32 1, %19
  %21 = trunc i32 %20 to i8
  tail call arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext %21) #2
  %22 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 1), align 1
  %23 = icmp eq i8 %22, -1
  br i1 %23, label %31, label %24

24:                                               ; preds = %1
  %25 = getelementptr %struct.VideoState, ptr %17, i32 0, i32 14, i32 %19
  %26 = load i16, ptr %25, align 4
  %27 = and i8 %22, 3
  %28 = zext nneg i8 %27 to i16
  %29 = and i16 %26, -4
  %30 = or disjoint i16 %29, %28
  store i16 %30, ptr %25, align 4
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 2), align 2
  %33 = icmp eq i8 %32, -1
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = getelementptr %struct.VideoState, ptr %17, i32 0, i32 14, i32 %19
  %36 = load i16, ptr %35, align 4
  %37 = shl i8 %32, 2
  %38 = and i8 %37, 12
  %39 = zext nneg i8 %38 to i16
  %40 = and i16 %36, -13
  %41 = or disjoint i16 %40, %39
  store i16 %41, ptr %35, align 4
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 3), align 1
  %44 = icmp eq i8 %43, -1
  br i1 %44, label %53, label %45

45:                                               ; preds = %42
  %46 = getelementptr %struct.VideoState, ptr %17, i32 0, i32 14, i32 %19
  %47 = load i16, ptr %46, align 4
  %48 = shl i8 %43, 6
  %49 = and i8 %48, 64
  %50 = zext nneg i8 %49 to i16
  %51 = and i16 %47, -65
  %52 = or disjoint i16 %51, %50
  store i16 %52, ptr %46, align 4
  br label %53

53:                                               ; preds = %45, %42
  %54 = load i8, ptr getelementptr ([0 x i32], ptr @gMainScriptArgumentWords5E8, i32 0, i32 1), align 4
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %63, label %56

56:                                               ; preds = %53
  %57 = getelementptr %struct.VideoState, ptr %17, i32 0, i32 14, i32 %19
  %58 = load i16, ptr %57, align 4
  %59 = shl i8 %54, 7
  %60 = zext i8 %59 to i16
  %61 = and i16 %58, -129
  %62 = or disjoint i16 %61, %60
  store i16 %62, ptr %57, align 4
  br label %63

63:                                               ; preds = %56, %53
  %64 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 5), align 1
  %65 = icmp eq i8 %64, -1
  br i1 %65, label %74, label %66

66:                                               ; preds = %63
  %67 = getelementptr %struct.VideoState, ptr %17, i32 0, i32 14, i32 %19
  %68 = load i16, ptr %67, align 4
  %69 = and i8 %64, 31
  %70 = zext nneg i8 %69 to i16
  %71 = shl nuw nsw i16 %70, 8
  %72 = and i16 %68, -7937
  %73 = or disjoint i16 %72, %71
  store i16 %73, ptr %67, align 4
  br label %74

74:                                               ; preds = %66, %63
  %75 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 6), align 2
  %76 = icmp eq i8 %75, -1
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = getelementptr %struct.VideoState, ptr %17, i32 0, i32 14, i32 %19
  %79 = load i16, ptr %78, align 4
  %80 = and i8 %75, 1
  %81 = zext nneg i8 %80 to i16
  %82 = shl nuw nsw i16 %81, 13
  %83 = and i16 %79, -8193
  %84 = or disjoint i16 %83, %82
  store i16 %84, ptr %78, align 4
  br label %85

85:                                               ; preds = %77, %74
  %86 = load i8, ptr getelementptr (i8, ptr @gMainScriptArgumentWords5E8, i32 7), align 1
  %87 = icmp eq i8 %86, -1
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = getelementptr %struct.VideoState, ptr %17, i32 0, i32 14, i32 %19
  %90 = load i16, ptr %89, align 4
  %91 = and i8 %86, 3
  %92 = zext nneg i8 %91 to i16
  %93 = shl nuw i16 %92, 14
  %94 = and i16 %90, 16383
  %95 = or disjoint i16 %94, %93
  store i16 %95, ptr %89, align 4
  br label %96

96:                                               ; preds = %88, %85
  store i32 8, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc ptr @GetVideoState() local_unnamed_addr #1

declare dso_local arm_apcscc void @MarkBackgroundsDirty(i8 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
