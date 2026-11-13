; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.CommunicationMode1Header = type { i16, i16, i32 }

@gCommunicationMode2Words = external dso_local global [4 x i32], align 4
@gCommunicationMode1Header = external dso_local global %struct.CommunicationMode1Header, align 4
@gCommunicationWords2F10 = external dso_local global [0 x i32], align 4
@gCommunicationWord2E14 = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationWord2DCC = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationCursor2E18 = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationWords2F40 = external dso_local global [0 x i32], align 4
@gCommunicationWord2E28 = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationWord2C7C = external dso_local local_unnamed_addr global i32, align 4
@gCommunicationCursor2F28 = external dso_local local_unnamed_addr global ptr, align 4
@gCommunicationFlag10D8 = external dso_local local_unnamed_addr global i8, align 1
@gCommunicationTransferMode = external dso_local local_unnamed_addr global i16, align 2

; Function Attrs: nounwind
define dso_local arm_apcscc void @InitializeCommunicationContext() local_unnamed_addr #0 {
  %1 = alloca [2 x i32], align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %1) #3
  tail call arm_apcscc void @InitializeCommunicationBuffers() #4
  store i32 0, ptr %1, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %1, ptr noundef nonnull @gCommunicationMode2Words, i32 noundef 83886084) #4
  %2 = getelementptr inbounds [2 x i32], ptr %1, i32 0, i32 1
  store i32 0, ptr %2, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef nonnull @gCommunicationMode1Header, i32 noundef 83886084) #4
  store i16 -258, ptr @gCommunicationWords2F10, align 4
  store i32 0, ptr @gCommunicationWord2E14, align 4
  store i32 0, ptr @gCommunicationWord2DCC, align 4
  store ptr @gCommunicationWords2F10, ptr @gCommunicationCursor2E18, align 4
  store i16 -320, ptr @gCommunicationWords2F40, align 4
  store i32 0, ptr @gCommunicationWord2E28, align 4
  store i32 0, ptr @gCommunicationWord2C7C, align 4
  store ptr @gCommunicationWords2F40, ptr @gCommunicationCursor2F28, align 4
  store i8 0, ptr @gCommunicationFlag10D8, align 1
  store i16 0, ptr @gCommunicationTransferMode, align 2
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %1) #3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @InitializeCommunicationBuffers() local_unnamed_addr #2

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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
