; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.GameRecordBanks = type { [4 x ptr] }
%struct.GameRecordDescriptor = type { i32 }
%struct.GameCounterDescriptor = type { ptr, i8, i8, [6 x i8], ptr, ptr }
%union.GameRecordSlot = type { %struct.anon }
%struct.anon = type { i32 }
%struct.GameRecordResult = type { ptr, i8, i8, i8, i8, i8 }

@gSaveGroup2Block1CB20 = external dso_local global [0 x i8], align 1
@gGameRecordBanksF25C = external dso_local local_unnamed_addr constant %struct.GameRecordBanks, align 4
@gGameRecordDescriptorsCFE8 = external dso_local local_unnamed_addr constant [0 x %struct.GameRecordDescriptor], align 1
@gSaveGroup01Block1CC20 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gGameCounterDescriptorsD0D8 = external dso_local local_unnamed_addr constant [0 x %struct.GameCounterDescriptor], align 4

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @CountOccupiedGameRecords() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %0, %1
  %2 = phi i32 [ 63, %0 ], [ %11, %1 ]
  %3 = phi ptr [ @gSaveGroup2Block1CB20, %0 ], [ %10, %1 ]
  %4 = phi i8 [ 0, %0 ], [ %9, %1 ]
  %5 = load i16, ptr %3, align 2
  %6 = and i16 %5, 3968
  %7 = icmp ne i16 %6, 0
  %8 = zext i1 %7 to i8
  %9 = add i8 %4, %8
  %10 = getelementptr %union.GameRecordSlot, ptr %3, i32 1
  %11 = add nsw i32 %2, -1
  %12 = icmp eq i32 %2, 0
  br i1 %12, label %13, label %1

13:                                               ; preds = %1
  ret i8 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none)
define dso_local arm_apcscc i32 @QueryGameRecord(i8 noundef zeroext %0, ptr noundef writeonly %1) local_unnamed_addr #1 {
  %3 = zext i8 %0 to i32
  %4 = shl nuw nsw i32 %3, 2
  %5 = add i32 %4, ptrtoint (ptr @gSaveGroup2Block1CB20 to i32)
  %6 = inttoptr i32 %5 to ptr
  %7 = load i16, ptr %6, align 2
  %8 = lshr i16 %7, 7
  %9 = and i16 %8, 31
  %10 = icmp eq i16 %9, 0
  %11 = icmp eq ptr %1, null
  %12 = or i1 %10, %11
  br i1 %12, label %41, label %13

13:                                               ; preds = %2
  %14 = and i16 %7, 127
  %15 = zext nneg i16 %14 to i32
  %16 = getelementptr [0 x %struct.GameRecordDescriptor], ptr @gGameRecordDescriptorsCFE8, i32 0, i32 %15
  %17 = load i32, ptr %16, align 1
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 3
  %20 = getelementptr inbounds %struct.GameRecordResult, ptr %1, i32 0, i32 1
  store i8 %19, ptr %20, align 4
  %21 = lshr i32 %17, 2
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 127
  %24 = getelementptr inbounds %struct.GameRecordResult, ptr %1, i32 0, i32 2
  store i8 %23, ptr %24, align 1
  %25 = lshr i32 %17, 11
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 31
  %28 = getelementptr inbounds %struct.GameRecordResult, ptr %1, i32 0, i32 3
  store i8 %27, ptr %28, align 2
  %29 = trunc i16 %9 to i8
  %30 = getelementptr inbounds %struct.GameRecordResult, ptr %1, i32 0, i32 4
  store i8 %29, ptr %30, align 1
  %31 = and i32 %17, 3
  %32 = getelementptr [4 x ptr], ptr @gGameRecordBanksF25C, i32 0, i32 %31
  %33 = load ptr, ptr %32, align 4
  %34 = and i32 %21, 127
  %35 = getelementptr ptr, ptr %33, i32 %34
  %36 = load ptr, ptr %35, align 4
  store ptr %36, ptr %1, align 4
  %37 = lshr i32 %17, 9
  %38 = trunc i32 %37 to i8
  %39 = and i8 %38, 3
  %40 = getelementptr inbounds %struct.GameRecordResult, ptr %1, i32 0, i32 5
  store i8 %39, ptr %40, align 4
  br label %41

41:                                               ; preds = %13, %2
  %42 = zext nneg i16 %9 to i32
  ret i32 %42
}

