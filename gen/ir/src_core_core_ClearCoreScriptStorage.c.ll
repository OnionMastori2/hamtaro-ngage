; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.anon = type { i32, i16 }

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @ClearCoreScriptStorage(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #2
  switch i32 %0, label %18 [
    i32 0, label %3
    i32 1, label %7
    i32 2, label %11
  ]

3:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50340224 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597544, ptr inttoptr (i32 67109084 to ptr), align 4
  %4 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33572128 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597440, ptr inttoptr (i32 67109084 to ptr), align 4
  %5 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33676352 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597440, ptr inttoptr (i32 67109084 to ptr), align 4
  %6 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  br label %16

7:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50340232 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597546, ptr inttoptr (i32 67109084 to ptr), align 4
  %8 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33572160 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597448, ptr inttoptr (i32 67109084 to ptr), align 4
  %9 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33676416 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597512, ptr inttoptr (i32 67109084 to ptr), align 4
  %10 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  br label %16

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  store i16 0, ptr %12, align 4
  store volatile ptr %12, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50340304 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2130706424, ptr inttoptr (i32 67109084 to ptr), align 4
  %13 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33572512 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597536, ptr inttoptr (i32 67109084 to ptr), align 4
  %14 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 33676736 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597552, ptr inttoptr (i32 67109084 to ptr), align 4
  %15 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %2, align 4
  br label %16

16:                                               ; preds = %3, %7, %11
  store volatile ptr %2, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr inttoptr (i32 50342832 to ptr), ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597552, ptr inttoptr (i32 67109084 to ptr), align 4
  %17 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  br label %18

18:                                               ; preds = %16, %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

attributes #0 = { nofree norecurse nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
