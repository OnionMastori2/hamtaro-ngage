; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.CommunicationMode1Header = type { i16, i16, i32 }

@gCommunicationStatus = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationPreviousStatus = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationCursor2F28 = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationCursor2E18 = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationTransferMode = external dso_local local_unnamed_addr global i16, align 2
@gCommunicationWords2F40 = external dso_local global [0 x i32], align 4
@gCommunicationFlag10D8 = external dso_local local_unnamed_addr global i8, align 1
@gCommunicationWords2F10 = external dso_local global [0 x i32], align 4
@gCommunicationFlag2F30 = external dso_local local_unnamed_addr global i8, align 1
@gCommunicationWord2C7C = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationWord2E28 = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationMode1Header = external dso_local global %struct.CommunicationMode1Header, align 4
@gCommunicationMode1Buffer = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationMode2Words = external dso_local global [4 x i32], align 4
@gCommunicationWord2DCC = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationWord2E14 = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationMode2Buffer = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationFlag2E30 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @UpdateCommunicationFrame() local_unnamed_addr #0 {
  %1 = load i32, ptr @gCommunicationStatus, align 4
  store i32 %1, ptr @gCommunicationPreviousStatus, align 4
  %2 = load ptr, ptr @gCommunicationCursor2F28, align 4
  %3 = load ptr, ptr @gCommunicationCursor2E18, align 4
  %4 = tail call arm_apcscc i32 @PollCommunicationState(ptr noundef %2, ptr noundef %3) #2
  store i32 %4, ptr @gCommunicationStatus, align 4
  %5 = load i16, ptr @gCommunicationTransferMode, align 2
  switch i16 %5, label %77 [
    i16 0, label %6
    i16 1, label %7
    i16 2, label %36
    i16 3, label %75
  ]

6:                                                ; preds = %0
  store i16 -320, ptr @gCommunicationWords2F40, align 4
  store ptr @gCommunicationWords2F40, ptr @gCommunicationCursor2F28, align 4
  br label %77

7:                                                ; preds = %0
  %8 = load i8, ptr @gCommunicationFlag10D8, align 1
  switch i8 %8, label %77 [
    i8 0, label %9
    i8 1, label %13
    i8 2, label %17
    i8 3, label %32
  ]

9:                                                ; preds = %7
  store i16 -317, ptr @gCommunicationWords2F40, align 4
  %10 = load i16, ptr @gCommunicationWords2F10, align 4
  switch i16 %10, label %77 [
    i16 -319, label %11
    i16 -317, label %12
  ]

11:                                               ; preds = %9
  store i8 1, ptr @gCommunicationFlag10D8, align 1
  br label %77

12:                                               ; preds = %9
  store i8 7, ptr @gCommunicationFlag2F30, align 1
  br label %77

13:                                               ; preds = %7
  store i32 0, ptr @gCommunicationWord2C7C, align 4
  store i32 0, ptr @gCommunicationWord2E28, align 4
  store ptr @gCommunicationMode1Header, ptr @gCommunicationCursor2F28, align 4
  %14 = load i16, ptr @gCommunicationWords2F10, align 4
  %15 = icmp eq i16 %14, -313
  br i1 %15, label %16, label %77

16:                                               ; preds = %13
  store i8 2, ptr @gCommunicationFlag10D8, align 1
  br label %77

17:                                               ; preds = %7
  %18 = load i32, ptr @gCommunicationWord2E28, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, ptr getelementptr inbounds (%struct.CommunicationMode1Header, ptr @gCommunicationMode1Header, i32 0, i32 2), align 4
  store i32 %21, ptr @gCommunicationWord2C7C, align 4
  %22 = load ptr, ptr @gCommunicationMode1Buffer, align 4
  store ptr %22, ptr @gCommunicationCursor2F28, align 4
  store i32 1, ptr @gCommunicationWord2E28, align 4
  br label %77

23:                                               ; preds = %17
  %24 = load i32, ptr @gCommunicationWord2C7C, align 4
  %25 = lshr i32 %24, 4
  %26 = icmp ult i32 %18, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load ptr, ptr @gCommunicationCursor2F28, align 4
  %29 = getelementptr i32, ptr %28, i32 4
  store ptr %29, ptr @gCommunicationCursor2F28, align 4
  %30 = add nuw nsw i32 %18, 1
  store i32 %30, ptr @gCommunicationWord2E28, align 4
  br label %77

31:                                               ; preds = %23
  store i16 -318, ptr @gCommunicationWords2F40, align 4
  store i16 0, ptr getelementptr (i16, ptr @gCommunicationWords2F40, i32 1), align 2
  store i32 0, ptr @gCommunicationWord2C7C, align 4
  store ptr @gCommunicationWords2F40, ptr @gCommunicationCursor2F28, align 4
  store i8 3, ptr @gCommunicationFlag10D8, align 1
  br label %77

32:                                               ; preds = %7
  %33 = load i16, ptr @gCommunicationWords2F10, align 4
  %34 = icmp eq i16 %33, -316
  br i1 %34, label %35, label %77

35:                                               ; preds = %32
  store i16 0, ptr @gCommunicationTransferMode, align 2
  store i16 -320, ptr @gCommunicationWords2F40, align 4
  store i8 0, ptr @gCommunicationFlag10D8, align 1
  br label %77

36:                                               ; preds = %0
  %37 = load i8, ptr @gCommunicationFlag10D8, align 1
  switch i8 %37, label %77 [
    i8 0, label %38
    i8 1, label %42
    i8 2, label %48
    i8 3, label %71
  ]

