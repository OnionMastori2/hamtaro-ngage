; ModuleID = '/tmp/ir_new/.tmp.c'
source_filename = "/tmp/ir_new/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

@gSaveDataReadResults = external dso_local local_unnamed_addr global [0 x i8], align 1
@gMapDescriptorBank = external dso_local local_unnamed_addr global i8, align 1
@gMapDescriptorIndex = external dso_local local_unnamed_addr global i8, align 1
@gScriptCallDepth = external dso_local local_unnamed_addr global i8, align 1
@gScriptBytesConsumed = external dso_local local_unnamed_addr global i32, align 4
@gScriptOpcode = external dso_local local_unnamed_addr global i8, align 1

; Function Attrs: nounwind
define dso_local arm_apcscc void @MainScriptLoadSaveDataGroup(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = load i8, ptr %0, align 1
  %4 = zext i8 %3 to i32
  tail call arm_apcscc void @LoadSaveDataGroup(i32 noundef %4) #3
  %5 = icmp eq i8 %3, 1
  br i1 %5, label %6, label %13

6:                                                ; preds = %1
  %7 = load i8, ptr getelementptr ([0 x i8], ptr @gSaveDataReadResults, i32 0, i32 1), align 1
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #4
  store i16 32767, ptr %2, align 2
  call arm_apcscc void @BiosCpuSet(ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i32 83886080 to ptr), i32 noundef 16777728) #3
  %10 = load i8, ptr @gMapDescriptorBank, align 1
  %11 = load i8, ptr @gMapDescriptorIndex, align 1
  call arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext %10, i8 noundef zeroext %11) #3
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #4
  br label %14

12:                                               ; preds = %6
  store i8 0, ptr @gScriptCallDepth, align 1
  store i32 1, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %14

13:                                               ; preds = %1
  store i32 1, ptr @gScriptBytesConsumed, align 4
  store i8 0, ptr @gScriptOpcode, align 1
  br label %14

14:                                               ; preds = %9, %12, %13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @LoadSaveDataGroup(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare dso_local arm_apcscc void @BiosCpuSet(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare dso_local arm_apcscc void @InitializeMapDescriptor(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

attributes #0 = { nounwind "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
