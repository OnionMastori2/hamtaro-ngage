; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.CommunicationExchangeStorage = type { i8, [16 x i8], %struct.CommunicationExchangeState }
%struct.CommunicationExchangeState = type { i8, i8, i8 }

@gCommunicationExchangeStorage = external dso_local local_unnamed_addr global %struct.CommunicationExchangeStorage, align 1
@gCommunicationBlock3B50 = external dso_local global [0 x i16], align 2
@gCommunicationBlock3950 = external dso_local global [0 x i16], align 2
@gCommunicationReceivedRecord = external dso_local global [0 x i8], align 1

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @InitializeCommunicationExchange() local_unnamed_addr #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %1) #3
  store i32 0, ptr %1, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %1, ptr noundef nonnull @gCommunicationBlock3B50, i32 noundef 83886144) #4
  %3 = load i8, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = load i8, ptr @gCommunicationExchangeStorage, align 1
  %7 = zext i8 %6 to i16
  store i16 %7, ptr @gCommunicationBlock3950, align 2
  call arm_apcscc void @CopyBytes16(ptr noundef nonnull @gCommunicationReceivedRecord, ptr noundef getelementptr ([0 x i16], ptr @gCommunicationBlock3950, i32 0, i32 1), i16 noundef zeroext 128) #4
  br label %9

8:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #3
  store i32 0, ptr %2, align 4
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef nonnull @gCommunicationBlock3950, i32 noundef 83886144) #4
  store i16 255, ptr @gCommunicationBlock3950, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #3
  br label %9

9:                                                ; preds = %8, %5
  call arm_apcscc void @InitializeCommunicationContext() #4
  %10 = call arm_apcscc i32 @UpdateCommunicationFrame() #4
  %11 = call arm_apcscc i32 @RequestCommunicationTransfer() #4
  store i8 0, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2), align 1
  store i8 0, ptr getelementptr inbounds (%struct.CommunicationExchangeStorage, ptr @gCommunicationExchangeStorage, i32 0, i32 2, i32 2), align 1
  call arm_apcscc void @SetGameFlag(i16 noundef zeroext 645, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %1) #3
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @CopyBytes16(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @InitializeCommunicationContext() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @UpdateCommunicationFrame() local_unnamed_addr #2

declare dso_local arm_apcscc i32 @RequestCommunicationTransfer() local_unnamed_addr #2

declare dso_local arm_apcscc void @SetGameFlag(i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
define dso_local arm_apcscc noundef i32 @StopCommunicationExchange() local_unnamed_addr #0 {
  %1 = tail call arm_apcscc i32 @StopCommunicationTransfer() #4
  ret i32 0
}

declare dso_local arm_apcscc i32 @StopCommunicationTransfer() local_unnamed_addr #2

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
