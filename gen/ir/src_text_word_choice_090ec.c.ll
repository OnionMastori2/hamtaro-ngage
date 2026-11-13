; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.WordChoiceRecord = type { i32, i32, ptr }
%struct.WordChoiceDescriptor = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8 }

@gWordChoiceCount = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceRecords = external dso_local local_unnamed_addr global [0 x %struct.WordChoiceRecord], align 4
@gWordChoiceRow = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceColumn = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceCursorGraphicsScript = external dso_local constant [0 x i8], align 1
@gWordChoiceCursorAnimation0 = external dso_local constant [0 x i8], align 1
@gWordChoiceCursorAnimation10 = external dso_local constant [0 x i8], align 1
@gWordChoiceCursorAnimationOther = external dso_local constant [0 x i8], align 1
@gWordChoiceTileAttributes = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @SetWordChoiceSelectionDisplay(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load i8, ptr @gWordChoiceCount, align 1
  %4 = zext i8 %3 to i32
  %5 = icmp eq i8 %3, 0
  br i1 %5, label %14, label %6

6:                                                ; preds = %2, %11
  %7 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %8 = getelementptr [0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 %7
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %1
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add nuw nsw i32 %7, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %14, label %6

14:                                               ; preds = %11, %6, %2
  %15 = phi i32 [ 0, %2 ], [ %7, %6 ], [ %4, %11 ]
  %16 = getelementptr [0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 %15, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %18, i32 %15, i32 0
  %20 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 8
  %21 = load i8, ptr %20, align 4
  %22 = zext i8 %21 to i32
  %23 = shl nuw nsw i32 %22, 16
  %24 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 9
  %25 = load i8, ptr %24, align 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 16
  %28 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 4
  %29 = load i8, ptr %28, align 4
  %30 = zext i8 %29 to i32
  %31 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %19, i32 noundef %30) #2
  %32 = trunc i32 %31 to i8
  store i8 %32, ptr @gWordChoiceRow, align 1
  %33 = load i8, ptr %28, align 4
  %34 = zext i8 %33 to i32
  %35 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %19, i32 noundef %34) #2
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr @gWordChoiceColumn, align 1
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gWordChoiceCursorGraphicsScript to i32)) #2
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 0, ptr noundef nonnull @gWordChoiceCursorAnimation0) #2
  %37 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 6
  %38 = load i8, ptr %37, align 2
  %39 = icmp eq i8 %38, 10
  %40 = select i1 %39, ptr @gWordChoiceCursorAnimation10, ptr @gWordChoiceCursorAnimationOther
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 1, ptr noundef nonnull %40) #2
  %41 = load i8, ptr %28, align 4
  %42 = icmp eq i8 %41, 2
  %43 = select i1 %42, i32 5767168, i32 4718592
  %44 = load i8, ptr @gWordChoiceColumn, align 1
  %45 = zext i8 %44 to i32
  %46 = mul nuw nsw i32 %43, %45
  %47 = add nuw nsw i32 %46, %23
  %48 = load i8, ptr @gWordChoiceRow, align 1
  %49 = zext i8 %48 to i32
  %50 = shl nuw nsw i32 %49, 20
  %51 = add nuw nsw i32 %50, %27
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 0, i32 noundef %47, i32 noundef %51, i32 noundef 0) #2
  %52 = load i8, ptr @gWordChoiceColumn, align 1
  %53 = zext i8 %52 to i32
  %54 = mul nuw nsw i32 %43, %53
  %55 = add nuw nsw i32 %54, %23
  %56 = load i8, ptr @gWordChoiceRow, align 1
  %57 = zext i8 %56 to i32
  %58 = shl nuw nsw i32 %57, 20
  %59 = add nuw nsw i32 %58, %27
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 1, i32 noundef %55, i32 noundef %59, i32 noundef 0) #2
  %60 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = shl nuw i32 %19, 1
  %63 = add i32 %62, 2
  br label %64

64:                                               ; preds = %14, %85
  %65 = phi ptr [ @gWordChoiceTileAttributes, %14 ], [ %87, %85 ]
  %66 = phi i32 [ 0, %14 ], [ %86, %85 ]
  %67 = load i16, ptr %65, align 2
  %68 = icmp ult i16 %67, 4096
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = and i16 %67, 4095
  store i16 %70, ptr %65, align 2
  br label %71

71:                                               ; preds = %69, %64
  %72 = phi i16 [ %70, %69 ], [ %67, %64 ]
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %71
  %75 = zext nneg i16 %72 to i32
  %76 = load i8, ptr %37, align 2
  %77 = zext i8 %76 to i32
  %78 = mul i32 %63, %77
  %79 = icmp sge i32 %78, %75
  %80 = mul i32 %62, %77
  %81 = icmp slt i32 %80, %75
  %82 = and i1 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = or disjoint i16 %72, 4096
  store i16 %84, ptr %65, align 2
  br label %85

85:                                               ; preds = %83, %74, %71
  %86 = add nuw nsw i32 %66, 1
  %87 = getelementptr i16, ptr %65, i32 1
  %88 = icmp eq i32 %86, 256
  br i1 %88, label %89, label %64

89:                                               ; preds = %85
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 136, ptr noundef %61) #2
  ret void
}

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDivRem(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderAnimation(i32 noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @SetRenderPosition(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
