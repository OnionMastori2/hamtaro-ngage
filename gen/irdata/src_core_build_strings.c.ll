; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gRomBuildDate = dso_local local_unnamed_addr constant [12 x i8] c"Apr 16 2003\00", align 4
@gRomBuildTime = dso_local local_unnamed_addr constant [9 x i8] c"19:20:08\00", align 4
@gSramLibraryVersion = dso_local local_unnamed_addr constant [12 x i8] c"SRAM_F_V103\00", align 4
@gSramReadRoutine = external dso_local global [0 x i16], align 2
@gSaveDataReadCallback = external dso_local global ptr, align 4
@gSramVerifyRoutine = external dso_local global [0 x i16], align 2
@gSaveDataVerifyCallback = external dso_local global ptr, align 4
@gSramLibraryAddressConstants = dso_local local_unnamed_addr constant [11 x i32] [i32 ptrtoint (ptr @ReadSram to i32), i32 ptrtoint (ptr @gSramReadRoutine to i32), i32 ptrtoint (ptr @WriteSram to i32), i32 ptrtoint (ptr @gSaveDataReadCallback to i32), i32 ptrtoint (ptr getelementptr (i8, ptr @gSramReadRoutine, i64 1) to i32), i32 ptrtoint (ptr @VerifySram to i32), i32 ptrtoint (ptr @gSramVerifyRoutine to i32), i32 ptrtoint (ptr @InitializeSram to i32), i32 ptrtoint (ptr @gSaveDataVerifyCallback to i32), i32 ptrtoint (ptr getelementptr (i8, ptr @gSramVerifyRoutine, i64 1) to i32), i32 ptrtoint (ptr @gSaveDataVerifyCallback to i32)], align 4

declare dso_local arm_apcscc void @ReadSram(ptr noundef, ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc void @WriteSram(ptr noundef, ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc i32 @VerifySram(ptr noundef, ptr noundef, i32 noundef) #0

declare dso_local arm_apcscc void @InitializeSram() #0

attributes #0 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
