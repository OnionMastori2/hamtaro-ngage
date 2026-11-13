; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptResult = external dso_local local_unnamed_addr global i16, align 2
@gWordChoiceState = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @ResetCoreState() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #3
  tail call arm_apcscc void @InitializeSaveDataGroup3Fields() #4
  store volatile i32 -1, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33672224 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597560, ptr inttoptr (i32 67109084 to ptr), align 4
  %3 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i16 0, ptr %2, align 2
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50345968 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2130706389, ptr inttoptr (i32 67109084 to ptr), align 4
  %4 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i8 0, ptr inttoptr (i32 50347568 to ptr), align 16
  call arm_apcscc void @ClearCoreScriptStorage(i32 noundef 0) #4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50331712 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597564, ptr inttoptr (i32 67109084 to ptr), align 4
  %5 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50331728 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597211, ptr inttoptr (i32 67109084 to ptr), align 4
  %6 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50339776 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597464, ptr inttoptr (i32 67109084 to ptr), align 4
  %7 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50333168 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597564, ptr inttoptr (i32 67109084 to ptr), align 4
  %8 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50333184 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597567, ptr inttoptr (i32 67109084 to ptr), align 4
  %9 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50333188 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597567, ptr inttoptr (i32 67109084 to ptr), align 4
  %10 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33671968 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597504, ptr inttoptr (i32 67109084 to ptr), align 4
  %11 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store volatile i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33680960 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597560, ptr inttoptr (i32 67109084 to ptr), align 4
  %12 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i16 0, ptr @gScriptResult, align 2
  store i16 0, ptr @gWordChoiceState, align 2
  store i8 0, ptr inttoptr (i32 50340192 to ptr), align 32
  store i8 0, ptr inttoptr (i32 50339672 to ptr), align 8
  store i16 0, ptr inttoptr (i32 50340324 to ptr), align 4
  store i16 0, ptr inttoptr (i32 50339684 to ptr), align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @InitializeSaveDataGroup3Fields() local_unnamed_addr #2

declare dso_local arm_apcscc void @ClearCoreScriptStorage(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

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
