; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.WordChoiceRecord = type { i32, i32, ptr }
%struct.WordChoiceDescriptor = type { ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i8 }

@gWordChoiceRecords = external dso_local local_unnamed_addr global [0 x %struct.WordChoiceRecord], align 4
@gWordChoiceInitialIdentifier = external dso_local local_unnamed_addr global i32, align 4
@gWordChoiceRow = external dso_local local_unnamed_addr global i8, align 1
@gWordChoiceColumn = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeWordChoiceSelection(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load i32, ptr @gWordChoiceInitialIdentifier, align 4
  %3 = load i32, ptr @gWordChoiceRecords, align 4
  %4 = icmp eq i32 %3, %2
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 1), align 4
  %7 = icmp eq i32 %6, %2
  br i1 %7, label %30, label %8

8:                                                ; preds = %5
  %9 = load i32, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 2), align 4
  %10 = icmp eq i32 %9, %2
  br i1 %10, label %30, label %11

11:                                               ; preds = %8
  %12 = load i32, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 3), align 4
  %13 = icmp eq i32 %12, %2
  br i1 %13, label %30, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 4), align 4
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %30, label %17

17:                                               ; preds = %14
  %18 = load i32, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 5), align 4
  %19 = icmp eq i32 %18, %2
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load i32, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 6), align 4
  %22 = icmp eq i32 %21, %2
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 7), align 4
  %25 = icmp eq i32 %24, %2
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load i32, ptr getelementptr ([0 x %struct.WordChoiceRecord], ptr @gWordChoiceRecords, i32 0, i32 8), align 4
  %28 = icmp eq i32 %27, %2
  %29 = select i1 %28, i32 8, i32 0
  br label %30

30:                                               ; preds = %26, %23, %20, %17, %14, %11, %8, %5, %1
  %31 = phi i32 [ 0, %1 ], [ 1, %5 ], [ 2, %8 ], [ 3, %11 ], [ 4, %14 ], [ 5, %17 ], [ 6, %20 ], [ 7, %23 ], [ %29, %26 ]
  %32 = getelementptr inbounds %struct.WordChoiceDescriptor, ptr %0, i32 0, i32 4
  %33 = load i8, ptr %32, align 4
  %34 = zext i8 %33 to i32
  %35 = tail call arm_apcscc i32 @BiosDiv(i32 noundef %31, i32 noundef %34) #2
  %36 = trunc i32 %35 to i8
  store i8 %36, ptr @gWordChoiceRow, align 1
  %37 = load i8, ptr %32, align 4
  %38 = zext i8 %37 to i32
  %39 = tail call arm_apcscc i32 @BiosDivRem(i32 noundef %31, i32 noundef %38) #2
  %40 = trunc i32 %39 to i8
  store i8 %40, ptr @gWordChoiceColumn, align 1
  ret void
}

declare dso_local arm_apcscc i32 @BiosDiv(i32 noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @BiosDivRem(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
