; ModuleID = 'gen/irdata/.tmp.c'
source_filename = "gen/irdata/.tmp.c"
target datalayout = "e-m:e-p:32:32-Fi8-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv4t-none-unknown-eabi"

%struct.ActorVisualScripts8BC520 = type { [23 x i8], [12 x i8], [12 x i8], [12 x i8], [21 x i8], [125 x i8] }

@gActorVisualScripts8BC520 = dso_local local_unnamed_addr constant %struct.ActorVisualScripts8BC520 { [23 x i8] c"\88\00\C0\C7\01\02\F8'\18\08\84\03\00P\01\01P\01\F8'\18\08\80", [12 x i8] c"\CB (\18\08\CC\CD\14\00\83\00\00", [12 x i8] c"\CB`*\18\08\CC\CD\14\00\83\00\00", [12 x i8] c"\CBl,\18\08\CC\CD\7F\00\83\00\00", [21 x i8] c"\CB\94.\18\08\CC\CD\0A\00\CB\AC0\18\08\CC\CD\0A\00\83\00\00", [125 x i8] c"\D0\A1\00\CB\C02\18\08\CC\CD\08\00\CB\105\18\08\CC\CD\08\00\CB\C02\18\08\CC\CD\08\00\CBP7\18\08\CC\CD\08\00\CB\C02\18\08\CC\CD\08\00\CB\105\18\08\CC\CD\08\00\CB\C02\18\08\CC\CD\08\00\CBP7\18\08\CC\CD\08\00\CB\C02\18\08\CC\CD\08\00\CB\105\18\08\CC\CD\08\00\CB\C02\18\08\CC\CD\08\00\CBP7\18\08\CC\CD\08\00\CB`*\18\08\CC\CD\05\00\81C\C5\8B\08" }, align 1

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
