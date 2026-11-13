; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gScriptCursor = external dso_local local_unnamed_addr global ptr, align 4
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptDecompressStaged(ptr nocapture noundef readnone %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr @gScriptCursor, align 4
  %3 = load i8, ptr %2, align 1
  %4 = zext i8 %3 to i32
  %5 = getelementptr i8, ptr %2, i32 1
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 8
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr i8, ptr %2, i32 2
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 16
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr i8, ptr %2, i32 3
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl nuw i32 %17, 24
  %19 = or disjoint i32 %14, %18
  %20 = getelementptr i8, ptr %2, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i32
  %23 = getelementptr i8, ptr %2, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = zext i8 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = getelementptr i8, ptr %2, i32 6
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 16
  %31 = getelementptr i8, ptr %2, i32 7
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl nuw i32 %33, 24
  %35 = or disjoint i32 %26, %30
  %36 = or disjoint i32 %35, %34
  %37 = or disjoint i32 %36, %22
  %38 = inttoptr i32 %19 to ptr
  %39 = load i32, ptr %38, align 4
  %40 = lshr i32 %39, 8
  %41 = icmp ugt i32 %37, 100663295
  br i1 %41, label %42, label %61

42:                                               ; preds = %1
  tail call void asm sideeffect "", "r"(i32 -67090656) #2, !srcloc !4
  %43 = add i32 %37, -67090656
  %44 = inttoptr i32 %43 to ptr
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull %38, ptr noundef %44) #3
  %45 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %46 = and i16 %45, 128
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %42
  %49 = and i32 %22, 3
  %50 = icmp eq i32 %49, 0
  %51 = and i32 %39, 768
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  store volatile ptr %44, ptr inttoptr (i32 67109076 to ptr), align 4
  %54 = inttoptr i32 %37 to ptr
  store volatile ptr %54, ptr inttoptr (i32 67109080 to ptr), align 8
  %55 = select i1 %53, i32 10, i32 9
  %56 = select i1 %53, i32 -2080374784, i32 -2147483648
  %57 = lshr i32 %39, %55
  %58 = or disjoint i32 %57, %56
  store volatile i32 %58, ptr inttoptr (i32 67109084 to ptr), align 4
  %59 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  br label %61

60:                                               ; preds = %42
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %43, i32 noundef %37, i32 noundef %40) #3
  br label %61

61:                                               ; preds = %48, %60, %1
  %62 = and i32 %36, -1024
  %63 = icmp eq i32 %62, 83886080
  br i1 %63, label %64, label %76

64:                                               ; preds = %61
  tail call void asm sideeffect "", "r"(i32 -50215136) #2, !srcloc !5
  %65 = add nsw i32 %37, -50215136
  %66 = inttoptr i32 %65 to ptr
  tail call arm_apcscc void @BiosLZ77WRAM(ptr noundef nonnull %38, ptr noundef %66) #3
  %67 = load volatile i16, ptr inttoptr (i32 67108864 to ptr), align 67108864
  %68 = and i16 %67, 128
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %64
  store volatile ptr %66, ptr inttoptr (i32 67109076 to ptr), align 4
  %71 = inttoptr i32 %37 to ptr
  store volatile ptr %71, ptr inttoptr (i32 67109080 to ptr), align 8
  %72 = lshr i32 %39, 9
  %73 = or disjoint i32 %72, -2147483648
  store volatile i32 %73, ptr inttoptr (i32 67109084 to ptr), align 4
  %74 = load volatile i32, ptr inttoptr (i32 67109084 to ptr), align 4
  br label %76

75:                                               ; preds = %64
  tail call arm_apcscc void @QueueDmaTransfer(i32 noundef %65, i32 noundef %37, i32 noundef %40) #3
  br label %76

76:                                               ; preds = %70, %75, %61
  store i32 8, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  ret void
}

declare dso_local arm_apcscc void @BiosLZ77WRAM(ptr noundef, ptr noundef) local_unnamed_addr #1

declare dso_local arm_apcscc void @QueueDmaTransfer(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nobuiltin nounwind "no-builtins" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!4 = !{i64 536}
!5 = !{i64 1459}
