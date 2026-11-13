; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

@gSaveDataGroupSizes = external dso_local constant [5 x i32], align 4
@gSaveDataReadResults = external dso_local global [0 x i8], align 1
@gSaveDataReadCallback = external dso_local local_unnamed_addr global ptr, align 4
@gSaveDataPrimarySources = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gSaveDataBackupSources = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gSaveDataConsumers = external dso_local constant [5 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @LoadSaveDataGroup(i32 noundef %0) local_unnamed_addr #0 {
  %2 = shl i32 %0, 2
  %3 = add i32 %2, ptrtoint (ptr @gSaveDataGroupSizes to i32)
  %4 = inttoptr i32 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %5) #2
  %7 = add i32 %0, ptrtoint (ptr @gSaveDataReadResults to i32)
  %8 = inttoptr i32 %7 to ptr
  store i8 0, ptr %8, align 1
  %9 = icmp slt i32 %0, 4
  br i1 %9, label %10, label %30

10:                                               ; preds = %1
  %11 = load ptr, ptr @gSaveDataReadCallback, align 4
  %12 = getelementptr i8, ptr @gSaveDataPrimarySources, i32 %2
  %13 = load ptr, ptr %12, align 4
  tail call arm_apcscc void %11(ptr noundef %13, ptr noundef %6, i32 noundef %5) #2
  %14 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %6, i32 noundef %5) #2
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load ptr, ptr @gSaveDataReadCallback, align 4
  %18 = getelementptr i8, ptr @gSaveDataBackupSources, i32 %2
  %19 = load ptr, ptr %18, align 4
  tail call arm_apcscc void %17(ptr noundef %19, ptr noundef %6, i32 noundef %5) #2
  %20 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %6, i32 noundef %5) #2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %10, %16
  %23 = phi i8 [ 2, %16 ], [ 1, %10 ]
  store i8 %23, ptr %8, align 1
  br label %24

24:                                               ; preds = %22, %16
  %25 = add i32 %2, ptrtoint (ptr @gSaveDataConsumers to i32)
  %26 = inttoptr i32 %25 to ptr
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %6, i32 8
  %29 = load i32, ptr %4, align 4
  tail call arm_apcscc void %27(ptr noundef %28, i32 noundef %29) #2
  tail call void asm sideeffect "", "{r5},r"(i32 %2, i32 %5) #3, !srcloc !4
  br label %62

30:                                               ; preds = %1
  %31 = getelementptr i8, ptr @gSaveDataPrimarySources, i32 %2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr @gSaveDataBackupSources, i32 %2
  br label %34

34:                                               ; preds = %56, %30
  %35 = phi ptr [ %6, %30 ], [ %58, %56 ]
  %36 = phi i32 [ 0, %30 ], [ %57, %56 ]
  %37 = mul i32 %36, 220
  %38 = getelementptr i8, ptr %32, i32 %37
  %39 = load ptr, ptr @gSaveDataReadCallback, align 4
  tail call arm_apcscc void %39(ptr noundef %38, ptr noundef %35, i32 noundef 220) #2
  %40 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %35, i32 noundef 220) #2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  store i8 1, ptr getelementptr ([0 x i8], ptr @gSaveDataReadResults, i32 0, i32 4), align 1
  %43 = add i32 %36, 1
  %44 = icmp slt i32 %43, 51
  br i1 %44, label %56, label %59

45:                                               ; preds = %34
  %46 = load ptr, ptr %33, align 4
  %47 = getelementptr i8, ptr %46, i32 %37
  %48 = load ptr, ptr @gSaveDataReadCallback, align 4
  tail call arm_apcscc void %48(ptr noundef %47, ptr noundef %35, i32 noundef 220) #2
  %49 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef %35, i32 noundef 220) #2
  %50 = freeze i16 %49
  %51 = icmp eq i16 %50, 0
  %52 = select i1 %51, i8 2, i8 0
  store i8 %52, ptr getelementptr ([0 x i8], ptr @gSaveDataReadResults, i32 0, i32 4), align 1
  %53 = add i32 %36, 1
  %54 = icmp slt i32 %53, 51
  %55 = and i1 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %45, %42
  %57 = phi i32 [ %43, %42 ], [ %53, %45 ]
  %58 = getelementptr i8, ptr %35, i32 220
  br label %34

59:                                               ; preds = %42, %45
  %60 = getelementptr i8, ptr @gSaveDataConsumers, i32 %2
  %61 = load ptr, ptr %60, align 4
  tail call arm_apcscc void %61(ptr noundef %6, i32 noundef 11220) #2
  br label %62

62:                                               ; preds = %59, %24
  %63 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %6) #2
  ret void
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1730}
