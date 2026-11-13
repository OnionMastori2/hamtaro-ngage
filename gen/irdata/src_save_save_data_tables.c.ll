; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSaveDataGroupSizes = dso_local local_unnamed_addr constant [5 x i32] [i32 238, i32 1482, i32 1802, i32 1642, i32 11220], align 4
@gSaveDataPrimarySources = dso_local local_unnamed_addr constant [5 x ptr] [ptr inttoptr (i32 234881024 to ptr), ptr inttoptr (i32 234881262 to ptr), ptr inttoptr (i32 234882744 to ptr), ptr inttoptr (i32 234884546 to ptr), ptr inttoptr (i32 234886188 to ptr)], align 4
@gSaveDataBackupSources = dso_local local_unnamed_addr constant [5 x ptr] [ptr inttoptr (i32 234897408 to ptr), ptr inttoptr (i32 234897646 to ptr), ptr inttoptr (i32 234899128 to ptr), ptr inttoptr (i32 234900930 to ptr), ptr inttoptr (i32 234902572 to ptr)], align 4
@gSaveDataProducers = dso_local local_unnamed_addr constant [5 x ptr] [ptr @ProduceSaveDataGroups0And1, ptr @ProduceSaveDataGroups0And1, ptr @ProduceSaveDataGroup2, ptr @ProduceSaveDataGroup3, ptr @CopyCommunicationRecordForSave], align 4
@gSaveDataConsumers = dso_local local_unnamed_addr constant [5 x ptr] [ptr @ConsumeSaveDataGroups0And1, ptr @ConsumeSaveDataGroups0And1, ptr @ConsumeSaveDataGroup2, ptr @ConsumeSaveDataGroup3, ptr @ConsumeCommunicationSaveRecords], align 4

declare dso_local arm_apcscc i32 @ProduceSaveDataGroups0And1(ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc i32 @ProduceSaveDataGroup2(ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc i32 @ProduceSaveDataGroup3(ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc i32 @CopyCommunicationRecordForSave(ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc void @ConsumeSaveDataGroups0And1(ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc void @ConsumeSaveDataGroup2(ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc void @ConsumeSaveDataGroup3(ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc void @ConsumeCommunicationSaveRecords(ptr noundef, i32 noundef) #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
