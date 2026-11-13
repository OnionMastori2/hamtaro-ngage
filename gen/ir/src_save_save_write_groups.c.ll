; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.SaveRecordHeader = type { i32, i8, i8, i16 }

@gSaveDataPrimarySources = external dso_local constant [5 x ptr], align 4
@gSaveDataGroupSizes = external dso_local constant [5 x i32], align 4
@gSaveDataProducers = external dso_local constant [5 x ptr], align 4
@gSaveDataBackupSources = external dso_local constant [5 x ptr], align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @WriteSaveDataGroups1To3() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #3
  store i32 1, ptr %1, align 4
  %2 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @gSaveDataPrimarySources, i32 0, i32 1), align 4
  %3 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %1, ptr noundef %2, i32 noundef 4) #4
  %4 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @gSaveDataPrimarySources, i32 0, i32 2), align 4
  %5 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %1, ptr noundef %4, i32 noundef 4) #4
  %6 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @gSaveDataPrimarySources, i32 0, i32 3), align 4
  %7 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %1, ptr noundef %6, i32 noundef 4) #4
  %8 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 4) to ptr), align 4
  %9 = call arm_apcscc ptr @AllocateHeap(i32 noundef %8) #4
  %10 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataProducers to i32), i32 4) to ptr), align 4
  %11 = getelementptr i8, ptr %9, i32 8
  %12 = call arm_apcscc i32 %10(ptr noundef %11, i32 noundef 0) #4
  store i32 %12, ptr %9, align 4
  %13 = getelementptr inbounds %struct.SaveRecordHeader, ptr %9, i32 0, i32 1
  store i8 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.SaveRecordHeader, ptr %9, i32 0, i32 2
  store i8 0, ptr %14, align 1
  call void asm sideeffect "", "~{r0},~{memory}"() #3, !srcloc !4
  %15 = getelementptr inbounds %struct.SaveRecordHeader, ptr %9, i32 0, i32 3
  store i16 0, ptr %15, align 2
  %16 = call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef nonnull %9, i32 noundef %8) #4
  store i16 %16, ptr %15, align 2
  %17 = add i32 %12, 8
  %18 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataPrimarySources to i32), i32 4) to ptr), align 4
  %19 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %9, ptr noundef %18, i32 noundef %17) #4
  %20 = call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %9) #4
  %21 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 8) to ptr), align 4
  %22 = call arm_apcscc ptr @AllocateHeap(i32 noundef %21) #4
  %23 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataProducers to i32), i32 8) to ptr), align 4
  %24 = getelementptr i8, ptr %22, i32 8
  %25 = call arm_apcscc i32 %23(ptr noundef %24, i32 noundef 0) #4
  store i32 %25, ptr %22, align 4
  %26 = getelementptr inbounds %struct.SaveRecordHeader, ptr %22, i32 0, i32 1
  store i8 2, ptr %26, align 4
  %27 = getelementptr inbounds %struct.SaveRecordHeader, ptr %22, i32 0, i32 2
  store i8 0, ptr %27, align 1
  call void asm sideeffect "", "~{r0},~{memory}"() #3, !srcloc !4
  %28 = getelementptr inbounds %struct.SaveRecordHeader, ptr %22, i32 0, i32 3
  store i16 0, ptr %28, align 2
  %29 = call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef nonnull %22, i32 noundef %21) #4
  store i16 %29, ptr %28, align 2
  %30 = add i32 %25, 8
  %31 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataPrimarySources to i32), i32 8) to ptr), align 4
  %32 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %22, ptr noundef %31, i32 noundef %30) #4
  %33 = call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %22) #4
  %34 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 12) to ptr), align 4
  %35 = call arm_apcscc ptr @AllocateHeap(i32 noundef %34) #4
  %36 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataProducers to i32), i32 12) to ptr), align 4
  %37 = getelementptr i8, ptr %35, i32 8
  %38 = call arm_apcscc i32 %36(ptr noundef %37, i32 noundef 0) #4
  store i32 %38, ptr %35, align 4
  %39 = getelementptr inbounds %struct.SaveRecordHeader, ptr %35, i32 0, i32 1
  store i8 3, ptr %39, align 4
  %40 = getelementptr inbounds %struct.SaveRecordHeader, ptr %35, i32 0, i32 2
  store i8 0, ptr %40, align 1
  call void asm sideeffect "", "~{r0},~{memory}"() #3, !srcloc !4
  %41 = getelementptr inbounds %struct.SaveRecordHeader, ptr %35, i32 0, i32 3
  store i16 0, ptr %41, align 2
  %42 = call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef nonnull %35, i32 noundef %34) #4
  store i16 %42, ptr %41, align 2
  %43 = add i32 %38, 8
  %44 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataPrimarySources to i32), i32 12) to ptr), align 4
  %45 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %35, ptr noundef %44, i32 noundef %43) #4
  %46 = call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %35) #4
  store i32 1, ptr %1, align 4
  %47 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @gSaveDataBackupSources, i32 0, i32 1), align 4
  %48 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %1, ptr noundef %47, i32 noundef 4) #4
  %49 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @gSaveDataBackupSources, i32 0, i32 2), align 4
  %50 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %1, ptr noundef %49, i32 noundef 4) #4
  %51 = load ptr, ptr getelementptr inbounds ([5 x ptr], ptr @gSaveDataBackupSources, i32 0, i32 3), align 4
  %52 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %1, ptr noundef %51, i32 noundef 4) #4
  %53 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 4) to ptr), align 4
  %54 = call arm_apcscc ptr @AllocateHeap(i32 noundef %53) #4
  %55 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataProducers to i32), i32 4) to ptr), align 4
  %56 = getelementptr i8, ptr %54, i32 8
  %57 = call arm_apcscc i32 %55(ptr noundef %56, i32 noundef 0) #4
  store i32 %57, ptr %54, align 4
  %58 = getelementptr inbounds %struct.SaveRecordHeader, ptr %54, i32 0, i32 1
  store i8 1, ptr %58, align 4
  %59 = getelementptr inbounds %struct.SaveRecordHeader, ptr %54, i32 0, i32 2
  store i8 0, ptr %59, align 1
  call void asm sideeffect "", "~{r0},~{memory}"() #3, !srcloc !5
  %60 = getelementptr inbounds %struct.SaveRecordHeader, ptr %54, i32 0, i32 3
  store i16 0, ptr %60, align 2
  %61 = call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef nonnull %54, i32 noundef %53) #4
  store i16 %61, ptr %60, align 2
  %62 = add i32 %57, 8
  %63 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataBackupSources to i32), i32 4) to ptr), align 4
  %64 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %54, ptr noundef %63, i32 noundef %62) #4
  %65 = call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %54) #4
  %66 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 8) to ptr), align 4
  %67 = call arm_apcscc ptr @AllocateHeap(i32 noundef %66) #4
  %68 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataProducers to i32), i32 8) to ptr), align 4
  %69 = getelementptr i8, ptr %67, i32 8
  %70 = call arm_apcscc i32 %68(ptr noundef %69, i32 noundef 0) #4
  store i32 %70, ptr %67, align 4
  %71 = getelementptr inbounds %struct.SaveRecordHeader, ptr %67, i32 0, i32 1
  store i8 2, ptr %71, align 4
  %72 = getelementptr inbounds %struct.SaveRecordHeader, ptr %67, i32 0, i32 2
  store i8 0, ptr %72, align 1
  call void asm sideeffect "", "~{r0},~{memory}"() #3, !srcloc !5
  %73 = getelementptr inbounds %struct.SaveRecordHeader, ptr %67, i32 0, i32 3
  store i16 0, ptr %73, align 2
  %74 = call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef nonnull %67, i32 noundef %66) #4
  store i16 %74, ptr %73, align 2
  %75 = add i32 %70, 8
  %76 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataBackupSources to i32), i32 8) to ptr), align 4
  %77 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %67, ptr noundef %76, i32 noundef %75) #4
  %78 = call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %67) #4
  %79 = load i32, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataGroupSizes to i32), i32 12) to ptr), align 4
  %80 = call arm_apcscc ptr @AllocateHeap(i32 noundef %79) #4
  %81 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataProducers to i32), i32 12) to ptr), align 4
  %82 = getelementptr i8, ptr %80, i32 8
  %83 = call arm_apcscc i32 %81(ptr noundef %82, i32 noundef 0) #4
  store i32 %83, ptr %80, align 4
  %84 = getelementptr inbounds %struct.SaveRecordHeader, ptr %80, i32 0, i32 1
  store i8 3, ptr %84, align 4
  %85 = getelementptr inbounds %struct.SaveRecordHeader, ptr %80, i32 0, i32 2
  store i8 0, ptr %85, align 1
  call void asm sideeffect "", "~{r0},~{memory}"() #3, !srcloc !5
  %86 = getelementptr inbounds %struct.SaveRecordHeader, ptr %80, i32 0, i32 3
  store i16 0, ptr %86, align 2
  %87 = call arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef nonnull %80, i32 noundef %79) #4
  store i16 %87, ptr %86, align 2
  %88 = add i32 %83, 8
  %89 = load ptr, ptr inttoptr (i32 add (i32 ptrtoint (ptr @gSaveDataBackupSources to i32), i32 12) to ptr), align 4
  %90 = call arm_apcscc i32 @WriteAndVerifySram(ptr noundef nonnull %80, ptr noundef %89, i32 noundef %88) #4
  %91 = call arm_apcscc i32 @FreeHeap(ptr noundef nonnull %80) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc i32 @WriteAndVerifySram(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc zeroext i16 @CalculateChecksum(ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 1484}
!5 = !{i64 3249}
