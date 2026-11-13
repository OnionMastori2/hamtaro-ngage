; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.CommunicationState = type { i8, i8, i8, i8, [4 x i8], i8, i8, i8, i8, [8 x i8], i32, [2 x i32], [8 x i8], [2 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], [192 x i8] }

@gCommunicationState = external dso_local global %struct.CommunicationState, align 4

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeCommunicationBuffers() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #3
  store volatile i16 0, ptr inttoptr (i32 67109384 to ptr), align 8
  %2 = load volatile i16, ptr inttoptr (i32 67109376 to ptr), align 512
  %3 = and i16 %2, -193
  store volatile i16 %3, ptr inttoptr (i32 67109376 to ptr), align 512
  store volatile i16 1, ptr inttoptr (i32 67109384 to ptr), align 8
  store volatile i16 0, ptr inttoptr (i32 67109172 to ptr), align 4
  store volatile i32 8192, ptr inttoptr (i32 67109160 to ptr), align 8
  %4 = load volatile i16, ptr inttoptr (i32 67109160 to ptr), align 8
  %5 = or i16 %4, 16387
  store volatile i16 %5, ptr inttoptr (i32 67109160 to ptr), align 8
  store i32 0, ptr %1, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %1, ptr noundef nonnull @gCommunicationState, i32 noundef 83886152) #4
  store i32 -1, ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 10), align 4
  store ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 17, i32 0), ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13), align 4
  store ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 17, i32 24), ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 13, i32 1), align 4
  store ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 17, i32 48), ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 14), align 4
  store ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 17, i32 72), ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15), align 4
  store ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 17, i32 96), ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16), align 4
  store ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 17, i32 48) to i32), i32 72) to ptr), ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 14, i32 1), align 4
  store ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 17, i32 72) to i32), i32 72) to ptr), ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 15, i32 1), align 4
  store ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 17, i32 168), ptr inttoptr (i32 add (i32 ptrtoint (ptr getelementptr inbounds (%struct.CommunicationState, ptr @gCommunicationState, i32 0, i32 16) to i32), i32 4) to ptr), align 4
  store volatile i16 0, ptr inttoptr (i32 67109384 to ptr), align 8
  %6 = load volatile i16, ptr inttoptr (i32 67109376 to ptr), align 512
  %7 = or i16 %6, 128
  store volatile i16 %7, ptr inttoptr (i32 67109376 to ptr), align 512
  store volatile i16 1, ptr inttoptr (i32 67109384 to ptr), align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
