; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSaveDataReadCallback = external dso_local global ptr, align 4
@gSaveDataGroupSizes = external dso_local constant [5 x i32], align 4
@gSaveDataPrimarySources = external dso_local constant [5 x ptr], align 4
@gSaveDataConsumers = external dso_local constant [5 x ptr], align 4
@gSaveDataBackupSources = external dso_local constant [5 x ptr], align 4
@gSaveDataReadResults = external dso_local local_unnamed_addr global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @LoadSaveDataGroups1To3() local_unnamed_addr #0 {
  tail call void asm sideeffect "", "{r1}"(ptr nonnull @gSaveDataReadCallback) #2, !srcloc !4
  %1 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 4) to ptr), align 4
  %2 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %1) #3
  %3 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataPrimarySources to i32), i32 4) to ptr), align 4
  %4 = load ptr, ptr @gSaveDataReadCallback, align 4
  tail call arm_apcscc void %4(ptr noundef %3, ptr noundef %2, i32 noundef %1) #3
  %5 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %2, i32 noundef %1) #3
  %6 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataConsumers to i32), i32 4) to ptr), align 4
  %7 = getelementptr i8, ptr %2, i32 8
  tail call arm_apcscc void %6(ptr noundef %7, i32 noundef %1) #3
  %8 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %2) #3
  %9 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 8) to ptr), align 4
  %10 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %9) #3
  %11 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataPrimarySources to i32), i32 8) to ptr), align 4
  %12 = load ptr, ptr @gSaveDataReadCallback, align 4
  tail call arm_apcscc void %12(ptr noundef %11, ptr noundef %10, i32 noundef %9) #3
  %13 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %10, i32 noundef %9) #3
  %14 = icmp eq i16 %13, 0
  %15 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataConsumers to i32), i32 8) to ptr), align 4
  %16 = getelementptr i8, ptr %10, i32 8
  tail call arm_apcscc void %15(ptr noundef %16, i32 noundef %9) #3
  %17 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %10) #3
  %18 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 12) to ptr), align 4
  %19 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %18) #3
  %20 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataPrimarySources to i32), i32 12) to ptr), align 4
  %21 = load ptr, ptr @gSaveDataReadCallback, align 4
  tail call arm_apcscc void %21(ptr noundef %20, ptr noundef %19, i32 noundef %18) #3
  %22 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %19, i32 noundef %18) #3
  %23 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataConsumers to i32), i32 12) to ptr), align 4
  %24 = getelementptr i8, ptr %19, i32 8
  tail call arm_apcscc void %23(ptr noundef %24, i32 noundef %18) #3
  %25 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %19) #3
  %26 = or i16 %5, %22
  %27 = icmp eq i16 %26, 0
  %28 = select i1 %14, i1 %27, i1 false
  br i1 %28, label %59, label %29

29:                                               ; preds = %0
  tail call void asm sideeffect "", "{r1}"(ptr nonnull @gSaveDataReadCallback) #2, !srcloc !5
  %30 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 4) to ptr), align 4
  %31 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %30) #3
  %32 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataBackupSources to i32), i32 4) to ptr), align 4
  %33 = load ptr, ptr @gSaveDataReadCallback, align 4
  tail call arm_apcscc void %33(ptr noundef %32, ptr noundef %31, i32 noundef %30) #3
  %34 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %31, i32 noundef %30) #3
  %35 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataConsumers to i32), i32 4) to ptr), align 4
  %36 = getelementptr i8, ptr %31, i32 8
  tail call arm_apcscc void %35(ptr noundef %36, i32 noundef %30) #3
  %37 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %31) #3
  %38 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 8) to ptr), align 4
  %39 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %38) #3
  %40 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataBackupSources to i32), i32 8) to ptr), align 4
  %41 = load ptr, ptr @gSaveDataReadCallback, align 4
  tail call arm_apcscc void %41(ptr noundef %40, ptr noundef %39, i32 noundef %38) #3
  %42 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %39, i32 noundef %38) #3
  %43 = icmp eq i16 %42, 0
  %44 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataConsumers to i32), i32 8) to ptr), align 4
  %45 = getelementptr i8, ptr %39, i32 8
  tail call arm_apcscc void %44(ptr noundef %45, i32 noundef %38) #3
  %46 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %39) #3
  %47 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 12) to ptr), align 4
  %48 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %47) #3
  %49 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataBackupSources to i32), i32 12) to ptr), align 4
  %50 = load ptr, ptr @gSaveDataReadCallback, align 4
  tail call arm_apcscc void %50(ptr noundef %49, ptr noundef %48, i32 noundef %47) #3
  %51 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %48, i32 noundef %47) #3
  %52 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataConsumers to i32), i32 12) to ptr), align 4
  %53 = getelementptr i8, ptr %48, i32 8
  tail call arm_apcscc void %52(ptr noundef %53, i32 noundef %47) #3
  %54 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %48) #3
  %55 = or i16 %34, %51
  %56 = icmp eq i16 %55, 0
  %57 = select i1 %43, i1 %56, i1 false
  %58 = select i1 %57, i8 2, i8 0
  br label %59

59:                                               ; preds = %29, %0
  %60 = phi i8 [ 1, %0 ], [ %58, %29 ]
  store i8 %60, ptr getelementptr ([0 x i8], ptr @gSaveDataReadResults, i32 0, i32 1), align 1
  store i8 %60, ptr getelementptr ([0 x i8], ptr @gSaveDataReadResults, i32 0, i32 2), align 1
  store i8 %60, ptr getelementptr ([0 x i8], ptr @gSaveDataReadResults, i32 0, i32 3), align 1
  ret void
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 424}
!5 = !{i64 1644}
