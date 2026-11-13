; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"

%struct.GameRecordDescriptor = type { i32 }
%union.GameRecordSlot = type { %struct.anon }
%struct.anon = type { i32 }

@gSaveGroup2Block1CB20 = external dso_local local_unnamed_addr global [0 x i8], align 1
@gGameRecordDescriptorsCFE8 = external dso_local local_unnamed_addr constant [0 x %struct.GameRecordDescriptor], align 1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none)
define dso_local arm_apcscc i32 @AllocateGameRecord(i16 noundef zeroext %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %1, %8
  %3 = phi i32 [ 0, %1 ], [ %9, %8 ]
  %4 = getelementptr %union.GameRecordSlot, ptr @gSaveGroup2Block1CB20, i32 %3
  %5 = load i16, ptr %4, align 1
  %6 = and i16 %5, 3968
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = add nuw nsw i32 %3, 1
  %10 = icmp eq i32 %9, 64
  br i1 %10, label %25, label %2

11:                                               ; preds = %2
  %12 = load i32, ptr %4, align 1
  %13 = and i16 %0, 127
  %14 = zext nneg i16 %13 to i32
  %15 = and i32 %12, -128
  %16 = or disjoint i32 %15, %14
  store i32 %16, ptr %4, align 1
  %17 = and i16 %0, 127
  %18 = zext nneg i16 %17 to i32
  %19 = getelementptr [0 x %struct.GameRecordDescriptor], ptr @gGameRecordDescriptorsCFE8, i32 0, i32 %18
  %20 = load i32, ptr %19, align 1
  %21 = lshr i32 %20, 4
  %22 = and i32 %21, 3968
  %23 = and i32 %16, -3969
  %24 = or disjoint i32 %22, %23
  store i32 %24, ptr %4, align 1
  br label %25

25:                                               ; preds = %8, %11
  %26 = phi i32 [ %3, %11 ], [ -1, %8 ]
  ret i32 %26
}

attributes #0 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