; Function Attrs: nounwind
define dso_local arm_apcscc i32 @ConsumeGameRecord(i16 noundef zeroext %0, i8 noundef zeroext %1, ptr noundef writeonly %2) local_unnamed_addr #2 {
  %4 = zext i16 %0 to i32
  %5 = shl nuw nsw i32 %4, 2
  %6 = add i32 %5, ptrtoint (ptr @gSaveGroup2Block1CB20 to i32)
  %7 = inttoptr i32 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = and i8 %8, 127
  %10 = zext nneg i8 %9 to i32
  %11 = load i16, ptr %7, align 2
  %12 = lshr i16 %11, 7
  %13 = and i16 %12, 31
  %14 = zext nneg i16 %13 to i32
  %15 = getelementptr [0 x %struct.GameRecordDescriptor], ptr @gGameRecordDescriptorsCFE8, i32 0, i32 %10
  %16 = load i32, ptr %15, align 1
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 3
  %19 = lshr i32 %16, 2
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 127
  %22 = lshr i32 %16, 11
  %23 = and i32 %22, 31
  %24 = lshr i32 %16, 9
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 3
  %27 = tail call arm_apcscc i32 @GetGameFlag(i16 noundef zeroext 401) #6
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = sub nsw i32 %23, %14
  %31 = zext i8 %1 to i32
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %61

33:                                               ; preds = %29
  %34 = add nsw i32 %14, -1
  %35 = load i32, ptr %7, align 2
  %36 = shl nsw i32 %34, 7
  %37 = and i32 %36, 3968
  %38 = and i32 %35, -3969
  %39 = or disjoint i32 %38, %37
  br label %43

40:                                               ; preds = %3
  %41 = load i32, ptr %7, align 2
  %42 = and i32 %41, -3969
  br label %43

43:                                               ; preds = %40, %33
  %44 = phi i32 [ %39, %33 ], [ %42, %40 ]
  %45 = phi i32 [ %34, %33 ], [ 0, %40 ]
  store i32 %44, ptr %7, align 2
  %46 = icmp eq ptr %2, null
  br i1 %46, label %61, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 1
  store i8 %18, ptr %48, align 4
  %49 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 2
  store i8 %21, ptr %49, align 1
  %50 = trunc i32 %23 to i8
  %51 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 3
  store i8 %50, ptr %51, align 2
  %52 = trunc i32 %45 to i8
  %53 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 4
  store i8 %52, ptr %53, align 1
  %54 = and i32 %16, 3
  %55 = getelementptr [4 x ptr], ptr @gGameRecordBanksF25C, i32 0, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = and i32 %19, 127
  %58 = getelementptr ptr, ptr %56, i32 %57
  %59 = load ptr, ptr %58, align 4
  store ptr %59, ptr %2, align 4
  %60 = getelementptr inbounds %struct.GameRecordResult, ptr %2, i32 0, i32 5
  store i8 %26, ptr %60, align 4
  br label %61

61:                                               ; preds = %43, %47, %29
  %62 = phi i32 [ -1, %29 ], [ %45, %47 ], [ %45, %43 ]
  ret i32 %62
}

declare dso_local arm_apcscc i32 @GetGameFlag(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc i32 @AdjustGameCounter(i8 noundef zeroext %0, i32 noundef %1) local_unnamed_addr #4 {
  %3 = zext i8 %0 to i32
  %4 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = icmp eq i8 %5, -1
  %7 = select i1 %6, i8 0, i8 %5
  %8 = zext i8 %7 to i32
  %9 = add i32 %8, %1
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = getelementptr [0 x %struct.GameCounterDescriptor], ptr @gGameCounterDescriptorsD0D8, i32 0, i32 %3, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ugt i32 %9, %14
  %16 = add nuw nsw i32 %14, 128
  %17 = select i1 %15, i32 %16, i32 %9
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi i32 [ 0, %2 ], [ %17, %11 ]
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 127
  store i8 %21, ptr %4, align 1
  %22 = lshr i32 %19, 7
  %23 = and i32 %22, 1
  %24 = xor i32 %23, 1
  ret i32 %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc zeroext i8 @QueryGameCounter(i8 noundef zeroext %0) local_unnamed_addr #5 {
  %2 = icmp ult i8 %0, 32
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = zext nneg i8 %0 to i32
  %5 = getelementptr [0 x i8], ptr @gSaveGroup01Block1CC20, i32 0, i32 %4
  %6 = load i8, ptr %5, align 1
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i8 [ %6, %3 ], [ -1, %1 ]
  ret i8 %8
}

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
