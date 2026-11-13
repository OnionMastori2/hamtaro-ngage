; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.WordChoiceDescriptor = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8 }

@gWordChoiceRow = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceColumn = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceCursorGraphicsScript = external dso_local constant [0 x i8], align 1
@gWordChoiceCursorAnimation0 = external dso_local constant [0 x i8], align 1
@gWordChoiceCursorAnimation10 = external dso_local constant [0 x i8], align 1
@gWordChoiceCursorAnimationOther = external dso_local constant [0 x i8], align 1
@gWordChoiceTileAttributes = external dso_local local_unnamed_addr global [0 x i16], align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateWordChoiceSelectionDisplay(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i8, ptr @gWordChoiceRow, align 1
  %3 = zext i8 %2 to i32
  %4 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 4
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = mul nuw nsw i32 %6, %3
  %8 = load i8, ptr @gWordChoiceColumn, align 1
  %9 = zext i8 %8 to i32
  %10 = add nuw nsw i32 %7, %9
  %11 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 8
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  %15 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 9
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw nsw i32 %17, 16
  tail call arm_apcscc void @InitializeWordChoiceGraphicsScript(i8 noundef zeroext 0, i8 noundef zeroext 1, i32 noundef ptrtoint (ptr @gWordChoiceCursorGraphicsScript to i32)) #2
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 0, ptr noundef nonnull @gWordChoiceCursorAnimation0) #2
  %19 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 6
  %20 = load i8, ptr %19, align 2
  %21 = icmp eq i8 %20, 10
  %22 = select i1 %21, ptr @gWordChoiceCursorAnimation10, ptr @gWordChoiceCursorAnimationOther
  tail call arm_apcscc void @SetRenderAnimation(i32 noundef 1, ptr noundef nonnull %22) #2
  %23 = load i8, ptr %4, align 4
  %24 = icmp eq i8 %23, 2
  %25 = select i1 %24, i32 5767168, i32 4718592
  %26 = load i8, ptr @gWordChoiceColumn, align 1
  %27 = zext i8 %26 to i32
  %28 = mul nuw nsw i32 %25, %27
  %29 = add nuw nsw i32 %28, %14
  %30 = load i8, ptr @gWordChoiceRow, align 1
  %31 = zext i8 %30 to i32
  %32 = shl nuw nsw i32 %31, 20
  %33 = add nuw nsw i32 %32, %18
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 0, i32 noundef %29, i32 noundef %33, i32 noundef 0) #2
  %34 = load i8, ptr @gWordChoiceColumn, align 1
  %35 = zext i8 %34 to i32
  %36 = mul nuw nsw i32 %25, %35
  %37 = add nuw nsw i32 %36, %14
  %38 = load i8, ptr @gWordChoiceRow, align 1
  %39 = zext i8 %38 to i32
  %40 = shl nuw nsw i32 %39, 20
  %41 = add nuw nsw i32 %40, %18
  tail call arm_apcscc void @SetRenderPosition(i32 noundef 1, i32 noundef %37, i32 noundef %41, i32 noundef 0) #2
  %42 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = shl nuw nsw i32 %10, 1
  %45 = add nuw nsw i32 %44, 2
  br label %46

46:                                               ; preds = %1, %67
  %47 = phi ptr [ @gWordChoiceTileAttributes, %1 ], [ %69, %67 ]
  %48 = phi i32 [ 0, %1 ], [ %68, %67 ]
  %49 = load i16, ptr %47, align 2
  %50 = icmp ult i16 %49, 4096
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = and i16 %49, 4095
  store i16 %52, ptr %47, align 2
  br label %53

53:                                               ; preds = %51, %46
  %54 = phi i16 [ %52, %51 ], [ %49, %46 ]
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = zext nneg i16 %54 to i32
  %58 = load i8, ptr %19, align 2
  %59 = zext i8 %58 to i32
  %60 = mul nuw nsw i32 %45, %59
  %61 = icmp uge i32 %60, %57
  %62 = mul nuw nsw i32 %44, %59
  %63 = icmp ult i32 %62, %57
  %64 = select i1 %61, i1 %63, i1 false
  br i1 %64, label %65, label %67

65:                                               ; preds = %56
  %66 = or disjoint i16 %54, 4096
  store i16 %66, ptr %47, align 2
  br label %67

67:                                               ; preds = %65, %56, %53
  %68 = add nuw nsw i32 %48, 1
  %69 = getelementptr i16, ptr %47, i32 1
  %70 = icmp eq i32 %68, 256
  br i1 %70, label %71, label %46

71:                                               ; preds = %67
  tail call arm_apcscc void @ConfigureBackgroundRenderScript(i32 noundef 0, i32 noundef 136, ptr noundef %43) #2
  ret void
}

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
