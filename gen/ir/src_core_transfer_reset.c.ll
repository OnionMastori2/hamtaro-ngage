; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gTransferBufferA = external dso_local global [256 x i32], align 4
@gTransferBufferB = external dso_local global [256 x i32], align 4
@gTransferAux = external dso_local global [32 x i32], align 4
@gTransferWriteIndex = external dso_local local_unnamed_addr global i8, align 1
@gTransferReadIndex = external dso_local local_unnamed_addr global i8, align 1
@gCpuTransferWriteIndex = external dso_local local_unnamed_addr global i8, align 1
@gCpuTransferReadIndex = external dso_local local_unnamed_addr global i8, align 1
@gTransferAuxWriteIndex = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nofree norecurse nounwind
define dso_local arm_apcscc void @ResetTransferBuffers() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #2
  store i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr @gTransferBufferA, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597313, ptr inttoptr (i32 67109084 to ptr), align 4
  %2 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr @gTransferBufferB, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597313, ptr inttoptr (i32 67109084 to ptr), align 4
  %3 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i32 0, ptr %1, align 4
  store volatile ptr %1, ptr inttoptr (i32 67109076 to ptr), align 4
  store volatile ptr @gTransferAux, ptr inttoptr (i32 67109080 to ptr), align 8
  store volatile i32 -2063597536, ptr inttoptr (i32 67109084 to ptr), align 4
  %4 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  store i8 0, ptr @gTransferWriteIndex, align 1
  store i8 0, ptr @gTransferReadIndex, align 1
  store i8 0, ptr @gCpuTransferWriteIndex, align 1
  store i8 0, ptr @gCpuTransferReadIndex, align 1
  store i32 0, ptr @gTransferAuxWriteIndex, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #2
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
