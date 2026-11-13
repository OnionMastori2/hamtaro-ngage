; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.RenderSlot = type { i32, i32, [4 x i32], i32, i32, i32, [3 x i32], [3 x i32], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [4 x i16], i16, [8 x i8] }

@gRenderXZCollisionMap = external dso_local local_unnamed_addr global ptr, align 4
@gRenderSlots = external dso_local local_unnamed_addr global ptr, align 4
@gRenderClassSlots0 = external dso_local local_unnamed_addr global i8, align 1
@gCoreScriptByte1FA8 = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @UpdateRenderXZCollisionScript(i8 noundef zeroext %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr @gRenderXZCollisionMap, align 4
  %4 = load ptr, ptr @gRenderSlots, align 4
  %5 = zext i8 %1 to i32
  %6 = load i8, ptr @gRenderClassSlots0, align 1
  %7 = zext i8 %6 to i32
  %8 = getelementptr %struct.RenderSlot, ptr %4, i32 %7
  %9 = tail call arm_apcscc i32 @GetRenderFacingIndex(ptr noundef %8) #2
  %10 = tail call i32 asm "", "={r8},{r8}"(i32 %9) #3, !srcloc !4
  %11 = trunc i32 %10 to i8
  %12 = getelementptr %struct.RenderSlot, ptr %4, i32 %5, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr %struct.RenderSlot, ptr %4, i32 %5, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %13
  %17 = ashr i32 %16, 16
  %18 = getelementptr %struct.RenderSlot, ptr %4, i32 %5, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr %struct.RenderSlot, ptr %4, i32 %5, i32 6, i32 2
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, %19
  %23 = ashr i32 %22, 16
  %24 = tail call arm_apcscc ptr @GetRenderCollisionSample(ptr noundef %3, i32 noundef %17, i32 noundef %23, i8 noundef zeroext %11, i8 noundef zeroext -1) #2
  %25 = tail call arm_apcscc ptr @GetRenderDirectionalCollisionSample(ptr noundef %3, i32 noundef %17, i32 noundef %23, i8 noundef zeroext %11) #2
  %26 = load i16, ptr %24, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 1024
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = and i32 %27, 63
  tail call arm_apcscc void @StageRenderXZCollisionScript(i32 noundef %31) #2
  br label %61

32:                                               ; preds = %2
  %33 = load i16, ptr %25, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %34, 2048
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = lshr i32 %34, 6
  %39 = and i32 %38, 15
  br label %56

40:                                               ; preds = %32
  %41 = and i8 %0, 8
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = and i32 %27, 63
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = trunc i32 %44 to i16
  %48 = tail call i16 asm sideeffect "", "={r2},{r2}"(i16 %47) #4, !srcloc !5
  tail call arm_apcscc void @StageRenderXZCollisionScript(i32 noundef %44) #2
  br label %61

49:                                               ; preds = %43
  %50 = and i16 %33, 960
  %51 = tail call i16 asm "", "={r1},{r1}"(i16 %50) #3, !srcloc !6
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = lshr i16 %51, 6
  %55 = zext nneg i16 %54 to i32
  br label %56

56:                                               ; preds = %53, %37
  %57 = phi i32 [ %39, %37 ], [ %55, %53 ]
  tail call arm_apcscc void @StageRenderXZCollisionScript(i32 noundef %57) #2
  br label %61

58:                                               ; preds = %49
  %59 = load i8, ptr @gCoreScriptByte1FA8, align 1
  %60 = or i8 %59, 2
  store i8 %60, ptr @gCoreScriptByte1FA8, align 1
  br label %61

61:                                               ; preds = %46, %58, %56, %40, %30
  ret void
}

declare dso_local arm_apcscc i32 @GetRenderFacingIndex(ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @GetRenderCollisionSample(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc ptr @GetRenderDirectionalCollisionSample(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

declare dso_local arm_apcscc void @StageRenderXZCollisionScript(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind "no-builtins" }
attributes #3 = { nounwind memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 335}
!5 = !{i64 1246}
!6 = !{i64 1458}
