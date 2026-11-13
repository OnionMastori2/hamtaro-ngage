; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

; Function Attrs: nounwind
define dso_local arm_apcscc void @CopyStridedHalfwordRows(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %2, 65535
  %7 = and i32 %4, 65535
  %8 = and i32 %3, 65535
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = lshr i32 %6, 1
  br label %12

12:                                               ; preds = %10, %12
  %13 = phi ptr [ %17, %12 ], [ %0, %10 ]
  %14 = phi ptr [ %16, %12 ], [ %1, %10 ]
  %15 = phi i32 [ %18, %12 ], [ %8, %10 ]
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %13, ptr noundef %14, i32 noundef %11) #2
  %16 = getelementptr i8, ptr %14, i32 %7
  %17 = getelementptr i8, ptr %13, i32 %6
  %18 = add nsw i32 %15, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12

20:                                               ; preds = %12, %5
  ret void
}

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
define dso_local arm_apcscc void @DecompressStridedRows(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
  %6 = and i32 %2, 65535
  %7 = and i32 %3, 65535
  %8 = mul nuw i32 %7, %6
  %9 = tail call arm_apcscc ptr @AllocateHeap(i32 noundef %8) #2
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef %0, ptr noundef %9) #2
  %10 = and i32 %4, 65535
  %11 = icmp eq i32 %7, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %5
  %13 = lshr i32 %6, 1
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi ptr [ %19, %14 ], [ %9, %12 ]
  %16 = phi ptr [ %18, %14 ], [ %1, %12 ]
  %17 = phi i32 [ %20, %14 ], [ %7, %12 ]
  tail call arm_apcscc void @BiosCpuSet(ptr noundef %15, ptr noundef %16, i32 noundef %13) #2
  %18 = getelementptr i8, ptr %16, i32 %10
  %19 = getelementptr i8, ptr %15, i32 %6
  %20 = add nsw i32 %17, -1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %14

22:                                               ; preds = %14, %5
  %23 = tail call arm_apcscc i32 @FreeHeap(ptr noundef %9) #2
  ret void
}

declare dso_local arm_apcscc ptr @AllocateHeap(i32 noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc i32 @FreeHeap(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