38:                                               ; preds = %36
  store i16 -319, ptr @gCommunicationWords2F40, align 4
  %39 = load i16, ptr @gCommunicationWords2F10, align 4
  switch i16 %39, label %77 [
    i16 -317, label %40
    i16 -319, label %41
  ]

40:                                               ; preds = %38
  store i8 1, ptr @gCommunicationFlag10D8, align 1
  store ptr @gCommunicationMode2Words, ptr @gCommunicationCursor2E18, align 4
  br label %77

41:                                               ; preds = %38
  store i8 7, ptr @gCommunicationFlag2F30, align 1
  br label %77

42:                                               ; preds = %36
  %43 = load i16, ptr @gCommunicationMode2Words, align 4
  %44 = icmp eq i16 %43, -312
  br i1 %44, label %45, label %77

45:                                               ; preds = %42
  %46 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @gCommunicationMode2Words, i32 0, i32 1), align 4
  store i32 %46, ptr @gCommunicationWord2DCC, align 4
  store i32 0, ptr @gCommunicationWord2E14, align 4
  %47 = load ptr, ptr @gCommunicationMode2Buffer, align 4
  store ptr %47, ptr @gCommunicationCursor2E18, align 4
  store i16 -313, ptr @gCommunicationWords2F40, align 4
  store i8 2, ptr @gCommunicationFlag10D8, align 1
  br label %77

48:                                               ; preds = %36
  %49 = load i16, ptr @gCommunicationWords2F10, align 4
  %50 = icmp eq i16 %49, -317
  br i1 %50, label %51, label %77

51:                                               ; preds = %48
  %52 = load ptr, ptr @gCommunicationCursor2E18, align 4
  %53 = load i16, ptr %52, align 2
  %54 = icmp eq i16 %53, -312
  br i1 %54, label %77, label %55

55:                                               ; preds = %51
  %56 = load i32, ptr @gCommunicationWord2E14, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr @gCommunicationWord2E14, align 4
  %58 = load i32, ptr @gCommunicationWord2DCC, align 4
  %59 = lshr i32 %58, 4
  %60 = icmp ult i32 %57, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = getelementptr i32, ptr %52, i32 4
  store ptr %62, ptr @gCommunicationCursor2E18, align 4
  br label %77

63:                                               ; preds = %55
  %64 = load ptr, ptr @gCommunicationMode2Buffer, align 4
  %65 = load i32, ptr getelementptr inbounds ([4 x i32], ptr @gCommunicationMode2Words, i32 0, i32 1), align 4
  %66 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %64, i32 noundef %65) #2
  %67 = load i16, ptr getelementptr (i16, ptr @gCommunicationMode2Words, i32 1), align 2
  %68 = icmp ne i16 %66, %67
  %69 = sext i1 %68 to i16
  store i16 %69, ptr getelementptr (i16, ptr @gCommunicationWords2F40, i32 1), align 2
  store i16 -316, ptr @gCommunicationWords2F40, align 4
  store ptr @gCommunicationWords2F10, ptr @gCommunicationCursor2E18, align 4
  store i32 0, ptr @gCommunicationWord2E14, align 4
  store i32 0, ptr @gCommunicationWord2DCC, align 4
  store i8 3, ptr @gCommunicationFlag10D8, align 1
  %70 = load i32, ptr @gCommunicationStatus, align 4
  br i1 %68, label %84, label %77

71:                                               ; preds = %36
  %72 = load i16, ptr @gCommunicationWords2F10, align 4
  %73 = icmp eq i16 %72, -318
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  store i16 0, ptr @gCommunicationTransferMode, align 2
  store i16 -320, ptr @gCommunicationWords2F40, align 4
  store i8 0, ptr @gCommunicationFlag10D8, align 1
  br label %77

75:                                               ; preds = %0
  tail call arm_apcscc void @ResetCommunicationControl() #2
  store i8 0, ptr @gCommunicationFlag2E30, align 1
  %76 = load i32, ptr @gCommunicationStatus, align 4
  br label %77

77:                                               ; preds = %6, %75, %11, %12, %9, %32, %35, %20, %31, %27, %13, %16, %7, %36, %74, %71, %61, %51, %48, %45, %42, %38, %41, %40, %0, %63
  %78 = phi i32 [ %4, %6 ], [ %76, %75 ], [ %4, %11 ], [ %4, %12 ], [ %4, %9 ], [ %4, %32 ], [ %4, %35 ], [ %4, %20 ], [ %4, %31 ], [ %4, %27 ], [ %4, %13 ], [ %4, %16 ], [ %4, %7 ], [ %4, %36 ], [ %4, %74 ], [ %4, %71 ], [ %4, %61 ], [ %4, %51 ], [ %4, %48 ], [ %4, %45 ], [ %4, %42 ], [ %4, %38 ], [ %4, %41 ], [ %4, %40 ], [ %4, %0 ], [ %70, %63 ]
  %79 = and i32 %78, 4096
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = and i32 %78, 8192
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81, %77, %63
  %85 = phi i8 [ 3, %63 ], [ 1, %77 ], [ 5, %81 ]
  %86 = phi i32 [ %70, %63 ], [ %78, %77 ], [ %78, %81 ]
  store i8 %85, ptr @gCommunicationFlag2F30, align 1
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i32 [ %78, %81 ], [ %86, %84 ]
  ret i32 %88
}

declare dso_local arm_apcscc i32 @PollCommunicationState(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @ResetCommunicationControl() local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
