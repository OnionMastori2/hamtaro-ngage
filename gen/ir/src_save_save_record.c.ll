; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SaveRecordHeader = type { i32, i8, i8, i16 }

@gSaveDataGroupSizes = external dso_local local_unnamed_addr constant [5 x i32], align 4
@gSaveDataProducers = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gSaveDataPrimarySources = external dso_local local_unnamed_addr constant [5 x ptr], align 4
@gSaveDataBackupSources = external dso_local local_unnamed_addr constant [5 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @WriteSaveRecord(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr [5 x i32], ptr @gSaveDataGroupSizes, i32 0, i32 %0
  %4 = load i32, ptr %3, align 4
  %5 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %4) #2
  %6 = getelementptr [5 x ptr], ptr @gSaveDataProducers, i32 0, i32 %0
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %5, i32 8
  %9 = tail call arm_apcscc i32 %7(ptr noundef %8, i32 noundef %1) #2
  store i32 %9, ptr %5, align 4
  %10 = trunc i32 %0 to i8
  %11 = getelementptr inbounds %struct.SaveRecordHeader, ptr %5, i32 0, i32 1
  store i8 %10, ptr %11, align 4
  %12 = trunc i32 %1 to i8
  %13 = getelementptr inbounds %struct.SaveRecordHeader, ptr %5, i32 0, i32 2
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.SaveRecordHeader, ptr %5, i32 0, i32 3
  store i16 0, ptr %14, align 2
  %15 = tail call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef nonnull %5, i32 noundef %4) #2
  store i16 %15, ptr %14, align 2
  %16 = add i32 %9, 8
  %17 = getelementptr [5 x ptr], ptr @gSaveDataPrimarySources, i32 0, i32 %0
  %18 = mul i32 %1, 220
  %19 = load ptr, ptr %17, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  %21 = tail call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %5, ptr noundef %20, i32 noundef %16) #2
  %22 = getelementptr [5 x ptr], ptr @gSaveDataBackupSources, i32 0, i32 %0
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 %18
  %25 = tail call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %5, ptr noundef %24, i32 noundef %16) #2
  %26 = tail call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %5) #2
  ret void
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @WriteAndVerifySram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
