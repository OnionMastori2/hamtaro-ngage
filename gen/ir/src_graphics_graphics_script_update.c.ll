; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

module asm ".align 2, 0"
module asm ".align 2, 0"

%struct.GraphicsScript = type { i8, i8, i8, [4 x i8], i8, [4 x ptr], ptr, i16, i16, i16, i16, i16, i16, i16, i16 }

@gGraphicsScripts = external dso_local local_unnamed_addr global ptr, align 4
@gGraphicsScriptCount = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateGraphicsScripts() local_unnamed_addr #0 {
  %1 = load i8, ptr @gGraphicsScriptCount, align 1
  %2 = icmp eq i8 %1, 0
  br i1 %2, label %25, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @gGraphicsScripts, align 4
  br label %5

5:                                                ; preds = %3, %19
  %6 = phi i16 [ %21, %19 ], [ 0, %3 ]
  %7 = phi ptr [ %20, %19 ], [ %4, %3 ]
  %8 = load i8, ptr %7, align 4
  switch i8 %8, label %9 [
    i8 0, label %19
    i8 -1, label %19
  ]

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.GraphicsScript, ptr %7, i32 0, i32 7
  br label %11

11:                                               ; preds = %16, %9
  %12 = load i16, ptr %10, align 4
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = add i16 %12, -1
  store i16 %15, ptr %10, align 4
  br label %19

16:                                               ; preds = %11
  %17 = tail call arm_apcscc zeroext i16 @RunGraphicsScriptCommand(ptr noundef nonnull %7) #2
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %19, label %11

19:                                               ; preds = %16, %14, %5, %5
  %20 = getelementptr %struct.GraphicsScript, ptr %7, i32 1
  %21 = add nuw nsw i16 %6, 1
  %22 = load i8, ptr @gGraphicsScriptCount, align 1
  %23 = zext i8 %22 to i16
  %24 = icmp ult i16 %21, %23
  br i1 %24, label %5, label %25

25:                                               ; preds = %19, %0
  ret void
}

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateGraphicsScript(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.GraphicsScript, ptr %0, i32 0, i32 7
  br label %3

3:                                                ; preds = %8, %1
  %4 = load i16, ptr %2, align 4
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = add i16 %4, -1
  store i16 %7, ptr %2, align 4
  br label %11

8:                                                ; preds = %3
  %9 = tail call arm_apcscc zeroext i16 @RunGraphicsScriptCommand(ptr noundef nonnull %0) #2
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %3

11:                                               ; preds = %8, %6
  ret void
}

declare dso_local arm_apcscc zeroext i16 @RunGraphicsScriptCommand(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
