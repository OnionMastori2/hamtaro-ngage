; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.HeapBlock = type { i32, ptr, ptr }

@gHeapSentinel = external dso_local global %struct.HeapBlock, align 4
@gUsedHeapHead = external dso_local local_unnamed_addr global ptr, align 4
@gHeapDescriptors = external dso_local global [0 x %struct.HeapBlock], align 4
@gFreeHeapHead = external dso_local local_unnamed_addr global ptr, align 4
@gHeapData = external dso_local global [0 x i8], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc void @InitializeHeap(i32 noundef %0) local_unnamed_addr #0 {
  store ptr @gHeapSentinel, ptr @gUsedHeapHead, align 4
  store ptr @gHeapSentinel, ptr getelementptr inbounds (%struct.HeapBlock, ptr @gHeapSentinel, i32 0, i32 2), align 4
  store ptr @gHeapDescriptors, ptr @gFreeHeapHead, align 4
  store i32 120828, ptr @gHeapDescriptors, align 4
  store ptr @gHeapData, ptr getelementptr inbounds ([0 x %struct.HeapBlock], ptr @gHeapDescriptors, i32 0, i32 0, i32 1), align 4
  store ptr @gHeapSentinel, ptr getelementptr inbounds ([0 x %struct.HeapBlock], ptr @gHeapDescriptors, i32 0, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc ptr @AllocateHeap(i32 noundef %0) local_unnamed_addr #1 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #4
  %3 = add i32 %0, 3
  %4 = and i32 %3, -4
  %5 = tail call arm_apcscc ptr @AllocateHeapRaw(i32 noundef %4) #5
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  store i32 0, ptr %2, align 4
  %8 = lshr i32 %3, 2
  %9 = and i32 %8, 2097151
  %10 = or disjoint i32 %9, 83886080
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef nonnull %5, i32 noundef %10) #5
  br label %11

11:                                               ; preds = %1, %7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #4
  ret ptr %5
}

; Function Attrs: nounwind
define dso_local arm_apcscc ptr @AllocateHeapFilled(i32 noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #4
  %4 = add i32 %0, 3
  %5 = and i32 %4, -4
  %6 = tail call arm_apcscc ptr @AllocateHeapRaw(i32 noundef %5) #5
  %7 = icmp eq ptr %6, null
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = zext i8 %1 to i32
  %10 = mul nuw i32 %9, 16843009
  store i32 %10, ptr %3, align 4
  %11 = lshr i32 %4, 2
  %12 = and i32 %11, 2097151
  %13 = or disjoint i32 %12, 83886080
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %3, ptr noundef nonnull %6, i32 noundef %13) #5
  br label %14

14:                                               ; preds = %8, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #4
  ret ptr %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

declare dso_local arm_apcscc ptr @AllocateHeapRaw(i32 noundef) local_unnamed_addr #3

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
