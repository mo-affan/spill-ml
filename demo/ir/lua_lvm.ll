; ModuleID = 'lua/lvm.c'
source_filename = "lua/lvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.TValue = type { %union.Value, i8 }
%union.Value = type { ptr }
%struct.TString = type { ptr, i8, i8, i8, i8, i32, %union.anon, [1 x i8] }
%union.anon = type { i64 }
%struct.lua_State = type { ptr, i8, i8, i8, i8, i16, %union.StkIdRel, ptr, ptr, %union.StkIdRel, %union.StkIdRel, ptr, %union.StkIdRel, ptr, ptr, ptr, %struct.CallInfo, ptr, i64, i32, i32, i32, i32, i32 }
%union.StkIdRel = type { ptr }
%struct.CallInfo = type { %union.StkIdRel, %union.StkIdRel, ptr, ptr, %union.anon.0, %union.anon.2, i16, i16 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, i64, i64 }
%union.anon.2 = type { i32 }
%struct.Table = type { ptr, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, ptr }
%struct.global_State = type { ptr, ptr, i64, i64, i64, i64, %struct.stringtable, %struct.TValue, %struct.TValue, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [25 x ptr], [9 x ptr], [53 x [2 x ptr]], ptr, ptr }
%struct.stringtable = type { ptr, i32, i32 }
%struct.GCObject = type { ptr, i8, i8 }
%struct.Udata = type { ptr, i8, i8, i16, i64, ptr, ptr, [1 x %union.UValue] }
%union.UValue = type { %struct.TValue }
%union.StackValue = type { %struct.TValue }
%struct.LClosure = type { ptr, i8, i8, i8, ptr, ptr, [1 x ptr] }
%struct.Proto = type { ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.UpVal = type { ptr, i8, i8, %union.anon.4, %union.anon.5 }
%union.anon.4 = type { ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.Upvaldesc = type { ptr, i8, i8, i8 }

@.str = private unnamed_addr constant [6 x i8] c"index\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"'__index' chain too long; possible loop\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"'__newindex' chain too long; possible loop\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"string length overflow\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"get length of\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"attempt to divide by zero\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"attempt to perform 'n%%0'\00", align 1
@luaV_execute.disptab = internal unnamed_addr constant [83 x ptr] [ptr blockaddress(@luaV_execute, %52), ptr blockaddress(@luaV_execute, %79), ptr blockaddress(@luaV_execute, %97), ptr blockaddress(@luaV_execute, %115), ptr blockaddress(@luaV_execute, %136), ptr blockaddress(@luaV_execute, %159), ptr blockaddress(@luaV_execute, %173), ptr blockaddress(@luaV_execute, %188), ptr blockaddress(@luaV_execute, %202), ptr blockaddress(@luaV_execute, %249), ptr blockaddress(@luaV_execute, %274), ptr blockaddress(@luaV_execute, %314), ptr blockaddress(@luaV_execute, %359), ptr blockaddress(@luaV_execute, %430), ptr blockaddress(@luaV_execute, %483), ptr blockaddress(@luaV_execute, %525), ptr blockaddress(@luaV_execute, %589), ptr blockaddress(@luaV_execute, %679), ptr blockaddress(@luaV_execute, %751), ptr blockaddress(@luaV_execute, %812), ptr blockaddress(@luaV_execute, %858), ptr blockaddress(@luaV_execute, %907), ptr blockaddress(@luaV_execute, %944), ptr blockaddress(@luaV_execute, %1000), ptr blockaddress(@luaV_execute, %1056), ptr blockaddress(@luaV_execute, %1112), ptr blockaddress(@luaV_execute, %1193), ptr blockaddress(@luaV_execute, %1243), ptr blockaddress(@luaV_execute, %1287), ptr blockaddress(@luaV_execute, %1362), ptr blockaddress(@luaV_execute, %1405), ptr blockaddress(@luaV_execute, %1448), ptr blockaddress(@luaV_execute, %1491), ptr blockaddress(@luaV_execute, %1544), ptr blockaddress(@luaV_execute, %1597), ptr blockaddress(@luaV_execute, %1653), ptr blockaddress(@luaV_execute, %1709), ptr blockaddress(@luaV_execute, %1765), ptr blockaddress(@luaV_execute, %1846), ptr blockaddress(@luaV_execute, %1896), ptr blockaddress(@luaV_execute, %1940), ptr blockaddress(@luaV_execute, %2015), ptr blockaddress(@luaV_execute, %2073), ptr blockaddress(@luaV_execute, %2131), ptr blockaddress(@luaV_execute, %2258), ptr blockaddress(@luaV_execute, %2189), ptr blockaddress(@luaV_execute, %2327), ptr blockaddress(@luaV_execute, %2354), ptr blockaddress(@luaV_execute, %2383), ptr blockaddress(@luaV_execute, %2412), ptr blockaddress(@luaV_execute, %2445), ptr blockaddress(@luaV_execute, %2486), ptr blockaddress(@luaV_execute, %2510), ptr blockaddress(@luaV_execute, %2530), ptr blockaddress(@luaV_execute, %2557), ptr blockaddress(@luaV_execute, %2574), ptr blockaddress(@luaV_execute, %2589), ptr blockaddress(@luaV_execute, %2604), ptr blockaddress(@luaV_execute, %2640), ptr blockaddress(@luaV_execute, %2748), ptr blockaddress(@luaV_execute, %2856), ptr blockaddress(@luaV_execute, %2890), ptr blockaddress(@luaV_execute, %2937), ptr blockaddress(@luaV_execute, %2989), ptr blockaddress(@luaV_execute, %3041), ptr blockaddress(@luaV_execute, %3093), ptr blockaddress(@luaV_execute, %3145), ptr blockaddress(@luaV_execute, %3179), ptr blockaddress(@luaV_execute, %3220), ptr blockaddress(@luaV_execute, %3247), ptr blockaddress(@luaV_execute, %3287), ptr blockaddress(@luaV_execute, %3337), ptr blockaddress(@luaV_execute, %3385), ptr blockaddress(@luaV_execute, %3442), ptr blockaddress(@luaV_execute, %3493), ptr blockaddress(@luaV_execute, %3773), ptr blockaddress(@luaV_execute, %3785), ptr blockaddress(@luaV_execute, %3804), ptr blockaddress(@luaV_execute, %3837), ptr blockaddress(@luaV_execute, %3918), ptr blockaddress(@luaV_execute, %3990), ptr blockaddress(@luaV_execute, %4008), ptr blockaddress(@luaV_execute, %4021)], align 16
@.str.7 = private unnamed_addr constant [19 x i8] c"'for' step is zero\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"limit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"initial value\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef i32 @luaV_tonumber_(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.TValue, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %4 = getelementptr inbounds %struct.TValue, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = icmp eq i8 %5, 3
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i64, ptr %0, align 8, !tbaa !9
  %9 = sitofp i64 %8 to double
  br label %37

10:                                               ; preds = %2
  %11 = and i8 %5, 15
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %13, label %39

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !9
  %15 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 7
  %16 = call i64 @luaO_str2num(ptr noundef nonnull %15, ptr noundef nonnull %3) #13
  %17 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 4
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = icmp eq i8 %18, -1
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = zext i8 %18 to i64
  br label %25

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 6
  %24 = load i64, ptr %23, align 8, !tbaa !9
  br label %25

25:                                               ; preds = %20, %22
  %26 = phi i64 [ %21, %20 ], [ %24, %22 ]
  %27 = add i64 %26, 1
  %28 = icmp eq i64 %16, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.TValue, ptr %3, i64 0, i32 1
  %31 = load i8, ptr %30, align 8, !tbaa !5
  %32 = icmp eq i8 %31, 3
  %33 = load i64, ptr %3, align 8
  %34 = sitofp i64 %33 to double
  %35 = bitcast i64 %33 to double
  %36 = select i1 %32, double %34, double %35
  br label %37

37:                                               ; preds = %7, %29
  %38 = phi double [ %36, %29 ], [ %9, %7 ]
  store double %38, ptr %1, align 8, !tbaa !14
  br label %39

39:                                               ; preds = %37, %10, %25
  %40 = phi i32 [ 0, %25 ], [ 0, %10 ], [ 1, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  ret i32 %40
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden noundef i32 @luaV_flttointeger(double noundef %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #2 {
  %4 = tail call double @llvm.floor.f64(double %0)
  %5 = fcmp une double %4, %0
  br i1 %5, label %6, label %9

6:                                                ; preds = %3
  switch i32 %2, label %9 [
    i32 0, label %18
    i32 2, label %7
  ]

7:                                                ; preds = %6
  %8 = fadd double %4, 1.000000e+00
  br label %9

9:                                                ; preds = %6, %7, %3
  %10 = phi double [ %8, %7 ], [ %4, %3 ], [ %4, %6 ]
  %11 = fcmp oge double %10, 0xC3E0000000000000
  %12 = fcmp olt double %10, 0x43E0000000000000
  %13 = and i1 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = fptosi double %10 to i64
  store i64 %15, ptr %1, align 8, !tbaa !16
  br label %16

16:                                               ; preds = %14, %9
  %17 = zext i1 %13 to i32
  br label %18

18:                                               ; preds = %6, %16
  %19 = phi i32 [ %17, %16 ], [ %2, %6 ]
  ret i32 %19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef i32 @luaV_tointegerns(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.TValue, ptr %0, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  switch i8 %5, label %24 [
    i8 19, label %6
    i8 3, label %22
  ]

6:                                                ; preds = %3
  %7 = load double, ptr %0, align 8, !tbaa !9
  %8 = tail call double @llvm.floor.f64(double %7)
  %9 = fcmp une double %8, %7
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  switch i32 %2, label %13 [
    i32 0, label %24
    i32 2, label %11
  ]

11:                                               ; preds = %10
  %12 = fadd double %8, 1.000000e+00
  br label %13

13:                                               ; preds = %11, %10, %6
  %14 = phi double [ %12, %11 ], [ %8, %6 ], [ %8, %10 ]
  %15 = fcmp oge double %14, 0xC3E0000000000000
  %16 = fcmp olt double %14, 0x43E0000000000000
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = fptosi double %14 to i64
  store i64 %19, ptr %1, align 8, !tbaa !16
  br label %20

20:                                               ; preds = %18, %13
  %21 = zext i1 %17 to i32
  br label %24

22:                                               ; preds = %3
  %23 = load i64, ptr %0, align 8, !tbaa !9
  store i64 %23, ptr %1, align 8, !tbaa !16
  br label %24

24:                                               ; preds = %20, %10, %3, %22
  %25 = phi i32 [ 1, %22 ], [ 0, %3 ], [ %21, %20 ], [ %2, %10 ]
  ret i32 %25
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @luaV_tointeger(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.TValue, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %5 = getelementptr inbounds %struct.TValue, ptr %0, i64 0, i32 1
  %6 = load i8, ptr %5, align 8, !tbaa !5
  %7 = and i8 %6, 15
  %8 = icmp eq i8 %7, 4
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !9
  %11 = getelementptr inbounds %struct.TString, ptr %10, i64 0, i32 7
  %12 = call i64 @luaO_str2num(ptr noundef nonnull %11, ptr noundef nonnull %4) #13
  %13 = getelementptr inbounds %struct.TString, ptr %10, i64 0, i32 4
  %14 = load i8, ptr %13, align 1, !tbaa !10
  %15 = icmp eq i8 %14, -1
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = zext i8 %14 to i64
  br label %21

18:                                               ; preds = %9
  %19 = getelementptr inbounds %struct.TString, ptr %10, i64 0, i32 6
  %20 = load i64, ptr %19, align 8, !tbaa !9
  br label %21

21:                                               ; preds = %16, %18
  %22 = phi i64 [ %17, %16 ], [ %20, %18 ]
  %23 = add i64 %22, 1
  %24 = icmp ne i64 %12, %23
  %25 = freeze i1 %24
  %26 = getelementptr inbounds %struct.TValue, ptr %4, i64 0, i32 1
  %27 = select i1 %25, ptr %0, ptr %4
  %28 = select i1 %25, ptr %5, ptr %26
  %29 = load i8, ptr %28, align 8, !tbaa !5
  br label %30

30:                                               ; preds = %21, %3
  %31 = phi i8 [ %29, %21 ], [ %6, %3 ]
  %32 = phi ptr [ %27, %21 ], [ %0, %3 ]
  switch i8 %31, label %51 [
    i8 19, label %33
    i8 3, label %49
  ]

33:                                               ; preds = %30
  %34 = load double, ptr %32, align 8, !tbaa !9
  %35 = call double @llvm.floor.f64(double %34)
  %36 = fcmp une double %35, %34
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  switch i32 %2, label %40 [
    i32 0, label %51
    i32 2, label %38
  ]

38:                                               ; preds = %37
  %39 = fadd double %35, 1.000000e+00
  br label %40

40:                                               ; preds = %38, %37, %33
  %41 = phi double [ %39, %38 ], [ %35, %33 ], [ %35, %37 ]
  %42 = fcmp oge double %41, 0xC3E0000000000000
  %43 = fcmp olt double %41, 0x43E0000000000000
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = fptosi double %41 to i64
  store i64 %46, ptr %1, align 8, !tbaa !16
  br label %47

47:                                               ; preds = %45, %40
  %48 = zext i1 %44 to i32
  br label %51

49:                                               ; preds = %30
  %50 = load i64, ptr %32, align 8, !tbaa !9
  store i64 %50, ptr %1, align 8, !tbaa !16
  br label %51

51:                                               ; preds = %30, %37, %47, %49
  %52 = phi i32 [ 1, %49 ], [ 0, %30 ], [ %48, %47 ], [ %2, %37 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret i32 %52
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_finishget(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef readnone %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 7
  br label %7

7:                                                ; preds = %5, %60
  %8 = phi ptr [ %1, %5 ], [ %42, %60 ]
  %9 = phi ptr [ %4, %5 ], [ %61, %60 ]
  %10 = phi i32 [ 0, %5 ], [ %62, %60 ]
  %11 = icmp eq ptr %9, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %7
  %13 = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef %8, i32 noundef 0) #13
  %14 = getelementptr inbounds %struct.TValue, ptr %13, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !5
  %16 = and i8 %15, 15
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %40, !prof !18

18:                                               ; preds = %12
  tail call void @luaG_typeerror(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @.str) #14
  unreachable

19:                                               ; preds = %7
  %20 = load ptr, ptr %8, align 8, !tbaa !9
  %21 = getelementptr inbounds %struct.Table, ptr %20, i64 0, i32 9
  %22 = load ptr, ptr %21, align 8, !tbaa !9
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.Table, ptr %22, i64 0, i32 3
  %26 = load i8, ptr %25, align 2, !tbaa !19
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !tbaa !21
  %31 = getelementptr inbounds %struct.global_State, ptr %30, i64 0, i32 42
  %32 = load ptr, ptr %31, align 8, !tbaa !26
  %33 = tail call ptr @luaT_gettm(ptr noundef nonnull %22, i32 noundef 0, ptr noundef %32) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.TValue, ptr %33, i64 0, i32 1
  %37 = load i8, ptr %36, align 8, !tbaa !5
  br label %40

38:                                               ; preds = %24, %19, %29
  %39 = getelementptr inbounds %struct.TValue, ptr %3, i64 0, i32 1
  store i8 0, ptr %39, align 8, !tbaa !9
  br label %65

40:                                               ; preds = %35, %12
  %41 = phi i8 [ %15, %12 ], [ %37, %35 ]
  %42 = phi ptr [ %13, %12 ], [ %33, %35 ]
  %43 = and i8 %41, 15
  %44 = icmp eq i8 %43, 6
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  tail call void @luaT_callTMres(ptr noundef %0, ptr noundef nonnull %42, ptr noundef %8, ptr noundef %2, ptr noundef %3) #13
  br label %65

46:                                               ; preds = %40
  %47 = icmp eq i8 %41, 69
  br i1 %47, label %48, label %60

48:                                               ; preds = %46
  %49 = load ptr, ptr %42, align 8, !tbaa !9
  %50 = tail call ptr @luaH_get(ptr noundef %49, ptr noundef %2) #13
  %51 = getelementptr inbounds %struct.TValue, ptr %50, i64 0, i32 1
  %52 = load i8, ptr %51, align 8, !tbaa !5
  %53 = and i8 %52, 15
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %48
  %56 = getelementptr inbounds %struct.TValue, ptr %50, i64 0, i32 1
  %57 = load i64, ptr %50, align 8
  store i64 %57, ptr %3, align 8
  %58 = load i8, ptr %56, align 8, !tbaa !5
  %59 = getelementptr inbounds %struct.TValue, ptr %3, i64 0, i32 1
  store i8 %58, ptr %59, align 8, !tbaa !5
  br label %65

60:                                               ; preds = %46, %48
  %61 = phi ptr [ %50, %48 ], [ null, %46 ]
  %62 = add nuw nsw i32 %10, 1
  %63 = icmp eq i32 %62, 2000
  br i1 %63, label %64, label %7, !llvm.loop !27

64:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.1) #14
  unreachable

65:                                               ; preds = %55, %45, %38
  ret void
}

declare hidden ptr @luaT_gettmbyobj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: noreturn
declare hidden void @luaG_typeerror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare hidden ptr @luaT_gettm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @luaT_callTMres(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @luaH_get(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noreturn
declare hidden void @luaG_runerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @luaV_finishset(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 7
  br label %7

7:                                                ; preds = %5, %93
  %8 = phi ptr [ %1, %5 ], [ %60, %93 ]
  %9 = phi ptr [ %4, %5 ], [ %94, %93 ]
  %10 = phi i32 [ 0, %5 ], [ %95, %93 ]
  %11 = icmp eq ptr %9, null
  br i1 %11, label %51, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %8, align 8, !tbaa !9
  %14 = getelementptr inbounds %struct.Table, ptr %13, i64 0, i32 9
  %15 = load ptr, ptr %14, align 8, !tbaa !29
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.Table, ptr %15, i64 0, i32 3
  %19 = load i8, ptr %18, align 2, !tbaa !19
  %20 = and i8 %19, 2
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.global_State, ptr %23, i64 0, i32 42, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !26
  %26 = tail call ptr @luaT_gettm(ptr noundef nonnull %15, i32 noundef 1, ptr noundef %25) #13
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.TValue, ptr %26, i64 0, i32 1
  %30 = load i8, ptr %29, align 8, !tbaa !5
  br label %58

31:                                               ; preds = %17, %12, %22
  tail call void @luaH_finishset(ptr noundef %0, ptr noundef nonnull %13, ptr noundef %2, ptr noundef nonnull %9, ptr noundef %3) #13
  %32 = getelementptr inbounds %struct.Table, ptr %13, i64 0, i32 3
  %33 = load i8, ptr %32, align 2, !tbaa !19
  %34 = and i8 %33, -64
  store i8 %34, ptr %32, align 2, !tbaa !19
  %35 = getelementptr inbounds %struct.TValue, ptr %3, i64 0, i32 1
  %36 = load i8, ptr %35, align 8, !tbaa !5
  %37 = and i8 %36, 64
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %98, label %39

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.GCObject, ptr %13, i64 0, i32 2
  %41 = load i8, ptr %40, align 1, !tbaa !9
  %42 = and i8 %41, 32
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %98, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %3, align 8, !tbaa !9
  %46 = getelementptr inbounds %struct.GCObject, ptr %45, i64 0, i32 2
  %47 = load i8, ptr %46, align 1, !tbaa !30
  %48 = and i8 %47, 24
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %98, label %50

50:                                               ; preds = %44
  tail call void @luaC_barrierback_(ptr noundef %0, ptr noundef nonnull %13) #13
  br label %98

51:                                               ; preds = %7
  %52 = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef %8, i32 noundef 1) #13
  %53 = getelementptr inbounds %struct.TValue, ptr %52, i64 0, i32 1
  %54 = load i8, ptr %53, align 8, !tbaa !5
  %55 = and i8 %54, 15
  %56 = icmp eq i8 %55, 0
  br i1 %56, label %57, label %58, !prof !18

57:                                               ; preds = %51
  tail call void @luaG_typeerror(ptr noundef %0, ptr noundef %8, ptr noundef nonnull @.str) #14
  unreachable

58:                                               ; preds = %28, %51
  %59 = phi i8 [ %54, %51 ], [ %30, %28 ]
  %60 = phi ptr [ %52, %51 ], [ %26, %28 ]
  %61 = and i8 %59, 15
  %62 = icmp eq i8 %61, 6
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  tail call void @luaT_callTM(ptr noundef %0, ptr noundef nonnull %60, ptr noundef %8, ptr noundef %2, ptr noundef %3) #13
  br label %98

64:                                               ; preds = %58
  %65 = icmp eq i8 %59, 69
  br i1 %65, label %66, label %93

66:                                               ; preds = %64
  %67 = load ptr, ptr %60, align 8, !tbaa !9
  %68 = tail call ptr @luaH_get(ptr noundef %67, ptr noundef %2) #13
  %69 = getelementptr inbounds %struct.TValue, ptr %68, i64 0, i32 1
  %70 = load i8, ptr %69, align 8, !tbaa !5
  %71 = and i8 %70, 15
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct.TValue, ptr %68, i64 0, i32 1
  %75 = load i64, ptr %3, align 8
  store i64 %75, ptr %68, align 8
  %76 = getelementptr inbounds %struct.TValue, ptr %3, i64 0, i32 1
  %77 = load i8, ptr %76, align 8, !tbaa !5
  store i8 %77, ptr %74, align 8, !tbaa !5
  %78 = and i8 %77, 64
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %98, label %80

80:                                               ; preds = %73
  %81 = load ptr, ptr %60, align 8, !tbaa !9
  %82 = getelementptr inbounds %struct.GCObject, ptr %81, i64 0, i32 2
  %83 = load i8, ptr %82, align 1, !tbaa !30
  %84 = and i8 %83, 32
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %3, align 8, !tbaa !9
  %88 = getelementptr inbounds %struct.GCObject, ptr %87, i64 0, i32 2
  %89 = load i8, ptr %88, align 1, !tbaa !30
  %90 = and i8 %89, 24
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  tail call void @luaC_barrierback_(ptr noundef %0, ptr noundef nonnull %81) #13
  br label %98

93:                                               ; preds = %64, %66
  %94 = phi ptr [ %68, %66 ], [ null, %64 ]
  %95 = add nuw nsw i32 %10, 1
  %96 = icmp eq i32 %95, 2000
  br i1 %96, label %97, label %7, !llvm.loop !32

97:                                               ; preds = %93
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.2) #14
  unreachable

98:                                               ; preds = %63, %73, %92, %86, %80, %39, %44, %50, %31
  ret void
}

declare hidden void @luaH_finishset(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @luaC_barrierback_(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @luaT_callTM(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_lessthan(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 3
  br i1 %7, label %8, label %65

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, ptr %2, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %65

13:                                               ; preds = %8
  %14 = icmp eq i8 %5, 3
  br i1 %14, label %15, label %40

15:                                               ; preds = %13
  %16 = load i64, ptr %1, align 8, !tbaa !9
  %17 = icmp eq i8 %10, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, ptr %2, align 8, !tbaa !9
  %20 = icmp slt i64 %16, %19
  br label %62

21:                                               ; preds = %15
  %22 = load double, ptr %2, align 8, !tbaa !9
  %23 = add i64 %16, 9007199254740992
  %24 = icmp ult i64 %23, 18014398509481985
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = sitofp i64 %16 to double
  %27 = fcmp ogt double %22, %26
  br label %62

28:                                               ; preds = %21
  %29 = tail call double @llvm.floor.f64(double %22)
  %30 = fcmp une double %29, %22
  %31 = fadd double %29, 1.000000e+00
  %32 = select i1 %30, double %31, double %29
  %33 = fcmp oge double %32, 0xC3E0000000000000
  %34 = fcmp olt double %32, 0x43E0000000000000
  %35 = and i1 %33, %34
  %36 = fptosi double %32 to i64
  %37 = icmp slt i64 %16, %36
  %38 = fcmp ogt double %22, 0.000000e+00
  %39 = select i1 %35, i1 %37, i1 %38
  br label %62

40:                                               ; preds = %13
  %41 = load double, ptr %1, align 8, !tbaa !9
  %42 = icmp eq i8 %10, 19
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load double, ptr %2, align 8, !tbaa !9
  %45 = fcmp olt double %41, %44
  br label %62

46:                                               ; preds = %40
  %47 = load i64, ptr %2, align 8, !tbaa !9
  %48 = add i64 %47, 9007199254740992
  %49 = icmp ult i64 %48, 18014398509481985
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = sitofp i64 %47 to double
  %52 = fcmp olt double %41, %51
  br label %62

53:                                               ; preds = %46
  %54 = tail call double @llvm.floor.f64(double %41)
  %55 = fcmp oge double %54, 0xC3E0000000000000
  %56 = fcmp olt double %54, 0x43E0000000000000
  %57 = and i1 %55, %56
  %58 = fptosi double %54 to i64
  %59 = icmp sgt i64 %47, %58
  %60 = fcmp olt double %41, 0.000000e+00
  %61 = select i1 %57, i1 %59, i1 %60
  br label %62

62:                                               ; preds = %18, %25, %28, %43, %50, %53
  %63 = phi i1 [ %20, %18 ], [ %45, %43 ], [ %27, %25 ], [ %39, %28 ], [ %52, %50 ], [ %61, %53 ]
  %64 = zext i1 %63 to i32
  br label %67

65:                                               ; preds = %8, %3
  %66 = tail call fastcc i32 @lessthanothers(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lessthanothers(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %62

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, ptr %2, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %13, label %62

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 8, !tbaa !9
  %15 = load ptr, ptr %2, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 7
  %17 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 4
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = icmp eq i8 %18, -1
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = zext i8 %18 to i64
  br label %25

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 6
  %24 = load i64, ptr %23, align 8, !tbaa !9
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i64 [ %21, %20 ], [ %24, %22 ]
  %27 = getelementptr inbounds %struct.TString, ptr %15, i64 0, i32 7
  %28 = getelementptr inbounds %struct.TString, ptr %15, i64 0, i32 4
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %30 = icmp eq i8 %29, -1
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = zext i8 %29 to i64
  br label %36

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TString, ptr %15, i64 0, i32 6
  %35 = load i64, ptr %34, align 8, !tbaa !9
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i64 [ %32, %31 ], [ %35, %33 ]
  %38 = tail call i32 @strcoll(ptr noundef nonnull %16, ptr noundef nonnull %27) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36, %50
  %41 = phi i64 [ %56, %50 ], [ %37, %36 ]
  %42 = phi ptr [ %55, %50 ], [ %27, %36 ]
  %43 = phi i64 [ %54, %50 ], [ %26, %36 ]
  %44 = phi ptr [ %53, %50 ], [ %16, %36 ]
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #15
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #15
  %47 = icmp eq i64 %46, %41
  br i1 %47, label %59, label %48

48:                                               ; preds = %40
  %49 = icmp eq i64 %45, %43
  br i1 %49, label %59, label %50

50:                                               ; preds = %48
  %51 = add i64 %45, 1
  %52 = add i64 %46, 1
  %53 = getelementptr inbounds i8, ptr %44, i64 %51
  %54 = sub i64 %43, %51
  %55 = getelementptr inbounds i8, ptr %42, i64 %52
  %56 = sub i64 %41, %52
  %57 = tail call i32 @strcoll(ptr noundef %53, ptr noundef %55) #15
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %40, label %59

59:                                               ; preds = %48, %50, %40, %36
  %60 = phi i32 [ %38, %36 ], [ %57, %50 ], [ -1, %48 ], [ 0, %40 ]
  %61 = lshr i32 %60, 31
  br label %64

62:                                               ; preds = %8, %3
  %63 = tail call i32 @luaT_callorderTM(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 20) #13
  br label %64

64:                                               ; preds = %62, %59
  %65 = phi i32 [ %61, %59 ], [ %63, %62 ]
  ret i32 %65
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_lessequal(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 3
  br i1 %7, label %8, label %65

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, ptr %2, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 3
  br i1 %12, label %13, label %65

13:                                               ; preds = %8
  %14 = icmp eq i8 %5, 3
  br i1 %14, label %15, label %37

15:                                               ; preds = %13
  %16 = load i64, ptr %1, align 8, !tbaa !9
  %17 = icmp eq i8 %10, 3
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i64, ptr %2, align 8, !tbaa !9
  %20 = icmp sle i64 %16, %19
  br label %62

21:                                               ; preds = %15
  %22 = load double, ptr %2, align 8, !tbaa !9
  %23 = add i64 %16, 9007199254740992
  %24 = icmp ult i64 %23, 18014398509481985
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = sitofp i64 %16 to double
  %27 = fcmp oge double %22, %26
  br label %62

28:                                               ; preds = %21
  %29 = tail call double @llvm.floor.f64(double %22)
  %30 = fcmp ult double %29, 0xC3E0000000000000
  %31 = fcmp uge double %29, 0x43E0000000000000
  %32 = or i1 %30, %31
  %33 = fptosi double %29 to i64
  %34 = icmp sle i64 %16, %33
  %35 = fcmp ogt double %22, 0.000000e+00
  %36 = select i1 %32, i1 %35, i1 %34
  br label %62

37:                                               ; preds = %13
  %38 = load double, ptr %1, align 8, !tbaa !9
  %39 = icmp eq i8 %10, 19
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load double, ptr %2, align 8, !tbaa !9
  %42 = fcmp ole double %38, %41
  br label %62

43:                                               ; preds = %37
  %44 = load i64, ptr %2, align 8, !tbaa !9
  %45 = add i64 %44, 9007199254740992
  %46 = icmp ult i64 %45, 18014398509481985
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = sitofp i64 %44 to double
  %49 = fcmp ole double %38, %48
  br label %62

50:                                               ; preds = %43
  %51 = tail call double @llvm.floor.f64(double %38)
  %52 = fcmp une double %51, %38
  %53 = fadd double %51, 1.000000e+00
  %54 = select i1 %52, double %53, double %51
  %55 = fcmp ult double %54, 0xC3E0000000000000
  %56 = fcmp uge double %54, 0x43E0000000000000
  %57 = or i1 %55, %56
  %58 = fptosi double %54 to i64
  %59 = icmp sge i64 %44, %58
  %60 = fcmp olt double %38, 0.000000e+00
  %61 = select i1 %57, i1 %60, i1 %59
  br label %62

62:                                               ; preds = %18, %25, %28, %40, %47, %50
  %63 = phi i1 [ %20, %18 ], [ %42, %40 ], [ %27, %25 ], [ %36, %28 ], [ %49, %47 ], [ %61, %50 ]
  %64 = zext i1 %63 to i32
  br label %67

65:                                               ; preds = %8, %3
  %66 = tail call fastcc i32 @lessequalothers(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2)
  br label %67

67:                                               ; preds = %65, %62
  %68 = phi i32 [ %64, %62 ], [ %66, %65 ]
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lessequalothers(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = and i8 %5, 15
  %7 = icmp eq i8 %6, 4
  br i1 %7, label %8, label %66

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.TValue, ptr %2, i64 0, i32 1
  %10 = load i8, ptr %9, align 8, !tbaa !5
  %11 = and i8 %10, 15
  %12 = icmp eq i8 %11, 4
  br i1 %12, label %13, label %66

13:                                               ; preds = %8
  %14 = load ptr, ptr %1, align 8, !tbaa !9
  %15 = load ptr, ptr %2, align 8, !tbaa !9
  %16 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 7
  %17 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 4
  %18 = load i8, ptr %17, align 1, !tbaa !10
  %19 = icmp eq i8 %18, -1
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = zext i8 %18 to i64
  br label %25

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.TString, ptr %14, i64 0, i32 6
  %24 = load i64, ptr %23, align 8, !tbaa !9
  br label %25

25:                                               ; preds = %22, %20
  %26 = phi i64 [ %21, %20 ], [ %24, %22 ]
  %27 = getelementptr inbounds %struct.TString, ptr %15, i64 0, i32 7
  %28 = getelementptr inbounds %struct.TString, ptr %15, i64 0, i32 4
  %29 = load i8, ptr %28, align 1, !tbaa !10
  %30 = icmp eq i8 %29, -1
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = zext i8 %29 to i64
  br label %36

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.TString, ptr %15, i64 0, i32 6
  %35 = load i64, ptr %34, align 8, !tbaa !9
  br label %36

36:                                               ; preds = %33, %31
  %37 = phi i64 [ %32, %31 ], [ %35, %33 ]
  %38 = tail call i32 @strcoll(ptr noundef nonnull %16, ptr noundef nonnull %27) #15
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %36, %53
  %41 = phi i64 [ %59, %53 ], [ %37, %36 ]
  %42 = phi ptr [ %58, %53 ], [ %27, %36 ]
  %43 = phi i64 [ %57, %53 ], [ %26, %36 ]
  %44 = phi ptr [ %56, %53 ], [ %16, %36 ]
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #15
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %42) #15
  %47 = icmp eq i64 %46, %41
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = icmp ne i64 %45, %43
  %50 = zext i1 %49 to i32
  br label %62

51:                                               ; preds = %40
  %52 = icmp eq i64 %45, %43
  br i1 %52, label %62, label %53

53:                                               ; preds = %51
  %54 = add i64 %45, 1
  %55 = add i64 %46, 1
  %56 = getelementptr inbounds i8, ptr %44, i64 %54
  %57 = sub i64 %43, %54
  %58 = getelementptr inbounds i8, ptr %42, i64 %55
  %59 = sub i64 %41, %55
  %60 = tail call i32 @strcoll(ptr noundef %56, ptr noundef %58) #15
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %40, label %62

62:                                               ; preds = %51, %53, %36, %48
  %63 = phi i32 [ %50, %48 ], [ %38, %36 ], [ %60, %53 ], [ -1, %51 ]
  %64 = icmp slt i32 %63, 1
  %65 = zext i1 %64 to i32
  br label %68

66:                                               ; preds = %8, %3
  %67 = tail call i32 @luaT_callorderTM(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 21) #13
  br label %68

68:                                               ; preds = %66, %62
  %69 = phi i32 [ %65, %62 ], [ %67, %66 ]
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define hidden i32 @luaV_equalobj(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, ptr %1, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 63
  %8 = getelementptr inbounds %struct.TValue, ptr %2, i64 0, i32 1
  %9 = load i8, ptr %8, align 8, !tbaa !5
  %10 = zext i8 %9 to i32
  %11 = and i32 %10, 63
  %12 = icmp eq i32 %7, %11
  br i1 %12, label %50, label %13

13:                                               ; preds = %3
  %14 = and i32 %6, 15
  %15 = and i32 %10, 15
  %16 = icmp eq i32 %14, 3
  %17 = icmp eq i32 %15, 3
  %18 = and i1 %16, %17
  br i1 %18, label %19, label %173

19:                                               ; preds = %13
  switch i8 %5, label %173 [
    i8 19, label %20
    i8 3, label %28
  ]

20:                                               ; preds = %19
  %21 = load double, ptr %1, align 8, !tbaa !9
  %22 = tail call double @llvm.floor.f64(double %21)
  %23 = fcmp une double %22, %21
  br i1 %23, label %173, label %24

24:                                               ; preds = %20
  %25 = fcmp oge double %22, 0xC3E0000000000000
  %26 = fcmp olt double %22, 0x43E0000000000000
  %27 = and i1 %25, %26
  br i1 %27, label %30, label %173

28:                                               ; preds = %19
  %29 = load i64, ptr %1, align 8, !tbaa !9
  br label %32

30:                                               ; preds = %24
  %31 = fptosi double %22 to i64
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  switch i8 %9, label %173 [
    i8 19, label %34
    i8 3, label %42
  ]

34:                                               ; preds = %32
  %35 = load double, ptr %2, align 8, !tbaa !9
  %36 = tail call double @llvm.floor.f64(double %35)
  %37 = fcmp une double %36, %35
  br i1 %37, label %173, label %38

38:                                               ; preds = %34
  %39 = fcmp oge double %36, 0xC3E0000000000000
  %40 = fcmp olt double %36, 0x43E0000000000000
  %41 = and i1 %39, %40
  br i1 %41, label %44, label %173

42:                                               ; preds = %32
  %43 = load i64, ptr %2, align 8, !tbaa !9
  br label %46

44:                                               ; preds = %38
  %45 = fptosi double %36 to i64
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  %48 = icmp eq i64 %33, %47
  %49 = zext i1 %48 to i32
  br label %173

50:                                               ; preds = %3
  switch i32 %7, label %148 [
    i32 0, label %173
    i32 1, label %173
    i32 17, label %173
    i32 3, label %51
    i32 19, label %56
    i32 2, label %61
    i32 22, label %66
    i32 4, label %71
    i32 20, label %76
    i32 7, label %80
    i32 5, label %114
  ]

51:                                               ; preds = %50
  %52 = load i64, ptr %1, align 8, !tbaa !9
  %53 = load i64, ptr %2, align 8, !tbaa !9
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  br label %173

56:                                               ; preds = %50
  %57 = load double, ptr %1, align 8, !tbaa !9
  %58 = load double, ptr %2, align 8, !tbaa !9
  %59 = fcmp oeq double %57, %58
  %60 = zext i1 %59 to i32
  br label %173

61:                                               ; preds = %50
  %62 = load ptr, ptr %1, align 8, !tbaa !9
  %63 = load ptr, ptr %2, align 8, !tbaa !9
  %64 = icmp eq ptr %62, %63
  %65 = zext i1 %64 to i32
  br label %173

66:                                               ; preds = %50
  %67 = load ptr, ptr %1, align 8, !tbaa !9
  %68 = load ptr, ptr %2, align 8, !tbaa !9
  %69 = icmp eq ptr %67, %68
  %70 = zext i1 %69 to i32
  br label %173

71:                                               ; preds = %50
  %72 = load ptr, ptr %1, align 8, !tbaa !9
  %73 = load ptr, ptr %2, align 8, !tbaa !9
  %74 = icmp eq ptr %72, %73
  %75 = zext i1 %74 to i32
  br label %173

76:                                               ; preds = %50
  %77 = load ptr, ptr %1, align 8, !tbaa !9
  %78 = load ptr, ptr %2, align 8, !tbaa !9
  %79 = tail call i32 @luaS_eqlngstr(ptr noundef %77, ptr noundef %78) #13
  br label %173

80:                                               ; preds = %50
  %81 = load ptr, ptr %1, align 8, !tbaa !9
  %82 = load ptr, ptr %2, align 8, !tbaa !9
  %83 = icmp eq ptr %81, %82
  br i1 %83, label %173, label %84

84:                                               ; preds = %80
  %85 = icmp eq ptr %0, null
  br i1 %85, label %173, label %86

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.Udata, ptr %81, i64 0, i32 5
  %88 = load ptr, ptr %87, align 8, !tbaa !9
  %89 = icmp eq ptr %88, null
  br i1 %89, label %104, label %90

90:                                               ; preds = %86
  %91 = getelementptr inbounds %struct.Table, ptr %88, i64 0, i32 3
  %92 = load i8, ptr %91, align 2, !tbaa !19
  %93 = and i8 %92, 32
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 7
  %97 = load ptr, ptr %96, align 8, !tbaa !21
  %98 = getelementptr inbounds %struct.global_State, ptr %97, i64 0, i32 42, i64 5
  %99 = load ptr, ptr %98, align 8, !tbaa !26
  %100 = tail call ptr @luaT_gettm(ptr noundef nonnull %88, i32 noundef 5, ptr noundef %99) #13
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %161

102:                                              ; preds = %95
  %103 = load ptr, ptr %2, align 8, !tbaa !9
  br label %104

104:                                              ; preds = %102, %90, %86
  %105 = phi ptr [ %103, %102 ], [ %82, %90 ], [ %82, %86 ]
  %106 = getelementptr inbounds %struct.Udata, ptr %105, i64 0, i32 5
  %107 = load ptr, ptr %106, align 8, !tbaa !9
  %108 = icmp eq ptr %107, null
  br i1 %108, label %173, label %109

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.Table, ptr %107, i64 0, i32 3
  %111 = load i8, ptr %110, align 2, !tbaa !19
  %112 = and i8 %111, 32
  %113 = icmp eq i8 %112, 0
  br i1 %113, label %153, label %173

114:                                              ; preds = %50
  %115 = load ptr, ptr %1, align 8, !tbaa !9
  %116 = load ptr, ptr %2, align 8, !tbaa !9
  %117 = icmp eq ptr %115, %116
  br i1 %117, label %173, label %118

118:                                              ; preds = %114
  %119 = icmp eq ptr %0, null
  br i1 %119, label %173, label %120

120:                                              ; preds = %118
  %121 = getelementptr inbounds %struct.Table, ptr %115, i64 0, i32 9
  %122 = load ptr, ptr %121, align 8, !tbaa !9
  %123 = icmp eq ptr %122, null
  br i1 %123, label %138, label %124

124:                                              ; preds = %120
  %125 = getelementptr inbounds %struct.Table, ptr %122, i64 0, i32 3
  %126 = load i8, ptr %125, align 2, !tbaa !19
  %127 = and i8 %126, 32
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %124
  %130 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 7
  %131 = load ptr, ptr %130, align 8, !tbaa !21
  %132 = getelementptr inbounds %struct.global_State, ptr %131, i64 0, i32 42, i64 5
  %133 = load ptr, ptr %132, align 8, !tbaa !26
  %134 = tail call ptr @luaT_gettm(ptr noundef nonnull %122, i32 noundef 5, ptr noundef %133) #13
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %161

136:                                              ; preds = %129
  %137 = load ptr, ptr %2, align 8, !tbaa !9
  br label %138

138:                                              ; preds = %136, %124, %120
  %139 = phi ptr [ %137, %136 ], [ %116, %124 ], [ %116, %120 ]
  %140 = getelementptr inbounds %struct.Table, ptr %139, i64 0, i32 9
  %141 = load ptr, ptr %140, align 8, !tbaa !9
  %142 = icmp eq ptr %141, null
  br i1 %142, label %173, label %143

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.Table, ptr %141, i64 0, i32 3
  %145 = load i8, ptr %144, align 2, !tbaa !19
  %146 = and i8 %145, 32
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %153, label %173

148:                                              ; preds = %50
  %149 = load ptr, ptr %1, align 8, !tbaa !9
  %150 = load ptr, ptr %2, align 8, !tbaa !9
  %151 = icmp eq ptr %149, %150
  %152 = zext i1 %151 to i32
  br label %173

153:                                              ; preds = %143, %109
  %154 = phi ptr [ %107, %109 ], [ %141, %143 ]
  %155 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 7
  %156 = load ptr, ptr %155, align 8, !tbaa !21
  %157 = getelementptr inbounds %struct.global_State, ptr %156, i64 0, i32 42, i64 5
  %158 = load ptr, ptr %157, align 8, !tbaa !26
  %159 = tail call ptr @luaT_gettm(ptr noundef nonnull %154, i32 noundef 5, ptr noundef %158) #13
  %160 = icmp eq ptr %159, null
  br i1 %160, label %173, label %161

161:                                              ; preds = %95, %129, %153
  %162 = phi ptr [ %159, %153 ], [ %100, %95 ], [ %134, %129 ]
  %163 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 6
  %164 = load ptr, ptr %163, align 8, !tbaa !9
  tail call void @luaT_callTMres(ptr noundef nonnull %0, ptr noundef nonnull %162, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %164) #13
  %165 = load ptr, ptr %163, align 8, !tbaa !9
  %166 = getelementptr inbounds %struct.TValue, ptr %165, i64 0, i32 1
  %167 = load i8, ptr %166, align 8, !tbaa !9
  %168 = icmp ne i8 %167, 1
  %169 = and i8 %167, 15
  %170 = icmp ne i8 %169, 0
  %171 = and i1 %168, %170
  %172 = zext i1 %171 to i32
  br label %173

173:                                              ; preds = %143, %138, %109, %104, %34, %32, %38, %20, %19, %24, %46, %153, %118, %114, %84, %80, %50, %50, %50, %13, %161, %148, %76, %71, %66, %61, %56, %51
  %174 = phi i32 [ %152, %148 ], [ %172, %161 ], [ %79, %76 ], [ %75, %71 ], [ %70, %66 ], [ %65, %61 ], [ %60, %56 ], [ %55, %51 ], [ 0, %13 ], [ 1, %50 ], [ 1, %50 ], [ 1, %50 ], [ 1, %80 ], [ 0, %84 ], [ 1, %114 ], [ 0, %118 ], [ 0, %153 ], [ %49, %46 ], [ 0, %24 ], [ 0, %19 ], [ 0, %20 ], [ 0, %38 ], [ 0, %32 ], [ 0, %34 ], [ 0, %104 ], [ 0, %109 ], [ 0, %138 ], [ 0, %143 ]
  ret i32 %174
}

declare hidden i32 @luaS_eqlngstr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @luaV_concat(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca [40 x i8], align 16
  %4 = icmp eq i32 %1, 1
  br i1 %4, label %171, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 6
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  br label %8

8:                                                ; preds = %5, %162
  %9 = phi ptr [ %169, %162 ], [ %7, %5 ]
  %10 = phi i32 [ %165, %162 ], [ %1, %5 ]
  %11 = getelementptr inbounds %union.StackValue, ptr %9, i64 -2
  %12 = getelementptr %union.StackValue, ptr %9, i64 -2, i32 0, i32 1
  %13 = load i8, ptr %12, align 8, !tbaa !9
  %14 = and i8 %13, 15
  %15 = add nsw i8 %14, -3
  %16 = icmp ult i8 %15, 2
  br i1 %16, label %17, label %24

17:                                               ; preds = %8
  %18 = getelementptr inbounds %union.StackValue, ptr %9, i64 -1
  %19 = getelementptr %union.StackValue, ptr %9, i64 -1, i32 0, i32 1
  %20 = load i8, ptr %19, align 8, !tbaa !9
  %21 = and i8 %20, 15
  switch i8 %21, label %24 [
    i8 4, label %25
    i8 3, label %22
  ]

22:                                               ; preds = %17
  call void @luaO_tostring(ptr noundef nonnull %0, ptr noundef nonnull %18) #13
  %23 = load i8, ptr %19, align 8, !tbaa !9
  br label %25

24:                                               ; preds = %8, %17
  call void @luaT_tryconcatTM(ptr noundef nonnull %0) #13
  br label %162

25:                                               ; preds = %17, %22
  %26 = phi i8 [ %20, %17 ], [ %23, %22 ]
  %27 = icmp eq i8 %26, 68
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = load i8, ptr %12, align 8, !tbaa !9
  br label %40

30:                                               ; preds = %25
  %31 = load ptr, ptr %18, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.TString, ptr %31, i64 0, i32 4
  %33 = load i8, ptr %32, align 1, !tbaa !9
  %34 = icmp eq i8 %33, 0
  %35 = load i8, ptr %12, align 8, !tbaa !9
  br i1 %34, label %36, label %40

36:                                               ; preds = %30
  %37 = and i8 %35, 15
  %38 = icmp eq i8 %37, 3
  br i1 %38, label %39, label %162

39:                                               ; preds = %36
  call void @luaO_tostring(ptr noundef nonnull %0, ptr noundef nonnull %11) #13
  br label %162

40:                                               ; preds = %28, %30
  %41 = phi i8 [ %29, %28 ], [ %35, %30 ]
  %42 = icmp eq i8 %41, 68
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load ptr, ptr %11, align 8, !tbaa !9
  %45 = getelementptr inbounds %struct.TString, ptr %44, i64 0, i32 4
  %46 = load i8, ptr %45, align 1, !tbaa !9
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i64, ptr %18, align 8
  store i64 %49, ptr %11, align 8
  store i8 %26, ptr %12, align 8, !tbaa !5
  br label %162

50:                                               ; preds = %43, %40
  %51 = load ptr, ptr %18, align 8, !tbaa !9
  %52 = getelementptr inbounds %struct.TString, ptr %51, i64 0, i32 4
  %53 = load i8, ptr %52, align 1, !tbaa !9
  %54 = icmp eq i8 %53, -1
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = zext i8 %53 to i64
  br label %60

57:                                               ; preds = %50
  %58 = getelementptr inbounds %struct.TString, ptr %51, i64 0, i32 6
  %59 = load i64, ptr %58, align 8, !tbaa !9
  br label %60

60:                                               ; preds = %57, %55
  %61 = phi i64 [ %56, %55 ], [ %59, %57 ]
  %62 = icmp sgt i32 %10, 1
  br i1 %62, label %63, label %99

63:                                               ; preds = %60
  %64 = zext nneg i32 %10 to i64
  br label %65

65:                                               ; preds = %63, %93
  %66 = phi i64 [ 1, %63 ], [ %95, %93 ]
  %67 = phi i64 [ %61, %63 ], [ %94, %93 ]
  %68 = sub nsw i64 0, %66
  %69 = getelementptr inbounds %union.StackValue, ptr %9, i64 %68
  %70 = getelementptr inbounds %union.StackValue, ptr %69, i64 -1
  %71 = getelementptr %union.StackValue, ptr %69, i64 -1, i32 0, i32 1
  %72 = load i8, ptr %71, align 8, !tbaa !9
  %73 = and i8 %72, 15
  switch i8 %73, label %97 [
    i8 4, label %75
    i8 3, label %74
  ]

74:                                               ; preds = %65
  call void @luaO_tostring(ptr noundef %0, ptr noundef nonnull %70) #13
  br label %75

75:                                               ; preds = %65, %74
  %76 = load ptr, ptr %70, align 8, !tbaa !9
  %77 = getelementptr inbounds %struct.TString, ptr %76, i64 0, i32 4
  %78 = load i8, ptr %77, align 1, !tbaa !9
  %79 = icmp eq i8 %78, -1
  br i1 %79, label %82, label %80

80:                                               ; preds = %75
  %81 = zext i8 %78 to i64
  br label %85

82:                                               ; preds = %75
  %83 = getelementptr inbounds %struct.TString, ptr %76, i64 0, i32 6
  %84 = load i64, ptr %83, align 8, !tbaa !9
  br label %85

85:                                               ; preds = %82, %80
  %86 = phi i64 [ %81, %80 ], [ %84, %82 ]
  %87 = sub i64 9223372036854775775, %67
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %93, label %89, !prof !33

89:                                               ; preds = %85
  %90 = zext nneg i32 %10 to i64
  %91 = sub nsw i64 0, %90
  %92 = getelementptr inbounds %union.StackValue, ptr %9, i64 %91
  store ptr %92, ptr %6, align 8, !tbaa !9
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.3) #14
  unreachable

93:                                               ; preds = %85
  %94 = add i64 %86, %67
  %95 = add nuw nsw i64 %66, 1
  %96 = icmp eq i64 %95, %64
  br i1 %96, label %99, label %65, !llvm.loop !34

97:                                               ; preds = %65
  %98 = trunc i64 %66 to i32
  br label %99

99:                                               ; preds = %93, %97, %60
  %100 = phi i64 [ %61, %60 ], [ %67, %97 ], [ %94, %93 ]
  %101 = phi i32 [ 1, %60 ], [ %98, %97 ], [ %10, %93 ]
  %102 = icmp ult i64 %100, 41
  br i1 %102, label %103, label %128

103:                                              ; preds = %99
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #13
  %104 = zext nneg i32 %101 to i64
  br label %105

105:                                              ; preds = %119, %103
  %106 = phi i64 [ %124, %119 ], [ %104, %103 ]
  %107 = phi i64 [ %123, %119 ], [ 0, %103 ]
  %108 = sub nsw i64 0, %106
  %109 = getelementptr inbounds %union.StackValue, ptr %9, i64 %108
  %110 = load ptr, ptr %109, align 8, !tbaa !9
  %111 = getelementptr inbounds %struct.TString, ptr %110, i64 0, i32 4
  %112 = load i8, ptr %111, align 1, !tbaa !10
  %113 = icmp eq i8 %112, -1
  br i1 %113, label %116, label %114

114:                                              ; preds = %105
  %115 = zext i8 %112 to i64
  br label %119

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.TString, ptr %110, i64 0, i32 6
  %118 = load i64, ptr %117, align 8, !tbaa !9
  br label %119

119:                                              ; preds = %116, %114
  %120 = phi i64 [ %115, %114 ], [ %118, %116 ]
  %121 = getelementptr inbounds i8, ptr %3, i64 %107
  %122 = getelementptr inbounds %struct.TString, ptr %110, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %121, ptr nonnull align 8 %122, i64 %120, i1 false)
  %123 = add i64 %120, %107
  %124 = add nsw i64 %106, -1
  %125 = icmp sgt i64 %106, 1
  br i1 %125, label %105, label %126, !llvm.loop !35

126:                                              ; preds = %119
  %127 = call ptr @luaS_newlstr(ptr noundef %0, ptr noundef nonnull %3, i64 noundef %100) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #13
  br label %153

128:                                              ; preds = %99
  %129 = call ptr @luaS_createlngstrobj(ptr noundef %0, i64 noundef %100) #13
  %130 = getelementptr inbounds %struct.TString, ptr %129, i64 0, i32 7
  %131 = zext nneg i32 %101 to i64
  br label %132

132:                                              ; preds = %146, %128
  %133 = phi i64 [ %151, %146 ], [ %131, %128 ]
  %134 = phi i64 [ %150, %146 ], [ 0, %128 ]
  %135 = sub nsw i64 0, %133
  %136 = getelementptr inbounds %union.StackValue, ptr %9, i64 %135
  %137 = load ptr, ptr %136, align 8, !tbaa !9
  %138 = getelementptr inbounds %struct.TString, ptr %137, i64 0, i32 4
  %139 = load i8, ptr %138, align 1, !tbaa !10
  %140 = icmp eq i8 %139, -1
  br i1 %140, label %143, label %141

141:                                              ; preds = %132
  %142 = zext i8 %139 to i64
  br label %146

143:                                              ; preds = %132
  %144 = getelementptr inbounds %struct.TString, ptr %137, i64 0, i32 6
  %145 = load i64, ptr %144, align 8, !tbaa !9
  br label %146

146:                                              ; preds = %143, %141
  %147 = phi i64 [ %142, %141 ], [ %145, %143 ]
  %148 = getelementptr inbounds i8, ptr %130, i64 %134
  %149 = getelementptr inbounds %struct.TString, ptr %137, i64 0, i32 7
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %148, ptr nonnull align 8 %149, i64 %147, i1 false)
  %150 = add i64 %147, %134
  %151 = add nsw i64 %133, -1
  %152 = icmp sgt i64 %133, 1
  br i1 %152, label %132, label %153, !llvm.loop !35

153:                                              ; preds = %146, %126
  %154 = phi i64 [ %104, %126 ], [ %131, %146 ]
  %155 = phi ptr [ %127, %126 ], [ %129, %146 ]
  %156 = sub nsw i64 0, %154
  %157 = getelementptr inbounds %union.StackValue, ptr %9, i64 %156
  store ptr %155, ptr %157, align 8, !tbaa !9
  %158 = getelementptr inbounds %struct.TString, ptr %155, i64 0, i32 1
  %159 = load i8, ptr %158, align 8, !tbaa !36
  %160 = or i8 %159, 64
  %161 = getelementptr inbounds %struct.TValue, ptr %157, i64 0, i32 1
  store i8 %160, ptr %161, align 8, !tbaa !5
  br label %162

162:                                              ; preds = %36, %39, %153, %48, %24
  %163 = phi i32 [ 2, %48 ], [ %101, %153 ], [ 2, %24 ], [ 2, %36 ], [ 2, %39 ]
  %164 = add nsw i32 %163, -1
  %165 = sub nsw i32 %10, %164
  %166 = load ptr, ptr %6, align 8, !tbaa !9
  %167 = sext i32 %164 to i64
  %168 = sub nsw i64 0, %167
  %169 = getelementptr inbounds %union.StackValue, ptr %166, i64 %168
  store ptr %169, ptr %6, align 8, !tbaa !9
  %170 = icmp sgt i32 %165, 1
  br i1 %170, label %8, label %171, !llvm.loop !37

171:                                              ; preds = %162, %2
  ret void
}

declare hidden void @luaO_tostring(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @luaT_tryconcatTM(ptr noundef) local_unnamed_addr #5

declare hidden ptr @luaS_newlstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden ptr @luaS_createlngstrobj(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden void @luaV_objlen(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TValue, ptr %2, i64 0, i32 1
  %5 = load i8, ptr %4, align 8, !tbaa !5
  %6 = and i8 %5, 63
  switch i8 %6, label %38 [
    i8 5, label %7
    i8 4, label %27
    i8 20, label %33
  ]

7:                                                ; preds = %3
  %8 = load ptr, ptr %2, align 8, !tbaa !9
  %9 = getelementptr inbounds %struct.Table, ptr %8, i64 0, i32 9
  %10 = load ptr, ptr %9, align 8, !tbaa !29
  %11 = icmp eq ptr %10, null
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Table, ptr %10, i64 0, i32 3
  %14 = load i8, ptr %13, align 2, !tbaa !19
  %15 = and i8 %14, 16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !21
  %20 = getelementptr inbounds %struct.global_State, ptr %19, i64 0, i32 42, i64 4
  %21 = load ptr, ptr %20, align 8, !tbaa !26
  %22 = tail call ptr @luaT_gettm(ptr noundef nonnull %10, i32 noundef 4, ptr noundef %21) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %12, %7, %17
  %25 = tail call i64 @luaH_getn(ptr noundef nonnull %8) #13
  store i64 %25, ptr %1, align 8, !tbaa !9
  %26 = getelementptr inbounds %struct.TValue, ptr %1, i64 0, i32 1
  store i8 3, ptr %26, align 8, !tbaa !5
  br label %47

27:                                               ; preds = %3
  %28 = load ptr, ptr %2, align 8, !tbaa !9
  %29 = getelementptr inbounds %struct.TString, ptr %28, i64 0, i32 4
  %30 = load i8, ptr %29, align 1, !tbaa !9
  %31 = zext i8 %30 to i64
  store i64 %31, ptr %1, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.TValue, ptr %1, i64 0, i32 1
  store i8 3, ptr %32, align 8, !tbaa !5
  br label %47

33:                                               ; preds = %3
  %34 = load ptr, ptr %2, align 8, !tbaa !9
  %35 = getelementptr inbounds %struct.TString, ptr %34, i64 0, i32 6
  %36 = load i64, ptr %35, align 8, !tbaa !9
  store i64 %36, ptr %1, align 8, !tbaa !9
  %37 = getelementptr inbounds %struct.TValue, ptr %1, i64 0, i32 1
  store i8 3, ptr %37, align 8, !tbaa !5
  br label %47

38:                                               ; preds = %3
  %39 = tail call ptr @luaT_gettmbyobj(ptr noundef %0, ptr noundef nonnull %2, i32 noundef 4) #13
  %40 = getelementptr inbounds %struct.TValue, ptr %39, i64 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !5
  %42 = and i8 %41, 15
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %44, label %45, !prof !18

44:                                               ; preds = %38
  tail call void @luaG_typeerror(ptr noundef %0, ptr noundef nonnull %2, ptr noundef nonnull @.str.4) #14
  unreachable

45:                                               ; preds = %17, %38
  %46 = phi ptr [ %39, %38 ], [ %22, %17 ]
  tail call void @luaT_callTMres(ptr noundef %0, ptr noundef nonnull %46, ptr noundef nonnull %2, ptr noundef nonnull %2, ptr noundef %1) #13
  br label %47

47:                                               ; preds = %24, %45, %33, %27
  ret void
}

declare hidden i64 @luaH_getn(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i64 @luaV_idiv(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %2, 1
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %6, label %11, !prof !18

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.5) #14
  unreachable

9:                                                ; preds = %6
  %10 = sub i64 0, %1
  br label %20

11:                                               ; preds = %3
  %12 = sdiv i64 %1, %2
  %13 = srem i64 %1, %2
  %14 = xor i64 %2, %1
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = icmp ne i64 %13, 0
  %18 = sext i1 %17 to i64
  %19 = add nsw i64 %12, %18
  br label %20

20:                                               ; preds = %16, %11, %9
  %21 = phi i64 [ %10, %9 ], [ %12, %11 ], [ %19, %16 ]
  ret i64 %21
}

; Function Attrs: nounwind uwtable
define hidden i64 @luaV_mod(ptr noundef %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = add i64 %2, 1
  %5 = icmp ult i64 %4, 2
  br i1 %5, label %6, label %9, !prof !18

6:                                                ; preds = %3
  %7 = icmp eq i64 %2, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %6
  tail call void (ptr, ptr, ...) @luaG_runerror(ptr noundef %0, ptr noundef nonnull @.str.6) #14
  unreachable

9:                                                ; preds = %3
  %10 = srem i64 %1, %2
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = xor i64 %10, %2
  %14 = icmp slt i64 %13, 0
  %15 = select i1 %14, i64 %2, i64 0
  %16 = add nsw i64 %15, %10
  br label %17

17:                                               ; preds = %12, %9, %6
  %18 = phi i64 [ 0, %6 ], [ 0, %9 ], [ %16, %12 ]
  ret i64 %18
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write) uwtable
define hidden double @luaV_modf(ptr nocapture noundef readnone %0, double noundef %1, double noundef %2) local_unnamed_addr #8 {
  %4 = tail call double @fmod(double noundef %1, double noundef %2) #13
  %5 = fcmp ogt double %4, 0.000000e+00
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = fcmp olt double %2, 0.000000e+00
  br i1 %7, label %12, label %14

8:                                                ; preds = %3
  %9 = fcmp olt double %4, 0.000000e+00
  %10 = fcmp ogt double %2, 0.000000e+00
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %6
  %13 = fadd double %4, %2
  br label %14

14:                                               ; preds = %12, %8, %6
  %15 = phi double [ %13, %12 ], [ %4, %6 ], [ %4, %8 ]
  ret double %15
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @fmod(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @luaV_shiftl(i64 noundef %0, i64 noundef %1) local_unnamed_addr #10 {
  %3 = icmp slt i64 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = icmp ult i64 %1, -63
  br i1 %5, label %13, label %6

6:                                                ; preds = %4
  %7 = sub nsw i64 0, %1
  %8 = lshr i64 %0, %7
  br label %13

9:                                                ; preds = %2
  %10 = icmp ugt i64 %1, 63
  %11 = shl i64 %0, %1
  %12 = select i1 %10, i64 0, i64 %11
  br label %13

13:                                               ; preds = %9, %4, %6
  %14 = phi i64 [ %8, %6 ], [ 0, %4 ], [ %12, %9 ]
  ret i64 %14
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_finishOp(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !9
  %5 = getelementptr inbounds %union.StackValue, ptr %4, i64 1
  %6 = getelementptr inbounds %struct.CallInfo, ptr %3, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !9
  %8 = getelementptr inbounds i32, ptr %7, i64 -1
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = and i32 %9, 127
  switch i32 %10, label %85 [
    i32 46, label %11
    i32 47, label %11
    i32 48, label %11
    i32 49, label %25
    i32 50, label %25
    i32 52, label %25
    i32 11, label %25
    i32 12, label %25
    i32 13, label %25
    i32 14, label %25
    i32 20, label %25
    i32 58, label %37
    i32 59, label %37
    i32 62, label %37
    i32 63, label %37
    i32 64, label %37
    i32 65, label %37
    i32 57, label %37
    i32 53, label %53
    i32 54, label %72
    i32 70, label %73
  ]

11:                                               ; preds = %1, %1, %1
  %12 = getelementptr inbounds i32, ptr %7, i64 -2
  %13 = load i32, ptr %12, align 4, !tbaa !39
  %14 = lshr i32 %13, 7
  %15 = and i32 %14, 255
  %16 = zext nneg i32 %15 to i64
  %17 = getelementptr inbounds %union.StackValue, ptr %5, i64 %16
  %18 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 6
  %19 = load ptr, ptr %18, align 8, !tbaa !9
  %20 = getelementptr inbounds %union.StackValue, ptr %19, i64 -1
  store ptr %20, ptr %18, align 8, !tbaa !9
  %21 = load i64, ptr %20, align 8
  store i64 %21, ptr %17, align 8
  %22 = getelementptr %union.StackValue, ptr %19, i64 -1, i32 0, i32 1
  %23 = load i8, ptr %22, align 8, !tbaa !5
  %24 = getelementptr inbounds %struct.TValue, ptr %17, i64 0, i32 1
  store i8 %23, ptr %24, align 8, !tbaa !5
  br label %85

25:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %26 = lshr i32 %9, 7
  %27 = and i32 %26, 255
  %28 = zext nneg i32 %27 to i64
  %29 = getelementptr inbounds %union.StackValue, ptr %5, i64 %28
  %30 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = getelementptr inbounds %union.StackValue, ptr %31, i64 -1
  store ptr %32, ptr %30, align 8, !tbaa !9
  %33 = load i64, ptr %32, align 8
  store i64 %33, ptr %29, align 8
  %34 = getelementptr %union.StackValue, ptr %31, i64 -1, i32 0, i32 1
  %35 = load i8, ptr %34, align 8, !tbaa !5
  %36 = getelementptr inbounds %struct.TValue, ptr %29, i64 0, i32 1
  store i8 %35, ptr %36, align 8, !tbaa !5
  br label %85

37:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %38 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 6
  %39 = load ptr, ptr %38, align 8, !tbaa !9
  %40 = getelementptr %union.StackValue, ptr %39, i64 -1, i32 0, i32 1
  %41 = load i8, ptr %40, align 8, !tbaa !9
  %42 = icmp ne i8 %41, 1
  %43 = and i8 %41, 15
  %44 = icmp ne i8 %43, 0
  %45 = and i1 %42, %44
  %46 = getelementptr inbounds %union.StackValue, ptr %39, i64 -1
  store ptr %46, ptr %38, align 8, !tbaa !9
  %47 = and i32 %9, 32768
  %48 = icmp eq i32 %47, 0
  %49 = xor i1 %48, %45
  br i1 %49, label %85, label %50

50:                                               ; preds = %37
  %51 = load ptr, ptr %6, align 8, !tbaa !9
  %52 = getelementptr inbounds i32, ptr %51, i64 1
  store ptr %52, ptr %6, align 8, !tbaa !9
  br label %85

53:                                               ; preds = %1
  %54 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 6
  %55 = load ptr, ptr %54, align 8, !tbaa !9
  %56 = getelementptr inbounds %union.StackValue, ptr %55, i64 -1
  %57 = lshr i32 %9, 7
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds %union.StackValue, ptr %55, i64 -2
  %60 = zext nneg i32 %58 to i64
  %61 = getelementptr inbounds %union.StackValue, ptr %5, i64 %60
  %62 = ptrtoint ptr %59 to i64
  %63 = ptrtoint ptr %61 to i64
  %64 = sub i64 %62, %63
  %65 = lshr exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = getelementptr inbounds %union.StackValue, ptr %55, i64 -3
  %68 = load i64, ptr %56, align 8
  store i64 %68, ptr %67, align 8
  %69 = getelementptr %union.StackValue, ptr %55, i64 -1, i32 0, i32 1
  %70 = load i8, ptr %69, align 8, !tbaa !5
  %71 = getelementptr %union.StackValue, ptr %55, i64 -3, i32 0, i32 1
  store i8 %70, ptr %71, align 8, !tbaa !5
  store ptr %59, ptr %54, align 8, !tbaa !9
  tail call void @luaV_concat(ptr noundef nonnull %0, i32 noundef %66)
  br label %85

72:                                               ; preds = %1
  store ptr %8, ptr %6, align 8, !tbaa !9
  br label %85

73:                                               ; preds = %1
  %74 = lshr i32 %9, 7
  %75 = and i32 %74, 255
  %76 = zext nneg i32 %75 to i64
  %77 = getelementptr inbounds %union.StackValue, ptr %5, i64 %76
  %78 = getelementptr inbounds %struct.CallInfo, ptr %3, i64 0, i32 5
  %79 = load i32, ptr %78, align 8, !tbaa !9
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %union.StackValue, ptr %77, i64 %80
  %82 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 6
  store ptr %81, ptr %82, align 8, !tbaa !9
  %83 = load ptr, ptr %6, align 8, !tbaa !9
  %84 = getelementptr inbounds i32, ptr %83, i64 -1
  store ptr %84, ptr %6, align 8, !tbaa !9
  br label %85

85:                                               ; preds = %37, %50, %1, %73, %72, %53, %25, %11
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @luaV_execute(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.TValue, align 8
  %4 = alloca %struct.TValue, align 8
  %5 = alloca %struct.TValue, align 8
  %6 = alloca %struct.TValue, align 8
  %7 = alloca %struct.TValue, align 8
  %8 = alloca %struct.TValue, align 8
  %9 = alloca %struct.TValue, align 8
  %10 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 23
  %11 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 20
  %12 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 6
  %13 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct.TValue, ptr %5, i64 0, i32 1
  %15 = getelementptr inbounds %struct.TValue, ptr %4, i64 0, i32 1
  %16 = getelementptr inbounds %struct.TValue, ptr %3, i64 0, i32 1
  %17 = getelementptr inbounds %struct.TValue, ptr %7, i64 0, i32 1
  %18 = getelementptr inbounds %struct.TValue, ptr %6, i64 0, i32 1
  %19 = getelementptr inbounds %struct.TValue, ptr %9, i64 0, i32 1
  %20 = getelementptr inbounds %struct.TValue, ptr %8, i64 0, i32 1
  %21 = getelementptr inbounds %struct.lua_State, ptr %0, i64 0, i32 8
  br label %24

22:                                               ; preds = %3278, %3233
  %23 = phi ptr [ %3234, %3233 ], [ %29, %3278 ]
  br label %24

24:                                               ; preds = %22, %2
  %25 = phi ptr [ %1, %2 ], [ %23, %22 ]
  %26 = load volatile i32, ptr %10, align 8, !tbaa !40
  br label %27

27:                                               ; preds = %3439, %24
  %28 = phi i32 [ %26, %24 ], [ %3423, %3439 ]
  %29 = phi ptr [ %25, %24 ], [ %3441, %3439 ]
  %30 = load ptr, ptr %29, align 8, !tbaa !9
  %31 = load ptr, ptr %30, align 8, !tbaa !9
  %32 = getelementptr inbounds %struct.LClosure, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !41
  %34 = getelementptr inbounds %struct.Proto, ptr %33, i64 0, i32 15
  %35 = load ptr, ptr %34, align 8, !tbaa !43
  %36 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !9
  %38 = icmp eq i32 %28, 0
  br i1 %38, label %44, label %39, !prof !33

39:                                               ; preds = %27
  %40 = call i32 @luaG_tracecall(ptr noundef nonnull %0) #13
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !45

42:                                               ; preds = %39
  %43 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef %37) #13
  br label %44

44:                                               ; preds = %27, %42, %39
  %45 = phi i32 [ %43, %42 ], [ 0, %39 ], [ 0, %27 ]
  %46 = load ptr, ptr %29, align 8, !tbaa !9
  %47 = getelementptr inbounds %union.StackValue, ptr %46, i64 1
  %48 = getelementptr inbounds i32, ptr %37, i64 1
  %49 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 4, i32 0, i32 1
  %50 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 1
  %51 = getelementptr inbounds %struct.LClosure, ptr %31, i64 0, i32 6
  br label %3429

52:                                               ; preds = %3429
  %53 = lshr i32 %3434, 7
  %54 = and i32 %53, 255
  %55 = zext nneg i32 %54 to i64
  %56 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %55
  %57 = lshr i32 %3434, 16
  %58 = and i32 %57, 255
  %59 = zext nneg i32 %58 to i64
  %60 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %59
  %61 = load i64, ptr %60, align 8
  store i64 %61, ptr %56, align 8
  %62 = getelementptr inbounds %struct.TValue, ptr %60, i64 0, i32 1
  %63 = load i8, ptr %62, align 8, !tbaa !5
  %64 = getelementptr inbounds %struct.TValue, ptr %56, i64 0, i32 1
  store i8 %63, ptr %64, align 8, !tbaa !5
  %65 = icmp eq i32 %3431, 0
  br i1 %65, label %70, label %66, !prof !33

66:                                               ; preds = %52
  %67 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %68 = load ptr, ptr %29, align 8, !tbaa !9
  %69 = getelementptr inbounds %union.StackValue, ptr %68, i64 1
  br label %70

70:                                               ; preds = %66, %52
  %71 = phi i32 [ %67, %66 ], [ 0, %52 ]
  %72 = phi ptr [ %69, %66 ], [ %3433, %52 ]
  %73 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

74:                                               ; preds = %70, %93, %111, %132, %155, %169, %184, %198, %245, %270, %310, %355, %426, %479, %521, %585, %675, %747, %808, %854, %903, %940, %996, %1052, %1108, %1189, %1239, %1283, %1358, %1401, %1444, %1487, %1540, %1593, %1649, %1705, %1761, %1842, %1892, %1936, %2011, %2069, %2127, %2185, %2254, %2323, %2350, %2379, %2408, %2441, %2482, %2506, %2526, %2553, %2570, %2585, %2600, %2636, %2744, %2852, %2886, %2933, %2985, %3037, %3089, %3141, %3175, %3216, %3243, %3489, %3769, %3833, %3914, %3986, %4004, %4016, %4027
  %75 = phi ptr [ %3432, %70 ], [ %3432, %93 ], [ %3432, %111 ], [ %3432, %132 ], [ %145, %155 ], [ %3432, %169 ], [ %178, %184 ], [ %3432, %198 ], [ %3432, %245 ], [ %3432, %270 ], [ %3432, %310 ], [ %3432, %355 ], [ %3432, %426 ], [ %3432, %479 ], [ %3432, %521 ], [ %3432, %585 ], [ %3432, %675 ], [ %3432, %747 ], [ %3432, %808 ], [ %833, %854 ], [ %3432, %903 ], [ %934, %940 ], [ %990, %996 ], [ %1046, %1052 ], [ %1102, %1108 ], [ %1183, %1189 ], [ %1233, %1239 ], [ %1277, %1283 ], [ %1352, %1358 ], [ %1395, %1401 ], [ %1438, %1444 ], [ %1481, %1487 ], [ %1534, %1540 ], [ %1587, %1593 ], [ %1643, %1649 ], [ %1699, %1705 ], [ %1755, %1761 ], [ %1836, %1842 ], [ %1886, %1892 ], [ %1930, %1936 ], [ %2005, %2011 ], [ %2063, %2069 ], [ %2121, %2127 ], [ %2179, %2185 ], [ %2248, %2254 ], [ %2317, %2323 ], [ %3432, %2350 ], [ %3432, %2379 ], [ %3432, %2408 ], [ %3432, %2441 ], [ %3432, %2482 ], [ %3432, %2506 ], [ %3432, %2526 ], [ %3432, %2553 ], [ %3432, %2570 ], [ %3432, %2585 ], [ %2593, %2600 ], [ %2630, %2636 ], [ %2738, %2744 ], [ %2846, %2852 ], [ %2880, %2886 ], [ %2927, %2933 ], [ %2979, %2985 ], [ %3031, %3037 ], [ %3083, %3089 ], [ %3135, %3141 ], [ %3169, %3175 ], [ %3210, %3216 ], [ %3432, %3243 ], [ %3482, %3489 ], [ %3763, %3769 ], [ %3827, %3833 ], [ %3870, %3914 ], [ %3432, %3986 ], [ %3432, %4004 ], [ %3432, %4016 ], [ %3432, %4027 ]
  %76 = phi i32 [ %71, %70 ], [ %94, %93 ], [ %112, %111 ], [ %133, %132 ], [ %156, %155 ], [ %170, %169 ], [ %185, %184 ], [ %199, %198 ], [ %246, %245 ], [ %271, %270 ], [ %311, %310 ], [ %356, %355 ], [ %427, %426 ], [ %480, %479 ], [ %522, %521 ], [ %586, %585 ], [ %676, %675 ], [ %748, %747 ], [ %809, %808 ], [ %855, %854 ], [ %904, %903 ], [ %941, %940 ], [ %997, %996 ], [ %1053, %1052 ], [ %1109, %1108 ], [ %1190, %1189 ], [ %1240, %1239 ], [ %1284, %1283 ], [ %1359, %1358 ], [ %1402, %1401 ], [ %1445, %1444 ], [ %1488, %1487 ], [ %1541, %1540 ], [ %1594, %1593 ], [ %1650, %1649 ], [ %1706, %1705 ], [ %1762, %1761 ], [ %1843, %1842 ], [ %1893, %1892 ], [ %1937, %1936 ], [ %2012, %2011 ], [ %2070, %2069 ], [ %2128, %2127 ], [ %2186, %2185 ], [ %2255, %2254 ], [ %2324, %2323 ], [ %2351, %2350 ], [ %2380, %2379 ], [ %2409, %2408 ], [ %2442, %2441 ], [ %2483, %2482 ], [ %2507, %2506 ], [ %2527, %2526 ], [ %2554, %2553 ], [ %2571, %2570 ], [ %2586, %2585 ], [ %2601, %2600 ], [ %2637, %2636 ], [ %2745, %2744 ], [ %2853, %2852 ], [ %2887, %2886 ], [ %2934, %2933 ], [ %2986, %2985 ], [ %3038, %3037 ], [ %3090, %3089 ], [ %3142, %3141 ], [ %3176, %3175 ], [ %3217, %3216 ], [ %3244, %3243 ], [ %3490, %3489 ], [ %3770, %3769 ], [ %3834, %3833 ], [ %3915, %3914 ], [ %3987, %3986 ], [ %4005, %4004 ], [ %4017, %4016 ], [ %4028, %4027 ]
  %77 = phi ptr [ %73, %70 ], [ %96, %93 ], [ %114, %111 ], [ %135, %132 ], [ %158, %155 ], [ %172, %169 ], [ %187, %184 ], [ %201, %198 ], [ %248, %245 ], [ %273, %270 ], [ %313, %310 ], [ %358, %355 ], [ %429, %426 ], [ %482, %479 ], [ %524, %521 ], [ %588, %585 ], [ %678, %675 ], [ %750, %747 ], [ %811, %808 ], [ %857, %854 ], [ %906, %903 ], [ %943, %940 ], [ %999, %996 ], [ %1055, %1052 ], [ %1111, %1108 ], [ %1192, %1189 ], [ %1242, %1239 ], [ %1286, %1283 ], [ %1361, %1358 ], [ %1404, %1401 ], [ %1447, %1444 ], [ %1490, %1487 ], [ %1543, %1540 ], [ %1596, %1593 ], [ %1652, %1649 ], [ %1708, %1705 ], [ %1764, %1761 ], [ %1845, %1842 ], [ %1895, %1892 ], [ %1939, %1936 ], [ %2014, %2011 ], [ %2072, %2069 ], [ %2130, %2127 ], [ %2188, %2185 ], [ %2257, %2254 ], [ %2326, %2323 ], [ %2353, %2350 ], [ %2382, %2379 ], [ %2411, %2408 ], [ %2444, %2441 ], [ %2485, %2482 ], [ %2509, %2506 ], [ %2529, %2526 ], [ %2556, %2553 ], [ %2573, %2570 ], [ %2588, %2585 ], [ %2603, %2600 ], [ %2639, %2636 ], [ %2747, %2744 ], [ %2855, %2852 ], [ %2889, %2886 ], [ %2936, %2933 ], [ %2988, %2985 ], [ %3040, %3037 ], [ %3092, %3089 ], [ %3144, %3141 ], [ %3178, %3175 ], [ %3219, %3216 ], [ %3246, %3243 ], [ %3492, %3489 ], [ %3772, %3769 ], [ %3836, %3833 ], [ %3917, %3914 ], [ %3989, %3986 ], [ %4007, %4004 ], [ %4020, %4016 ], [ %4030, %4027 ]
  %78 = phi ptr [ %72, %70 ], [ %95, %93 ], [ %113, %111 ], [ %134, %132 ], [ %157, %155 ], [ %171, %169 ], [ %186, %184 ], [ %200, %198 ], [ %247, %245 ], [ %272, %270 ], [ %312, %310 ], [ %357, %355 ], [ %428, %426 ], [ %481, %479 ], [ %523, %521 ], [ %587, %585 ], [ %677, %675 ], [ %749, %747 ], [ %810, %808 ], [ %856, %854 ], [ %905, %903 ], [ %942, %940 ], [ %998, %996 ], [ %1054, %1052 ], [ %1110, %1108 ], [ %1191, %1189 ], [ %1241, %1239 ], [ %1285, %1283 ], [ %1360, %1358 ], [ %1403, %1401 ], [ %1446, %1444 ], [ %1489, %1487 ], [ %1542, %1540 ], [ %1595, %1593 ], [ %1651, %1649 ], [ %1707, %1705 ], [ %1763, %1761 ], [ %1844, %1842 ], [ %1894, %1892 ], [ %1938, %1936 ], [ %2013, %2011 ], [ %2071, %2069 ], [ %2129, %2127 ], [ %2187, %2185 ], [ %2256, %2254 ], [ %2325, %2323 ], [ %2352, %2350 ], [ %2381, %2379 ], [ %2410, %2408 ], [ %2443, %2441 ], [ %2484, %2482 ], [ %2508, %2506 ], [ %2528, %2526 ], [ %2555, %2553 ], [ %2572, %2570 ], [ %2587, %2585 ], [ %2602, %2600 ], [ %2638, %2636 ], [ %2746, %2744 ], [ %2854, %2852 ], [ %2888, %2886 ], [ %2935, %2933 ], [ %2987, %2985 ], [ %3039, %3037 ], [ %3091, %3089 ], [ %3143, %3141 ], [ %3177, %3175 ], [ %3218, %3216 ], [ %3245, %3243 ], [ %3491, %3489 ], [ %3771, %3769 ], [ %3835, %3833 ], [ %3916, %3914 ], [ %3988, %3986 ], [ %4006, %4004 ], [ %4019, %4016 ], [ %4029, %4027 ]
  br label %3429

79:                                               ; preds = %3429
  %80 = lshr i32 %3434, 7
  %81 = and i32 %80, 255
  %82 = zext nneg i32 %81 to i64
  %83 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %82
  %84 = lshr i32 %3434, 15
  %85 = add nsw i32 %84, -65535
  %86 = sext i32 %85 to i64
  store i64 %86, ptr %83, align 8, !tbaa !9
  %87 = getelementptr inbounds %struct.TValue, ptr %83, i64 0, i32 1
  store i8 3, ptr %87, align 8, !tbaa !5
  %88 = icmp eq i32 %3431, 0
  br i1 %88, label %93, label %89, !prof !33

89:                                               ; preds = %79
  %90 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %91 = load ptr, ptr %29, align 8, !tbaa !9
  %92 = getelementptr inbounds %union.StackValue, ptr %91, i64 1
  br label %93

93:                                               ; preds = %89, %79
  %94 = phi i32 [ %90, %89 ], [ 0, %79 ]
  %95 = phi ptr [ %92, %89 ], [ %3433, %79 ]
  %96 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

97:                                               ; preds = %3429
  %98 = lshr i32 %3434, 7
  %99 = and i32 %98, 255
  %100 = zext nneg i32 %99 to i64
  %101 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %100
  %102 = lshr i32 %3434, 15
  %103 = add nsw i32 %102, -65535
  %104 = sitofp i32 %103 to double
  store double %104, ptr %101, align 8, !tbaa !9
  %105 = getelementptr inbounds %struct.TValue, ptr %101, i64 0, i32 1
  store i8 19, ptr %105, align 8, !tbaa !5
  %106 = icmp eq i32 %3431, 0
  br i1 %106, label %111, label %107, !prof !33

107:                                              ; preds = %97
  %108 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %109 = load ptr, ptr %29, align 8, !tbaa !9
  %110 = getelementptr inbounds %union.StackValue, ptr %109, i64 1
  br label %111

111:                                              ; preds = %107, %97
  %112 = phi i32 [ %108, %107 ], [ 0, %97 ]
  %113 = phi ptr [ %110, %107 ], [ %3433, %97 ]
  %114 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

115:                                              ; preds = %3429
  %116 = lshr i32 %3434, 7
  %117 = and i32 %116, 255
  %118 = zext nneg i32 %117 to i64
  %119 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %118
  %120 = lshr i32 %3434, 15
  %121 = zext nneg i32 %120 to i64
  %122 = getelementptr inbounds %struct.TValue, ptr %35, i64 %121
  %123 = load i64, ptr %122, align 8
  store i64 %123, ptr %119, align 8
  %124 = getelementptr inbounds %struct.TValue, ptr %35, i64 %121, i32 1
  %125 = load i8, ptr %124, align 8, !tbaa !5
  %126 = getelementptr inbounds %struct.TValue, ptr %119, i64 0, i32 1
  store i8 %125, ptr %126, align 8, !tbaa !5
  %127 = icmp eq i32 %3431, 0
  br i1 %127, label %132, label %128, !prof !33

128:                                              ; preds = %115
  %129 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %130 = load ptr, ptr %29, align 8, !tbaa !9
  %131 = getelementptr inbounds %union.StackValue, ptr %130, i64 1
  br label %132

132:                                              ; preds = %128, %115
  %133 = phi i32 [ %129, %128 ], [ 0, %115 ]
  %134 = phi ptr [ %131, %128 ], [ %3433, %115 ]
  %135 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

136:                                              ; preds = %3429
  %137 = lshr i32 %3434, 7
  %138 = and i32 %137, 255
  %139 = zext nneg i32 %138 to i64
  %140 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %139
  %141 = load i32, ptr %3432, align 4, !tbaa !39
  %142 = lshr i32 %141, 7
  %143 = zext nneg i32 %142 to i64
  %144 = getelementptr inbounds %struct.TValue, ptr %35, i64 %143
  %145 = getelementptr inbounds i32, ptr %3432, i64 1
  %146 = load i64, ptr %144, align 8
  store i64 %146, ptr %140, align 8
  %147 = getelementptr inbounds %struct.TValue, ptr %35, i64 %143, i32 1
  %148 = load i8, ptr %147, align 8, !tbaa !5
  %149 = getelementptr inbounds %struct.TValue, ptr %140, i64 0, i32 1
  store i8 %148, ptr %149, align 8, !tbaa !5
  %150 = icmp eq i32 %3431, 0
  br i1 %150, label %155, label %151, !prof !33

151:                                              ; preds = %136
  %152 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %145) #13
  %153 = load ptr, ptr %29, align 8, !tbaa !9
  %154 = getelementptr inbounds %union.StackValue, ptr %153, i64 1
  br label %155

155:                                              ; preds = %151, %136
  %156 = phi i32 [ %152, %151 ], [ 0, %136 ]
  %157 = phi ptr [ %154, %151 ], [ %3433, %136 ]
  %158 = getelementptr inbounds i32, ptr %3432, i64 2
  br label %74

159:                                              ; preds = %3429
  %160 = lshr i32 %3434, 7
  %161 = and i32 %160, 255
  %162 = zext nneg i32 %161 to i64
  %163 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %162, i32 0, i32 1
  store i8 1, ptr %163, align 8, !tbaa !9
  %164 = icmp eq i32 %3431, 0
  br i1 %164, label %169, label %165, !prof !33

165:                                              ; preds = %159
  %166 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %167 = load ptr, ptr %29, align 8, !tbaa !9
  %168 = getelementptr inbounds %union.StackValue, ptr %167, i64 1
  br label %169

169:                                              ; preds = %165, %159
  %170 = phi i32 [ %166, %165 ], [ 0, %159 ]
  %171 = phi ptr [ %168, %165 ], [ %3433, %159 ]
  %172 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

173:                                              ; preds = %3429
  %174 = lshr i32 %3434, 7
  %175 = and i32 %174, 255
  %176 = zext nneg i32 %175 to i64
  %177 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %176, i32 0, i32 1
  store i8 1, ptr %177, align 8, !tbaa !9
  %178 = getelementptr inbounds i32, ptr %3432, i64 1
  %179 = icmp eq i32 %3431, 0
  br i1 %179, label %184, label %180, !prof !33

180:                                              ; preds = %173
  %181 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %178) #13
  %182 = load ptr, ptr %29, align 8, !tbaa !9
  %183 = getelementptr inbounds %union.StackValue, ptr %182, i64 1
  br label %184

184:                                              ; preds = %180, %173
  %185 = phi i32 [ %181, %180 ], [ 0, %173 ]
  %186 = phi ptr [ %183, %180 ], [ %3433, %173 ]
  %187 = getelementptr inbounds i32, ptr %3432, i64 2
  br label %74

188:                                              ; preds = %3429
  %189 = lshr i32 %3434, 7
  %190 = and i32 %189, 255
  %191 = zext nneg i32 %190 to i64
  %192 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %191, i32 0, i32 1
  store i8 17, ptr %192, align 8, !tbaa !9
  %193 = icmp eq i32 %3431, 0
  br i1 %193, label %198, label %194, !prof !33

194:                                              ; preds = %188
  %195 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %196 = load ptr, ptr %29, align 8, !tbaa !9
  %197 = getelementptr inbounds %union.StackValue, ptr %196, i64 1
  br label %198

198:                                              ; preds = %194, %188
  %199 = phi i32 [ %195, %194 ], [ 0, %188 ]
  %200 = phi ptr [ %197, %194 ], [ %3433, %188 ]
  %201 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

202:                                              ; preds = %3429
  %203 = lshr i32 %3434, 7
  %204 = and i32 %203, 255
  %205 = zext nneg i32 %204 to i64
  %206 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %205
  %207 = lshr i32 %3434, 16
  %208 = and i32 %207, 255
  %209 = add nuw nsw i32 %207, 1
  %210 = and i32 %209, 7
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %221, label %212

212:                                              ; preds = %202, %212
  %213 = phi i32 [ %218, %212 ], [ %208, %202 ]
  %214 = phi ptr [ %216, %212 ], [ %206, %202 ]
  %215 = phi i32 [ %219, %212 ], [ 0, %202 ]
  %216 = getelementptr inbounds %union.StackValue, ptr %214, i64 1
  %217 = getelementptr inbounds %struct.TValue, ptr %214, i64 0, i32 1
  store i8 0, ptr %217, align 8, !tbaa !9
  %218 = add nsw i32 %213, -1
  %219 = add i32 %215, 1
  %220 = icmp eq i32 %219, %210
  br i1 %220, label %221, label %212, !llvm.loop !46

221:                                              ; preds = %212, %202
  %222 = phi i32 [ %208, %202 ], [ %218, %212 ]
  %223 = phi ptr [ %206, %202 ], [ %216, %212 ]
  %224 = icmp ult i32 %208, 7
  br i1 %224, label %239, label %225

225:                                              ; preds = %221, %225
  %226 = phi i32 [ %237, %225 ], [ %222, %221 ]
  %227 = phi ptr [ %235, %225 ], [ %223, %221 ]
  %228 = getelementptr inbounds %struct.TValue, ptr %227, i64 0, i32 1
  store i8 0, ptr %228, align 8, !tbaa !9
  %229 = getelementptr inbounds %union.StackValue, ptr %227, i64 1, i32 0, i32 1
  store i8 0, ptr %229, align 8, !tbaa !9
  %230 = getelementptr inbounds %union.StackValue, ptr %227, i64 2, i32 0, i32 1
  store i8 0, ptr %230, align 8, !tbaa !9
  %231 = getelementptr inbounds %union.StackValue, ptr %227, i64 3, i32 0, i32 1
  store i8 0, ptr %231, align 8, !tbaa !9
  %232 = getelementptr inbounds %union.StackValue, ptr %227, i64 4, i32 0, i32 1
  store i8 0, ptr %232, align 8, !tbaa !9
  %233 = getelementptr inbounds %union.StackValue, ptr %227, i64 5, i32 0, i32 1
  store i8 0, ptr %233, align 8, !tbaa !9
  %234 = getelementptr inbounds %union.StackValue, ptr %227, i64 6, i32 0, i32 1
  store i8 0, ptr %234, align 8, !tbaa !9
  %235 = getelementptr inbounds %union.StackValue, ptr %227, i64 8
  %236 = getelementptr inbounds %union.StackValue, ptr %227, i64 7, i32 0, i32 1
  store i8 0, ptr %236, align 8, !tbaa !9
  %237 = add nsw i32 %226, -8
  %238 = icmp eq i32 %226, 7
  br i1 %238, label %239, label %225, !llvm.loop !48

239:                                              ; preds = %225, %221
  %240 = icmp eq i32 %3431, 0
  br i1 %240, label %245, label %241, !prof !33

241:                                              ; preds = %239
  %242 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %243 = load ptr, ptr %29, align 8, !tbaa !9
  %244 = getelementptr inbounds %union.StackValue, ptr %243, i64 1
  br label %245

245:                                              ; preds = %241, %239
  %246 = phi i32 [ %242, %241 ], [ 0, %239 ]
  %247 = phi ptr [ %244, %241 ], [ %3433, %239 ]
  %248 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

249:                                              ; preds = %3429
  %250 = lshr i32 %3434, 7
  %251 = and i32 %250, 255
  %252 = zext nneg i32 %251 to i64
  %253 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %252
  %254 = lshr i32 %3434, 16
  %255 = and i32 %254, 255
  %256 = zext nneg i32 %255 to i64
  %257 = getelementptr inbounds %struct.LClosure, ptr %31, i64 0, i32 6, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !26
  %259 = getelementptr inbounds %struct.UpVal, ptr %258, i64 0, i32 3
  %260 = load ptr, ptr %259, align 8, !tbaa !9
  %261 = load i64, ptr %260, align 8
  store i64 %261, ptr %253, align 8
  %262 = getelementptr inbounds %struct.TValue, ptr %260, i64 0, i32 1
  %263 = load i8, ptr %262, align 8, !tbaa !5
  %264 = getelementptr inbounds %struct.TValue, ptr %253, i64 0, i32 1
  store i8 %263, ptr %264, align 8, !tbaa !5
  %265 = icmp eq i32 %3431, 0
  br i1 %265, label %270, label %266, !prof !33

266:                                              ; preds = %249
  %267 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %268 = load ptr, ptr %29, align 8, !tbaa !9
  %269 = getelementptr inbounds %union.StackValue, ptr %268, i64 1
  br label %270

270:                                              ; preds = %266, %249
  %271 = phi i32 [ %267, %266 ], [ 0, %249 ]
  %272 = phi ptr [ %269, %266 ], [ %3433, %249 ]
  %273 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

274:                                              ; preds = %3429
  %275 = lshr i32 %3434, 7
  %276 = and i32 %275, 255
  %277 = zext nneg i32 %276 to i64
  %278 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %277
  %279 = lshr i32 %3434, 16
  %280 = and i32 %279, 255
  %281 = zext nneg i32 %280 to i64
  %282 = getelementptr inbounds %struct.LClosure, ptr %31, i64 0, i32 6, i64 %281
  %283 = load ptr, ptr %282, align 8, !tbaa !26
  %284 = getelementptr inbounds %struct.UpVal, ptr %283, i64 0, i32 3
  %285 = load ptr, ptr %284, align 8, !tbaa !9
  %286 = load i64, ptr %278, align 8
  store i64 %286, ptr %285, align 8
  %287 = getelementptr inbounds %struct.TValue, ptr %278, i64 0, i32 1
  %288 = load i8, ptr %287, align 8, !tbaa !9
  %289 = getelementptr inbounds %struct.TValue, ptr %285, i64 0, i32 1
  store i8 %288, ptr %289, align 8, !tbaa !5
  %290 = and i8 %288, 64
  %291 = icmp eq i8 %290, 0
  br i1 %291, label %304, label %292

292:                                              ; preds = %274
  %293 = getelementptr inbounds %struct.UpVal, ptr %283, i64 0, i32 2
  %294 = load i8, ptr %293, align 1, !tbaa !49
  %295 = and i8 %294, 32
  %296 = icmp eq i8 %295, 0
  br i1 %296, label %304, label %297

297:                                              ; preds = %292
  %298 = load ptr, ptr %278, align 8, !tbaa !9
  %299 = getelementptr inbounds %struct.GCObject, ptr %298, i64 0, i32 2
  %300 = load i8, ptr %299, align 1, !tbaa !30
  %301 = and i8 %300, 24
  %302 = icmp eq i8 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %297
  call void @luaC_barrier_(ptr noundef %0, ptr noundef nonnull %283, ptr noundef nonnull %298) #13
  br label %304

304:                                              ; preds = %274, %303, %297, %292
  %305 = icmp eq i32 %3431, 0
  br i1 %305, label %310, label %306, !prof !33

306:                                              ; preds = %304
  %307 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %308 = load ptr, ptr %29, align 8, !tbaa !9
  %309 = getelementptr inbounds %union.StackValue, ptr %308, i64 1
  br label %310

310:                                              ; preds = %306, %304
  %311 = phi i32 [ %307, %306 ], [ 0, %304 ]
  %312 = phi ptr [ %309, %306 ], [ %3433, %304 ]
  %313 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

314:                                              ; preds = %3429
  %315 = lshr i32 %3434, 7
  %316 = and i32 %315, 255
  %317 = zext nneg i32 %316 to i64
  %318 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %317
  %319 = lshr i32 %3434, 16
  %320 = and i32 %319, 255
  %321 = zext nneg i32 %320 to i64
  %322 = getelementptr inbounds %struct.LClosure, ptr %31, i64 0, i32 6, i64 %321
  %323 = load ptr, ptr %322, align 8, !tbaa !26
  %324 = getelementptr inbounds %struct.UpVal, ptr %323, i64 0, i32 3
  %325 = load ptr, ptr %324, align 8, !tbaa !9
  %326 = lshr i32 %3434, 24
  %327 = zext nneg i32 %326 to i64
  %328 = getelementptr inbounds %struct.TValue, ptr %35, i64 %327
  %329 = getelementptr inbounds %struct.TValue, ptr %325, i64 0, i32 1
  %330 = load i8, ptr %329, align 8, !tbaa !5
  %331 = icmp eq i8 %330, 69
  br i1 %331, label %332, label %344

332:                                              ; preds = %314
  %333 = load ptr, ptr %328, align 8, !tbaa !9
  %334 = load ptr, ptr %325, align 8, !tbaa !9
  %335 = call ptr @luaH_getshortstr(ptr noundef %334, ptr noundef %333) #13
  %336 = getelementptr inbounds %struct.TValue, ptr %335, i64 0, i32 1
  %337 = load i8, ptr %336, align 8, !tbaa !5
  %338 = and i8 %337, 15
  %339 = icmp eq i8 %338, 0
  br i1 %339, label %344, label %340

340:                                              ; preds = %332
  %341 = load i64, ptr %335, align 8
  store i64 %341, ptr %318, align 8
  %342 = load i8, ptr %336, align 8, !tbaa !5
  %343 = getelementptr inbounds %struct.TValue, ptr %318, i64 0, i32 1
  store i8 %342, ptr %343, align 8, !tbaa !5
  br label %348

344:                                              ; preds = %314, %332
  %345 = phi ptr [ %335, %332 ], [ null, %314 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %346 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %346, ptr %12, align 8, !tbaa !9
  call void @luaV_finishget(ptr noundef %0, ptr noundef nonnull %325, ptr noundef %328, ptr noundef %318, ptr noundef %345)
  %347 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %348

348:                                              ; preds = %344, %340
  %349 = phi i32 [ %3431, %340 ], [ %347, %344 ]
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %355, label %351, !prof !33

351:                                              ; preds = %348
  %352 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %353 = load ptr, ptr %29, align 8, !tbaa !9
  %354 = getelementptr inbounds %union.StackValue, ptr %353, i64 1
  br label %355

355:                                              ; preds = %351, %348
  %356 = phi i32 [ %352, %351 ], [ 0, %348 ]
  %357 = phi ptr [ %354, %351 ], [ %3433, %348 ]
  %358 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

359:                                              ; preds = %3429
  %360 = lshr i32 %3434, 7
  %361 = and i32 %360, 255
  %362 = zext nneg i32 %361 to i64
  %363 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %362
  %364 = lshr i32 %3434, 16
  %365 = and i32 %364, 255
  %366 = zext nneg i32 %365 to i64
  %367 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %366
  %368 = lshr i32 %3434, 24
  %369 = zext nneg i32 %368 to i64
  %370 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %369
  %371 = getelementptr inbounds %struct.TValue, ptr %370, i64 0, i32 1
  %372 = load i8, ptr %371, align 8, !tbaa !5
  %373 = icmp eq i8 %372, 3
  br i1 %373, label %374, label %398

374:                                              ; preds = %359
  %375 = load i64, ptr %370, align 8, !tbaa !9
  %376 = getelementptr inbounds %struct.TValue, ptr %367, i64 0, i32 1
  %377 = load i8, ptr %376, align 8, !tbaa !5
  %378 = icmp eq i8 %377, 69
  br i1 %378, label %379, label %415

379:                                              ; preds = %374
  %380 = add i64 %375, -1
  %381 = load ptr, ptr %367, align 8, !tbaa !9
  %382 = getelementptr inbounds %struct.Table, ptr %381, i64 0, i32 5
  %383 = load i32, ptr %382, align 4, !tbaa !9
  %384 = zext i32 %383 to i64
  %385 = icmp ult i64 %380, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %379
  %387 = getelementptr inbounds %struct.Table, ptr %381, i64 0, i32 6
  %388 = load ptr, ptr %387, align 8, !tbaa !9
  %389 = getelementptr inbounds %struct.TValue, ptr %388, i64 %380
  br label %392

390:                                              ; preds = %379
  %391 = call ptr @luaH_getint(ptr noundef nonnull %381, i64 noundef %375) #13
  br label %392

392:                                              ; preds = %386, %390
  %393 = phi ptr [ %389, %386 ], [ %391, %390 ]
  %394 = getelementptr inbounds %struct.TValue, ptr %393, i64 0, i32 1
  %395 = load i8, ptr %394, align 8, !tbaa !5
  %396 = and i8 %395, 15
  %397 = icmp eq i8 %396, 0
  br i1 %397, label %415, label %409

398:                                              ; preds = %359
  %399 = getelementptr inbounds %struct.TValue, ptr %367, i64 0, i32 1
  %400 = load i8, ptr %399, align 8, !tbaa !5
  %401 = icmp eq i8 %400, 69
  br i1 %401, label %402, label %415

402:                                              ; preds = %398
  %403 = load ptr, ptr %367, align 8, !tbaa !9
  %404 = call ptr @luaH_get(ptr noundef %403, ptr noundef nonnull %370) #13
  %405 = getelementptr inbounds %struct.TValue, ptr %404, i64 0, i32 1
  %406 = load i8, ptr %405, align 8, !tbaa !5
  %407 = and i8 %406, 15
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %415, label %409

409:                                              ; preds = %402, %392
  %410 = phi ptr [ %393, %392 ], [ %404, %402 ]
  %411 = load i64, ptr %410, align 8
  store i64 %411, ptr %363, align 8
  %412 = getelementptr inbounds %struct.TValue, ptr %410, i64 0, i32 1
  %413 = load i8, ptr %412, align 8, !tbaa !5
  %414 = getelementptr inbounds %struct.TValue, ptr %363, i64 0, i32 1
  store i8 %413, ptr %414, align 8, !tbaa !5
  br label %419

415:                                              ; preds = %374, %398, %402, %392
  %416 = phi ptr [ %393, %392 ], [ %404, %402 ], [ null, %398 ], [ null, %374 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %417 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %417, ptr %12, align 8, !tbaa !9
  call void @luaV_finishget(ptr noundef %0, ptr noundef nonnull %367, ptr noundef nonnull %370, ptr noundef nonnull %363, ptr noundef %416)
  %418 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %419

419:                                              ; preds = %415, %409
  %420 = phi i32 [ %3431, %409 ], [ %418, %415 ]
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %426, label %422, !prof !33

422:                                              ; preds = %419
  %423 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %424 = load ptr, ptr %29, align 8, !tbaa !9
  %425 = getelementptr inbounds %union.StackValue, ptr %424, i64 1
  br label %426

426:                                              ; preds = %422, %419
  %427 = phi i32 [ %423, %422 ], [ 0, %419 ]
  %428 = phi ptr [ %425, %422 ], [ %3433, %419 ]
  %429 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

430:                                              ; preds = %3429
  %431 = lshr i32 %3434, 7
  %432 = and i32 %431, 255
  %433 = zext nneg i32 %432 to i64
  %434 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %433
  %435 = lshr i32 %3434, 16
  %436 = and i32 %435, 255
  %437 = zext nneg i32 %436 to i64
  %438 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %437
  %439 = lshr i32 %3434, 24
  %440 = getelementptr inbounds %struct.TValue, ptr %438, i64 0, i32 1
  %441 = load i8, ptr %440, align 8, !tbaa !5
  %442 = icmp eq i8 %441, 69
  %443 = zext nneg i32 %439 to i64
  br i1 %442, label %444, label %468

444:                                              ; preds = %430
  %445 = add nsw i64 %443, -1
  %446 = load ptr, ptr %438, align 8, !tbaa !9
  %447 = getelementptr inbounds %struct.Table, ptr %446, i64 0, i32 5
  %448 = load i32, ptr %447, align 4, !tbaa !9
  %449 = zext i32 %448 to i64
  %450 = icmp ult i64 %445, %449
  br i1 %450, label %451, label %456

451:                                              ; preds = %444
  %452 = getelementptr inbounds %struct.Table, ptr %446, i64 0, i32 6
  %453 = load ptr, ptr %452, align 8, !tbaa !9
  %454 = getelementptr %struct.TValue, ptr %453, i64 %443
  %455 = getelementptr %struct.TValue, ptr %454, i64 -1
  br label %458

456:                                              ; preds = %444
  %457 = call ptr @luaH_getint(ptr noundef nonnull %446, i64 noundef %443) #13
  br label %458

458:                                              ; preds = %456, %451
  %459 = phi ptr [ %455, %451 ], [ %457, %456 ]
  %460 = getelementptr inbounds %struct.TValue, ptr %459, i64 0, i32 1
  %461 = load i8, ptr %460, align 8, !tbaa !5
  %462 = and i8 %461, 15
  %463 = icmp eq i8 %462, 0
  br i1 %463, label %468, label %464

464:                                              ; preds = %458
  %465 = load i64, ptr %459, align 8
  store i64 %465, ptr %434, align 8
  %466 = load i8, ptr %460, align 8, !tbaa !5
  %467 = getelementptr inbounds %struct.TValue, ptr %434, i64 0, i32 1
  store i8 %466, ptr %467, align 8, !tbaa !5
  br label %472

468:                                              ; preds = %430, %458
  %469 = phi ptr [ %459, %458 ], [ null, %430 ]
  store i64 %443, ptr %8, align 8, !tbaa !9
  store i8 3, ptr %20, align 8, !tbaa !5
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %470 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %470, ptr %12, align 8, !tbaa !9
  call void @luaV_finishget(ptr noundef %0, ptr noundef nonnull %438, ptr noundef nonnull %8, ptr noundef nonnull %434, ptr noundef %469)
  %471 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %472

472:                                              ; preds = %468, %464
  %473 = phi i32 [ %3431, %464 ], [ %471, %468 ]
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %479, label %475, !prof !33

475:                                              ; preds = %472
  %476 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %477 = load ptr, ptr %29, align 8, !tbaa !9
  %478 = getelementptr inbounds %union.StackValue, ptr %477, i64 1
  br label %479

479:                                              ; preds = %475, %472
  %480 = phi i32 [ %476, %475 ], [ 0, %472 ]
  %481 = phi ptr [ %478, %475 ], [ %3433, %472 ]
  %482 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

483:                                              ; preds = %3429
  %484 = lshr i32 %3434, 7
  %485 = and i32 %484, 255
  %486 = zext nneg i32 %485 to i64
  %487 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %486
  %488 = lshr i32 %3434, 16
  %489 = and i32 %488, 255
  %490 = zext nneg i32 %489 to i64
  %491 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %490
  %492 = lshr i32 %3434, 24
  %493 = zext nneg i32 %492 to i64
  %494 = getelementptr inbounds %struct.TValue, ptr %35, i64 %493
  %495 = getelementptr inbounds %struct.TValue, ptr %491, i64 0, i32 1
  %496 = load i8, ptr %495, align 8, !tbaa !5
  %497 = icmp eq i8 %496, 69
  br i1 %497, label %498, label %510

498:                                              ; preds = %483
  %499 = load ptr, ptr %494, align 8, !tbaa !9
  %500 = load ptr, ptr %491, align 8, !tbaa !9
  %501 = call ptr @luaH_getshortstr(ptr noundef %500, ptr noundef %499) #13
  %502 = getelementptr inbounds %struct.TValue, ptr %501, i64 0, i32 1
  %503 = load i8, ptr %502, align 8, !tbaa !5
  %504 = and i8 %503, 15
  %505 = icmp eq i8 %504, 0
  br i1 %505, label %510, label %506

506:                                              ; preds = %498
  %507 = load i64, ptr %501, align 8
  store i64 %507, ptr %487, align 8
  %508 = load i8, ptr %502, align 8, !tbaa !5
  %509 = getelementptr inbounds %struct.TValue, ptr %487, i64 0, i32 1
  store i8 %508, ptr %509, align 8, !tbaa !5
  br label %514

510:                                              ; preds = %483, %498
  %511 = phi ptr [ %501, %498 ], [ null, %483 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %512 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %512, ptr %12, align 8, !tbaa !9
  call void @luaV_finishget(ptr noundef %0, ptr noundef nonnull %491, ptr noundef %494, ptr noundef nonnull %487, ptr noundef %511)
  %513 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %514

514:                                              ; preds = %510, %506
  %515 = phi i32 [ %3431, %506 ], [ %513, %510 ]
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %521, label %517, !prof !33

517:                                              ; preds = %514
  %518 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %519 = load ptr, ptr %29, align 8, !tbaa !9
  %520 = getelementptr inbounds %union.StackValue, ptr %519, i64 1
  br label %521

521:                                              ; preds = %517, %514
  %522 = phi i32 [ %518, %517 ], [ 0, %514 ]
  %523 = phi ptr [ %520, %517 ], [ %3433, %514 ]
  %524 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

525:                                              ; preds = %3429
  %526 = lshr i32 %3434, 7
  %527 = and i32 %526, 255
  %528 = zext nneg i32 %527 to i64
  %529 = getelementptr inbounds %struct.LClosure, ptr %31, i64 0, i32 6, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !26
  %531 = getelementptr inbounds %struct.UpVal, ptr %530, i64 0, i32 3
  %532 = load ptr, ptr %531, align 8, !tbaa !9
  %533 = lshr i32 %3434, 16
  %534 = and i32 %533, 255
  %535 = zext nneg i32 %534 to i64
  %536 = getelementptr inbounds %struct.TValue, ptr %35, i64 %535
  %537 = and i32 %3434, 32768
  %538 = icmp eq i32 %537, 0
  %539 = lshr i32 %3434, 24
  %540 = zext nneg i32 %539 to i64
  %541 = getelementptr inbounds %struct.TValue, ptr %35, i64 %540
  %542 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %540
  %543 = select i1 %538, ptr %542, ptr %541
  %544 = getelementptr inbounds %struct.TValue, ptr %532, i64 0, i32 1
  %545 = load i8, ptr %544, align 8, !tbaa !5
  %546 = icmp eq i8 %545, 69
  br i1 %546, label %547, label %574

547:                                              ; preds = %525
  %548 = load ptr, ptr %536, align 8, !tbaa !9
  %549 = load ptr, ptr %532, align 8, !tbaa !9
  %550 = call ptr @luaH_getshortstr(ptr noundef %549, ptr noundef %548) #13
  %551 = getelementptr inbounds %struct.TValue, ptr %550, i64 0, i32 1
  %552 = load i8, ptr %551, align 8, !tbaa !5
  %553 = and i8 %552, 15
  %554 = icmp eq i8 %553, 0
  br i1 %554, label %574, label %555

555:                                              ; preds = %547
  %556 = load i64, ptr %543, align 8
  store i64 %556, ptr %550, align 8
  %557 = getelementptr inbounds %struct.TValue, ptr %543, i64 0, i32 1
  %558 = load i8, ptr %557, align 8, !tbaa !5
  store i8 %558, ptr %551, align 8, !tbaa !5
  %559 = and i8 %558, 64
  %560 = icmp eq i8 %559, 0
  br i1 %560, label %578, label %561

561:                                              ; preds = %555
  %562 = load ptr, ptr %532, align 8, !tbaa !9
  %563 = getelementptr inbounds %struct.GCObject, ptr %562, i64 0, i32 2
  %564 = load i8, ptr %563, align 1, !tbaa !30
  %565 = and i8 %564, 32
  %566 = icmp eq i8 %565, 0
  br i1 %566, label %578, label %567

567:                                              ; preds = %561
  %568 = load ptr, ptr %543, align 8, !tbaa !9
  %569 = getelementptr inbounds %struct.GCObject, ptr %568, i64 0, i32 2
  %570 = load i8, ptr %569, align 1, !tbaa !30
  %571 = and i8 %570, 24
  %572 = icmp eq i8 %571, 0
  br i1 %572, label %578, label %573

573:                                              ; preds = %567
  call void @luaC_barrierback_(ptr noundef %0, ptr noundef nonnull %562) #13
  br label %578

574:                                              ; preds = %525, %547
  %575 = phi ptr [ %550, %547 ], [ null, %525 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %576 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %576, ptr %12, align 8, !tbaa !9
  call void @luaV_finishset(ptr noundef %0, ptr noundef nonnull %532, ptr noundef %536, ptr noundef %543, ptr noundef %575)
  %577 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %578

578:                                              ; preds = %561, %567, %573, %555, %574
  %579 = phi i32 [ %3431, %573 ], [ %3431, %567 ], [ %3431, %561 ], [ %3431, %555 ], [ %577, %574 ]
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %585, label %581, !prof !33

581:                                              ; preds = %578
  %582 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %583 = load ptr, ptr %29, align 8, !tbaa !9
  %584 = getelementptr inbounds %union.StackValue, ptr %583, i64 1
  br label %585

585:                                              ; preds = %581, %578
  %586 = phi i32 [ %582, %581 ], [ 0, %578 ]
  %587 = phi ptr [ %584, %581 ], [ %3433, %578 ]
  %588 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

589:                                              ; preds = %3429
  %590 = lshr i32 %3434, 7
  %591 = and i32 %590, 255
  %592 = zext nneg i32 %591 to i64
  %593 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %592
  %594 = lshr i32 %3434, 16
  %595 = and i32 %594, 255
  %596 = zext nneg i32 %595 to i64
  %597 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %596
  %598 = and i32 %3434, 32768
  %599 = icmp eq i32 %598, 0
  %600 = lshr i32 %3434, 24
  %601 = zext nneg i32 %600 to i64
  %602 = getelementptr inbounds %struct.TValue, ptr %35, i64 %601
  %603 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %601
  %604 = select i1 %599, ptr %603, ptr %602
  %605 = getelementptr inbounds %struct.TValue, ptr %597, i64 0, i32 1
  %606 = load i8, ptr %605, align 8, !tbaa !5
  %607 = icmp eq i8 %606, 3
  br i1 %607, label %608, label %632

608:                                              ; preds = %589
  %609 = load i64, ptr %597, align 8, !tbaa !9
  %610 = getelementptr inbounds %struct.TValue, ptr %593, i64 0, i32 1
  %611 = load i8, ptr %610, align 8, !tbaa !9
  %612 = icmp eq i8 %611, 69
  br i1 %612, label %613, label %664

613:                                              ; preds = %608
  %614 = add i64 %609, -1
  %615 = load ptr, ptr %593, align 8, !tbaa !9
  %616 = getelementptr inbounds %struct.Table, ptr %615, i64 0, i32 5
  %617 = load i32, ptr %616, align 4, !tbaa !9
  %618 = zext i32 %617 to i64
  %619 = icmp ult i64 %614, %618
  br i1 %619, label %620, label %624

620:                                              ; preds = %613
  %621 = getelementptr inbounds %struct.Table, ptr %615, i64 0, i32 6
  %622 = load ptr, ptr %621, align 8, !tbaa !9
  %623 = getelementptr inbounds %struct.TValue, ptr %622, i64 %614
  br label %626

624:                                              ; preds = %613
  %625 = call ptr @luaH_getint(ptr noundef nonnull %615, i64 noundef %609) #13
  br label %626

626:                                              ; preds = %620, %624
  %627 = phi ptr [ %623, %620 ], [ %625, %624 ]
  %628 = getelementptr inbounds %struct.TValue, ptr %627, i64 0, i32 1
  %629 = load i8, ptr %628, align 8, !tbaa !5
  %630 = and i8 %629, 15
  %631 = icmp eq i8 %630, 0
  br i1 %631, label %664, label %643

632:                                              ; preds = %589
  %633 = getelementptr inbounds %struct.TValue, ptr %593, i64 0, i32 1
  %634 = load i8, ptr %633, align 8, !tbaa !9
  %635 = icmp eq i8 %634, 69
  br i1 %635, label %636, label %664

636:                                              ; preds = %632
  %637 = load ptr, ptr %593, align 8, !tbaa !9
  %638 = call ptr @luaH_get(ptr noundef %637, ptr noundef nonnull %597) #13
  %639 = getelementptr inbounds %struct.TValue, ptr %638, i64 0, i32 1
  %640 = load i8, ptr %639, align 8, !tbaa !5
  %641 = and i8 %640, 15
  %642 = icmp eq i8 %641, 0
  br i1 %642, label %664, label %643

643:                                              ; preds = %636, %626
  %644 = phi ptr [ %627, %626 ], [ %638, %636 ]
  %645 = load i64, ptr %604, align 8
  store i64 %645, ptr %644, align 8
  %646 = getelementptr inbounds %struct.TValue, ptr %604, i64 0, i32 1
  %647 = load i8, ptr %646, align 8, !tbaa !5
  %648 = getelementptr inbounds %struct.TValue, ptr %644, i64 0, i32 1
  store i8 %647, ptr %648, align 8, !tbaa !5
  %649 = and i8 %647, 64
  %650 = icmp eq i8 %649, 0
  br i1 %650, label %668, label %651

651:                                              ; preds = %643
  %652 = load ptr, ptr %593, align 8, !tbaa !9
  %653 = getelementptr inbounds %struct.GCObject, ptr %652, i64 0, i32 2
  %654 = load i8, ptr %653, align 1, !tbaa !30
  %655 = and i8 %654, 32
  %656 = icmp eq i8 %655, 0
  br i1 %656, label %668, label %657

657:                                              ; preds = %651
  %658 = load ptr, ptr %604, align 8, !tbaa !9
  %659 = getelementptr inbounds %struct.GCObject, ptr %658, i64 0, i32 2
  %660 = load i8, ptr %659, align 1, !tbaa !30
  %661 = and i8 %660, 24
  %662 = icmp eq i8 %661, 0
  br i1 %662, label %668, label %663

663:                                              ; preds = %657
  call void @luaC_barrierback_(ptr noundef %0, ptr noundef nonnull %652) #13
  br label %668

664:                                              ; preds = %608, %632, %636, %626
  %665 = phi ptr [ %627, %626 ], [ %638, %636 ], [ null, %632 ], [ null, %608 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %666 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %666, ptr %12, align 8, !tbaa !9
  call void @luaV_finishset(ptr noundef %0, ptr noundef nonnull %593, ptr noundef nonnull %597, ptr noundef %604, ptr noundef %665)
  %667 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %668

668:                                              ; preds = %651, %657, %663, %643, %664
  %669 = phi i32 [ %3431, %663 ], [ %3431, %657 ], [ %3431, %651 ], [ %3431, %643 ], [ %667, %664 ]
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %675, label %671, !prof !33

671:                                              ; preds = %668
  %672 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %673 = load ptr, ptr %29, align 8, !tbaa !9
  %674 = getelementptr inbounds %union.StackValue, ptr %673, i64 1
  br label %675

675:                                              ; preds = %671, %668
  %676 = phi i32 [ %672, %671 ], [ 0, %668 ]
  %677 = phi ptr [ %674, %671 ], [ %3433, %668 ]
  %678 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

679:                                              ; preds = %3429
  %680 = lshr i32 %3434, 7
  %681 = and i32 %680, 255
  %682 = zext nneg i32 %681 to i64
  %683 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %682
  %684 = lshr i32 %3434, 16
  %685 = and i32 %684, 255
  %686 = and i32 %3434, 32768
  %687 = icmp eq i32 %686, 0
  %688 = lshr i32 %3434, 24
  %689 = zext nneg i32 %688 to i64
  %690 = getelementptr inbounds %struct.TValue, ptr %35, i64 %689
  %691 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %689
  %692 = select i1 %687, ptr %691, ptr %690
  %693 = getelementptr inbounds %struct.TValue, ptr %683, i64 0, i32 1
  %694 = load i8, ptr %693, align 8, !tbaa !9
  %695 = icmp eq i8 %694, 69
  %696 = zext nneg i32 %685 to i64
  br i1 %695, label %697, label %736

697:                                              ; preds = %679
  %698 = add nsw i64 %696, -1
  %699 = load ptr, ptr %683, align 8, !tbaa !9
  %700 = getelementptr inbounds %struct.Table, ptr %699, i64 0, i32 5
  %701 = load i32, ptr %700, align 4, !tbaa !9
  %702 = zext i32 %701 to i64
  %703 = icmp ult i64 %698, %702
  br i1 %703, label %704, label %709

704:                                              ; preds = %697
  %705 = getelementptr inbounds %struct.Table, ptr %699, i64 0, i32 6
  %706 = load ptr, ptr %705, align 8, !tbaa !9
  %707 = getelementptr %struct.TValue, ptr %706, i64 %696
  %708 = getelementptr %struct.TValue, ptr %707, i64 -1
  br label %711

709:                                              ; preds = %697
  %710 = call ptr @luaH_getint(ptr noundef nonnull %699, i64 noundef %696) #13
  br label %711

711:                                              ; preds = %709, %704
  %712 = phi ptr [ %708, %704 ], [ %710, %709 ]
  %713 = getelementptr inbounds %struct.TValue, ptr %712, i64 0, i32 1
  %714 = load i8, ptr %713, align 8, !tbaa !5
  %715 = and i8 %714, 15
  %716 = icmp eq i8 %715, 0
  br i1 %716, label %736, label %717

717:                                              ; preds = %711
  %718 = load i64, ptr %692, align 8
  store i64 %718, ptr %712, align 8
  %719 = getelementptr inbounds %struct.TValue, ptr %692, i64 0, i32 1
  %720 = load i8, ptr %719, align 8, !tbaa !5
  store i8 %720, ptr %713, align 8, !tbaa !5
  %721 = and i8 %720, 64
  %722 = icmp eq i8 %721, 0
  br i1 %722, label %740, label %723

723:                                              ; preds = %717
  %724 = load ptr, ptr %683, align 8, !tbaa !9
  %725 = getelementptr inbounds %struct.GCObject, ptr %724, i64 0, i32 2
  %726 = load i8, ptr %725, align 1, !tbaa !30
  %727 = and i8 %726, 32
  %728 = icmp eq i8 %727, 0
  br i1 %728, label %740, label %729

729:                                              ; preds = %723
  %730 = load ptr, ptr %692, align 8, !tbaa !9
  %731 = getelementptr inbounds %struct.GCObject, ptr %730, i64 0, i32 2
  %732 = load i8, ptr %731, align 1, !tbaa !30
  %733 = and i8 %732, 24
  %734 = icmp eq i8 %733, 0
  br i1 %734, label %740, label %735

735:                                              ; preds = %729
  call void @luaC_barrierback_(ptr noundef %0, ptr noundef nonnull %724) #13
  br label %740

736:                                              ; preds = %679, %711
  %737 = phi ptr [ %712, %711 ], [ null, %679 ]
  store i64 %696, ptr %9, align 8, !tbaa !9
  store i8 3, ptr %19, align 8, !tbaa !5
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %738 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %738, ptr %12, align 8, !tbaa !9
  call void @luaV_finishset(ptr noundef %0, ptr noundef nonnull %683, ptr noundef nonnull %9, ptr noundef %692, ptr noundef %737)
  %739 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %740

740:                                              ; preds = %723, %729, %735, %717, %736
  %741 = phi i32 [ %3431, %735 ], [ %3431, %729 ], [ %3431, %723 ], [ %3431, %717 ], [ %739, %736 ]
  %742 = icmp eq i32 %741, 0
  br i1 %742, label %747, label %743, !prof !33

743:                                              ; preds = %740
  %744 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %745 = load ptr, ptr %29, align 8, !tbaa !9
  %746 = getelementptr inbounds %union.StackValue, ptr %745, i64 1
  br label %747

747:                                              ; preds = %743, %740
  %748 = phi i32 [ %744, %743 ], [ 0, %740 ]
  %749 = phi ptr [ %746, %743 ], [ %3433, %740 ]
  %750 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

751:                                              ; preds = %3429
  %752 = lshr i32 %3434, 7
  %753 = and i32 %752, 255
  %754 = zext nneg i32 %753 to i64
  %755 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %754
  %756 = lshr i32 %3434, 16
  %757 = and i32 %756, 255
  %758 = zext nneg i32 %757 to i64
  %759 = getelementptr inbounds %struct.TValue, ptr %35, i64 %758
  %760 = and i32 %3434, 32768
  %761 = icmp eq i32 %760, 0
  %762 = lshr i32 %3434, 24
  %763 = zext nneg i32 %762 to i64
  %764 = getelementptr inbounds %struct.TValue, ptr %35, i64 %763
  %765 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %763
  %766 = select i1 %761, ptr %765, ptr %764
  %767 = getelementptr inbounds %struct.TValue, ptr %755, i64 0, i32 1
  %768 = load i8, ptr %767, align 8, !tbaa !9
  %769 = icmp eq i8 %768, 69
  br i1 %769, label %770, label %797

770:                                              ; preds = %751
  %771 = load ptr, ptr %759, align 8, !tbaa !9
  %772 = load ptr, ptr %755, align 8, !tbaa !9
  %773 = call ptr @luaH_getshortstr(ptr noundef %772, ptr noundef %771) #13
  %774 = getelementptr inbounds %struct.TValue, ptr %773, i64 0, i32 1
  %775 = load i8, ptr %774, align 8, !tbaa !5
  %776 = and i8 %775, 15
  %777 = icmp eq i8 %776, 0
  br i1 %777, label %797, label %778

778:                                              ; preds = %770
  %779 = load i64, ptr %766, align 8
  store i64 %779, ptr %773, align 8
  %780 = getelementptr inbounds %struct.TValue, ptr %766, i64 0, i32 1
  %781 = load i8, ptr %780, align 8, !tbaa !5
  store i8 %781, ptr %774, align 8, !tbaa !5
  %782 = and i8 %781, 64
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %801, label %784

784:                                              ; preds = %778
  %785 = load ptr, ptr %755, align 8, !tbaa !9
  %786 = getelementptr inbounds %struct.GCObject, ptr %785, i64 0, i32 2
  %787 = load i8, ptr %786, align 1, !tbaa !30
  %788 = and i8 %787, 32
  %789 = icmp eq i8 %788, 0
  br i1 %789, label %801, label %790

790:                                              ; preds = %784
  %791 = load ptr, ptr %766, align 8, !tbaa !9
  %792 = getelementptr inbounds %struct.GCObject, ptr %791, i64 0, i32 2
  %793 = load i8, ptr %792, align 1, !tbaa !30
  %794 = and i8 %793, 24
  %795 = icmp eq i8 %794, 0
  br i1 %795, label %801, label %796

796:                                              ; preds = %790
  call void @luaC_barrierback_(ptr noundef %0, ptr noundef nonnull %785) #13
  br label %801

797:                                              ; preds = %751, %770
  %798 = phi ptr [ %773, %770 ], [ null, %751 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %799 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %799, ptr %12, align 8, !tbaa !9
  call void @luaV_finishset(ptr noundef %0, ptr noundef nonnull %755, ptr noundef %759, ptr noundef %766, ptr noundef %798)
  %800 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %801

801:                                              ; preds = %784, %790, %796, %778, %797
  %802 = phi i32 [ %3431, %796 ], [ %3431, %790 ], [ %3431, %784 ], [ %3431, %778 ], [ %800, %797 ]
  %803 = icmp eq i32 %802, 0
  br i1 %803, label %808, label %804, !prof !33

804:                                              ; preds = %801
  %805 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %806 = load ptr, ptr %29, align 8, !tbaa !9
  %807 = getelementptr inbounds %union.StackValue, ptr %806, i64 1
  br label %808

808:                                              ; preds = %804, %801
  %809 = phi i32 [ %805, %804 ], [ 0, %801 ]
  %810 = phi ptr [ %807, %804 ], [ %3433, %801 ]
  %811 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

812:                                              ; preds = %3429
  %813 = lshr i32 %3434, 7
  %814 = and i32 %813, 255
  %815 = zext nneg i32 %814 to i64
  %816 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %815
  %817 = lshr i32 %3434, 16
  %818 = and i32 %817, 255
  %819 = lshr i32 %3434, 24
  %820 = icmp ne i32 %818, 0
  %821 = add nsw i32 %818, -1
  %822 = shl nuw i32 1, %821
  %823 = select i1 %820, i32 %822, i32 0
  %824 = and i32 %3434, 32768
  %825 = icmp eq i32 %824, 0
  br i1 %825, label %831, label %826

826:                                              ; preds = %812
  %827 = load i32, ptr %3432, align 4, !tbaa !39
  %828 = shl nuw nsw i32 %827, 1
  %829 = and i32 %828, 2147483392
  %830 = or disjoint i32 %829, %819
  br label %831

831:                                              ; preds = %826, %812
  %832 = phi i32 [ %830, %826 ], [ %819, %812 ]
  %833 = getelementptr inbounds i32, ptr %3432, i64 1
  %834 = getelementptr inbounds %union.StackValue, ptr %816, i64 1
  store ptr %834, ptr %12, align 8, !tbaa !9
  %835 = call ptr @luaH_new(ptr noundef %0) #13
  store ptr %835, ptr %816, align 8, !tbaa !9
  %836 = getelementptr inbounds %struct.TValue, ptr %816, i64 0, i32 1
  store i8 69, ptr %836, align 8, !tbaa !5
  %837 = icmp ne i32 %832, 0
  %838 = select i1 %820, i1 true, i1 %837
  br i1 %838, label %839, label %840

839:                                              ; preds = %831
  call void @luaH_resize(ptr noundef nonnull %0, ptr noundef %835, i32 noundef %832, i32 noundef %823) #13
  br label %840

840:                                              ; preds = %831, %839
  %841 = load ptr, ptr %13, align 8, !tbaa !21
  %842 = getelementptr inbounds %struct.global_State, ptr %841, i64 0, i32 3
  %843 = load i64, ptr %842, align 8, !tbaa !51
  %844 = icmp sgt i64 %843, 0
  br i1 %844, label %845, label %847

845:                                              ; preds = %840
  store ptr %833, ptr %36, align 8, !tbaa !9
  store ptr %834, ptr %12, align 8, !tbaa !9
  call void @luaC_step(ptr noundef nonnull %0) #13
  %846 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %847

847:                                              ; preds = %845, %840
  %848 = phi i32 [ %846, %845 ], [ %3431, %840 ]
  %849 = icmp eq i32 %848, 0
  br i1 %849, label %854, label %850, !prof !33

850:                                              ; preds = %847
  %851 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %833) #13
  %852 = load ptr, ptr %29, align 8, !tbaa !9
  %853 = getelementptr inbounds %union.StackValue, ptr %852, i64 1
  br label %854

854:                                              ; preds = %850, %847
  %855 = phi i32 [ %851, %850 ], [ 0, %847 ]
  %856 = phi ptr [ %853, %850 ], [ %3433, %847 ]
  %857 = getelementptr inbounds i32, ptr %3432, i64 2
  br label %74

858:                                              ; preds = %3429
  %859 = lshr i32 %3434, 7
  %860 = and i32 %859, 255
  %861 = zext nneg i32 %860 to i64
  %862 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %861
  %863 = lshr i32 %3434, 16
  %864 = and i32 %863, 255
  %865 = zext nneg i32 %864 to i64
  %866 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %865
  %867 = and i32 %3434, 32768
  %868 = icmp eq i32 %867, 0
  %869 = lshr i32 %3434, 24
  %870 = zext nneg i32 %869 to i64
  %871 = getelementptr inbounds %struct.TValue, ptr %35, i64 %870
  %872 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %870
  %873 = select i1 %868, ptr %872, ptr %871
  %874 = load ptr, ptr %873, align 8, !tbaa !9
  %875 = getelementptr inbounds %union.StackValue, ptr %862, i64 1
  %876 = load i64, ptr %866, align 8
  store i64 %876, ptr %875, align 8
  %877 = getelementptr inbounds %struct.TValue, ptr %866, i64 0, i32 1
  %878 = load i8, ptr %877, align 8, !tbaa !5
  %879 = getelementptr inbounds %union.StackValue, ptr %862, i64 1, i32 0, i32 1
  store i8 %878, ptr %879, align 8, !tbaa !5
  %880 = icmp eq i8 %878, 69
  br i1 %880, label %881, label %892

881:                                              ; preds = %858
  %882 = inttoptr i64 %876 to ptr
  %883 = call ptr @luaH_getstr(ptr noundef %882, ptr noundef %874) #13
  %884 = getelementptr inbounds %struct.TValue, ptr %883, i64 0, i32 1
  %885 = load i8, ptr %884, align 8, !tbaa !5
  %886 = and i8 %885, 15
  %887 = icmp eq i8 %886, 0
  br i1 %887, label %892, label %888

888:                                              ; preds = %881
  %889 = load i64, ptr %883, align 8
  store i64 %889, ptr %862, align 8
  %890 = load i8, ptr %884, align 8, !tbaa !5
  %891 = getelementptr inbounds %struct.TValue, ptr %862, i64 0, i32 1
  store i8 %890, ptr %891, align 8, !tbaa !5
  br label %896

892:                                              ; preds = %858, %881
  %893 = phi ptr [ %883, %881 ], [ null, %858 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %894 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %894, ptr %12, align 8, !tbaa !9
  call void @luaV_finishget(ptr noundef %0, ptr noundef nonnull %866, ptr noundef nonnull %873, ptr noundef nonnull %862, ptr noundef %893)
  %895 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %896

896:                                              ; preds = %892, %888
  %897 = phi i32 [ %3431, %888 ], [ %895, %892 ]
  %898 = icmp eq i32 %897, 0
  br i1 %898, label %903, label %899, !prof !33

899:                                              ; preds = %896
  %900 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %901 = load ptr, ptr %29, align 8, !tbaa !9
  %902 = getelementptr inbounds %union.StackValue, ptr %901, i64 1
  br label %903

903:                                              ; preds = %899, %896
  %904 = phi i32 [ %900, %899 ], [ 0, %896 ]
  %905 = phi ptr [ %902, %899 ], [ %3433, %896 ]
  %906 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

907:                                              ; preds = %3429
  %908 = lshr i32 %3434, 7
  %909 = and i32 %908, 255
  %910 = zext nneg i32 %909 to i64
  %911 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %910
  %912 = lshr i32 %3434, 16
  %913 = and i32 %912, 255
  %914 = zext nneg i32 %913 to i64
  %915 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %914
  %916 = lshr i32 %3434, 24
  %917 = add nsw i32 %916, -127
  %918 = getelementptr inbounds %struct.TValue, ptr %915, i64 0, i32 1
  %919 = load i8, ptr %918, align 8, !tbaa !5
  switch i8 %919, label %933 [
    i8 3, label %920
    i8 19, label %925
  ]

920:                                              ; preds = %907
  %921 = load i64, ptr %915, align 8, !tbaa !9
  %922 = sext i32 %917 to i64
  %923 = add i64 %921, %922
  %924 = bitcast i64 %923 to double
  br label %929

925:                                              ; preds = %907
  %926 = load double, ptr %915, align 8, !tbaa !9
  %927 = sitofp i32 %917 to double
  %928 = fadd double %926, %927
  br label %929

929:                                              ; preds = %920, %925
  %930 = phi double [ %928, %925 ], [ %924, %920 ]
  %931 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %930, ptr %911, align 8, !tbaa !9
  %932 = getelementptr inbounds %struct.TValue, ptr %911, i64 0, i32 1
  store i8 %919, ptr %932, align 8, !tbaa !5
  br label %933

933:                                              ; preds = %929, %907
  %934 = phi ptr [ %3432, %907 ], [ %931, %929 ]
  %935 = icmp eq i32 %3431, 0
  br i1 %935, label %940, label %936, !prof !33

936:                                              ; preds = %933
  %937 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %934) #13
  %938 = load ptr, ptr %29, align 8, !tbaa !9
  %939 = getelementptr inbounds %union.StackValue, ptr %938, i64 1
  br label %940

940:                                              ; preds = %936, %933
  %941 = phi i32 [ %937, %936 ], [ 0, %933 ]
  %942 = phi ptr [ %939, %936 ], [ %3433, %933 ]
  %943 = getelementptr inbounds i32, ptr %934, i64 1
  br label %74

944:                                              ; preds = %3429
  %945 = lshr i32 %3434, 16
  %946 = and i32 %945, 255
  %947 = zext nneg i32 %946 to i64
  %948 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %947
  %949 = lshr i32 %3434, 24
  %950 = zext nneg i32 %949 to i64
  %951 = getelementptr inbounds %struct.TValue, ptr %35, i64 %950
  %952 = lshr i32 %3434, 7
  %953 = and i32 %952, 255
  %954 = zext nneg i32 %953 to i64
  %955 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %954
  %956 = getelementptr inbounds %struct.TValue, ptr %948, i64 0, i32 1
  %957 = load i8, ptr %956, align 8, !tbaa !5
  switch i8 %957, label %989 [
    i8 3, label %958
    i8 19, label %967
  ]

958:                                              ; preds = %944
  %959 = getelementptr inbounds %struct.TValue, ptr %35, i64 %950, i32 1
  %960 = load i8, ptr %959, align 8, !tbaa !5
  %961 = icmp eq i8 %960, 3
  %962 = load i64, ptr %948, align 8, !tbaa !9
  br i1 %961, label %963, label %971

963:                                              ; preds = %958
  %964 = load i64, ptr %951, align 8, !tbaa !9
  %965 = add i64 %964, %962
  %966 = bitcast i64 %965 to double
  br label %984

967:                                              ; preds = %944
  %968 = load double, ptr %948, align 8, !tbaa !9
  %969 = getelementptr inbounds %struct.TValue, ptr %35, i64 %950, i32 1
  %970 = load i8, ptr %969, align 8, !tbaa !5
  br label %973

971:                                              ; preds = %958
  %972 = sitofp i64 %962 to double
  br label %973

973:                                              ; preds = %967, %971
  %974 = phi i8 [ %970, %967 ], [ %960, %971 ]
  %975 = phi double [ %968, %967 ], [ %972, %971 ]
  switch i8 %974, label %989 [
    i8 19, label %976
    i8 3, label %978
  ]

976:                                              ; preds = %973
  %977 = load double, ptr %951, align 8, !tbaa !9
  br label %981

978:                                              ; preds = %973
  %979 = load i64, ptr %951, align 8, !tbaa !9
  %980 = sitofp i64 %979 to double
  br label %981

981:                                              ; preds = %976, %978
  %982 = phi double [ %977, %976 ], [ %980, %978 ]
  %983 = fadd double %975, %982
  br label %984

984:                                              ; preds = %963, %981
  %985 = phi double [ %983, %981 ], [ %966, %963 ]
  %986 = phi i8 [ 19, %981 ], [ 3, %963 ]
  %987 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %985, ptr %955, align 8, !tbaa !9
  %988 = getelementptr inbounds %struct.TValue, ptr %955, i64 0, i32 1
  store i8 %986, ptr %988, align 8, !tbaa !5
  br label %989

989:                                              ; preds = %984, %944, %973
  %990 = phi ptr [ %3432, %973 ], [ %3432, %944 ], [ %987, %984 ]
  %991 = icmp eq i32 %3431, 0
  br i1 %991, label %996, label %992, !prof !33

992:                                              ; preds = %989
  %993 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %990) #13
  %994 = load ptr, ptr %29, align 8, !tbaa !9
  %995 = getelementptr inbounds %union.StackValue, ptr %994, i64 1
  br label %996

996:                                              ; preds = %992, %989
  %997 = phi i32 [ %993, %992 ], [ 0, %989 ]
  %998 = phi ptr [ %995, %992 ], [ %3433, %989 ]
  %999 = getelementptr inbounds i32, ptr %990, i64 1
  br label %74

1000:                                             ; preds = %3429
  %1001 = lshr i32 %3434, 16
  %1002 = and i32 %1001, 255
  %1003 = zext nneg i32 %1002 to i64
  %1004 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1003
  %1005 = lshr i32 %3434, 24
  %1006 = zext nneg i32 %1005 to i64
  %1007 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1006
  %1008 = lshr i32 %3434, 7
  %1009 = and i32 %1008, 255
  %1010 = zext nneg i32 %1009 to i64
  %1011 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1010
  %1012 = getelementptr inbounds %struct.TValue, ptr %1004, i64 0, i32 1
  %1013 = load i8, ptr %1012, align 8, !tbaa !5
  switch i8 %1013, label %1045 [
    i8 3, label %1014
    i8 19, label %1023
  ]

1014:                                             ; preds = %1000
  %1015 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1006, i32 1
  %1016 = load i8, ptr %1015, align 8, !tbaa !5
  %1017 = icmp eq i8 %1016, 3
  %1018 = load i64, ptr %1004, align 8, !tbaa !9
  br i1 %1017, label %1019, label %1027

1019:                                             ; preds = %1014
  %1020 = load i64, ptr %1007, align 8, !tbaa !9
  %1021 = sub i64 %1018, %1020
  %1022 = bitcast i64 %1021 to double
  br label %1040

1023:                                             ; preds = %1000
  %1024 = load double, ptr %1004, align 8, !tbaa !9
  %1025 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1006, i32 1
  %1026 = load i8, ptr %1025, align 8, !tbaa !5
  br label %1029

1027:                                             ; preds = %1014
  %1028 = sitofp i64 %1018 to double
  br label %1029

1029:                                             ; preds = %1023, %1027
  %1030 = phi i8 [ %1026, %1023 ], [ %1016, %1027 ]
  %1031 = phi double [ %1024, %1023 ], [ %1028, %1027 ]
  switch i8 %1030, label %1045 [
    i8 19, label %1032
    i8 3, label %1034
  ]

1032:                                             ; preds = %1029
  %1033 = load double, ptr %1007, align 8, !tbaa !9
  br label %1037

1034:                                             ; preds = %1029
  %1035 = load i64, ptr %1007, align 8, !tbaa !9
  %1036 = sitofp i64 %1035 to double
  br label %1037

1037:                                             ; preds = %1032, %1034
  %1038 = phi double [ %1033, %1032 ], [ %1036, %1034 ]
  %1039 = fsub double %1031, %1038
  br label %1040

1040:                                             ; preds = %1019, %1037
  %1041 = phi double [ %1039, %1037 ], [ %1022, %1019 ]
  %1042 = phi i8 [ 19, %1037 ], [ 3, %1019 ]
  %1043 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %1041, ptr %1011, align 8, !tbaa !9
  %1044 = getelementptr inbounds %struct.TValue, ptr %1011, i64 0, i32 1
  store i8 %1042, ptr %1044, align 8, !tbaa !5
  br label %1045

1045:                                             ; preds = %1040, %1000, %1029
  %1046 = phi ptr [ %3432, %1029 ], [ %3432, %1000 ], [ %1043, %1040 ]
  %1047 = icmp eq i32 %3431, 0
  br i1 %1047, label %1052, label %1048, !prof !33

1048:                                             ; preds = %1045
  %1049 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1046) #13
  %1050 = load ptr, ptr %29, align 8, !tbaa !9
  %1051 = getelementptr inbounds %union.StackValue, ptr %1050, i64 1
  br label %1052

1052:                                             ; preds = %1048, %1045
  %1053 = phi i32 [ %1049, %1048 ], [ 0, %1045 ]
  %1054 = phi ptr [ %1051, %1048 ], [ %3433, %1045 ]
  %1055 = getelementptr inbounds i32, ptr %1046, i64 1
  br label %74

1056:                                             ; preds = %3429
  %1057 = lshr i32 %3434, 16
  %1058 = and i32 %1057, 255
  %1059 = zext nneg i32 %1058 to i64
  %1060 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1059
  %1061 = lshr i32 %3434, 24
  %1062 = zext nneg i32 %1061 to i64
  %1063 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1062
  %1064 = lshr i32 %3434, 7
  %1065 = and i32 %1064, 255
  %1066 = zext nneg i32 %1065 to i64
  %1067 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1066
  %1068 = getelementptr inbounds %struct.TValue, ptr %1060, i64 0, i32 1
  %1069 = load i8, ptr %1068, align 8, !tbaa !5
  switch i8 %1069, label %1101 [
    i8 3, label %1070
    i8 19, label %1079
  ]

1070:                                             ; preds = %1056
  %1071 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1062, i32 1
  %1072 = load i8, ptr %1071, align 8, !tbaa !5
  %1073 = icmp eq i8 %1072, 3
  %1074 = load i64, ptr %1060, align 8, !tbaa !9
  br i1 %1073, label %1075, label %1083

1075:                                             ; preds = %1070
  %1076 = load i64, ptr %1063, align 8, !tbaa !9
  %1077 = mul i64 %1076, %1074
  %1078 = bitcast i64 %1077 to double
  br label %1096

1079:                                             ; preds = %1056
  %1080 = load double, ptr %1060, align 8, !tbaa !9
  %1081 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1062, i32 1
  %1082 = load i8, ptr %1081, align 8, !tbaa !5
  br label %1085

1083:                                             ; preds = %1070
  %1084 = sitofp i64 %1074 to double
  br label %1085

1085:                                             ; preds = %1079, %1083
  %1086 = phi i8 [ %1082, %1079 ], [ %1072, %1083 ]
  %1087 = phi double [ %1080, %1079 ], [ %1084, %1083 ]
  switch i8 %1086, label %1101 [
    i8 19, label %1088
    i8 3, label %1090
  ]

1088:                                             ; preds = %1085
  %1089 = load double, ptr %1063, align 8, !tbaa !9
  br label %1093

1090:                                             ; preds = %1085
  %1091 = load i64, ptr %1063, align 8, !tbaa !9
  %1092 = sitofp i64 %1091 to double
  br label %1093

1093:                                             ; preds = %1088, %1090
  %1094 = phi double [ %1089, %1088 ], [ %1092, %1090 ]
  %1095 = fmul double %1087, %1094
  br label %1096

1096:                                             ; preds = %1075, %1093
  %1097 = phi double [ %1095, %1093 ], [ %1078, %1075 ]
  %1098 = phi i8 [ 19, %1093 ], [ 3, %1075 ]
  %1099 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %1097, ptr %1067, align 8, !tbaa !9
  %1100 = getelementptr inbounds %struct.TValue, ptr %1067, i64 0, i32 1
  store i8 %1098, ptr %1100, align 8, !tbaa !5
  br label %1101

1101:                                             ; preds = %1096, %1056, %1085
  %1102 = phi ptr [ %3432, %1085 ], [ %3432, %1056 ], [ %1099, %1096 ]
  %1103 = icmp eq i32 %3431, 0
  br i1 %1103, label %1108, label %1104, !prof !33

1104:                                             ; preds = %1101
  %1105 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1102) #13
  %1106 = load ptr, ptr %29, align 8, !tbaa !9
  %1107 = getelementptr inbounds %union.StackValue, ptr %1106, i64 1
  br label %1108

1108:                                             ; preds = %1104, %1101
  %1109 = phi i32 [ %1105, %1104 ], [ 0, %1101 ]
  %1110 = phi ptr [ %1107, %1104 ], [ %3433, %1101 ]
  %1111 = getelementptr inbounds i32, ptr %1102, i64 1
  br label %74

1112:                                             ; preds = %3429
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %1113 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %1113, ptr %12, align 8, !tbaa !9
  %1114 = lshr i32 %3434, 16
  %1115 = and i32 %1114, 255
  %1116 = zext nneg i32 %1115 to i64
  %1117 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1116
  %1118 = lshr i32 %3434, 24
  %1119 = zext nneg i32 %1118 to i64
  %1120 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1119
  %1121 = lshr i32 %3434, 7
  %1122 = and i32 %1121, 255
  %1123 = zext nneg i32 %1122 to i64
  %1124 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1123
  %1125 = getelementptr inbounds %struct.TValue, ptr %1117, i64 0, i32 1
  %1126 = load i8, ptr %1125, align 8, !tbaa !5
  switch i8 %1126, label %1182 [
    i8 3, label %1127
    i8 19, label %1150
  ]

1127:                                             ; preds = %1112
  %1128 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1119, i32 1
  %1129 = load i8, ptr %1128, align 8, !tbaa !5
  %1130 = icmp eq i8 %1129, 3
  br i1 %1130, label %1131, label %1154

1131:                                             ; preds = %1127
  %1132 = load i64, ptr %1120, align 8, !tbaa !9
  %1133 = add i64 %1132, 1
  %1134 = icmp ult i64 %1133, 2
  br i1 %1134, label %1135, label %1138, !prof !18

1135:                                             ; preds = %1131
  %1136 = icmp eq i64 %1132, 0
  br i1 %1136, label %1137, label %1147

1137:                                             ; preds = %1135
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #14
  unreachable

1138:                                             ; preds = %1131
  %1139 = load i64, ptr %1117, align 8, !tbaa !9
  %1140 = srem i64 %1139, %1132
  %1141 = icmp eq i64 %1140, 0
  br i1 %1141, label %1147, label %1142

1142:                                             ; preds = %1138
  %1143 = xor i64 %1140, %1132
  %1144 = icmp slt i64 %1143, 0
  %1145 = select i1 %1144, i64 %1132, i64 0
  %1146 = add nsw i64 %1145, %1140
  br label %1147

1147:                                             ; preds = %1135, %1138, %1142
  %1148 = phi i64 [ 0, %1135 ], [ 0, %1138 ], [ %1146, %1142 ]
  %1149 = bitcast i64 %1148 to double
  br label %1177

1150:                                             ; preds = %1112
  %1151 = load double, ptr %1117, align 8, !tbaa !9
  %1152 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1119, i32 1
  %1153 = load i8, ptr %1152, align 8, !tbaa !5
  br label %1157

1154:                                             ; preds = %1127
  %1155 = load i64, ptr %1117, align 8, !tbaa !9
  %1156 = sitofp i64 %1155 to double
  br label %1157

1157:                                             ; preds = %1150, %1154
  %1158 = phi i8 [ %1153, %1150 ], [ %1129, %1154 ]
  %1159 = phi double [ %1151, %1150 ], [ %1156, %1154 ]
  switch i8 %1158, label %1182 [
    i8 19, label %1160
    i8 3, label %1162
  ]

1160:                                             ; preds = %1157
  %1161 = load double, ptr %1120, align 8, !tbaa !9
  br label %1165

1162:                                             ; preds = %1157
  %1163 = load i64, ptr %1120, align 8, !tbaa !9
  %1164 = sitofp i64 %1163 to double
  br label %1165

1165:                                             ; preds = %1160, %1162
  %1166 = phi double [ %1161, %1160 ], [ %1164, %1162 ]
  %1167 = call double @fmod(double noundef %1159, double noundef %1166) #13
  %1168 = fcmp ogt double %1167, 0.000000e+00
  br i1 %1168, label %1169, label %1171

1169:                                             ; preds = %1165
  %1170 = fcmp olt double %1166, 0.000000e+00
  br i1 %1170, label %1175, label %1177

1171:                                             ; preds = %1165
  %1172 = fcmp olt double %1167, 0.000000e+00
  %1173 = fcmp ogt double %1166, 0.000000e+00
  %1174 = and i1 %1173, %1172
  br i1 %1174, label %1175, label %1177

1175:                                             ; preds = %1171, %1169
  %1176 = fadd double %1166, %1167
  br label %1177

1177:                                             ; preds = %1175, %1171, %1169, %1147
  %1178 = phi double [ %1149, %1147 ], [ %1176, %1175 ], [ %1167, %1169 ], [ %1167, %1171 ]
  %1179 = phi i8 [ 3, %1147 ], [ 19, %1175 ], [ 19, %1169 ], [ 19, %1171 ]
  %1180 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %1178, ptr %1124, align 8, !tbaa !9
  %1181 = getelementptr inbounds %struct.TValue, ptr %1124, i64 0, i32 1
  store i8 %1179, ptr %1181, align 8, !tbaa !5
  br label %1182

1182:                                             ; preds = %1177, %1112, %1157
  %1183 = phi ptr [ %3432, %1157 ], [ %3432, %1112 ], [ %1180, %1177 ]
  %1184 = icmp eq i32 %3431, 0
  br i1 %1184, label %1189, label %1185, !prof !33

1185:                                             ; preds = %1182
  %1186 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %1183) #13
  %1187 = load ptr, ptr %29, align 8, !tbaa !9
  %1188 = getelementptr inbounds %union.StackValue, ptr %1187, i64 1
  br label %1189

1189:                                             ; preds = %1185, %1182
  %1190 = phi i32 [ %1186, %1185 ], [ 0, %1182 ]
  %1191 = phi ptr [ %1188, %1185 ], [ %3433, %1182 ]
  %1192 = getelementptr inbounds i32, ptr %1183, i64 1
  br label %74

1193:                                             ; preds = %3429
  %1194 = lshr i32 %3434, 7
  %1195 = and i32 %1194, 255
  %1196 = zext nneg i32 %1195 to i64
  %1197 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1196
  %1198 = lshr i32 %3434, 16
  %1199 = and i32 %1198, 255
  %1200 = zext nneg i32 %1199 to i64
  %1201 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1200
  %1202 = lshr i32 %3434, 24
  %1203 = zext nneg i32 %1202 to i64
  %1204 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1203
  %1205 = getelementptr inbounds %struct.TValue, ptr %1201, i64 0, i32 1
  %1206 = load i8, ptr %1205, align 8, !tbaa !5
  switch i8 %1206, label %1232 [
    i8 19, label %1207
    i8 3, label %1209
  ]

1207:                                             ; preds = %1193
  %1208 = load double, ptr %1201, align 8, !tbaa !9
  br label %1212

1209:                                             ; preds = %1193
  %1210 = load i64, ptr %1201, align 8, !tbaa !9
  %1211 = sitofp i64 %1210 to double
  br label %1212

1212:                                             ; preds = %1207, %1209
  %1213 = phi double [ %1208, %1207 ], [ %1211, %1209 ]
  %1214 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1203, i32 1
  %1215 = load i8, ptr %1214, align 8, !tbaa !5
  switch i8 %1215, label %1232 [
    i8 19, label %1216
    i8 3, label %1218
  ]

1216:                                             ; preds = %1212
  %1217 = load double, ptr %1204, align 8, !tbaa !9
  br label %1221

1218:                                             ; preds = %1212
  %1219 = load i64, ptr %1204, align 8, !tbaa !9
  %1220 = sitofp i64 %1219 to double
  br label %1221

1221:                                             ; preds = %1216, %1218
  %1222 = phi double [ %1217, %1216 ], [ %1220, %1218 ]
  %1223 = getelementptr inbounds i32, ptr %3432, i64 1
  %1224 = fcmp oeq double %1222, 2.000000e+00
  br i1 %1224, label %1225, label %1227

1225:                                             ; preds = %1221
  %1226 = fmul double %1213, %1213
  br label %1229

1227:                                             ; preds = %1221
  %1228 = call double @pow(double noundef %1213, double noundef %1222) #13
  br label %1229

1229:                                             ; preds = %1227, %1225
  %1230 = phi double [ %1226, %1225 ], [ %1228, %1227 ]
  store double %1230, ptr %1197, align 8, !tbaa !9
  %1231 = getelementptr inbounds %struct.TValue, ptr %1197, i64 0, i32 1
  store i8 19, ptr %1231, align 8, !tbaa !5
  br label %1232

1232:                                             ; preds = %1212, %1193, %1229
  %1233 = phi ptr [ %1223, %1229 ], [ %3432, %1193 ], [ %3432, %1212 ]
  %1234 = icmp eq i32 %3431, 0
  br i1 %1234, label %1239, label %1235, !prof !33

1235:                                             ; preds = %1232
  %1236 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1233) #13
  %1237 = load ptr, ptr %29, align 8, !tbaa !9
  %1238 = getelementptr inbounds %union.StackValue, ptr %1237, i64 1
  br label %1239

1239:                                             ; preds = %1235, %1232
  %1240 = phi i32 [ %1236, %1235 ], [ 0, %1232 ]
  %1241 = phi ptr [ %1238, %1235 ], [ %3433, %1232 ]
  %1242 = getelementptr inbounds i32, ptr %1233, i64 1
  br label %74

1243:                                             ; preds = %3429
  %1244 = lshr i32 %3434, 7
  %1245 = and i32 %1244, 255
  %1246 = zext nneg i32 %1245 to i64
  %1247 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1246
  %1248 = lshr i32 %3434, 16
  %1249 = and i32 %1248, 255
  %1250 = zext nneg i32 %1249 to i64
  %1251 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1250
  %1252 = lshr i32 %3434, 24
  %1253 = zext nneg i32 %1252 to i64
  %1254 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1253
  %1255 = getelementptr inbounds %struct.TValue, ptr %1251, i64 0, i32 1
  %1256 = load i8, ptr %1255, align 8, !tbaa !5
  switch i8 %1256, label %1276 [
    i8 19, label %1257
    i8 3, label %1259
  ]

1257:                                             ; preds = %1243
  %1258 = load double, ptr %1251, align 8, !tbaa !9
  br label %1262

1259:                                             ; preds = %1243
  %1260 = load i64, ptr %1251, align 8, !tbaa !9
  %1261 = sitofp i64 %1260 to double
  br label %1262

1262:                                             ; preds = %1257, %1259
  %1263 = phi double [ %1258, %1257 ], [ %1261, %1259 ]
  %1264 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1253, i32 1
  %1265 = load i8, ptr %1264, align 8, !tbaa !5
  switch i8 %1265, label %1276 [
    i8 19, label %1266
    i8 3, label %1268
  ]

1266:                                             ; preds = %1262
  %1267 = load double, ptr %1254, align 8, !tbaa !9
  br label %1271

1268:                                             ; preds = %1262
  %1269 = load i64, ptr %1254, align 8, !tbaa !9
  %1270 = sitofp i64 %1269 to double
  br label %1271

1271:                                             ; preds = %1266, %1268
  %1272 = phi double [ %1267, %1266 ], [ %1270, %1268 ]
  %1273 = getelementptr inbounds i32, ptr %3432, i64 1
  %1274 = fdiv double %1263, %1272
  store double %1274, ptr %1247, align 8, !tbaa !9
  %1275 = getelementptr inbounds %struct.TValue, ptr %1247, i64 0, i32 1
  store i8 19, ptr %1275, align 8, !tbaa !5
  br label %1276

1276:                                             ; preds = %1262, %1243, %1271
  %1277 = phi ptr [ %1273, %1271 ], [ %3432, %1243 ], [ %3432, %1262 ]
  %1278 = icmp eq i32 %3431, 0
  br i1 %1278, label %1283, label %1279, !prof !33

1279:                                             ; preds = %1276
  %1280 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1277) #13
  %1281 = load ptr, ptr %29, align 8, !tbaa !9
  %1282 = getelementptr inbounds %union.StackValue, ptr %1281, i64 1
  br label %1283

1283:                                             ; preds = %1279, %1276
  %1284 = phi i32 [ %1280, %1279 ], [ 0, %1276 ]
  %1285 = phi ptr [ %1282, %1279 ], [ %3433, %1276 ]
  %1286 = getelementptr inbounds i32, ptr %1277, i64 1
  br label %74

1287:                                             ; preds = %3429
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %1288 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %1288, ptr %12, align 8, !tbaa !9
  %1289 = lshr i32 %3434, 16
  %1290 = and i32 %1289, 255
  %1291 = zext nneg i32 %1290 to i64
  %1292 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1291
  %1293 = lshr i32 %3434, 24
  %1294 = zext nneg i32 %1293 to i64
  %1295 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1294
  %1296 = lshr i32 %3434, 7
  %1297 = and i32 %1296, 255
  %1298 = zext nneg i32 %1297 to i64
  %1299 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1298
  %1300 = getelementptr inbounds %struct.TValue, ptr %1292, i64 0, i32 1
  %1301 = load i8, ptr %1300, align 8, !tbaa !5
  switch i8 %1301, label %1351 [
    i8 3, label %1302
    i8 19, label %1328
  ]

1302:                                             ; preds = %1287
  %1303 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1294, i32 1
  %1304 = load i8, ptr %1303, align 8, !tbaa !5
  %1305 = icmp eq i8 %1304, 3
  %1306 = load i64, ptr %1292, align 8, !tbaa !9
  br i1 %1305, label %1307, label %1332

1307:                                             ; preds = %1302
  %1308 = load i64, ptr %1295, align 8, !tbaa !9
  %1309 = add i64 %1308, 1
  %1310 = icmp ult i64 %1309, 2
  br i1 %1310, label %1311, label %1316, !prof !18

1311:                                             ; preds = %1307
  %1312 = icmp eq i64 %1308, 0
  br i1 %1312, label %1313, label %1314

1313:                                             ; preds = %1311
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #14
  unreachable

1314:                                             ; preds = %1311
  %1315 = sub i64 0, %1306
  br label %1325

1316:                                             ; preds = %1307
  %1317 = sdiv i64 %1306, %1308
  %1318 = srem i64 %1306, %1308
  %1319 = xor i64 %1308, %1306
  %1320 = icmp slt i64 %1319, 0
  br i1 %1320, label %1321, label %1325

1321:                                             ; preds = %1316
  %1322 = icmp ne i64 %1318, 0
  %1323 = sext i1 %1322 to i64
  %1324 = add nsw i64 %1317, %1323
  br label %1325

1325:                                             ; preds = %1314, %1316, %1321
  %1326 = phi i64 [ %1315, %1314 ], [ %1317, %1316 ], [ %1324, %1321 ]
  %1327 = bitcast i64 %1326 to double
  br label %1346

1328:                                             ; preds = %1287
  %1329 = load double, ptr %1292, align 8, !tbaa !9
  %1330 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1294, i32 1
  %1331 = load i8, ptr %1330, align 8, !tbaa !5
  br label %1334

1332:                                             ; preds = %1302
  %1333 = sitofp i64 %1306 to double
  br label %1334

1334:                                             ; preds = %1328, %1332
  %1335 = phi i8 [ %1331, %1328 ], [ %1304, %1332 ]
  %1336 = phi double [ %1329, %1328 ], [ %1333, %1332 ]
  switch i8 %1335, label %1351 [
    i8 19, label %1337
    i8 3, label %1339
  ]

1337:                                             ; preds = %1334
  %1338 = load double, ptr %1295, align 8, !tbaa !9
  br label %1342

1339:                                             ; preds = %1334
  %1340 = load i64, ptr %1295, align 8, !tbaa !9
  %1341 = sitofp i64 %1340 to double
  br label %1342

1342:                                             ; preds = %1337, %1339
  %1343 = phi double [ %1338, %1337 ], [ %1341, %1339 ]
  %1344 = fdiv double %1336, %1343
  %1345 = call double @llvm.floor.f64(double %1344)
  br label %1346

1346:                                             ; preds = %1325, %1342
  %1347 = phi double [ %1345, %1342 ], [ %1327, %1325 ]
  %1348 = phi i8 [ 19, %1342 ], [ 3, %1325 ]
  %1349 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %1347, ptr %1299, align 8, !tbaa !9
  %1350 = getelementptr inbounds %struct.TValue, ptr %1299, i64 0, i32 1
  store i8 %1348, ptr %1350, align 8, !tbaa !5
  br label %1351

1351:                                             ; preds = %1346, %1287, %1334
  %1352 = phi ptr [ %3432, %1334 ], [ %3432, %1287 ], [ %1349, %1346 ]
  %1353 = icmp eq i32 %3431, 0
  br i1 %1353, label %1358, label %1354, !prof !33

1354:                                             ; preds = %1351
  %1355 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %1352) #13
  %1356 = load ptr, ptr %29, align 8, !tbaa !9
  %1357 = getelementptr inbounds %union.StackValue, ptr %1356, i64 1
  br label %1358

1358:                                             ; preds = %1354, %1351
  %1359 = phi i32 [ %1355, %1354 ], [ 0, %1351 ]
  %1360 = phi ptr [ %1357, %1354 ], [ %3433, %1351 ]
  %1361 = getelementptr inbounds i32, ptr %1352, i64 1
  br label %74

1362:                                             ; preds = %3429
  %1363 = lshr i32 %3434, 7
  %1364 = and i32 %1363, 255
  %1365 = zext nneg i32 %1364 to i64
  %1366 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1365
  %1367 = lshr i32 %3434, 16
  %1368 = and i32 %1367, 255
  %1369 = zext nneg i32 %1368 to i64
  %1370 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1369
  %1371 = lshr i32 %3434, 24
  %1372 = zext nneg i32 %1371 to i64
  %1373 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1372
  %1374 = load i64, ptr %1373, align 8, !tbaa !9
  %1375 = getelementptr inbounds %struct.TValue, ptr %1370, i64 0, i32 1
  %1376 = load i8, ptr %1375, align 8, !tbaa !5
  switch i8 %1376, label %1394 [
    i8 3, label %1377
    i8 19, label %1379
  ], !prof !54

1377:                                             ; preds = %1362
  %1378 = load i64, ptr %1370, align 8, !tbaa !9
  br label %1389

1379:                                             ; preds = %1362
  %1380 = load double, ptr %1370, align 8, !tbaa !9
  %1381 = call double @llvm.floor.f64(double %1380)
  %1382 = fcmp une double %1381, %1380
  br i1 %1382, label %1394, label %1383

1383:                                             ; preds = %1379
  %1384 = fcmp oge double %1381, 0xC3E0000000000000
  %1385 = fcmp olt double %1381, 0x43E0000000000000
  %1386 = and i1 %1384, %1385
  br i1 %1386, label %1387, label %1394

1387:                                             ; preds = %1383
  %1388 = fptosi double %1381 to i64
  br label %1389

1389:                                             ; preds = %1387, %1377
  %1390 = phi i64 [ %1378, %1377 ], [ %1388, %1387 ]
  %1391 = getelementptr inbounds i32, ptr %3432, i64 1
  %1392 = and i64 %1390, %1374
  store i64 %1392, ptr %1366, align 8, !tbaa !9
  %1393 = getelementptr inbounds %struct.TValue, ptr %1366, i64 0, i32 1
  store i8 3, ptr %1393, align 8, !tbaa !5
  br label %1394

1394:                                             ; preds = %1362, %1379, %1383, %1389
  %1395 = phi ptr [ %1391, %1389 ], [ %3432, %1383 ], [ %3432, %1379 ], [ %3432, %1362 ]
  %1396 = icmp eq i32 %3431, 0
  br i1 %1396, label %1401, label %1397, !prof !33

1397:                                             ; preds = %1394
  %1398 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1395) #13
  %1399 = load ptr, ptr %29, align 8, !tbaa !9
  %1400 = getelementptr inbounds %union.StackValue, ptr %1399, i64 1
  br label %1401

1401:                                             ; preds = %1397, %1394
  %1402 = phi i32 [ %1398, %1397 ], [ 0, %1394 ]
  %1403 = phi ptr [ %1400, %1397 ], [ %3433, %1394 ]
  %1404 = getelementptr inbounds i32, ptr %1395, i64 1
  br label %74

1405:                                             ; preds = %3429
  %1406 = lshr i32 %3434, 7
  %1407 = and i32 %1406, 255
  %1408 = zext nneg i32 %1407 to i64
  %1409 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1408
  %1410 = lshr i32 %3434, 16
  %1411 = and i32 %1410, 255
  %1412 = zext nneg i32 %1411 to i64
  %1413 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1412
  %1414 = lshr i32 %3434, 24
  %1415 = zext nneg i32 %1414 to i64
  %1416 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1415
  %1417 = load i64, ptr %1416, align 8, !tbaa !9
  %1418 = getelementptr inbounds %struct.TValue, ptr %1413, i64 0, i32 1
  %1419 = load i8, ptr %1418, align 8, !tbaa !5
  switch i8 %1419, label %1437 [
    i8 3, label %1420
    i8 19, label %1422
  ], !prof !54

1420:                                             ; preds = %1405
  %1421 = load i64, ptr %1413, align 8, !tbaa !9
  br label %1432

1422:                                             ; preds = %1405
  %1423 = load double, ptr %1413, align 8, !tbaa !9
  %1424 = call double @llvm.floor.f64(double %1423)
  %1425 = fcmp une double %1424, %1423
  br i1 %1425, label %1437, label %1426

1426:                                             ; preds = %1422
  %1427 = fcmp oge double %1424, 0xC3E0000000000000
  %1428 = fcmp olt double %1424, 0x43E0000000000000
  %1429 = and i1 %1427, %1428
  br i1 %1429, label %1430, label %1437

1430:                                             ; preds = %1426
  %1431 = fptosi double %1424 to i64
  br label %1432

1432:                                             ; preds = %1430, %1420
  %1433 = phi i64 [ %1421, %1420 ], [ %1431, %1430 ]
  %1434 = getelementptr inbounds i32, ptr %3432, i64 1
  %1435 = or i64 %1433, %1417
  store i64 %1435, ptr %1409, align 8, !tbaa !9
  %1436 = getelementptr inbounds %struct.TValue, ptr %1409, i64 0, i32 1
  store i8 3, ptr %1436, align 8, !tbaa !5
  br label %1437

1437:                                             ; preds = %1405, %1422, %1426, %1432
  %1438 = phi ptr [ %1434, %1432 ], [ %3432, %1426 ], [ %3432, %1422 ], [ %3432, %1405 ]
  %1439 = icmp eq i32 %3431, 0
  br i1 %1439, label %1444, label %1440, !prof !33

1440:                                             ; preds = %1437
  %1441 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1438) #13
  %1442 = load ptr, ptr %29, align 8, !tbaa !9
  %1443 = getelementptr inbounds %union.StackValue, ptr %1442, i64 1
  br label %1444

1444:                                             ; preds = %1440, %1437
  %1445 = phi i32 [ %1441, %1440 ], [ 0, %1437 ]
  %1446 = phi ptr [ %1443, %1440 ], [ %3433, %1437 ]
  %1447 = getelementptr inbounds i32, ptr %1438, i64 1
  br label %74

1448:                                             ; preds = %3429
  %1449 = lshr i32 %3434, 7
  %1450 = and i32 %1449, 255
  %1451 = zext nneg i32 %1450 to i64
  %1452 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1451
  %1453 = lshr i32 %3434, 16
  %1454 = and i32 %1453, 255
  %1455 = zext nneg i32 %1454 to i64
  %1456 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1455
  %1457 = lshr i32 %3434, 24
  %1458 = zext nneg i32 %1457 to i64
  %1459 = getelementptr inbounds %struct.TValue, ptr %35, i64 %1458
  %1460 = load i64, ptr %1459, align 8, !tbaa !9
  %1461 = getelementptr inbounds %struct.TValue, ptr %1456, i64 0, i32 1
  %1462 = load i8, ptr %1461, align 8, !tbaa !5
  switch i8 %1462, label %1480 [
    i8 3, label %1463
    i8 19, label %1465
  ], !prof !54

1463:                                             ; preds = %1448
  %1464 = load i64, ptr %1456, align 8, !tbaa !9
  br label %1475

1465:                                             ; preds = %1448
  %1466 = load double, ptr %1456, align 8, !tbaa !9
  %1467 = call double @llvm.floor.f64(double %1466)
  %1468 = fcmp une double %1467, %1466
  br i1 %1468, label %1480, label %1469

1469:                                             ; preds = %1465
  %1470 = fcmp oge double %1467, 0xC3E0000000000000
  %1471 = fcmp olt double %1467, 0x43E0000000000000
  %1472 = and i1 %1470, %1471
  br i1 %1472, label %1473, label %1480

1473:                                             ; preds = %1469
  %1474 = fptosi double %1467 to i64
  br label %1475

1475:                                             ; preds = %1473, %1463
  %1476 = phi i64 [ %1464, %1463 ], [ %1474, %1473 ]
  %1477 = getelementptr inbounds i32, ptr %3432, i64 1
  %1478 = xor i64 %1476, %1460
  store i64 %1478, ptr %1452, align 8, !tbaa !9
  %1479 = getelementptr inbounds %struct.TValue, ptr %1452, i64 0, i32 1
  store i8 3, ptr %1479, align 8, !tbaa !5
  br label %1480

1480:                                             ; preds = %1448, %1465, %1469, %1475
  %1481 = phi ptr [ %1477, %1475 ], [ %3432, %1469 ], [ %3432, %1465 ], [ %3432, %1448 ]
  %1482 = icmp eq i32 %3431, 0
  br i1 %1482, label %1487, label %1483, !prof !33

1483:                                             ; preds = %1480
  %1484 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1481) #13
  %1485 = load ptr, ptr %29, align 8, !tbaa !9
  %1486 = getelementptr inbounds %union.StackValue, ptr %1485, i64 1
  br label %1487

1487:                                             ; preds = %1483, %1480
  %1488 = phi i32 [ %1484, %1483 ], [ 0, %1480 ]
  %1489 = phi ptr [ %1486, %1483 ], [ %3433, %1480 ]
  %1490 = getelementptr inbounds i32, ptr %1481, i64 1
  br label %74

1491:                                             ; preds = %3429
  %1492 = lshr i32 %3434, 7
  %1493 = and i32 %1492, 255
  %1494 = zext nneg i32 %1493 to i64
  %1495 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1494
  %1496 = lshr i32 %3434, 16
  %1497 = and i32 %1496, 255
  %1498 = zext nneg i32 %1497 to i64
  %1499 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1498
  %1500 = lshr i32 %3434, 24
  %1501 = getelementptr inbounds %struct.TValue, ptr %1499, i64 0, i32 1
  %1502 = load i8, ptr %1501, align 8, !tbaa !5
  switch i8 %1502, label %1533 [
    i8 3, label %1503
    i8 19, label %1505
  ], !prof !54

1503:                                             ; preds = %1491
  %1504 = load i64, ptr %1499, align 8, !tbaa !9
  br label %1515

1505:                                             ; preds = %1491
  %1506 = load double, ptr %1499, align 8, !tbaa !9
  %1507 = call double @llvm.floor.f64(double %1506)
  %1508 = fcmp une double %1507, %1506
  br i1 %1508, label %1533, label %1509

1509:                                             ; preds = %1505
  %1510 = fcmp oge double %1507, 0xC3E0000000000000
  %1511 = fcmp olt double %1507, 0x43E0000000000000
  %1512 = and i1 %1510, %1511
  br i1 %1512, label %1513, label %1533

1513:                                             ; preds = %1509
  %1514 = fptosi double %1507 to i64
  br label %1515

1515:                                             ; preds = %1513, %1503
  %1516 = phi i64 [ %1504, %1503 ], [ %1514, %1513 ]
  %1517 = getelementptr inbounds i32, ptr %3432, i64 1
  %1518 = sub nsw i32 127, %1500
  %1519 = sext i32 %1518 to i64
  %1520 = icmp slt i32 %3434, 0
  br i1 %1520, label %1521, label %1526

1521:                                             ; preds = %1515
  %1522 = icmp ult i32 %1518, -63
  br i1 %1522, label %1530, label %1523

1523:                                             ; preds = %1521
  %1524 = sub nsw i64 0, %1519
  %1525 = lshr i64 %1516, %1524
  br label %1530

1526:                                             ; preds = %1515
  %1527 = icmp ugt i32 %1518, 63
  %1528 = shl i64 %1516, %1519
  %1529 = select i1 %1527, i64 0, i64 %1528
  br label %1530

1530:                                             ; preds = %1521, %1523, %1526
  %1531 = phi i64 [ %1525, %1523 ], [ 0, %1521 ], [ %1529, %1526 ]
  store i64 %1531, ptr %1495, align 8, !tbaa !9
  %1532 = getelementptr inbounds %struct.TValue, ptr %1495, i64 0, i32 1
  store i8 3, ptr %1532, align 8, !tbaa !5
  br label %1533

1533:                                             ; preds = %1491, %1505, %1509, %1530
  %1534 = phi ptr [ %1517, %1530 ], [ %3432, %1509 ], [ %3432, %1505 ], [ %3432, %1491 ]
  %1535 = icmp eq i32 %3431, 0
  br i1 %1535, label %1540, label %1536, !prof !33

1536:                                             ; preds = %1533
  %1537 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1534) #13
  %1538 = load ptr, ptr %29, align 8, !tbaa !9
  %1539 = getelementptr inbounds %union.StackValue, ptr %1538, i64 1
  br label %1540

1540:                                             ; preds = %1536, %1533
  %1541 = phi i32 [ %1537, %1536 ], [ 0, %1533 ]
  %1542 = phi ptr [ %1539, %1536 ], [ %3433, %1533 ]
  %1543 = getelementptr inbounds i32, ptr %1534, i64 1
  br label %74

1544:                                             ; preds = %3429
  %1545 = lshr i32 %3434, 7
  %1546 = and i32 %1545, 255
  %1547 = zext nneg i32 %1546 to i64
  %1548 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1547
  %1549 = lshr i32 %3434, 16
  %1550 = and i32 %1549, 255
  %1551 = zext nneg i32 %1550 to i64
  %1552 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1551
  %1553 = lshr i32 %3434, 24
  %1554 = add nsw i32 %1553, -127
  %1555 = getelementptr inbounds %struct.TValue, ptr %1552, i64 0, i32 1
  %1556 = load i8, ptr %1555, align 8, !tbaa !5
  switch i8 %1556, label %1586 [
    i8 3, label %1557
    i8 19, label %1559
  ], !prof !54

1557:                                             ; preds = %1544
  %1558 = load i64, ptr %1552, align 8, !tbaa !9
  br label %1569

1559:                                             ; preds = %1544
  %1560 = load double, ptr %1552, align 8, !tbaa !9
  %1561 = call double @llvm.floor.f64(double %1560)
  %1562 = fcmp une double %1561, %1560
  br i1 %1562, label %1586, label %1563

1563:                                             ; preds = %1559
  %1564 = fcmp oge double %1561, 0xC3E0000000000000
  %1565 = fcmp olt double %1561, 0x43E0000000000000
  %1566 = and i1 %1564, %1565
  br i1 %1566, label %1567, label %1586

1567:                                             ; preds = %1563
  %1568 = fptosi double %1561 to i64
  br label %1569

1569:                                             ; preds = %1567, %1557
  %1570 = phi i64 [ %1558, %1557 ], [ %1568, %1567 ]
  %1571 = getelementptr inbounds i32, ptr %3432, i64 1
  %1572 = sext i32 %1554 to i64
  %1573 = icmp slt i64 %1570, 0
  br i1 %1573, label %1574, label %1579

1574:                                             ; preds = %1569
  %1575 = icmp ult i64 %1570, -63
  br i1 %1575, label %1583, label %1576

1576:                                             ; preds = %1574
  %1577 = sub nsw i64 0, %1570
  %1578 = lshr i64 %1572, %1577
  br label %1583

1579:                                             ; preds = %1569
  %1580 = icmp ugt i64 %1570, 63
  %1581 = shl i64 %1572, %1570
  %1582 = select i1 %1580, i64 0, i64 %1581
  br label %1583

1583:                                             ; preds = %1574, %1576, %1579
  %1584 = phi i64 [ %1578, %1576 ], [ 0, %1574 ], [ %1582, %1579 ]
  store i64 %1584, ptr %1548, align 8, !tbaa !9
  %1585 = getelementptr inbounds %struct.TValue, ptr %1548, i64 0, i32 1
  store i8 3, ptr %1585, align 8, !tbaa !5
  br label %1586

1586:                                             ; preds = %1544, %1559, %1563, %1583
  %1587 = phi ptr [ %1571, %1583 ], [ %3432, %1563 ], [ %3432, %1559 ], [ %3432, %1544 ]
  %1588 = icmp eq i32 %3431, 0
  br i1 %1588, label %1593, label %1589, !prof !33

1589:                                             ; preds = %1586
  %1590 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1587) #13
  %1591 = load ptr, ptr %29, align 8, !tbaa !9
  %1592 = getelementptr inbounds %union.StackValue, ptr %1591, i64 1
  br label %1593

1593:                                             ; preds = %1589, %1586
  %1594 = phi i32 [ %1590, %1589 ], [ 0, %1586 ]
  %1595 = phi ptr [ %1592, %1589 ], [ %3433, %1586 ]
  %1596 = getelementptr inbounds i32, ptr %1587, i64 1
  br label %74

1597:                                             ; preds = %3429
  %1598 = lshr i32 %3434, 16
  %1599 = and i32 %1598, 255
  %1600 = zext nneg i32 %1599 to i64
  %1601 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1600
  %1602 = lshr i32 %3434, 24
  %1603 = zext nneg i32 %1602 to i64
  %1604 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1603
  %1605 = lshr i32 %3434, 7
  %1606 = and i32 %1605, 255
  %1607 = zext nneg i32 %1606 to i64
  %1608 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1607
  %1609 = getelementptr inbounds %struct.TValue, ptr %1601, i64 0, i32 1
  %1610 = load i8, ptr %1609, align 8, !tbaa !5
  switch i8 %1610, label %1642 [
    i8 3, label %1611
    i8 19, label %1620
  ]

1611:                                             ; preds = %1597
  %1612 = getelementptr inbounds %struct.TValue, ptr %1604, i64 0, i32 1
  %1613 = load i8, ptr %1612, align 8, !tbaa !5
  %1614 = icmp eq i8 %1613, 3
  %1615 = load i64, ptr %1601, align 8, !tbaa !9
  br i1 %1614, label %1616, label %1624

1616:                                             ; preds = %1611
  %1617 = load i64, ptr %1604, align 8, !tbaa !9
  %1618 = add i64 %1617, %1615
  %1619 = bitcast i64 %1618 to double
  br label %1637

1620:                                             ; preds = %1597
  %1621 = load double, ptr %1601, align 8, !tbaa !9
  %1622 = getelementptr inbounds %struct.TValue, ptr %1604, i64 0, i32 1
  %1623 = load i8, ptr %1622, align 8, !tbaa !5
  br label %1626

1624:                                             ; preds = %1611
  %1625 = sitofp i64 %1615 to double
  br label %1626

1626:                                             ; preds = %1620, %1624
  %1627 = phi i8 [ %1623, %1620 ], [ %1613, %1624 ]
  %1628 = phi double [ %1621, %1620 ], [ %1625, %1624 ]
  switch i8 %1627, label %1642 [
    i8 19, label %1629
    i8 3, label %1631
  ]

1629:                                             ; preds = %1626
  %1630 = load double, ptr %1604, align 8, !tbaa !9
  br label %1634

1631:                                             ; preds = %1626
  %1632 = load i64, ptr %1604, align 8, !tbaa !9
  %1633 = sitofp i64 %1632 to double
  br label %1634

1634:                                             ; preds = %1629, %1631
  %1635 = phi double [ %1630, %1629 ], [ %1633, %1631 ]
  %1636 = fadd double %1628, %1635
  br label %1637

1637:                                             ; preds = %1616, %1634
  %1638 = phi double [ %1636, %1634 ], [ %1619, %1616 ]
  %1639 = phi i8 [ 19, %1634 ], [ 3, %1616 ]
  %1640 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %1638, ptr %1608, align 8, !tbaa !9
  %1641 = getelementptr inbounds %struct.TValue, ptr %1608, i64 0, i32 1
  store i8 %1639, ptr %1641, align 8, !tbaa !5
  br label %1642

1642:                                             ; preds = %1637, %1597, %1626
  %1643 = phi ptr [ %3432, %1626 ], [ %3432, %1597 ], [ %1640, %1637 ]
  %1644 = icmp eq i32 %3431, 0
  br i1 %1644, label %1649, label %1645, !prof !33

1645:                                             ; preds = %1642
  %1646 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1643) #13
  %1647 = load ptr, ptr %29, align 8, !tbaa !9
  %1648 = getelementptr inbounds %union.StackValue, ptr %1647, i64 1
  br label %1649

1649:                                             ; preds = %1645, %1642
  %1650 = phi i32 [ %1646, %1645 ], [ 0, %1642 ]
  %1651 = phi ptr [ %1648, %1645 ], [ %3433, %1642 ]
  %1652 = getelementptr inbounds i32, ptr %1643, i64 1
  br label %74

1653:                                             ; preds = %3429
  %1654 = lshr i32 %3434, 16
  %1655 = and i32 %1654, 255
  %1656 = zext nneg i32 %1655 to i64
  %1657 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1656
  %1658 = lshr i32 %3434, 24
  %1659 = zext nneg i32 %1658 to i64
  %1660 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1659
  %1661 = lshr i32 %3434, 7
  %1662 = and i32 %1661, 255
  %1663 = zext nneg i32 %1662 to i64
  %1664 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1663
  %1665 = getelementptr inbounds %struct.TValue, ptr %1657, i64 0, i32 1
  %1666 = load i8, ptr %1665, align 8, !tbaa !5
  switch i8 %1666, label %1698 [
    i8 3, label %1667
    i8 19, label %1676
  ]

1667:                                             ; preds = %1653
  %1668 = getelementptr inbounds %struct.TValue, ptr %1660, i64 0, i32 1
  %1669 = load i8, ptr %1668, align 8, !tbaa !5
  %1670 = icmp eq i8 %1669, 3
  %1671 = load i64, ptr %1657, align 8, !tbaa !9
  br i1 %1670, label %1672, label %1680

1672:                                             ; preds = %1667
  %1673 = load i64, ptr %1660, align 8, !tbaa !9
  %1674 = sub i64 %1671, %1673
  %1675 = bitcast i64 %1674 to double
  br label %1693

1676:                                             ; preds = %1653
  %1677 = load double, ptr %1657, align 8, !tbaa !9
  %1678 = getelementptr inbounds %struct.TValue, ptr %1660, i64 0, i32 1
  %1679 = load i8, ptr %1678, align 8, !tbaa !5
  br label %1682

1680:                                             ; preds = %1667
  %1681 = sitofp i64 %1671 to double
  br label %1682

1682:                                             ; preds = %1676, %1680
  %1683 = phi i8 [ %1679, %1676 ], [ %1669, %1680 ]
  %1684 = phi double [ %1677, %1676 ], [ %1681, %1680 ]
  switch i8 %1683, label %1698 [
    i8 19, label %1685
    i8 3, label %1687
  ]

1685:                                             ; preds = %1682
  %1686 = load double, ptr %1660, align 8, !tbaa !9
  br label %1690

1687:                                             ; preds = %1682
  %1688 = load i64, ptr %1660, align 8, !tbaa !9
  %1689 = sitofp i64 %1688 to double
  br label %1690

1690:                                             ; preds = %1685, %1687
  %1691 = phi double [ %1686, %1685 ], [ %1689, %1687 ]
  %1692 = fsub double %1684, %1691
  br label %1693

1693:                                             ; preds = %1672, %1690
  %1694 = phi double [ %1692, %1690 ], [ %1675, %1672 ]
  %1695 = phi i8 [ 19, %1690 ], [ 3, %1672 ]
  %1696 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %1694, ptr %1664, align 8, !tbaa !9
  %1697 = getelementptr inbounds %struct.TValue, ptr %1664, i64 0, i32 1
  store i8 %1695, ptr %1697, align 8, !tbaa !5
  br label %1698

1698:                                             ; preds = %1693, %1653, %1682
  %1699 = phi ptr [ %3432, %1682 ], [ %3432, %1653 ], [ %1696, %1693 ]
  %1700 = icmp eq i32 %3431, 0
  br i1 %1700, label %1705, label %1701, !prof !33

1701:                                             ; preds = %1698
  %1702 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1699) #13
  %1703 = load ptr, ptr %29, align 8, !tbaa !9
  %1704 = getelementptr inbounds %union.StackValue, ptr %1703, i64 1
  br label %1705

1705:                                             ; preds = %1701, %1698
  %1706 = phi i32 [ %1702, %1701 ], [ 0, %1698 ]
  %1707 = phi ptr [ %1704, %1701 ], [ %3433, %1698 ]
  %1708 = getelementptr inbounds i32, ptr %1699, i64 1
  br label %74

1709:                                             ; preds = %3429
  %1710 = lshr i32 %3434, 16
  %1711 = and i32 %1710, 255
  %1712 = zext nneg i32 %1711 to i64
  %1713 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1712
  %1714 = lshr i32 %3434, 24
  %1715 = zext nneg i32 %1714 to i64
  %1716 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1715
  %1717 = lshr i32 %3434, 7
  %1718 = and i32 %1717, 255
  %1719 = zext nneg i32 %1718 to i64
  %1720 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1719
  %1721 = getelementptr inbounds %struct.TValue, ptr %1713, i64 0, i32 1
  %1722 = load i8, ptr %1721, align 8, !tbaa !5
  switch i8 %1722, label %1754 [
    i8 3, label %1723
    i8 19, label %1732
  ]

1723:                                             ; preds = %1709
  %1724 = getelementptr inbounds %struct.TValue, ptr %1716, i64 0, i32 1
  %1725 = load i8, ptr %1724, align 8, !tbaa !5
  %1726 = icmp eq i8 %1725, 3
  %1727 = load i64, ptr %1713, align 8, !tbaa !9
  br i1 %1726, label %1728, label %1736

1728:                                             ; preds = %1723
  %1729 = load i64, ptr %1716, align 8, !tbaa !9
  %1730 = mul i64 %1729, %1727
  %1731 = bitcast i64 %1730 to double
  br label %1749

1732:                                             ; preds = %1709
  %1733 = load double, ptr %1713, align 8, !tbaa !9
  %1734 = getelementptr inbounds %struct.TValue, ptr %1716, i64 0, i32 1
  %1735 = load i8, ptr %1734, align 8, !tbaa !5
  br label %1738

1736:                                             ; preds = %1723
  %1737 = sitofp i64 %1727 to double
  br label %1738

1738:                                             ; preds = %1732, %1736
  %1739 = phi i8 [ %1735, %1732 ], [ %1725, %1736 ]
  %1740 = phi double [ %1733, %1732 ], [ %1737, %1736 ]
  switch i8 %1739, label %1754 [
    i8 19, label %1741
    i8 3, label %1743
  ]

1741:                                             ; preds = %1738
  %1742 = load double, ptr %1716, align 8, !tbaa !9
  br label %1746

1743:                                             ; preds = %1738
  %1744 = load i64, ptr %1716, align 8, !tbaa !9
  %1745 = sitofp i64 %1744 to double
  br label %1746

1746:                                             ; preds = %1741, %1743
  %1747 = phi double [ %1742, %1741 ], [ %1745, %1743 ]
  %1748 = fmul double %1740, %1747
  br label %1749

1749:                                             ; preds = %1728, %1746
  %1750 = phi double [ %1748, %1746 ], [ %1731, %1728 ]
  %1751 = phi i8 [ 19, %1746 ], [ 3, %1728 ]
  %1752 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %1750, ptr %1720, align 8, !tbaa !9
  %1753 = getelementptr inbounds %struct.TValue, ptr %1720, i64 0, i32 1
  store i8 %1751, ptr %1753, align 8, !tbaa !5
  br label %1754

1754:                                             ; preds = %1749, %1709, %1738
  %1755 = phi ptr [ %3432, %1738 ], [ %3432, %1709 ], [ %1752, %1749 ]
  %1756 = icmp eq i32 %3431, 0
  br i1 %1756, label %1761, label %1757, !prof !33

1757:                                             ; preds = %1754
  %1758 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1755) #13
  %1759 = load ptr, ptr %29, align 8, !tbaa !9
  %1760 = getelementptr inbounds %union.StackValue, ptr %1759, i64 1
  br label %1761

1761:                                             ; preds = %1757, %1754
  %1762 = phi i32 [ %1758, %1757 ], [ 0, %1754 ]
  %1763 = phi ptr [ %1760, %1757 ], [ %3433, %1754 ]
  %1764 = getelementptr inbounds i32, ptr %1755, i64 1
  br label %74

1765:                                             ; preds = %3429
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %1766 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %1766, ptr %12, align 8, !tbaa !9
  %1767 = lshr i32 %3434, 16
  %1768 = and i32 %1767, 255
  %1769 = zext nneg i32 %1768 to i64
  %1770 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1769
  %1771 = lshr i32 %3434, 24
  %1772 = zext nneg i32 %1771 to i64
  %1773 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1772
  %1774 = lshr i32 %3434, 7
  %1775 = and i32 %1774, 255
  %1776 = zext nneg i32 %1775 to i64
  %1777 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1776
  %1778 = getelementptr inbounds %struct.TValue, ptr %1770, i64 0, i32 1
  %1779 = load i8, ptr %1778, align 8, !tbaa !5
  switch i8 %1779, label %1835 [
    i8 3, label %1780
    i8 19, label %1803
  ]

1780:                                             ; preds = %1765
  %1781 = getelementptr inbounds %struct.TValue, ptr %1773, i64 0, i32 1
  %1782 = load i8, ptr %1781, align 8, !tbaa !5
  %1783 = icmp eq i8 %1782, 3
  br i1 %1783, label %1784, label %1807

1784:                                             ; preds = %1780
  %1785 = load i64, ptr %1773, align 8, !tbaa !9
  %1786 = add i64 %1785, 1
  %1787 = icmp ult i64 %1786, 2
  br i1 %1787, label %1788, label %1791, !prof !18

1788:                                             ; preds = %1784
  %1789 = icmp eq i64 %1785, 0
  br i1 %1789, label %1790, label %1800

1790:                                             ; preds = %1788
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.6) #14
  unreachable

1791:                                             ; preds = %1784
  %1792 = load i64, ptr %1770, align 8, !tbaa !9
  %1793 = srem i64 %1792, %1785
  %1794 = icmp eq i64 %1793, 0
  br i1 %1794, label %1800, label %1795

1795:                                             ; preds = %1791
  %1796 = xor i64 %1793, %1785
  %1797 = icmp slt i64 %1796, 0
  %1798 = select i1 %1797, i64 %1785, i64 0
  %1799 = add nsw i64 %1798, %1793
  br label %1800

1800:                                             ; preds = %1788, %1791, %1795
  %1801 = phi i64 [ 0, %1788 ], [ 0, %1791 ], [ %1799, %1795 ]
  %1802 = bitcast i64 %1801 to double
  br label %1830

1803:                                             ; preds = %1765
  %1804 = load double, ptr %1770, align 8, !tbaa !9
  %1805 = getelementptr inbounds %struct.TValue, ptr %1773, i64 0, i32 1
  %1806 = load i8, ptr %1805, align 8, !tbaa !5
  br label %1810

1807:                                             ; preds = %1780
  %1808 = load i64, ptr %1770, align 8, !tbaa !9
  %1809 = sitofp i64 %1808 to double
  br label %1810

1810:                                             ; preds = %1803, %1807
  %1811 = phi i8 [ %1806, %1803 ], [ %1782, %1807 ]
  %1812 = phi double [ %1804, %1803 ], [ %1809, %1807 ]
  switch i8 %1811, label %1835 [
    i8 19, label %1813
    i8 3, label %1815
  ]

1813:                                             ; preds = %1810
  %1814 = load double, ptr %1773, align 8, !tbaa !9
  br label %1818

1815:                                             ; preds = %1810
  %1816 = load i64, ptr %1773, align 8, !tbaa !9
  %1817 = sitofp i64 %1816 to double
  br label %1818

1818:                                             ; preds = %1813, %1815
  %1819 = phi double [ %1814, %1813 ], [ %1817, %1815 ]
  %1820 = call double @fmod(double noundef %1812, double noundef %1819) #13
  %1821 = fcmp ogt double %1820, 0.000000e+00
  br i1 %1821, label %1822, label %1824

1822:                                             ; preds = %1818
  %1823 = fcmp olt double %1819, 0.000000e+00
  br i1 %1823, label %1828, label %1830

1824:                                             ; preds = %1818
  %1825 = fcmp olt double %1820, 0.000000e+00
  %1826 = fcmp ogt double %1819, 0.000000e+00
  %1827 = and i1 %1826, %1825
  br i1 %1827, label %1828, label %1830

1828:                                             ; preds = %1824, %1822
  %1829 = fadd double %1819, %1820
  br label %1830

1830:                                             ; preds = %1828, %1824, %1822, %1800
  %1831 = phi double [ %1802, %1800 ], [ %1829, %1828 ], [ %1820, %1822 ], [ %1820, %1824 ]
  %1832 = phi i8 [ 3, %1800 ], [ 19, %1828 ], [ 19, %1822 ], [ 19, %1824 ]
  %1833 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %1831, ptr %1777, align 8, !tbaa !9
  %1834 = getelementptr inbounds %struct.TValue, ptr %1777, i64 0, i32 1
  store i8 %1832, ptr %1834, align 8, !tbaa !5
  br label %1835

1835:                                             ; preds = %1830, %1765, %1810
  %1836 = phi ptr [ %3432, %1810 ], [ %3432, %1765 ], [ %1833, %1830 ]
  %1837 = icmp eq i32 %3431, 0
  br i1 %1837, label %1842, label %1838, !prof !33

1838:                                             ; preds = %1835
  %1839 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %1836) #13
  %1840 = load ptr, ptr %29, align 8, !tbaa !9
  %1841 = getelementptr inbounds %union.StackValue, ptr %1840, i64 1
  br label %1842

1842:                                             ; preds = %1838, %1835
  %1843 = phi i32 [ %1839, %1838 ], [ 0, %1835 ]
  %1844 = phi ptr [ %1841, %1838 ], [ %3433, %1835 ]
  %1845 = getelementptr inbounds i32, ptr %1836, i64 1
  br label %74

1846:                                             ; preds = %3429
  %1847 = lshr i32 %3434, 7
  %1848 = and i32 %1847, 255
  %1849 = zext nneg i32 %1848 to i64
  %1850 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1849
  %1851 = lshr i32 %3434, 16
  %1852 = and i32 %1851, 255
  %1853 = zext nneg i32 %1852 to i64
  %1854 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1853
  %1855 = lshr i32 %3434, 24
  %1856 = zext nneg i32 %1855 to i64
  %1857 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1856
  %1858 = getelementptr inbounds %struct.TValue, ptr %1854, i64 0, i32 1
  %1859 = load i8, ptr %1858, align 8, !tbaa !5
  switch i8 %1859, label %1885 [
    i8 19, label %1860
    i8 3, label %1862
  ]

1860:                                             ; preds = %1846
  %1861 = load double, ptr %1854, align 8, !tbaa !9
  br label %1865

1862:                                             ; preds = %1846
  %1863 = load i64, ptr %1854, align 8, !tbaa !9
  %1864 = sitofp i64 %1863 to double
  br label %1865

1865:                                             ; preds = %1860, %1862
  %1866 = phi double [ %1861, %1860 ], [ %1864, %1862 ]
  %1867 = getelementptr inbounds %struct.TValue, ptr %1857, i64 0, i32 1
  %1868 = load i8, ptr %1867, align 8, !tbaa !5
  switch i8 %1868, label %1885 [
    i8 19, label %1869
    i8 3, label %1871
  ]

1869:                                             ; preds = %1865
  %1870 = load double, ptr %1857, align 8, !tbaa !9
  br label %1874

1871:                                             ; preds = %1865
  %1872 = load i64, ptr %1857, align 8, !tbaa !9
  %1873 = sitofp i64 %1872 to double
  br label %1874

1874:                                             ; preds = %1869, %1871
  %1875 = phi double [ %1870, %1869 ], [ %1873, %1871 ]
  %1876 = getelementptr inbounds i32, ptr %3432, i64 1
  %1877 = fcmp oeq double %1875, 2.000000e+00
  br i1 %1877, label %1878, label %1880

1878:                                             ; preds = %1874
  %1879 = fmul double %1866, %1866
  br label %1882

1880:                                             ; preds = %1874
  %1881 = call double @pow(double noundef %1866, double noundef %1875) #13
  br label %1882

1882:                                             ; preds = %1880, %1878
  %1883 = phi double [ %1879, %1878 ], [ %1881, %1880 ]
  store double %1883, ptr %1850, align 8, !tbaa !9
  %1884 = getelementptr inbounds %struct.TValue, ptr %1850, i64 0, i32 1
  store i8 19, ptr %1884, align 8, !tbaa !5
  br label %1885

1885:                                             ; preds = %1865, %1846, %1882
  %1886 = phi ptr [ %1876, %1882 ], [ %3432, %1846 ], [ %3432, %1865 ]
  %1887 = icmp eq i32 %3431, 0
  br i1 %1887, label %1892, label %1888, !prof !33

1888:                                             ; preds = %1885
  %1889 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1886) #13
  %1890 = load ptr, ptr %29, align 8, !tbaa !9
  %1891 = getelementptr inbounds %union.StackValue, ptr %1890, i64 1
  br label %1892

1892:                                             ; preds = %1888, %1885
  %1893 = phi i32 [ %1889, %1888 ], [ 0, %1885 ]
  %1894 = phi ptr [ %1891, %1888 ], [ %3433, %1885 ]
  %1895 = getelementptr inbounds i32, ptr %1886, i64 1
  br label %74

1896:                                             ; preds = %3429
  %1897 = lshr i32 %3434, 7
  %1898 = and i32 %1897, 255
  %1899 = zext nneg i32 %1898 to i64
  %1900 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1899
  %1901 = lshr i32 %3434, 16
  %1902 = and i32 %1901, 255
  %1903 = zext nneg i32 %1902 to i64
  %1904 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1903
  %1905 = lshr i32 %3434, 24
  %1906 = zext nneg i32 %1905 to i64
  %1907 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1906
  %1908 = getelementptr inbounds %struct.TValue, ptr %1904, i64 0, i32 1
  %1909 = load i8, ptr %1908, align 8, !tbaa !5
  switch i8 %1909, label %1929 [
    i8 19, label %1910
    i8 3, label %1912
  ]

1910:                                             ; preds = %1896
  %1911 = load double, ptr %1904, align 8, !tbaa !9
  br label %1915

1912:                                             ; preds = %1896
  %1913 = load i64, ptr %1904, align 8, !tbaa !9
  %1914 = sitofp i64 %1913 to double
  br label %1915

1915:                                             ; preds = %1910, %1912
  %1916 = phi double [ %1911, %1910 ], [ %1914, %1912 ]
  %1917 = getelementptr inbounds %struct.TValue, ptr %1907, i64 0, i32 1
  %1918 = load i8, ptr %1917, align 8, !tbaa !5
  switch i8 %1918, label %1929 [
    i8 19, label %1919
    i8 3, label %1921
  ]

1919:                                             ; preds = %1915
  %1920 = load double, ptr %1907, align 8, !tbaa !9
  br label %1924

1921:                                             ; preds = %1915
  %1922 = load i64, ptr %1907, align 8, !tbaa !9
  %1923 = sitofp i64 %1922 to double
  br label %1924

1924:                                             ; preds = %1919, %1921
  %1925 = phi double [ %1920, %1919 ], [ %1923, %1921 ]
  %1926 = getelementptr inbounds i32, ptr %3432, i64 1
  %1927 = fdiv double %1916, %1925
  store double %1927, ptr %1900, align 8, !tbaa !9
  %1928 = getelementptr inbounds %struct.TValue, ptr %1900, i64 0, i32 1
  store i8 19, ptr %1928, align 8, !tbaa !5
  br label %1929

1929:                                             ; preds = %1915, %1896, %1924
  %1930 = phi ptr [ %1926, %1924 ], [ %3432, %1896 ], [ %3432, %1915 ]
  %1931 = icmp eq i32 %3431, 0
  br i1 %1931, label %1936, label %1932, !prof !33

1932:                                             ; preds = %1929
  %1933 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %1930) #13
  %1934 = load ptr, ptr %29, align 8, !tbaa !9
  %1935 = getelementptr inbounds %union.StackValue, ptr %1934, i64 1
  br label %1936

1936:                                             ; preds = %1932, %1929
  %1937 = phi i32 [ %1933, %1932 ], [ 0, %1929 ]
  %1938 = phi ptr [ %1935, %1932 ], [ %3433, %1929 ]
  %1939 = getelementptr inbounds i32, ptr %1930, i64 1
  br label %74

1940:                                             ; preds = %3429
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %1941 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %1941, ptr %12, align 8, !tbaa !9
  %1942 = lshr i32 %3434, 16
  %1943 = and i32 %1942, 255
  %1944 = zext nneg i32 %1943 to i64
  %1945 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1944
  %1946 = lshr i32 %3434, 24
  %1947 = zext nneg i32 %1946 to i64
  %1948 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1947
  %1949 = lshr i32 %3434, 7
  %1950 = and i32 %1949, 255
  %1951 = zext nneg i32 %1950 to i64
  %1952 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %1951
  %1953 = getelementptr inbounds %struct.TValue, ptr %1945, i64 0, i32 1
  %1954 = load i8, ptr %1953, align 8, !tbaa !5
  switch i8 %1954, label %2004 [
    i8 3, label %1955
    i8 19, label %1981
  ]

1955:                                             ; preds = %1940
  %1956 = getelementptr inbounds %struct.TValue, ptr %1948, i64 0, i32 1
  %1957 = load i8, ptr %1956, align 8, !tbaa !5
  %1958 = icmp eq i8 %1957, 3
  %1959 = load i64, ptr %1945, align 8, !tbaa !9
  br i1 %1958, label %1960, label %1985

1960:                                             ; preds = %1955
  %1961 = load i64, ptr %1948, align 8, !tbaa !9
  %1962 = add i64 %1961, 1
  %1963 = icmp ult i64 %1962, 2
  br i1 %1963, label %1964, label %1969, !prof !18

1964:                                             ; preds = %1960
  %1965 = icmp eq i64 %1961, 0
  br i1 %1965, label %1966, label %1967

1966:                                             ; preds = %1964
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.5) #14
  unreachable

1967:                                             ; preds = %1964
  %1968 = sub i64 0, %1959
  br label %1978

1969:                                             ; preds = %1960
  %1970 = sdiv i64 %1959, %1961
  %1971 = srem i64 %1959, %1961
  %1972 = xor i64 %1961, %1959
  %1973 = icmp slt i64 %1972, 0
  br i1 %1973, label %1974, label %1978

1974:                                             ; preds = %1969
  %1975 = icmp ne i64 %1971, 0
  %1976 = sext i1 %1975 to i64
  %1977 = add nsw i64 %1970, %1976
  br label %1978

1978:                                             ; preds = %1967, %1969, %1974
  %1979 = phi i64 [ %1968, %1967 ], [ %1970, %1969 ], [ %1977, %1974 ]
  %1980 = bitcast i64 %1979 to double
  br label %1999

1981:                                             ; preds = %1940
  %1982 = load double, ptr %1945, align 8, !tbaa !9
  %1983 = getelementptr inbounds %struct.TValue, ptr %1948, i64 0, i32 1
  %1984 = load i8, ptr %1983, align 8, !tbaa !5
  br label %1987

1985:                                             ; preds = %1955
  %1986 = sitofp i64 %1959 to double
  br label %1987

1987:                                             ; preds = %1981, %1985
  %1988 = phi i8 [ %1984, %1981 ], [ %1957, %1985 ]
  %1989 = phi double [ %1982, %1981 ], [ %1986, %1985 ]
  switch i8 %1988, label %2004 [
    i8 19, label %1990
    i8 3, label %1992
  ]

1990:                                             ; preds = %1987
  %1991 = load double, ptr %1948, align 8, !tbaa !9
  br label %1995

1992:                                             ; preds = %1987
  %1993 = load i64, ptr %1948, align 8, !tbaa !9
  %1994 = sitofp i64 %1993 to double
  br label %1995

1995:                                             ; preds = %1990, %1992
  %1996 = phi double [ %1991, %1990 ], [ %1994, %1992 ]
  %1997 = fdiv double %1989, %1996
  %1998 = call double @llvm.floor.f64(double %1997)
  br label %1999

1999:                                             ; preds = %1978, %1995
  %2000 = phi double [ %1998, %1995 ], [ %1980, %1978 ]
  %2001 = phi i8 [ 19, %1995 ], [ 3, %1978 ]
  %2002 = getelementptr inbounds i32, ptr %3432, i64 1
  store double %2000, ptr %1952, align 8, !tbaa !9
  %2003 = getelementptr inbounds %struct.TValue, ptr %1952, i64 0, i32 1
  store i8 %2001, ptr %2003, align 8, !tbaa !5
  br label %2004

2004:                                             ; preds = %1999, %1940, %1987
  %2005 = phi ptr [ %3432, %1987 ], [ %3432, %1940 ], [ %2002, %1999 ]
  %2006 = icmp eq i32 %3431, 0
  br i1 %2006, label %2011, label %2007, !prof !33

2007:                                             ; preds = %2004
  %2008 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %2005) #13
  %2009 = load ptr, ptr %29, align 8, !tbaa !9
  %2010 = getelementptr inbounds %union.StackValue, ptr %2009, i64 1
  br label %2011

2011:                                             ; preds = %2007, %2004
  %2012 = phi i32 [ %2008, %2007 ], [ 0, %2004 ]
  %2013 = phi ptr [ %2010, %2007 ], [ %3433, %2004 ]
  %2014 = getelementptr inbounds i32, ptr %2005, i64 1
  br label %74

2015:                                             ; preds = %3429
  %2016 = lshr i32 %3434, 7
  %2017 = and i32 %2016, 255
  %2018 = zext nneg i32 %2017 to i64
  %2019 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2018
  %2020 = lshr i32 %3434, 16
  %2021 = and i32 %2020, 255
  %2022 = zext nneg i32 %2021 to i64
  %2023 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2022
  %2024 = lshr i32 %3434, 24
  %2025 = zext nneg i32 %2024 to i64
  %2026 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2025
  %2027 = getelementptr inbounds %struct.TValue, ptr %2023, i64 0, i32 1
  %2028 = load i8, ptr %2027, align 8, !tbaa !5
  switch i8 %2028, label %2062 [
    i8 3, label %2029
    i8 19, label %2031
  ], !prof !54

2029:                                             ; preds = %2015
  %2030 = load i64, ptr %2023, align 8, !tbaa !9
  br label %2041

2031:                                             ; preds = %2015
  %2032 = load double, ptr %2023, align 8, !tbaa !9
  %2033 = call double @llvm.floor.f64(double %2032)
  %2034 = fcmp une double %2033, %2032
  br i1 %2034, label %2062, label %2035

2035:                                             ; preds = %2031
  %2036 = fcmp oge double %2033, 0xC3E0000000000000
  %2037 = fcmp olt double %2033, 0x43E0000000000000
  %2038 = and i1 %2036, %2037
  br i1 %2038, label %2039, label %2062

2039:                                             ; preds = %2035
  %2040 = fptosi double %2033 to i64
  br label %2041

2041:                                             ; preds = %2039, %2029
  %2042 = phi i64 [ %2030, %2029 ], [ %2040, %2039 ]
  %2043 = getelementptr inbounds %struct.TValue, ptr %2026, i64 0, i32 1
  %2044 = load i8, ptr %2043, align 8, !tbaa !5
  switch i8 %2044, label %2062 [
    i8 3, label %2045
    i8 19, label %2047
  ], !prof !54

2045:                                             ; preds = %2041
  %2046 = load i64, ptr %2026, align 8, !tbaa !9
  br label %2057

2047:                                             ; preds = %2041
  %2048 = load double, ptr %2026, align 8, !tbaa !9
  %2049 = call double @llvm.floor.f64(double %2048)
  %2050 = fcmp une double %2049, %2048
  br i1 %2050, label %2062, label %2051

2051:                                             ; preds = %2047
  %2052 = fcmp oge double %2049, 0xC3E0000000000000
  %2053 = fcmp olt double %2049, 0x43E0000000000000
  %2054 = and i1 %2052, %2053
  br i1 %2054, label %2055, label %2062

2055:                                             ; preds = %2051
  %2056 = fptosi double %2049 to i64
  br label %2057

2057:                                             ; preds = %2055, %2045
  %2058 = phi i64 [ %2046, %2045 ], [ %2056, %2055 ]
  %2059 = getelementptr inbounds i32, ptr %3432, i64 1
  %2060 = and i64 %2058, %2042
  store i64 %2060, ptr %2019, align 8, !tbaa !9
  %2061 = getelementptr inbounds %struct.TValue, ptr %2019, i64 0, i32 1
  store i8 3, ptr %2061, align 8, !tbaa !5
  br label %2062

2062:                                             ; preds = %2041, %2015, %2047, %2051, %2031, %2035, %2057
  %2063 = phi ptr [ %2059, %2057 ], [ %3432, %2035 ], [ %3432, %2031 ], [ %3432, %2051 ], [ %3432, %2047 ], [ %3432, %2015 ], [ %3432, %2041 ]
  %2064 = icmp eq i32 %3431, 0
  br i1 %2064, label %2069, label %2065, !prof !33

2065:                                             ; preds = %2062
  %2066 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2063) #13
  %2067 = load ptr, ptr %29, align 8, !tbaa !9
  %2068 = getelementptr inbounds %union.StackValue, ptr %2067, i64 1
  br label %2069

2069:                                             ; preds = %2065, %2062
  %2070 = phi i32 [ %2066, %2065 ], [ 0, %2062 ]
  %2071 = phi ptr [ %2068, %2065 ], [ %3433, %2062 ]
  %2072 = getelementptr inbounds i32, ptr %2063, i64 1
  br label %74

2073:                                             ; preds = %3429
  %2074 = lshr i32 %3434, 7
  %2075 = and i32 %2074, 255
  %2076 = zext nneg i32 %2075 to i64
  %2077 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2076
  %2078 = lshr i32 %3434, 16
  %2079 = and i32 %2078, 255
  %2080 = zext nneg i32 %2079 to i64
  %2081 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2080
  %2082 = lshr i32 %3434, 24
  %2083 = zext nneg i32 %2082 to i64
  %2084 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2083
  %2085 = getelementptr inbounds %struct.TValue, ptr %2081, i64 0, i32 1
  %2086 = load i8, ptr %2085, align 8, !tbaa !5
  switch i8 %2086, label %2120 [
    i8 3, label %2087
    i8 19, label %2089
  ], !prof !54

2087:                                             ; preds = %2073
  %2088 = load i64, ptr %2081, align 8, !tbaa !9
  br label %2099

2089:                                             ; preds = %2073
  %2090 = load double, ptr %2081, align 8, !tbaa !9
  %2091 = call double @llvm.floor.f64(double %2090)
  %2092 = fcmp une double %2091, %2090
  br i1 %2092, label %2120, label %2093

2093:                                             ; preds = %2089
  %2094 = fcmp oge double %2091, 0xC3E0000000000000
  %2095 = fcmp olt double %2091, 0x43E0000000000000
  %2096 = and i1 %2094, %2095
  br i1 %2096, label %2097, label %2120

2097:                                             ; preds = %2093
  %2098 = fptosi double %2091 to i64
  br label %2099

2099:                                             ; preds = %2097, %2087
  %2100 = phi i64 [ %2088, %2087 ], [ %2098, %2097 ]
  %2101 = getelementptr inbounds %struct.TValue, ptr %2084, i64 0, i32 1
  %2102 = load i8, ptr %2101, align 8, !tbaa !5
  switch i8 %2102, label %2120 [
    i8 3, label %2103
    i8 19, label %2105
  ], !prof !54

2103:                                             ; preds = %2099
  %2104 = load i64, ptr %2084, align 8, !tbaa !9
  br label %2115

2105:                                             ; preds = %2099
  %2106 = load double, ptr %2084, align 8, !tbaa !9
  %2107 = call double @llvm.floor.f64(double %2106)
  %2108 = fcmp une double %2107, %2106
  br i1 %2108, label %2120, label %2109

2109:                                             ; preds = %2105
  %2110 = fcmp oge double %2107, 0xC3E0000000000000
  %2111 = fcmp olt double %2107, 0x43E0000000000000
  %2112 = and i1 %2110, %2111
  br i1 %2112, label %2113, label %2120

2113:                                             ; preds = %2109
  %2114 = fptosi double %2107 to i64
  br label %2115

2115:                                             ; preds = %2113, %2103
  %2116 = phi i64 [ %2104, %2103 ], [ %2114, %2113 ]
  %2117 = getelementptr inbounds i32, ptr %3432, i64 1
  %2118 = or i64 %2116, %2100
  store i64 %2118, ptr %2077, align 8, !tbaa !9
  %2119 = getelementptr inbounds %struct.TValue, ptr %2077, i64 0, i32 1
  store i8 3, ptr %2119, align 8, !tbaa !5
  br label %2120

2120:                                             ; preds = %2099, %2073, %2105, %2109, %2089, %2093, %2115
  %2121 = phi ptr [ %2117, %2115 ], [ %3432, %2093 ], [ %3432, %2089 ], [ %3432, %2109 ], [ %3432, %2105 ], [ %3432, %2073 ], [ %3432, %2099 ]
  %2122 = icmp eq i32 %3431, 0
  br i1 %2122, label %2127, label %2123, !prof !33

2123:                                             ; preds = %2120
  %2124 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2121) #13
  %2125 = load ptr, ptr %29, align 8, !tbaa !9
  %2126 = getelementptr inbounds %union.StackValue, ptr %2125, i64 1
  br label %2127

2127:                                             ; preds = %2123, %2120
  %2128 = phi i32 [ %2124, %2123 ], [ 0, %2120 ]
  %2129 = phi ptr [ %2126, %2123 ], [ %3433, %2120 ]
  %2130 = getelementptr inbounds i32, ptr %2121, i64 1
  br label %74

2131:                                             ; preds = %3429
  %2132 = lshr i32 %3434, 7
  %2133 = and i32 %2132, 255
  %2134 = zext nneg i32 %2133 to i64
  %2135 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2134
  %2136 = lshr i32 %3434, 16
  %2137 = and i32 %2136, 255
  %2138 = zext nneg i32 %2137 to i64
  %2139 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2138
  %2140 = lshr i32 %3434, 24
  %2141 = zext nneg i32 %2140 to i64
  %2142 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2141
  %2143 = getelementptr inbounds %struct.TValue, ptr %2139, i64 0, i32 1
  %2144 = load i8, ptr %2143, align 8, !tbaa !5
  switch i8 %2144, label %2178 [
    i8 3, label %2145
    i8 19, label %2147
  ], !prof !54

2145:                                             ; preds = %2131
  %2146 = load i64, ptr %2139, align 8, !tbaa !9
  br label %2157

2147:                                             ; preds = %2131
  %2148 = load double, ptr %2139, align 8, !tbaa !9
  %2149 = call double @llvm.floor.f64(double %2148)
  %2150 = fcmp une double %2149, %2148
  br i1 %2150, label %2178, label %2151

2151:                                             ; preds = %2147
  %2152 = fcmp oge double %2149, 0xC3E0000000000000
  %2153 = fcmp olt double %2149, 0x43E0000000000000
  %2154 = and i1 %2152, %2153
  br i1 %2154, label %2155, label %2178

2155:                                             ; preds = %2151
  %2156 = fptosi double %2149 to i64
  br label %2157

2157:                                             ; preds = %2155, %2145
  %2158 = phi i64 [ %2146, %2145 ], [ %2156, %2155 ]
  %2159 = getelementptr inbounds %struct.TValue, ptr %2142, i64 0, i32 1
  %2160 = load i8, ptr %2159, align 8, !tbaa !5
  switch i8 %2160, label %2178 [
    i8 3, label %2161
    i8 19, label %2163
  ], !prof !54

2161:                                             ; preds = %2157
  %2162 = load i64, ptr %2142, align 8, !tbaa !9
  br label %2173

2163:                                             ; preds = %2157
  %2164 = load double, ptr %2142, align 8, !tbaa !9
  %2165 = call double @llvm.floor.f64(double %2164)
  %2166 = fcmp une double %2165, %2164
  br i1 %2166, label %2178, label %2167

2167:                                             ; preds = %2163
  %2168 = fcmp oge double %2165, 0xC3E0000000000000
  %2169 = fcmp olt double %2165, 0x43E0000000000000
  %2170 = and i1 %2168, %2169
  br i1 %2170, label %2171, label %2178

2171:                                             ; preds = %2167
  %2172 = fptosi double %2165 to i64
  br label %2173

2173:                                             ; preds = %2171, %2161
  %2174 = phi i64 [ %2162, %2161 ], [ %2172, %2171 ]
  %2175 = getelementptr inbounds i32, ptr %3432, i64 1
  %2176 = xor i64 %2174, %2158
  store i64 %2176, ptr %2135, align 8, !tbaa !9
  %2177 = getelementptr inbounds %struct.TValue, ptr %2135, i64 0, i32 1
  store i8 3, ptr %2177, align 8, !tbaa !5
  br label %2178

2178:                                             ; preds = %2157, %2131, %2163, %2167, %2147, %2151, %2173
  %2179 = phi ptr [ %2175, %2173 ], [ %3432, %2151 ], [ %3432, %2147 ], [ %3432, %2167 ], [ %3432, %2163 ], [ %3432, %2131 ], [ %3432, %2157 ]
  %2180 = icmp eq i32 %3431, 0
  br i1 %2180, label %2185, label %2181, !prof !33

2181:                                             ; preds = %2178
  %2182 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2179) #13
  %2183 = load ptr, ptr %29, align 8, !tbaa !9
  %2184 = getelementptr inbounds %union.StackValue, ptr %2183, i64 1
  br label %2185

2185:                                             ; preds = %2181, %2178
  %2186 = phi i32 [ %2182, %2181 ], [ 0, %2178 ]
  %2187 = phi ptr [ %2184, %2181 ], [ %3433, %2178 ]
  %2188 = getelementptr inbounds i32, ptr %2179, i64 1
  br label %74

2189:                                             ; preds = %3429
  %2190 = lshr i32 %3434, 7
  %2191 = and i32 %2190, 255
  %2192 = zext nneg i32 %2191 to i64
  %2193 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2192
  %2194 = lshr i32 %3434, 16
  %2195 = and i32 %2194, 255
  %2196 = zext nneg i32 %2195 to i64
  %2197 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2196
  %2198 = lshr i32 %3434, 24
  %2199 = zext nneg i32 %2198 to i64
  %2200 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2199
  %2201 = getelementptr inbounds %struct.TValue, ptr %2197, i64 0, i32 1
  %2202 = load i8, ptr %2201, align 8, !tbaa !5
  switch i8 %2202, label %2247 [
    i8 3, label %2203
    i8 19, label %2205
  ], !prof !54

2203:                                             ; preds = %2189
  %2204 = load i64, ptr %2197, align 8, !tbaa !9
  br label %2215

2205:                                             ; preds = %2189
  %2206 = load double, ptr %2197, align 8, !tbaa !9
  %2207 = call double @llvm.floor.f64(double %2206)
  %2208 = fcmp une double %2207, %2206
  br i1 %2208, label %2247, label %2209

2209:                                             ; preds = %2205
  %2210 = fcmp oge double %2207, 0xC3E0000000000000
  %2211 = fcmp olt double %2207, 0x43E0000000000000
  %2212 = and i1 %2210, %2211
  br i1 %2212, label %2213, label %2247

2213:                                             ; preds = %2209
  %2214 = fptosi double %2207 to i64
  br label %2215

2215:                                             ; preds = %2213, %2203
  %2216 = phi i64 [ %2204, %2203 ], [ %2214, %2213 ]
  %2217 = getelementptr inbounds %struct.TValue, ptr %2200, i64 0, i32 1
  %2218 = load i8, ptr %2217, align 8, !tbaa !5
  switch i8 %2218, label %2247 [
    i8 3, label %2219
    i8 19, label %2221
  ], !prof !54

2219:                                             ; preds = %2215
  %2220 = load i64, ptr %2200, align 8, !tbaa !9
  br label %2231

2221:                                             ; preds = %2215
  %2222 = load double, ptr %2200, align 8, !tbaa !9
  %2223 = call double @llvm.floor.f64(double %2222)
  %2224 = fcmp une double %2223, %2222
  br i1 %2224, label %2247, label %2225

2225:                                             ; preds = %2221
  %2226 = fcmp oge double %2223, 0xC3E0000000000000
  %2227 = fcmp olt double %2223, 0x43E0000000000000
  %2228 = and i1 %2226, %2227
  br i1 %2228, label %2229, label %2247

2229:                                             ; preds = %2225
  %2230 = fptosi double %2223 to i64
  br label %2231

2231:                                             ; preds = %2229, %2219
  %2232 = phi i64 [ %2220, %2219 ], [ %2230, %2229 ]
  %2233 = getelementptr inbounds i32, ptr %3432, i64 1
  %2234 = sub i64 0, %2232
  %2235 = icmp slt i64 %2234, 0
  br i1 %2235, label %2236, label %2240

2236:                                             ; preds = %2231
  %2237 = icmp ult i64 %2234, -63
  %2238 = lshr i64 %2216, %2232
  %2239 = select i1 %2237, i64 0, i64 %2238
  br label %2244

2240:                                             ; preds = %2231
  %2241 = icmp ugt i64 %2234, 63
  %2242 = shl i64 %2216, %2234
  %2243 = select i1 %2241, i64 0, i64 %2242
  br label %2244

2244:                                             ; preds = %2236, %2240
  %2245 = phi i64 [ %2243, %2240 ], [ %2239, %2236 ]
  store i64 %2245, ptr %2193, align 8, !tbaa !9
  %2246 = getelementptr inbounds %struct.TValue, ptr %2193, i64 0, i32 1
  store i8 3, ptr %2246, align 8, !tbaa !5
  br label %2247

2247:                                             ; preds = %2215, %2189, %2221, %2225, %2205, %2209, %2244
  %2248 = phi ptr [ %2233, %2244 ], [ %3432, %2209 ], [ %3432, %2205 ], [ %3432, %2225 ], [ %3432, %2221 ], [ %3432, %2189 ], [ %3432, %2215 ]
  %2249 = icmp eq i32 %3431, 0
  br i1 %2249, label %2254, label %2250, !prof !33

2250:                                             ; preds = %2247
  %2251 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2248) #13
  %2252 = load ptr, ptr %29, align 8, !tbaa !9
  %2253 = getelementptr inbounds %union.StackValue, ptr %2252, i64 1
  br label %2254

2254:                                             ; preds = %2250, %2247
  %2255 = phi i32 [ %2251, %2250 ], [ 0, %2247 ]
  %2256 = phi ptr [ %2253, %2250 ], [ %3433, %2247 ]
  %2257 = getelementptr inbounds i32, ptr %2248, i64 1
  br label %74

2258:                                             ; preds = %3429
  %2259 = lshr i32 %3434, 7
  %2260 = and i32 %2259, 255
  %2261 = zext nneg i32 %2260 to i64
  %2262 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2261
  %2263 = lshr i32 %3434, 16
  %2264 = and i32 %2263, 255
  %2265 = zext nneg i32 %2264 to i64
  %2266 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2265
  %2267 = lshr i32 %3434, 24
  %2268 = zext nneg i32 %2267 to i64
  %2269 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2268
  %2270 = getelementptr inbounds %struct.TValue, ptr %2266, i64 0, i32 1
  %2271 = load i8, ptr %2270, align 8, !tbaa !5
  switch i8 %2271, label %2316 [
    i8 3, label %2272
    i8 19, label %2274
  ], !prof !54

2272:                                             ; preds = %2258
  %2273 = load i64, ptr %2266, align 8, !tbaa !9
  br label %2284

2274:                                             ; preds = %2258
  %2275 = load double, ptr %2266, align 8, !tbaa !9
  %2276 = call double @llvm.floor.f64(double %2275)
  %2277 = fcmp une double %2276, %2275
  br i1 %2277, label %2316, label %2278

2278:                                             ; preds = %2274
  %2279 = fcmp oge double %2276, 0xC3E0000000000000
  %2280 = fcmp olt double %2276, 0x43E0000000000000
  %2281 = and i1 %2279, %2280
  br i1 %2281, label %2282, label %2316

2282:                                             ; preds = %2278
  %2283 = fptosi double %2276 to i64
  br label %2284

2284:                                             ; preds = %2282, %2272
  %2285 = phi i64 [ %2273, %2272 ], [ %2283, %2282 ]
  %2286 = getelementptr inbounds %struct.TValue, ptr %2269, i64 0, i32 1
  %2287 = load i8, ptr %2286, align 8, !tbaa !5
  switch i8 %2287, label %2316 [
    i8 3, label %2288
    i8 19, label %2290
  ], !prof !54

2288:                                             ; preds = %2284
  %2289 = load i64, ptr %2269, align 8, !tbaa !9
  br label %2300

2290:                                             ; preds = %2284
  %2291 = load double, ptr %2269, align 8, !tbaa !9
  %2292 = call double @llvm.floor.f64(double %2291)
  %2293 = fcmp une double %2292, %2291
  br i1 %2293, label %2316, label %2294

2294:                                             ; preds = %2290
  %2295 = fcmp oge double %2292, 0xC3E0000000000000
  %2296 = fcmp olt double %2292, 0x43E0000000000000
  %2297 = and i1 %2295, %2296
  br i1 %2297, label %2298, label %2316

2298:                                             ; preds = %2294
  %2299 = fptosi double %2292 to i64
  br label %2300

2300:                                             ; preds = %2298, %2288
  %2301 = phi i64 [ %2289, %2288 ], [ %2299, %2298 ]
  %2302 = getelementptr inbounds i32, ptr %3432, i64 1
  %2303 = icmp slt i64 %2301, 0
  br i1 %2303, label %2304, label %2309

2304:                                             ; preds = %2300
  %2305 = icmp ult i64 %2301, -63
  br i1 %2305, label %2313, label %2306

2306:                                             ; preds = %2304
  %2307 = sub nsw i64 0, %2301
  %2308 = lshr i64 %2285, %2307
  br label %2313

2309:                                             ; preds = %2300
  %2310 = icmp ugt i64 %2301, 63
  %2311 = shl i64 %2285, %2301
  %2312 = select i1 %2310, i64 0, i64 %2311
  br label %2313

2313:                                             ; preds = %2304, %2306, %2309
  %2314 = phi i64 [ %2308, %2306 ], [ 0, %2304 ], [ %2312, %2309 ]
  store i64 %2314, ptr %2262, align 8, !tbaa !9
  %2315 = getelementptr inbounds %struct.TValue, ptr %2262, i64 0, i32 1
  store i8 3, ptr %2315, align 8, !tbaa !5
  br label %2316

2316:                                             ; preds = %2284, %2258, %2290, %2294, %2274, %2278, %2313
  %2317 = phi ptr [ %2302, %2313 ], [ %3432, %2278 ], [ %3432, %2274 ], [ %3432, %2294 ], [ %3432, %2290 ], [ %3432, %2258 ], [ %3432, %2284 ]
  %2318 = icmp eq i32 %3431, 0
  br i1 %2318, label %2323, label %2319, !prof !33

2319:                                             ; preds = %2316
  %2320 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2317) #13
  %2321 = load ptr, ptr %29, align 8, !tbaa !9
  %2322 = getelementptr inbounds %union.StackValue, ptr %2321, i64 1
  br label %2323

2323:                                             ; preds = %2319, %2316
  %2324 = phi i32 [ %2320, %2319 ], [ 0, %2316 ]
  %2325 = phi ptr [ %2322, %2319 ], [ %3433, %2316 ]
  %2326 = getelementptr inbounds i32, ptr %2317, i64 1
  br label %74

2327:                                             ; preds = %3429
  %2328 = lshr i32 %3434, 7
  %2329 = and i32 %2328, 255
  %2330 = zext nneg i32 %2329 to i64
  %2331 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2330
  %2332 = getelementptr inbounds i32, ptr %3432, i64 -2
  %2333 = load i32, ptr %2332, align 4, !tbaa !39
  %2334 = lshr i32 %3434, 16
  %2335 = and i32 %2334, 255
  %2336 = zext nneg i32 %2335 to i64
  %2337 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2336
  %2338 = lshr i32 %3434, 24
  %2339 = lshr i32 %2333, 7
  %2340 = and i32 %2339, 255
  %2341 = zext nneg i32 %2340 to i64
  %2342 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2341
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2343 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2343, ptr %12, align 8, !tbaa !9
  call void @luaT_trybinTM(ptr noundef %0, ptr noundef %2331, ptr noundef %2337, ptr noundef %2342, i32 noundef %2338) #13
  %2344 = load volatile i32, ptr %49, align 8, !tbaa !9
  %2345 = icmp eq i32 %2344, 0
  br i1 %2345, label %2350, label %2346, !prof !33

2346:                                             ; preds = %2327
  %2347 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %2348 = load ptr, ptr %29, align 8, !tbaa !9
  %2349 = getelementptr inbounds %union.StackValue, ptr %2348, i64 1
  br label %2350

2350:                                             ; preds = %2346, %2327
  %2351 = phi i32 [ %2347, %2346 ], [ 0, %2327 ]
  %2352 = phi ptr [ %2349, %2346 ], [ %3433, %2327 ]
  %2353 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2354:                                             ; preds = %3429
  %2355 = lshr i32 %3434, 7
  %2356 = and i32 %2355, 255
  %2357 = zext nneg i32 %2356 to i64
  %2358 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2357
  %2359 = getelementptr inbounds i32, ptr %3432, i64 -2
  %2360 = load i32, ptr %2359, align 4, !tbaa !39
  %2361 = lshr i32 %3434, 16
  %2362 = and i32 %2361, 255
  %2363 = add nsw i32 %2362, -127
  %2364 = lshr i32 %3434, 24
  %2365 = lshr i32 %3434, 15
  %2366 = and i32 %2365, 1
  %2367 = lshr i32 %2360, 7
  %2368 = and i32 %2367, 255
  %2369 = zext nneg i32 %2368 to i64
  %2370 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2369
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2371 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2371, ptr %12, align 8, !tbaa !9
  %2372 = sext i32 %2363 to i64
  call void @luaT_trybiniTM(ptr noundef %0, ptr noundef %2358, i64 noundef %2372, i32 noundef %2366, ptr noundef %2370, i32 noundef %2364) #13
  %2373 = load volatile i32, ptr %49, align 8, !tbaa !9
  %2374 = icmp eq i32 %2373, 0
  br i1 %2374, label %2379, label %2375, !prof !33

2375:                                             ; preds = %2354
  %2376 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %2377 = load ptr, ptr %29, align 8, !tbaa !9
  %2378 = getelementptr inbounds %union.StackValue, ptr %2377, i64 1
  br label %2379

2379:                                             ; preds = %2375, %2354
  %2380 = phi i32 [ %2376, %2375 ], [ 0, %2354 ]
  %2381 = phi ptr [ %2378, %2375 ], [ %3433, %2354 ]
  %2382 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2383:                                             ; preds = %3429
  %2384 = lshr i32 %3434, 7
  %2385 = and i32 %2384, 255
  %2386 = zext nneg i32 %2385 to i64
  %2387 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2386
  %2388 = getelementptr inbounds i32, ptr %3432, i64 -2
  %2389 = load i32, ptr %2388, align 4, !tbaa !39
  %2390 = lshr i32 %3434, 16
  %2391 = and i32 %2390, 255
  %2392 = zext nneg i32 %2391 to i64
  %2393 = getelementptr inbounds %struct.TValue, ptr %35, i64 %2392
  %2394 = lshr i32 %3434, 24
  %2395 = lshr i32 %3434, 15
  %2396 = and i32 %2395, 1
  %2397 = lshr i32 %2389, 7
  %2398 = and i32 %2397, 255
  %2399 = zext nneg i32 %2398 to i64
  %2400 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2399
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2401 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2401, ptr %12, align 8, !tbaa !9
  call void @luaT_trybinassocTM(ptr noundef %0, ptr noundef %2387, ptr noundef %2393, i32 noundef %2396, ptr noundef %2400, i32 noundef %2394) #13
  %2402 = load volatile i32, ptr %49, align 8, !tbaa !9
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2408, label %2404, !prof !33

2404:                                             ; preds = %2383
  %2405 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %2406 = load ptr, ptr %29, align 8, !tbaa !9
  %2407 = getelementptr inbounds %union.StackValue, ptr %2406, i64 1
  br label %2408

2408:                                             ; preds = %2404, %2383
  %2409 = phi i32 [ %2405, %2404 ], [ 0, %2383 ]
  %2410 = phi ptr [ %2407, %2404 ], [ %3433, %2383 ]
  %2411 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2412:                                             ; preds = %3429
  %2413 = lshr i32 %3434, 7
  %2414 = and i32 %2413, 255
  %2415 = zext nneg i32 %2414 to i64
  %2416 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2415
  %2417 = lshr i32 %3434, 16
  %2418 = and i32 %2417, 255
  %2419 = zext nneg i32 %2418 to i64
  %2420 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2419
  %2421 = getelementptr inbounds %struct.TValue, ptr %2420, i64 0, i32 1
  %2422 = load i8, ptr %2421, align 8, !tbaa !5
  switch i8 %2422, label %2431 [
    i8 3, label %2423
    i8 19, label %2427
  ]

2423:                                             ; preds = %2412
  %2424 = load i64, ptr %2420, align 8, !tbaa !9
  %2425 = sub i64 0, %2424
  store i64 %2425, ptr %2416, align 8, !tbaa !9
  %2426 = getelementptr inbounds %struct.TValue, ptr %2416, i64 0, i32 1
  store i8 3, ptr %2426, align 8, !tbaa !5
  br label %2434

2427:                                             ; preds = %2412
  %2428 = load double, ptr %2420, align 8, !tbaa !9
  %2429 = fneg double %2428
  store double %2429, ptr %2416, align 8, !tbaa !9
  %2430 = getelementptr inbounds %struct.TValue, ptr %2416, i64 0, i32 1
  store i8 19, ptr %2430, align 8, !tbaa !5
  br label %2434

2431:                                             ; preds = %2412
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2432 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2432, ptr %12, align 8, !tbaa !9
  call void @luaT_trybinTM(ptr noundef %0, ptr noundef nonnull %2420, ptr noundef nonnull %2420, ptr noundef nonnull %2416, i32 noundef 18) #13
  %2433 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2434

2434:                                             ; preds = %2427, %2431, %2423
  %2435 = phi i32 [ %3431, %2423 ], [ %3431, %2427 ], [ %2433, %2431 ]
  %2436 = icmp eq i32 %2435, 0
  br i1 %2436, label %2441, label %2437, !prof !33

2437:                                             ; preds = %2434
  %2438 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %2439 = load ptr, ptr %29, align 8, !tbaa !9
  %2440 = getelementptr inbounds %union.StackValue, ptr %2439, i64 1
  br label %2441

2441:                                             ; preds = %2437, %2434
  %2442 = phi i32 [ %2438, %2437 ], [ 0, %2434 ]
  %2443 = phi ptr [ %2440, %2437 ], [ %3433, %2434 ]
  %2444 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2445:                                             ; preds = %3429
  %2446 = lshr i32 %3434, 7
  %2447 = and i32 %2446, 255
  %2448 = zext nneg i32 %2447 to i64
  %2449 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2448
  %2450 = lshr i32 %3434, 16
  %2451 = and i32 %2450, 255
  %2452 = zext nneg i32 %2451 to i64
  %2453 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2452
  %2454 = getelementptr inbounds %struct.TValue, ptr %2453, i64 0, i32 1
  %2455 = load i8, ptr %2454, align 8, !tbaa !5
  switch i8 %2455, label %2472 [
    i8 3, label %2456
    i8 19, label %2458
  ], !prof !54

2456:                                             ; preds = %2445
  %2457 = load i64, ptr %2453, align 8, !tbaa !9
  br label %2468

2458:                                             ; preds = %2445
  %2459 = load double, ptr %2453, align 8, !tbaa !9
  %2460 = call double @llvm.floor.f64(double %2459)
  %2461 = fcmp une double %2460, %2459
  br i1 %2461, label %2472, label %2462

2462:                                             ; preds = %2458
  %2463 = fcmp oge double %2460, 0xC3E0000000000000
  %2464 = fcmp olt double %2460, 0x43E0000000000000
  %2465 = and i1 %2463, %2464
  br i1 %2465, label %2466, label %2472

2466:                                             ; preds = %2462
  %2467 = fptosi double %2460 to i64
  br label %2468

2468:                                             ; preds = %2466, %2456
  %2469 = phi i64 [ %2457, %2456 ], [ %2467, %2466 ]
  %2470 = xor i64 %2469, -1
  store i64 %2470, ptr %2449, align 8, !tbaa !9
  %2471 = getelementptr inbounds %struct.TValue, ptr %2449, i64 0, i32 1
  store i8 3, ptr %2471, align 8, !tbaa !5
  br label %2475

2472:                                             ; preds = %2445, %2458, %2462
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2473 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2473, ptr %12, align 8, !tbaa !9
  call void @luaT_trybinTM(ptr noundef %0, ptr noundef nonnull %2453, ptr noundef nonnull %2453, ptr noundef nonnull %2449, i32 noundef 19) #13
  %2474 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2475

2475:                                             ; preds = %2472, %2468
  %2476 = phi i32 [ %3431, %2468 ], [ %2474, %2472 ]
  %2477 = icmp eq i32 %2476, 0
  br i1 %2477, label %2482, label %2478, !prof !33

2478:                                             ; preds = %2475
  %2479 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %2480 = load ptr, ptr %29, align 8, !tbaa !9
  %2481 = getelementptr inbounds %union.StackValue, ptr %2480, i64 1
  br label %2482

2482:                                             ; preds = %2478, %2475
  %2483 = phi i32 [ %2479, %2478 ], [ 0, %2475 ]
  %2484 = phi ptr [ %2481, %2478 ], [ %3433, %2475 ]
  %2485 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2486:                                             ; preds = %3429
  %2487 = lshr i32 %3434, 7
  %2488 = and i32 %2487, 255
  %2489 = zext nneg i32 %2488 to i64
  %2490 = lshr i32 %3434, 16
  %2491 = and i32 %2490, 255
  %2492 = zext nneg i32 %2491 to i64
  %2493 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2492, i32 0, i32 1
  %2494 = load i8, ptr %2493, align 8, !tbaa !5
  %2495 = icmp eq i8 %2494, 1
  %2496 = and i8 %2494, 15
  %2497 = icmp eq i8 %2496, 0
  %2498 = or i1 %2495, %2497
  %2499 = select i1 %2498, i8 17, i8 1
  %2500 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2489, i32 0, i32 1
  store i8 %2499, ptr %2500, align 8
  %2501 = icmp eq i32 %3431, 0
  br i1 %2501, label %2506, label %2502, !prof !33

2502:                                             ; preds = %2486
  %2503 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %2504 = load ptr, ptr %29, align 8, !tbaa !9
  %2505 = getelementptr inbounds %union.StackValue, ptr %2504, i64 1
  br label %2506

2506:                                             ; preds = %2502, %2486
  %2507 = phi i32 [ %2503, %2502 ], [ 0, %2486 ]
  %2508 = phi ptr [ %2505, %2502 ], [ %3433, %2486 ]
  %2509 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2510:                                             ; preds = %3429
  %2511 = lshr i32 %3434, 7
  %2512 = and i32 %2511, 255
  %2513 = zext nneg i32 %2512 to i64
  %2514 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2513
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2515 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2515, ptr %12, align 8, !tbaa !9
  %2516 = lshr i32 %3434, 16
  %2517 = and i32 %2516, 255
  %2518 = zext nneg i32 %2517 to i64
  %2519 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2518
  call void @luaV_objlen(ptr noundef %0, ptr noundef %2514, ptr noundef %2519)
  %2520 = load volatile i32, ptr %49, align 8, !tbaa !9
  %2521 = icmp eq i32 %2520, 0
  br i1 %2521, label %2526, label %2522, !prof !33

2522:                                             ; preds = %2510
  %2523 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %2524 = load ptr, ptr %29, align 8, !tbaa !9
  %2525 = getelementptr inbounds %union.StackValue, ptr %2524, i64 1
  br label %2526

2526:                                             ; preds = %2522, %2510
  %2527 = phi i32 [ %2523, %2522 ], [ 0, %2510 ]
  %2528 = phi ptr [ %2525, %2522 ], [ %3433, %2510 ]
  %2529 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2530:                                             ; preds = %3429
  %2531 = lshr i32 %3434, 7
  %2532 = and i32 %2531, 255
  %2533 = zext nneg i32 %2532 to i64
  %2534 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2533
  %2535 = lshr i32 %3434, 16
  %2536 = and i32 %2535, 255
  %2537 = zext nneg i32 %2536 to i64
  %2538 = getelementptr inbounds %union.StackValue, ptr %2534, i64 %2537
  store ptr %2538, ptr %12, align 8, !tbaa !9
  store ptr %3432, ptr %36, align 8, !tbaa !9
  call void @luaV_concat(ptr noundef %0, i32 noundef %2536)
  %2539 = load volatile i32, ptr %49, align 8, !tbaa !9
  %2540 = load ptr, ptr %13, align 8, !tbaa !21
  %2541 = getelementptr inbounds %struct.global_State, ptr %2540, i64 0, i32 3
  %2542 = load i64, ptr %2541, align 8, !tbaa !51
  %2543 = icmp sgt i64 %2542, 0
  br i1 %2543, label %2544, label %2546

2544:                                             ; preds = %2530
  store ptr %3432, ptr %36, align 8, !tbaa !9
  call void @luaC_step(ptr noundef nonnull %0) #13
  %2545 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2546

2546:                                             ; preds = %2544, %2530
  %2547 = phi i32 [ %2545, %2544 ], [ %2539, %2530 ]
  %2548 = icmp eq i32 %2547, 0
  br i1 %2548, label %2553, label %2549, !prof !33

2549:                                             ; preds = %2546
  %2550 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %2551 = load ptr, ptr %29, align 8, !tbaa !9
  %2552 = getelementptr inbounds %union.StackValue, ptr %2551, i64 1
  br label %2553

2553:                                             ; preds = %2549, %2546
  %2554 = phi i32 [ %2550, %2549 ], [ 0, %2546 ]
  %2555 = phi ptr [ %2552, %2549 ], [ %3433, %2546 ]
  %2556 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2557:                                             ; preds = %3429
  %2558 = lshr i32 %3434, 7
  %2559 = and i32 %2558, 255
  %2560 = zext nneg i32 %2559 to i64
  %2561 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2560
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2562 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2562, ptr %12, align 8, !tbaa !9
  %2563 = call ptr @luaF_close(ptr noundef %0, ptr noundef %2561, i32 noundef 0, i32 noundef 1) #13
  %2564 = load volatile i32, ptr %49, align 8, !tbaa !9
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2570, label %2566, !prof !33

2566:                                             ; preds = %2557
  %2567 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %2568 = load ptr, ptr %29, align 8, !tbaa !9
  %2569 = getelementptr inbounds %union.StackValue, ptr %2568, i64 1
  br label %2570

2570:                                             ; preds = %2566, %2557
  %2571 = phi i32 [ %2567, %2566 ], [ 0, %2557 ]
  %2572 = phi ptr [ %2569, %2566 ], [ %3433, %2557 ]
  %2573 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2574:                                             ; preds = %3429
  %2575 = lshr i32 %3434, 7
  %2576 = and i32 %2575, 255
  %2577 = zext nneg i32 %2576 to i64
  %2578 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2577
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2579 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2579, ptr %12, align 8, !tbaa !9
  call void @luaF_newtbcupval(ptr noundef %0, ptr noundef %2578) #13
  %2580 = icmp eq i32 %3431, 0
  br i1 %2580, label %2585, label %2581, !prof !33

2581:                                             ; preds = %2574
  %2582 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %2583 = load ptr, ptr %29, align 8, !tbaa !9
  %2584 = getelementptr inbounds %union.StackValue, ptr %2583, i64 1
  br label %2585

2585:                                             ; preds = %2581, %2574
  %2586 = phi i32 [ %2582, %2581 ], [ 0, %2574 ]
  %2587 = phi ptr [ %2584, %2581 ], [ %3433, %2574 ]
  %2588 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

2589:                                             ; preds = %3429
  %2590 = lshr i32 %3434, 7
  %2591 = add nsw i32 %2590, -16777215
  %2592 = sext i32 %2591 to i64
  %2593 = getelementptr inbounds i32, ptr %3432, i64 %2592
  %2594 = load volatile i32, ptr %49, align 8, !tbaa !9
  %2595 = icmp eq i32 %2594, 0
  br i1 %2595, label %2600, label %2596, !prof !33

2596:                                             ; preds = %2589
  %2597 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2593) #13
  %2598 = load ptr, ptr %29, align 8, !tbaa !9
  %2599 = getelementptr inbounds %union.StackValue, ptr %2598, i64 1
  br label %2600

2600:                                             ; preds = %2596, %2589
  %2601 = phi i32 [ %2597, %2596 ], [ 0, %2589 ]
  %2602 = phi ptr [ %2599, %2596 ], [ %3433, %2589 ]
  %2603 = getelementptr inbounds i32, ptr %2593, i64 1
  br label %74

2604:                                             ; preds = %3429
  %2605 = lshr i32 %3434, 7
  %2606 = and i32 %2605, 255
  %2607 = zext nneg i32 %2606 to i64
  %2608 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2607
  %2609 = lshr i32 %3434, 16
  %2610 = and i32 %2609, 255
  %2611 = zext nneg i32 %2610 to i64
  %2612 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2611
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2613 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2613, ptr %12, align 8, !tbaa !9
  %2614 = call i32 @luaV_equalobj(ptr noundef %0, ptr noundef %2608, ptr noundef %2612)
  %2615 = load volatile i32, ptr %49, align 8, !tbaa !9
  %2616 = lshr i32 %3434, 15
  %2617 = and i32 %2616, 1
  %2618 = icmp eq i32 %2614, %2617
  br i1 %2618, label %2621, label %2619

2619:                                             ; preds = %2604
  %2620 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %2628

2621:                                             ; preds = %2604
  %2622 = load i32, ptr %3432, align 4, !tbaa !39
  %2623 = lshr i32 %2622, 7
  %2624 = add nsw i32 %2623, -16777214
  %2625 = sext i32 %2624 to i64
  %2626 = getelementptr inbounds i32, ptr %3432, i64 %2625
  %2627 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2628

2628:                                             ; preds = %2621, %2619
  %2629 = phi i32 [ %2615, %2619 ], [ %2627, %2621 ]
  %2630 = phi ptr [ %2620, %2619 ], [ %2626, %2621 ]
  %2631 = icmp eq i32 %2629, 0
  br i1 %2631, label %2636, label %2632, !prof !33

2632:                                             ; preds = %2628
  %2633 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %2630) #13
  %2634 = load ptr, ptr %29, align 8, !tbaa !9
  %2635 = getelementptr inbounds %union.StackValue, ptr %2634, i64 1
  br label %2636

2636:                                             ; preds = %2632, %2628
  %2637 = phi i32 [ %2633, %2632 ], [ 0, %2628 ]
  %2638 = phi ptr [ %2635, %2632 ], [ %3433, %2628 ]
  %2639 = getelementptr inbounds i32, ptr %2630, i64 1
  br label %74

2640:                                             ; preds = %3429
  %2641 = lshr i32 %3434, 7
  %2642 = and i32 %2641, 255
  %2643 = zext nneg i32 %2642 to i64
  %2644 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2643
  %2645 = lshr i32 %3434, 16
  %2646 = and i32 %2645, 255
  %2647 = zext nneg i32 %2646 to i64
  %2648 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2647
  %2649 = getelementptr inbounds %struct.TValue, ptr %2644, i64 0, i32 1
  %2650 = load i8, ptr %2649, align 8, !tbaa !9
  %2651 = icmp eq i8 %2650, 3
  br i1 %2651, label %2652, label %2661

2652:                                             ; preds = %2640
  %2653 = getelementptr inbounds %struct.TValue, ptr %2648, i64 0, i32 1
  %2654 = load i8, ptr %2653, align 8, !tbaa !5
  %2655 = icmp eq i8 %2654, 3
  br i1 %2655, label %2656, label %2664

2656:                                             ; preds = %2652
  %2657 = load i64, ptr %2644, align 8, !tbaa !9
  %2658 = load i64, ptr %2648, align 8, !tbaa !9
  %2659 = icmp slt i64 %2657, %2658
  %2660 = zext i1 %2659 to i32
  br label %2721

2661:                                             ; preds = %2640
  %2662 = and i8 %2650, 15
  %2663 = icmp eq i8 %2662, 3
  br i1 %2663, label %2667, label %2717

2664:                                             ; preds = %2652
  %2665 = and i8 %2654, 15
  %2666 = icmp eq i8 %2665, 3
  br i1 %2666, label %2672, label %2717

2667:                                             ; preds = %2661
  %2668 = getelementptr inbounds %struct.TValue, ptr %2648, i64 0, i32 1
  %2669 = load i8, ptr %2668, align 8, !tbaa !5
  %2670 = and i8 %2669, 15
  %2671 = icmp eq i8 %2670, 3
  br i1 %2671, label %2692, label %2717

2672:                                             ; preds = %2664
  %2673 = load i64, ptr %2644, align 8, !tbaa !9
  %2674 = load double, ptr %2648, align 8, !tbaa !9
  %2675 = add i64 %2673, 9007199254740992
  %2676 = icmp ult i64 %2675, 18014398509481985
  br i1 %2676, label %2677, label %2680

2677:                                             ; preds = %2672
  %2678 = sitofp i64 %2673 to double
  %2679 = fcmp ogt double %2674, %2678
  br label %2714

2680:                                             ; preds = %2672
  %2681 = call double @llvm.floor.f64(double %2674)
  %2682 = fcmp une double %2681, %2674
  %2683 = fadd double %2681, 1.000000e+00
  %2684 = select i1 %2682, double %2683, double %2681
  %2685 = fcmp oge double %2684, 0xC3E0000000000000
  %2686 = fcmp olt double %2684, 0x43E0000000000000
  %2687 = and i1 %2685, %2686
  %2688 = fptosi double %2684 to i64
  %2689 = icmp slt i64 %2673, %2688
  %2690 = fcmp ogt double %2674, 0.000000e+00
  %2691 = select i1 %2687, i1 %2689, i1 %2690
  br label %2714

2692:                                             ; preds = %2667
  %2693 = load double, ptr %2644, align 8, !tbaa !9
  %2694 = icmp eq i8 %2669, 19
  br i1 %2694, label %2695, label %2698

2695:                                             ; preds = %2692
  %2696 = load double, ptr %2648, align 8, !tbaa !9
  %2697 = fcmp olt double %2693, %2696
  br label %2714

2698:                                             ; preds = %2692
  %2699 = load i64, ptr %2648, align 8, !tbaa !9
  %2700 = add i64 %2699, 9007199254740992
  %2701 = icmp ult i64 %2700, 18014398509481985
  br i1 %2701, label %2702, label %2705

2702:                                             ; preds = %2698
  %2703 = sitofp i64 %2699 to double
  %2704 = fcmp olt double %2693, %2703
  br label %2714

2705:                                             ; preds = %2698
  %2706 = call double @llvm.floor.f64(double %2693)
  %2707 = fcmp oge double %2706, 0xC3E0000000000000
  %2708 = fcmp olt double %2706, 0x43E0000000000000
  %2709 = and i1 %2707, %2708
  %2710 = fptosi double %2706 to i64
  %2711 = icmp sgt i64 %2699, %2710
  %2712 = fcmp olt double %2693, 0.000000e+00
  %2713 = select i1 %2709, i1 %2711, i1 %2712
  br label %2714

2714:                                             ; preds = %2677, %2680, %2695, %2702, %2705
  %2715 = phi i1 [ %2697, %2695 ], [ %2679, %2677 ], [ %2691, %2680 ], [ %2704, %2702 ], [ %2713, %2705 ]
  %2716 = zext i1 %2715 to i32
  br label %2721

2717:                                             ; preds = %2667, %2664, %2661
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2718 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2718, ptr %12, align 8, !tbaa !9
  %2719 = call fastcc i32 @lessthanothers(ptr noundef %0, ptr noundef nonnull %2644, ptr noundef nonnull %2648)
  %2720 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2721

2721:                                             ; preds = %2714, %2717, %2656
  %2722 = phi i32 [ %2660, %2656 ], [ %2716, %2714 ], [ %2719, %2717 ]
  %2723 = phi i32 [ %3431, %2656 ], [ %3431, %2714 ], [ %2720, %2717 ]
  %2724 = lshr i32 %3434, 15
  %2725 = and i32 %2724, 1
  %2726 = icmp eq i32 %2722, %2725
  br i1 %2726, label %2729, label %2727

2727:                                             ; preds = %2721
  %2728 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %2736

2729:                                             ; preds = %2721
  %2730 = load i32, ptr %3432, align 4, !tbaa !39
  %2731 = lshr i32 %2730, 7
  %2732 = add nsw i32 %2731, -16777214
  %2733 = sext i32 %2732 to i64
  %2734 = getelementptr inbounds i32, ptr %3432, i64 %2733
  %2735 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2736

2736:                                             ; preds = %2729, %2727
  %2737 = phi i32 [ %2723, %2727 ], [ %2735, %2729 ]
  %2738 = phi ptr [ %2728, %2727 ], [ %2734, %2729 ]
  %2739 = icmp eq i32 %2737, 0
  br i1 %2739, label %2744, label %2740, !prof !33

2740:                                             ; preds = %2736
  %2741 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2738) #13
  %2742 = load ptr, ptr %29, align 8, !tbaa !9
  %2743 = getelementptr inbounds %union.StackValue, ptr %2742, i64 1
  br label %2744

2744:                                             ; preds = %2740, %2736
  %2745 = phi i32 [ %2741, %2740 ], [ 0, %2736 ]
  %2746 = phi ptr [ %2743, %2740 ], [ %3433, %2736 ]
  %2747 = getelementptr inbounds i32, ptr %2738, i64 1
  br label %74

2748:                                             ; preds = %3429
  %2749 = lshr i32 %3434, 7
  %2750 = and i32 %2749, 255
  %2751 = zext nneg i32 %2750 to i64
  %2752 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2751
  %2753 = lshr i32 %3434, 16
  %2754 = and i32 %2753, 255
  %2755 = zext nneg i32 %2754 to i64
  %2756 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2755
  %2757 = getelementptr inbounds %struct.TValue, ptr %2752, i64 0, i32 1
  %2758 = load i8, ptr %2757, align 8, !tbaa !9
  %2759 = icmp eq i8 %2758, 3
  br i1 %2759, label %2760, label %2769

2760:                                             ; preds = %2748
  %2761 = getelementptr inbounds %struct.TValue, ptr %2756, i64 0, i32 1
  %2762 = load i8, ptr %2761, align 8, !tbaa !5
  %2763 = icmp eq i8 %2762, 3
  br i1 %2763, label %2764, label %2772

2764:                                             ; preds = %2760
  %2765 = load i64, ptr %2752, align 8, !tbaa !9
  %2766 = load i64, ptr %2756, align 8, !tbaa !9
  %2767 = icmp sle i64 %2765, %2766
  %2768 = zext i1 %2767 to i32
  br label %2829

2769:                                             ; preds = %2748
  %2770 = and i8 %2758, 15
  %2771 = icmp eq i8 %2770, 3
  br i1 %2771, label %2775, label %2825

2772:                                             ; preds = %2760
  %2773 = and i8 %2762, 15
  %2774 = icmp eq i8 %2773, 3
  br i1 %2774, label %2780, label %2825

2775:                                             ; preds = %2769
  %2776 = getelementptr inbounds %struct.TValue, ptr %2756, i64 0, i32 1
  %2777 = load i8, ptr %2776, align 8, !tbaa !5
  %2778 = and i8 %2777, 15
  %2779 = icmp eq i8 %2778, 3
  br i1 %2779, label %2797, label %2825

2780:                                             ; preds = %2772
  %2781 = load i64, ptr %2752, align 8, !tbaa !9
  %2782 = load double, ptr %2756, align 8, !tbaa !9
  %2783 = add i64 %2781, 9007199254740992
  %2784 = icmp ult i64 %2783, 18014398509481985
  br i1 %2784, label %2785, label %2788

2785:                                             ; preds = %2780
  %2786 = sitofp i64 %2781 to double
  %2787 = fcmp oge double %2782, %2786
  br label %2822

2788:                                             ; preds = %2780
  %2789 = call double @llvm.floor.f64(double %2782)
  %2790 = fcmp ult double %2789, 0xC3E0000000000000
  %2791 = fcmp uge double %2789, 0x43E0000000000000
  %2792 = or i1 %2790, %2791
  %2793 = fptosi double %2789 to i64
  %2794 = icmp sle i64 %2781, %2793
  %2795 = fcmp ogt double %2782, 0.000000e+00
  %2796 = select i1 %2792, i1 %2795, i1 %2794
  br label %2822

2797:                                             ; preds = %2775
  %2798 = load double, ptr %2752, align 8, !tbaa !9
  %2799 = icmp eq i8 %2777, 19
  br i1 %2799, label %2800, label %2803

2800:                                             ; preds = %2797
  %2801 = load double, ptr %2756, align 8, !tbaa !9
  %2802 = fcmp ole double %2798, %2801
  br label %2822

2803:                                             ; preds = %2797
  %2804 = load i64, ptr %2756, align 8, !tbaa !9
  %2805 = add i64 %2804, 9007199254740992
  %2806 = icmp ult i64 %2805, 18014398509481985
  br i1 %2806, label %2807, label %2810

2807:                                             ; preds = %2803
  %2808 = sitofp i64 %2804 to double
  %2809 = fcmp ole double %2798, %2808
  br label %2822

2810:                                             ; preds = %2803
  %2811 = call double @llvm.floor.f64(double %2798)
  %2812 = fcmp une double %2811, %2798
  %2813 = fadd double %2811, 1.000000e+00
  %2814 = select i1 %2812, double %2813, double %2811
  %2815 = fcmp ult double %2814, 0xC3E0000000000000
  %2816 = fcmp uge double %2814, 0x43E0000000000000
  %2817 = or i1 %2815, %2816
  %2818 = fptosi double %2814 to i64
  %2819 = icmp sge i64 %2804, %2818
  %2820 = fcmp olt double %2798, 0.000000e+00
  %2821 = select i1 %2817, i1 %2820, i1 %2819
  br label %2822

2822:                                             ; preds = %2785, %2788, %2800, %2807, %2810
  %2823 = phi i1 [ %2802, %2800 ], [ %2787, %2785 ], [ %2796, %2788 ], [ %2809, %2807 ], [ %2821, %2810 ]
  %2824 = zext i1 %2823 to i32
  br label %2829

2825:                                             ; preds = %2775, %2772, %2769
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2826 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2826, ptr %12, align 8, !tbaa !9
  %2827 = call fastcc i32 @lessequalothers(ptr noundef %0, ptr noundef nonnull %2752, ptr noundef nonnull %2756)
  %2828 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2829

2829:                                             ; preds = %2822, %2825, %2764
  %2830 = phi i32 [ %2768, %2764 ], [ %2824, %2822 ], [ %2827, %2825 ]
  %2831 = phi i32 [ %3431, %2764 ], [ %3431, %2822 ], [ %2828, %2825 ]
  %2832 = lshr i32 %3434, 15
  %2833 = and i32 %2832, 1
  %2834 = icmp eq i32 %2830, %2833
  br i1 %2834, label %2837, label %2835

2835:                                             ; preds = %2829
  %2836 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %2844

2837:                                             ; preds = %2829
  %2838 = load i32, ptr %3432, align 4, !tbaa !39
  %2839 = lshr i32 %2838, 7
  %2840 = add nsw i32 %2839, -16777214
  %2841 = sext i32 %2840 to i64
  %2842 = getelementptr inbounds i32, ptr %3432, i64 %2841
  %2843 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2844

2844:                                             ; preds = %2837, %2835
  %2845 = phi i32 [ %2831, %2835 ], [ %2843, %2837 ]
  %2846 = phi ptr [ %2836, %2835 ], [ %2842, %2837 ]
  %2847 = icmp eq i32 %2845, 0
  br i1 %2847, label %2852, label %2848, !prof !33

2848:                                             ; preds = %2844
  %2849 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2846) #13
  %2850 = load ptr, ptr %29, align 8, !tbaa !9
  %2851 = getelementptr inbounds %union.StackValue, ptr %2850, i64 1
  br label %2852

2852:                                             ; preds = %2848, %2844
  %2853 = phi i32 [ %2849, %2848 ], [ 0, %2844 ]
  %2854 = phi ptr [ %2851, %2848 ], [ %3433, %2844 ]
  %2855 = getelementptr inbounds i32, ptr %2846, i64 1
  br label %74

2856:                                             ; preds = %3429
  %2857 = lshr i32 %3434, 7
  %2858 = and i32 %2857, 255
  %2859 = zext nneg i32 %2858 to i64
  %2860 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2859
  %2861 = lshr i32 %3434, 16
  %2862 = and i32 %2861, 255
  %2863 = zext nneg i32 %2862 to i64
  %2864 = getelementptr inbounds %struct.TValue, ptr %35, i64 %2863
  %2865 = call i32 @luaV_equalobj(ptr noundef null, ptr noundef %2860, ptr noundef %2864)
  %2866 = lshr i32 %3434, 15
  %2867 = and i32 %2866, 1
  %2868 = icmp eq i32 %2865, %2867
  br i1 %2868, label %2871, label %2869

2869:                                             ; preds = %2856
  %2870 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %2878

2871:                                             ; preds = %2856
  %2872 = load i32, ptr %3432, align 4, !tbaa !39
  %2873 = lshr i32 %2872, 7
  %2874 = add nsw i32 %2873, -16777214
  %2875 = sext i32 %2874 to i64
  %2876 = getelementptr inbounds i32, ptr %3432, i64 %2875
  %2877 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2878

2878:                                             ; preds = %2871, %2869
  %2879 = phi i32 [ %3431, %2869 ], [ %2877, %2871 ]
  %2880 = phi ptr [ %2870, %2869 ], [ %2876, %2871 ]
  %2881 = icmp eq i32 %2879, 0
  br i1 %2881, label %2886, label %2882, !prof !33

2882:                                             ; preds = %2878
  %2883 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2880) #13
  %2884 = load ptr, ptr %29, align 8, !tbaa !9
  %2885 = getelementptr inbounds %union.StackValue, ptr %2884, i64 1
  br label %2886

2886:                                             ; preds = %2882, %2878
  %2887 = phi i32 [ %2883, %2882 ], [ 0, %2878 ]
  %2888 = phi ptr [ %2885, %2882 ], [ %3433, %2878 ]
  %2889 = getelementptr inbounds i32, ptr %2880, i64 1
  br label %74

2890:                                             ; preds = %3429
  %2891 = lshr i32 %3434, 7
  %2892 = and i32 %2891, 255
  %2893 = zext nneg i32 %2892 to i64
  %2894 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2893
  %2895 = lshr i32 %3434, 16
  %2896 = and i32 %2895, 255
  %2897 = add nsw i32 %2896, -127
  %2898 = getelementptr inbounds %struct.TValue, ptr %2894, i64 0, i32 1
  %2899 = load i8, ptr %2898, align 8, !tbaa !9
  switch i8 %2899, label %2900 [
    i8 3, label %2903
    i8 19, label %2907
  ]

2900:                                             ; preds = %2890
  %2901 = and i32 %3434, 32768
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %2918, label %2916

2903:                                             ; preds = %2890
  %2904 = load i64, ptr %2894, align 8, !tbaa !9
  %2905 = sext i32 %2897 to i64
  %2906 = icmp eq i64 %2904, %2905
  br label %2911

2907:                                             ; preds = %2890
  %2908 = load double, ptr %2894, align 8, !tbaa !9
  %2909 = sitofp i32 %2897 to double
  %2910 = fcmp oeq double %2908, %2909
  br label %2911

2911:                                             ; preds = %2907, %2903
  %2912 = phi i1 [ %2906, %2903 ], [ %2910, %2907 ]
  %2913 = and i32 %3434, 32768
  %2914 = icmp eq i32 %2913, 0
  %2915 = xor i1 %2914, %2912
  br i1 %2915, label %2918, label %2916

2916:                                             ; preds = %2900, %2911
  %2917 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %2925

2918:                                             ; preds = %2900, %2911
  %2919 = load i32, ptr %3432, align 4, !tbaa !39
  %2920 = lshr i32 %2919, 7
  %2921 = add nsw i32 %2920, -16777214
  %2922 = sext i32 %2921 to i64
  %2923 = getelementptr inbounds i32, ptr %3432, i64 %2922
  %2924 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2925

2925:                                             ; preds = %2918, %2916
  %2926 = phi i32 [ %3431, %2916 ], [ %2924, %2918 ]
  %2927 = phi ptr [ %2917, %2916 ], [ %2923, %2918 ]
  %2928 = icmp eq i32 %2926, 0
  br i1 %2928, label %2933, label %2929, !prof !33

2929:                                             ; preds = %2925
  %2930 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2927) #13
  %2931 = load ptr, ptr %29, align 8, !tbaa !9
  %2932 = getelementptr inbounds %union.StackValue, ptr %2931, i64 1
  br label %2933

2933:                                             ; preds = %2929, %2925
  %2934 = phi i32 [ %2930, %2929 ], [ 0, %2925 ]
  %2935 = phi ptr [ %2932, %2929 ], [ %3433, %2925 ]
  %2936 = getelementptr inbounds i32, ptr %2927, i64 1
  br label %74

2937:                                             ; preds = %3429
  %2938 = lshr i32 %3434, 7
  %2939 = and i32 %2938, 255
  %2940 = zext nneg i32 %2939 to i64
  %2941 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2940
  %2942 = lshr i32 %3434, 16
  %2943 = and i32 %2942, 255
  %2944 = add nsw i32 %2943, -127
  %2945 = getelementptr inbounds %struct.TValue, ptr %2941, i64 0, i32 1
  %2946 = load i8, ptr %2945, align 8, !tbaa !9
  switch i8 %2946, label %2957 [
    i8 3, label %2947
    i8 19, label %2952
  ]

2947:                                             ; preds = %2937
  %2948 = load i64, ptr %2941, align 8, !tbaa !9
  %2949 = sext i32 %2944 to i64
  %2950 = icmp slt i64 %2948, %2949
  %2951 = zext i1 %2950 to i32
  br label %2962

2952:                                             ; preds = %2937
  %2953 = load double, ptr %2941, align 8, !tbaa !9
  %2954 = sitofp i32 %2944 to double
  %2955 = fcmp olt double %2953, %2954
  %2956 = zext i1 %2955 to i32
  br label %2962

2957:                                             ; preds = %2937
  %2958 = lshr i32 %3434, 24
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %2959 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %2959, ptr %12, align 8, !tbaa !9
  %2960 = call i32 @luaT_callorderiTM(ptr noundef %0, ptr noundef nonnull %2941, i32 noundef %2944, i32 noundef 0, i32 noundef %2958, i32 noundef 20) #13
  %2961 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2962

2962:                                             ; preds = %2952, %2957, %2947
  %2963 = phi i32 [ %2951, %2947 ], [ %2956, %2952 ], [ %2960, %2957 ]
  %2964 = phi i32 [ %3431, %2947 ], [ %3431, %2952 ], [ %2961, %2957 ]
  %2965 = lshr i32 %3434, 15
  %2966 = and i32 %2965, 1
  %2967 = icmp eq i32 %2963, %2966
  br i1 %2967, label %2970, label %2968

2968:                                             ; preds = %2962
  %2969 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %2977

2970:                                             ; preds = %2962
  %2971 = load i32, ptr %3432, align 4, !tbaa !39
  %2972 = lshr i32 %2971, 7
  %2973 = add nsw i32 %2972, -16777214
  %2974 = sext i32 %2973 to i64
  %2975 = getelementptr inbounds i32, ptr %3432, i64 %2974
  %2976 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %2977

2977:                                             ; preds = %2970, %2968
  %2978 = phi i32 [ %2964, %2968 ], [ %2976, %2970 ]
  %2979 = phi ptr [ %2969, %2968 ], [ %2975, %2970 ]
  %2980 = icmp eq i32 %2978, 0
  br i1 %2980, label %2985, label %2981, !prof !33

2981:                                             ; preds = %2977
  %2982 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %2979) #13
  %2983 = load ptr, ptr %29, align 8, !tbaa !9
  %2984 = getelementptr inbounds %union.StackValue, ptr %2983, i64 1
  br label %2985

2985:                                             ; preds = %2981, %2977
  %2986 = phi i32 [ %2982, %2981 ], [ 0, %2977 ]
  %2987 = phi ptr [ %2984, %2981 ], [ %3433, %2977 ]
  %2988 = getelementptr inbounds i32, ptr %2979, i64 1
  br label %74

2989:                                             ; preds = %3429
  %2990 = lshr i32 %3434, 7
  %2991 = and i32 %2990, 255
  %2992 = zext nneg i32 %2991 to i64
  %2993 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %2992
  %2994 = lshr i32 %3434, 16
  %2995 = and i32 %2994, 255
  %2996 = add nsw i32 %2995, -127
  %2997 = getelementptr inbounds %struct.TValue, ptr %2993, i64 0, i32 1
  %2998 = load i8, ptr %2997, align 8, !tbaa !9
  switch i8 %2998, label %3009 [
    i8 3, label %2999
    i8 19, label %3004
  ]

2999:                                             ; preds = %2989
  %3000 = load i64, ptr %2993, align 8, !tbaa !9
  %3001 = sext i32 %2996 to i64
  %3002 = icmp sle i64 %3000, %3001
  %3003 = zext i1 %3002 to i32
  br label %3014

3004:                                             ; preds = %2989
  %3005 = load double, ptr %2993, align 8, !tbaa !9
  %3006 = sitofp i32 %2996 to double
  %3007 = fcmp ole double %3005, %3006
  %3008 = zext i1 %3007 to i32
  br label %3014

3009:                                             ; preds = %2989
  %3010 = lshr i32 %3434, 24
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3011 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %3011, ptr %12, align 8, !tbaa !9
  %3012 = call i32 @luaT_callorderiTM(ptr noundef %0, ptr noundef nonnull %2993, i32 noundef %2996, i32 noundef 0, i32 noundef %3010, i32 noundef 21) #13
  %3013 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3014

3014:                                             ; preds = %3004, %3009, %2999
  %3015 = phi i32 [ %3003, %2999 ], [ %3008, %3004 ], [ %3012, %3009 ]
  %3016 = phi i32 [ %3431, %2999 ], [ %3431, %3004 ], [ %3013, %3009 ]
  %3017 = lshr i32 %3434, 15
  %3018 = and i32 %3017, 1
  %3019 = icmp eq i32 %3015, %3018
  br i1 %3019, label %3022, label %3020

3020:                                             ; preds = %3014
  %3021 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %3029

3022:                                             ; preds = %3014
  %3023 = load i32, ptr %3432, align 4, !tbaa !39
  %3024 = lshr i32 %3023, 7
  %3025 = add nsw i32 %3024, -16777214
  %3026 = sext i32 %3025 to i64
  %3027 = getelementptr inbounds i32, ptr %3432, i64 %3026
  %3028 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3029

3029:                                             ; preds = %3022, %3020
  %3030 = phi i32 [ %3016, %3020 ], [ %3028, %3022 ]
  %3031 = phi ptr [ %3021, %3020 ], [ %3027, %3022 ]
  %3032 = icmp eq i32 %3030, 0
  br i1 %3032, label %3037, label %3033, !prof !33

3033:                                             ; preds = %3029
  %3034 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3031) #13
  %3035 = load ptr, ptr %29, align 8, !tbaa !9
  %3036 = getelementptr inbounds %union.StackValue, ptr %3035, i64 1
  br label %3037

3037:                                             ; preds = %3033, %3029
  %3038 = phi i32 [ %3034, %3033 ], [ 0, %3029 ]
  %3039 = phi ptr [ %3036, %3033 ], [ %3433, %3029 ]
  %3040 = getelementptr inbounds i32, ptr %3031, i64 1
  br label %74

3041:                                             ; preds = %3429
  %3042 = lshr i32 %3434, 7
  %3043 = and i32 %3042, 255
  %3044 = zext nneg i32 %3043 to i64
  %3045 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3044
  %3046 = lshr i32 %3434, 16
  %3047 = and i32 %3046, 255
  %3048 = add nsw i32 %3047, -127
  %3049 = getelementptr inbounds %struct.TValue, ptr %3045, i64 0, i32 1
  %3050 = load i8, ptr %3049, align 8, !tbaa !9
  switch i8 %3050, label %3061 [
    i8 3, label %3051
    i8 19, label %3056
  ]

3051:                                             ; preds = %3041
  %3052 = load i64, ptr %3045, align 8, !tbaa !9
  %3053 = sext i32 %3048 to i64
  %3054 = icmp sgt i64 %3052, %3053
  %3055 = zext i1 %3054 to i32
  br label %3066

3056:                                             ; preds = %3041
  %3057 = load double, ptr %3045, align 8, !tbaa !9
  %3058 = sitofp i32 %3048 to double
  %3059 = fcmp ogt double %3057, %3058
  %3060 = zext i1 %3059 to i32
  br label %3066

3061:                                             ; preds = %3041
  %3062 = lshr i32 %3434, 24
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3063 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %3063, ptr %12, align 8, !tbaa !9
  %3064 = call i32 @luaT_callorderiTM(ptr noundef %0, ptr noundef nonnull %3045, i32 noundef %3048, i32 noundef 1, i32 noundef %3062, i32 noundef 20) #13
  %3065 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3066

3066:                                             ; preds = %3056, %3061, %3051
  %3067 = phi i32 [ %3055, %3051 ], [ %3060, %3056 ], [ %3064, %3061 ]
  %3068 = phi i32 [ %3431, %3051 ], [ %3431, %3056 ], [ %3065, %3061 ]
  %3069 = lshr i32 %3434, 15
  %3070 = and i32 %3069, 1
  %3071 = icmp eq i32 %3067, %3070
  br i1 %3071, label %3074, label %3072

3072:                                             ; preds = %3066
  %3073 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %3081

3074:                                             ; preds = %3066
  %3075 = load i32, ptr %3432, align 4, !tbaa !39
  %3076 = lshr i32 %3075, 7
  %3077 = add nsw i32 %3076, -16777214
  %3078 = sext i32 %3077 to i64
  %3079 = getelementptr inbounds i32, ptr %3432, i64 %3078
  %3080 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3081

3081:                                             ; preds = %3074, %3072
  %3082 = phi i32 [ %3068, %3072 ], [ %3080, %3074 ]
  %3083 = phi ptr [ %3073, %3072 ], [ %3079, %3074 ]
  %3084 = icmp eq i32 %3082, 0
  br i1 %3084, label %3089, label %3085, !prof !33

3085:                                             ; preds = %3081
  %3086 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3083) #13
  %3087 = load ptr, ptr %29, align 8, !tbaa !9
  %3088 = getelementptr inbounds %union.StackValue, ptr %3087, i64 1
  br label %3089

3089:                                             ; preds = %3085, %3081
  %3090 = phi i32 [ %3086, %3085 ], [ 0, %3081 ]
  %3091 = phi ptr [ %3088, %3085 ], [ %3433, %3081 ]
  %3092 = getelementptr inbounds i32, ptr %3083, i64 1
  br label %74

3093:                                             ; preds = %3429
  %3094 = lshr i32 %3434, 7
  %3095 = and i32 %3094, 255
  %3096 = zext nneg i32 %3095 to i64
  %3097 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3096
  %3098 = lshr i32 %3434, 16
  %3099 = and i32 %3098, 255
  %3100 = add nsw i32 %3099, -127
  %3101 = getelementptr inbounds %struct.TValue, ptr %3097, i64 0, i32 1
  %3102 = load i8, ptr %3101, align 8, !tbaa !9
  switch i8 %3102, label %3113 [
    i8 3, label %3103
    i8 19, label %3108
  ]

3103:                                             ; preds = %3093
  %3104 = load i64, ptr %3097, align 8, !tbaa !9
  %3105 = sext i32 %3100 to i64
  %3106 = icmp sge i64 %3104, %3105
  %3107 = zext i1 %3106 to i32
  br label %3118

3108:                                             ; preds = %3093
  %3109 = load double, ptr %3097, align 8, !tbaa !9
  %3110 = sitofp i32 %3100 to double
  %3111 = fcmp oge double %3109, %3110
  %3112 = zext i1 %3111 to i32
  br label %3118

3113:                                             ; preds = %3093
  %3114 = lshr i32 %3434, 24
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3115 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %3115, ptr %12, align 8, !tbaa !9
  %3116 = call i32 @luaT_callorderiTM(ptr noundef %0, ptr noundef nonnull %3097, i32 noundef %3100, i32 noundef 1, i32 noundef %3114, i32 noundef 21) #13
  %3117 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3118

3118:                                             ; preds = %3108, %3113, %3103
  %3119 = phi i32 [ %3107, %3103 ], [ %3112, %3108 ], [ %3116, %3113 ]
  %3120 = phi i32 [ %3431, %3103 ], [ %3431, %3108 ], [ %3117, %3113 ]
  %3121 = lshr i32 %3434, 15
  %3122 = and i32 %3121, 1
  %3123 = icmp eq i32 %3119, %3122
  br i1 %3123, label %3126, label %3124

3124:                                             ; preds = %3118
  %3125 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %3133

3126:                                             ; preds = %3118
  %3127 = load i32, ptr %3432, align 4, !tbaa !39
  %3128 = lshr i32 %3127, 7
  %3129 = add nsw i32 %3128, -16777214
  %3130 = sext i32 %3129 to i64
  %3131 = getelementptr inbounds i32, ptr %3432, i64 %3130
  %3132 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3133

3133:                                             ; preds = %3126, %3124
  %3134 = phi i32 [ %3120, %3124 ], [ %3132, %3126 ]
  %3135 = phi ptr [ %3125, %3124 ], [ %3131, %3126 ]
  %3136 = icmp eq i32 %3134, 0
  br i1 %3136, label %3141, label %3137, !prof !33

3137:                                             ; preds = %3133
  %3138 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3135) #13
  %3139 = load ptr, ptr %29, align 8, !tbaa !9
  %3140 = getelementptr inbounds %union.StackValue, ptr %3139, i64 1
  br label %3141

3141:                                             ; preds = %3137, %3133
  %3142 = phi i32 [ %3138, %3137 ], [ 0, %3133 ]
  %3143 = phi ptr [ %3140, %3137 ], [ %3433, %3133 ]
  %3144 = getelementptr inbounds i32, ptr %3135, i64 1
  br label %74

3145:                                             ; preds = %3429
  %3146 = lshr i32 %3434, 7
  %3147 = and i32 %3146, 255
  %3148 = zext nneg i32 %3147 to i64
  %3149 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3148, i32 0, i32 1
  %3150 = load i8, ptr %3149, align 8, !tbaa !9
  %3151 = icmp eq i8 %3150, 1
  %3152 = and i8 %3150, 15
  %3153 = icmp eq i8 %3152, 0
  %3154 = or i1 %3151, %3153
  %3155 = and i32 %3434, 32768
  %3156 = icmp ne i32 %3155, 0
  %3157 = xor i1 %3156, %3154
  br i1 %3157, label %3160, label %3158

3158:                                             ; preds = %3145
  %3159 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %3167

3160:                                             ; preds = %3145
  %3161 = load i32, ptr %3432, align 4, !tbaa !39
  %3162 = lshr i32 %3161, 7
  %3163 = add nsw i32 %3162, -16777214
  %3164 = sext i32 %3163 to i64
  %3165 = getelementptr inbounds i32, ptr %3432, i64 %3164
  %3166 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3167

3167:                                             ; preds = %3160, %3158
  %3168 = phi i32 [ %3431, %3158 ], [ %3166, %3160 ]
  %3169 = phi ptr [ %3159, %3158 ], [ %3165, %3160 ]
  %3170 = icmp eq i32 %3168, 0
  br i1 %3170, label %3175, label %3171, !prof !33

3171:                                             ; preds = %3167
  %3172 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3169) #13
  %3173 = load ptr, ptr %29, align 8, !tbaa !9
  %3174 = getelementptr inbounds %union.StackValue, ptr %3173, i64 1
  br label %3175

3175:                                             ; preds = %3171, %3167
  %3176 = phi i32 [ %3172, %3171 ], [ 0, %3167 ]
  %3177 = phi ptr [ %3174, %3171 ], [ %3433, %3167 ]
  %3178 = getelementptr inbounds i32, ptr %3169, i64 1
  br label %74

3179:                                             ; preds = %3429
  %3180 = lshr i32 %3434, 16
  %3181 = and i32 %3180, 255
  %3182 = zext nneg i32 %3181 to i64
  %3183 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3182
  %3184 = getelementptr inbounds %struct.TValue, ptr %3183, i64 0, i32 1
  %3185 = load i8, ptr %3184, align 8, !tbaa !5
  %3186 = icmp eq i8 %3185, 1
  %3187 = and i8 %3185, 15
  %3188 = icmp eq i8 %3187, 0
  %3189 = or i1 %3186, %3188
  %3190 = and i32 %3434, 32768
  %3191 = icmp eq i32 %3190, 0
  %3192 = xor i1 %3191, %3189
  br i1 %3192, label %3193, label %3195

3193:                                             ; preds = %3179
  %3194 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %3208

3195:                                             ; preds = %3179
  %3196 = lshr i32 %3434, 7
  %3197 = and i32 %3196, 255
  %3198 = zext nneg i32 %3197 to i64
  %3199 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3198
  %3200 = load i64, ptr %3183, align 8
  store i64 %3200, ptr %3199, align 8
  %3201 = getelementptr inbounds %struct.TValue, ptr %3199, i64 0, i32 1
  store i8 %3185, ptr %3201, align 8, !tbaa !5
  %3202 = load i32, ptr %3432, align 4, !tbaa !39
  %3203 = lshr i32 %3202, 7
  %3204 = add nsw i32 %3203, -16777214
  %3205 = sext i32 %3204 to i64
  %3206 = getelementptr inbounds i32, ptr %3432, i64 %3205
  %3207 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3208

3208:                                             ; preds = %3195, %3193
  %3209 = phi i32 [ %3431, %3193 ], [ %3207, %3195 ]
  %3210 = phi ptr [ %3194, %3193 ], [ %3206, %3195 ]
  %3211 = icmp eq i32 %3209, 0
  br i1 %3211, label %3216, label %3212, !prof !33

3212:                                             ; preds = %3208
  %3213 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3210) #13
  %3214 = load ptr, ptr %29, align 8, !tbaa !9
  %3215 = getelementptr inbounds %union.StackValue, ptr %3214, i64 1
  br label %3216

3216:                                             ; preds = %3212, %3208
  %3217 = phi i32 [ %3213, %3212 ], [ 0, %3208 ]
  %3218 = phi ptr [ %3215, %3212 ], [ %3433, %3208 ]
  %3219 = getelementptr inbounds i32, ptr %3210, i64 1
  br label %74

3220:                                             ; preds = %3429
  %3221 = lshr i32 %3434, 7
  %3222 = and i32 %3221, 255
  %3223 = zext nneg i32 %3222 to i64
  %3224 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3223
  %3225 = lshr i32 %3434, 16
  %3226 = and i32 %3225, 255
  %3227 = lshr i32 %3434, 24
  %3228 = add nsw i32 %3227, -1
  %3229 = icmp eq i32 %3226, 0
  br i1 %3229, label %3233, label %3230

3230:                                             ; preds = %3220
  %3231 = zext nneg i32 %3226 to i64
  %3232 = getelementptr inbounds %union.StackValue, ptr %3224, i64 %3231
  store ptr %3232, ptr %12, align 8, !tbaa !9
  br label %3233

3233:                                             ; preds = %3230, %3220
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3234 = call ptr @luaD_precall(ptr noundef %0, ptr noundef %3224, i32 noundef %3228) #13
  %3235 = icmp eq ptr %3234, null
  br i1 %3235, label %3236, label %22

3236:                                             ; preds = %3233
  %3237 = load volatile i32, ptr %49, align 8, !tbaa !9
  %3238 = icmp eq i32 %3237, 0
  br i1 %3238, label %3243, label %3239, !prof !33

3239:                                             ; preds = %3236
  %3240 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %3241 = load ptr, ptr %29, align 8, !tbaa !9
  %3242 = getelementptr inbounds %union.StackValue, ptr %3241, i64 1
  br label %3243

3243:                                             ; preds = %3239, %3236
  %3244 = phi i32 [ %3240, %3239 ], [ 0, %3236 ]
  %3245 = phi ptr [ %3242, %3239 ], [ %3433, %3236 ]
  %3246 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

3247:                                             ; preds = %3429
  %3248 = lshr i32 %3434, 7
  %3249 = and i32 %3248, 255
  %3250 = zext nneg i32 %3249 to i64
  %3251 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3250
  %3252 = lshr i32 %3434, 16
  %3253 = and i32 %3252, 255
  %3254 = icmp ult i32 %3434, 16777216
  br i1 %3254, label %3260, label %3255

3255:                                             ; preds = %3247
  %3256 = lshr i32 %3434, 24
  %3257 = getelementptr inbounds i8, ptr %29, i64 44
  %3258 = load i32, ptr %3257, align 4, !tbaa !9
  %3259 = add nsw i32 %3258, %3256
  br label %3260

3260:                                             ; preds = %3247, %3255
  %3261 = phi i32 [ %3259, %3255 ], [ 0, %3247 ]
  %3262 = icmp eq i32 %3253, 0
  br i1 %3262, label %3266, label %3263

3263:                                             ; preds = %3260
  %3264 = zext nneg i32 %3253 to i64
  %3265 = getelementptr inbounds %union.StackValue, ptr %3251, i64 %3264
  store ptr %3265, ptr %12, align 8, !tbaa !9
  br label %3273

3266:                                             ; preds = %3260
  %3267 = load ptr, ptr %12, align 8, !tbaa !9
  %3268 = ptrtoint ptr %3267 to i64
  %3269 = ptrtoint ptr %3251 to i64
  %3270 = sub i64 %3268, %3269
  %3271 = lshr exact i64 %3270, 4
  %3272 = trunc i64 %3271 to i32
  br label %3273

3273:                                             ; preds = %3266, %3263
  %3274 = phi i32 [ %3253, %3263 ], [ %3272, %3266 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3275 = and i32 %3434, 32768
  %3276 = icmp eq i32 %3275, 0
  br i1 %3276, label %3278, label %3277

3277:                                             ; preds = %3273
  call void @luaF_closeupval(ptr noundef nonnull %0, ptr noundef %3433) #13
  br label %3278

3278:                                             ; preds = %3277, %3273
  %3279 = call i32 @luaD_pretailcall(ptr noundef nonnull %0, ptr noundef nonnull %29, ptr noundef %3251, i32 noundef %3274, i32 noundef %3261) #13
  %3280 = icmp slt i32 %3279, 0
  br i1 %3280, label %22, label %3281

3281:                                             ; preds = %3278
  %3282 = load ptr, ptr %29, align 8, !tbaa !9
  %3283 = sext i32 %3261 to i64
  %3284 = sub nsw i64 0, %3283
  %3285 = getelementptr inbounds %union.StackValue, ptr %3282, i64 %3284
  store ptr %3285, ptr %29, align 8, !tbaa !9
  call void @luaD_poscall(ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef %3279) #13
  %3286 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3422

3287:                                             ; preds = %3429
  %3288 = lshr i32 %3434, 7
  %3289 = and i32 %3288, 255
  %3290 = zext nneg i32 %3289 to i64
  %3291 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3290
  %3292 = lshr i32 %3434, 16
  %3293 = and i32 %3292, 255
  %3294 = add nsw i32 %3293, -1
  %3295 = lshr i32 %3434, 24
  %3296 = icmp eq i32 %3293, 0
  br i1 %3296, label %3297, label %3304

3297:                                             ; preds = %3287
  %3298 = load ptr, ptr %12, align 8, !tbaa !9
  %3299 = ptrtoint ptr %3298 to i64
  %3300 = ptrtoint ptr %3291 to i64
  %3301 = sub i64 %3299, %3300
  %3302 = lshr exact i64 %3301, 4
  %3303 = trunc i64 %3302 to i32
  br label %3304

3304:                                             ; preds = %3297, %3287
  %3305 = phi i32 [ %3303, %3297 ], [ %3294, %3287 ]
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3306 = and i32 %3434, 32768
  %3307 = icmp eq i32 %3306, 0
  br i1 %3307, label %3322, label %3308

3308:                                             ; preds = %3304
  %3309 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 5
  store i32 %3305, ptr %3309, align 8, !tbaa !9
  %3310 = load ptr, ptr %12, align 8, !tbaa !9
  %3311 = load ptr, ptr %50, align 8, !tbaa !9
  %3312 = icmp ult ptr %3310, %3311
  br i1 %3312, label %3313, label %3314

3313:                                             ; preds = %3308
  store ptr %3311, ptr %12, align 8, !tbaa !9
  br label %3314

3314:                                             ; preds = %3313, %3308
  %3315 = call ptr @luaF_close(ptr noundef nonnull %0, ptr noundef %3433, i32 noundef -1, i32 noundef 1) #13
  %3316 = load volatile i32, ptr %49, align 8, !tbaa !9
  %3317 = icmp eq i32 %3316, 0
  br i1 %3317, label %3322, label %3318, !prof !33

3318:                                             ; preds = %3314
  %3319 = load ptr, ptr %29, align 8, !tbaa !9
  %3320 = getelementptr inbounds %union.StackValue, ptr %3319, i64 1
  %3321 = getelementptr inbounds %union.StackValue, ptr %3320, i64 %3290
  br label %3322

3322:                                             ; preds = %3314, %3318, %3304
  %3323 = phi ptr [ %3321, %3318 ], [ %3291, %3314 ], [ %3291, %3304 ]
  %3324 = icmp ult i32 %3434, 16777216
  br i1 %3324, label %3333, label %3325

3325:                                             ; preds = %3322
  %3326 = getelementptr inbounds i8, ptr %29, i64 44
  %3327 = load i32, ptr %3326, align 4, !tbaa !9
  %3328 = add nsw i32 %3327, %3295
  %3329 = load ptr, ptr %29, align 8, !tbaa !9
  %3330 = sext i32 %3328 to i64
  %3331 = sub nsw i64 0, %3330
  %3332 = getelementptr inbounds %union.StackValue, ptr %3329, i64 %3331
  store ptr %3332, ptr %29, align 8, !tbaa !9
  br label %3333

3333:                                             ; preds = %3325, %3322
  %3334 = sext i32 %3305 to i64
  %3335 = getelementptr inbounds %union.StackValue, ptr %3323, i64 %3334
  store ptr %3335, ptr %12, align 8, !tbaa !9
  call void @luaD_poscall(ptr noundef %0, ptr noundef nonnull %29, i32 noundef %3305) #13
  %3336 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3422

3337:                                             ; preds = %3429
  %3338 = load volatile i32, ptr %10, align 8, !tbaa !40
  %3339 = icmp eq i32 %3338, 0
  br i1 %3339, label %3345, label %3340, !prof !33

3340:                                             ; preds = %3337
  %3341 = lshr i32 %3434, 7
  %3342 = and i32 %3341, 255
  %3343 = zext nneg i32 %3342 to i64
  %3344 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3343
  store ptr %3344, ptr %12, align 8, !tbaa !9
  store ptr %3432, ptr %36, align 8, !tbaa !9
  call void @luaD_poscall(ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef 0) #13
  br label %3422

3345:                                             ; preds = %3337
  %3346 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 2
  %3347 = load ptr, ptr %3346, align 8, !tbaa !55
  store ptr %3347, ptr %21, align 8, !tbaa !38
  %3348 = getelementptr inbounds %union.StackValue, ptr %3433, i64 -1
  store ptr %3348, ptr %12, align 8, !tbaa !9
  %3349 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 6
  %3350 = load i16, ptr %3349, align 4, !tbaa !56
  %3351 = icmp sgt i16 %3350, 0
  br i1 %3351, label %3352, label %3422, !prof !57

3352:                                             ; preds = %3345
  %3353 = zext nneg i16 %3350 to i32
  %3354 = and i32 %3353, 3
  %3355 = icmp eq i32 %3354, 0
  br i1 %3355, label %3365, label %3356, !prof !58

3356:                                             ; preds = %3352, %3356
  %3357 = phi i32 [ %3362, %3356 ], [ %3353, %3352 ]
  %3358 = phi i32 [ %3363, %3356 ], [ 0, %3352 ]
  %3359 = load ptr, ptr %12, align 8, !tbaa !9
  %3360 = getelementptr inbounds %union.StackValue, ptr %3359, i64 1
  store ptr %3360, ptr %12, align 8, !tbaa !9
  %3361 = getelementptr inbounds %struct.TValue, ptr %3359, i64 0, i32 1
  store i8 0, ptr %3361, align 8, !tbaa !9
  %3362 = add nsw i32 %3357, -1
  %3363 = add i32 %3358, 1
  %3364 = icmp eq i32 %3363, %3354
  br i1 %3364, label %3365, label %3356, !prof !59, !llvm.loop !60

3365:                                             ; preds = %3356, %3352
  %3366 = phi i32 [ %3353, %3352 ], [ %3362, %3356 ]
  %3367 = icmp ult i16 %3350, 4
  br i1 %3367, label %3422, label %3368, !prof !61

3368:                                             ; preds = %3365, %3368
  %3369 = phi i32 [ %3382, %3368 ], [ %3366, %3365 ]
  %3370 = load ptr, ptr %12, align 8, !tbaa !9
  %3371 = getelementptr inbounds %union.StackValue, ptr %3370, i64 1
  store ptr %3371, ptr %12, align 8, !tbaa !9
  %3372 = getelementptr inbounds %struct.TValue, ptr %3370, i64 0, i32 1
  store i8 0, ptr %3372, align 8, !tbaa !9
  %3373 = load ptr, ptr %12, align 8, !tbaa !9
  %3374 = getelementptr inbounds %union.StackValue, ptr %3373, i64 1
  store ptr %3374, ptr %12, align 8, !tbaa !9
  %3375 = getelementptr inbounds %struct.TValue, ptr %3373, i64 0, i32 1
  store i8 0, ptr %3375, align 8, !tbaa !9
  %3376 = load ptr, ptr %12, align 8, !tbaa !9
  %3377 = getelementptr inbounds %union.StackValue, ptr %3376, i64 1
  store ptr %3377, ptr %12, align 8, !tbaa !9
  %3378 = getelementptr inbounds %struct.TValue, ptr %3376, i64 0, i32 1
  store i8 0, ptr %3378, align 8, !tbaa !9
  %3379 = load ptr, ptr %12, align 8, !tbaa !9
  %3380 = getelementptr inbounds %union.StackValue, ptr %3379, i64 1
  store ptr %3380, ptr %12, align 8, !tbaa !9
  %3381 = getelementptr inbounds %struct.TValue, ptr %3379, i64 0, i32 1
  store i8 0, ptr %3381, align 8, !tbaa !9
  %3382 = add nsw i32 %3369, -4
  %3383 = add i32 %3369, -5
  %3384 = icmp ult i32 %3383, -2
  br i1 %3384, label %3368, label %3422, !prof !62, !llvm.loop !63

3385:                                             ; preds = %3429
  %3386 = load volatile i32, ptr %10, align 8, !tbaa !40
  %3387 = icmp eq i32 %3386, 0
  br i1 %3387, label %3394, label %3388, !prof !33

3388:                                             ; preds = %3385
  %3389 = lshr i32 %3434, 7
  %3390 = and i32 %3389, 255
  %3391 = zext nneg i32 %3390 to i64
  %3392 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3391
  %3393 = getelementptr inbounds %union.StackValue, ptr %3392, i64 1
  store ptr %3393, ptr %12, align 8, !tbaa !9
  store ptr %3432, ptr %36, align 8, !tbaa !9
  call void @luaD_poscall(ptr noundef nonnull %0, ptr noundef nonnull %29, i32 noundef 1) #13
  br label %3422

3394:                                             ; preds = %3385
  %3395 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 6
  %3396 = load i16, ptr %3395, align 4, !tbaa !56
  %3397 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 2
  %3398 = load ptr, ptr %3397, align 8, !tbaa !55
  store ptr %3398, ptr %21, align 8, !tbaa !38
  %3399 = icmp eq i16 %3396, 0
  br i1 %3399, label %3400, label %3402

3400:                                             ; preds = %3394
  %3401 = getelementptr inbounds %union.StackValue, ptr %3433, i64 -1
  store ptr %3401, ptr %12, align 8, !tbaa !9
  br label %3422

3402:                                             ; preds = %3394
  %3403 = lshr i32 %3434, 7
  %3404 = and i32 %3403, 255
  %3405 = zext nneg i32 %3404 to i64
  %3406 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3405
  %3407 = getelementptr inbounds %union.StackValue, ptr %3433, i64 -1
  %3408 = load i64, ptr %3406, align 8
  store i64 %3408, ptr %3407, align 8
  %3409 = getelementptr inbounds %struct.TValue, ptr %3406, i64 0, i32 1
  %3410 = load i8, ptr %3409, align 8, !tbaa !5
  %3411 = getelementptr %union.StackValue, ptr %3433, i64 -1, i32 0, i32 1
  store i8 %3410, ptr %3411, align 8, !tbaa !5
  store ptr %3433, ptr %12, align 8, !tbaa !9
  %3412 = icmp sgt i16 %3396, 1
  br i1 %3412, label %3413, label %3422, !prof !57

3413:                                             ; preds = %3402
  %3414 = zext nneg i16 %3396 to i32
  br label %3415

3415:                                             ; preds = %3413, %3415
  %3416 = phi i32 [ %3420, %3415 ], [ %3414, %3413 ]
  %3417 = load ptr, ptr %12, align 8, !tbaa !9
  %3418 = getelementptr inbounds %union.StackValue, ptr %3417, i64 1
  store ptr %3418, ptr %12, align 8, !tbaa !9
  %3419 = getelementptr inbounds %struct.TValue, ptr %3417, i64 0, i32 1
  store i8 0, ptr %3419, align 8, !tbaa !9
  %3420 = add nsw i32 %3416, -1
  %3421 = icmp ugt i32 %3416, 2
  br i1 %3421, label %3415, label %3422, !prof !64, !llvm.loop !65

3422:                                             ; preds = %3415, %3365, %3368, %3402, %3345, %3388, %3400, %3340, %3333, %3281
  %3423 = phi i32 [ 1, %3388 ], [ %3431, %3400 ], [ 1, %3340 ], [ %3336, %3333 ], [ %3286, %3281 ], [ %3431, %3345 ], [ %3431, %3402 ], [ %3431, %3368 ], [ %3431, %3365 ], [ %3431, %3415 ]
  %3424 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 7
  %3425 = load i16, ptr %3424, align 2, !tbaa !66
  %3426 = and i16 %3425, 4
  %3427 = icmp eq i16 %3426, 0
  br i1 %3427, label %3439, label %3428

3428:                                             ; preds = %3422
  ret void

3429:                                             ; preds = %74, %44
  %3430 = phi ptr [ %37, %44 ], [ %75, %74 ]
  %3431 = phi i32 [ %45, %44 ], [ %76, %74 ]
  %3432 = phi ptr [ %48, %44 ], [ %77, %74 ]
  %3433 = phi ptr [ %47, %44 ], [ %78, %74 ]
  %3434 = load i32, ptr %3430, align 4, !tbaa !39
  %3435 = and i32 %3434, 127
  %3436 = zext nneg i32 %3435 to i64
  %3437 = getelementptr inbounds [83 x ptr], ptr @luaV_execute.disptab, i64 0, i64 %3436
  %3438 = load ptr, ptr %3437, align 8, !tbaa !26
  indirectbr ptr %3438, [label %52, label %79, label %97, label %115, label %136, label %159, label %173, label %188, label %202, label %249, label %274, label %314, label %359, label %430, label %483, label %525, label %589, label %679, label %751, label %812, label %858, label %907, label %944, label %1000, label %1056, label %1112, label %1193, label %1243, label %1287, label %1362, label %1405, label %1448, label %1491, label %1544, label %1597, label %1653, label %1709, label %1765, label %1846, label %1896, label %1940, label %2015, label %2073, label %2131, label %2258, label %2189, label %2327, label %2354, label %2383, label %2412, label %2445, label %2486, label %2510, label %2530, label %2557, label %2574, label %2589, label %2604, label %2640, label %2748, label %2856, label %2890, label %2937, label %2989, label %3041, label %3093, label %3145, label %3179, label %3220, label %3247, label %3287, label %3337, label %3385, label %3442, label %3493, label %3773, label %3785, label %3804, label %3837, label %3918, label %3990, label %4008, label %4021]

3439:                                             ; preds = %3422
  %3440 = getelementptr inbounds %struct.CallInfo, ptr %29, i64 0, i32 2
  %3441 = load ptr, ptr %3440, align 8, !tbaa !55
  br label %27

3442:                                             ; preds = %3429
  %3443 = lshr i32 %3434, 7
  %3444 = and i32 %3443, 255
  %3445 = zext nneg i32 %3444 to i64
  %3446 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3445
  %3447 = getelementptr inbounds %union.StackValue, ptr %3446, i64 2
  %3448 = getelementptr inbounds %union.StackValue, ptr %3446, i64 2, i32 0, i32 1
  %3449 = load i8, ptr %3448, align 8, !tbaa !9
  %3450 = icmp eq i8 %3449, 3
  br i1 %3450, label %3451, label %3461

3451:                                             ; preds = %3442
  %3452 = getelementptr inbounds %union.StackValue, ptr %3446, i64 1
  %3453 = load i64, ptr %3452, align 8, !tbaa !9
  %3454 = icmp eq i64 %3453, 0
  br i1 %3454, label %3481, label %3455

3455:                                             ; preds = %3451
  %3456 = load i64, ptr %3447, align 8, !tbaa !9
  %3457 = load i64, ptr %3446, align 8, !tbaa !9
  %3458 = add i64 %3453, -1
  store i64 %3458, ptr %3452, align 8, !tbaa !9
  %3459 = add i64 %3457, %3456
  store i64 %3459, ptr %3446, align 8, !tbaa !9
  %3460 = getelementptr inbounds %union.StackValue, ptr %3446, i64 3
  store i64 %3459, ptr %3460, align 8, !tbaa !9
  br label %3474

3461:                                             ; preds = %3442
  %3462 = load double, ptr %3447, align 8, !tbaa !9
  %3463 = getelementptr inbounds %union.StackValue, ptr %3446, i64 1
  %3464 = load double, ptr %3463, align 8, !tbaa !9
  %3465 = load double, ptr %3446, align 8, !tbaa !9
  %3466 = fadd double %3462, %3465
  %3467 = fcmp ogt double %3462, 0.000000e+00
  br i1 %3467, label %3468, label %3470

3468:                                             ; preds = %3461
  %3469 = fcmp ugt double %3466, %3464
  br i1 %3469, label %3481, label %3472

3470:                                             ; preds = %3461
  %3471 = fcmp ugt double %3464, %3466
  br i1 %3471, label %3481, label %3472

3472:                                             ; preds = %3470, %3468
  store double %3466, ptr %3446, align 8, !tbaa !9
  %3473 = getelementptr inbounds %union.StackValue, ptr %3446, i64 3
  store double %3466, ptr %3473, align 8, !tbaa !9
  br label %3474

3474:                                             ; preds = %3455, %3472
  %3475 = phi i8 [ 19, %3472 ], [ 3, %3455 ]
  %3476 = getelementptr inbounds %union.StackValue, ptr %3446, i64 3, i32 0, i32 1
  store i8 %3475, ptr %3476, align 8, !tbaa !5
  %3477 = lshr i32 %3434, 15
  %3478 = zext nneg i32 %3477 to i64
  %3479 = sub nsw i64 0, %3478
  %3480 = getelementptr inbounds i32, ptr %3432, i64 %3479
  br label %3481

3481:                                             ; preds = %3474, %3468, %3470, %3451
  %3482 = phi ptr [ %3432, %3451 ], [ %3432, %3470 ], [ %3432, %3468 ], [ %3480, %3474 ]
  %3483 = load volatile i32, ptr %49, align 8, !tbaa !9
  %3484 = icmp eq i32 %3483, 0
  br i1 %3484, label %3489, label %3485, !prof !33

3485:                                             ; preds = %3481
  %3486 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3482) #13
  %3487 = load ptr, ptr %29, align 8, !tbaa !9
  %3488 = getelementptr inbounds %union.StackValue, ptr %3487, i64 1
  br label %3489

3489:                                             ; preds = %3485, %3481
  %3490 = phi i32 [ %3486, %3485 ], [ 0, %3481 ]
  %3491 = phi ptr [ %3488, %3485 ], [ %3433, %3481 ]
  %3492 = getelementptr inbounds i32, ptr %3482, i64 1
  br label %74

3493:                                             ; preds = %3429
  %3494 = lshr i32 %3434, 7
  %3495 = and i32 %3494, 255
  %3496 = zext nneg i32 %3495 to i64
  %3497 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3496
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3498 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %3498, ptr %12, align 8, !tbaa !9
  %3499 = getelementptr inbounds %union.StackValue, ptr %3497, i64 1
  %3500 = getelementptr inbounds %union.StackValue, ptr %3497, i64 2
  %3501 = getelementptr inbounds %struct.TValue, ptr %3497, i64 0, i32 1
  %3502 = load i8, ptr %3501, align 8, !tbaa !5
  %3503 = icmp eq i8 %3502, 3
  br i1 %3503, label %3504, label %3623

3504:                                             ; preds = %3493
  %3505 = getelementptr inbounds %union.StackValue, ptr %3497, i64 2, i32 0, i32 1
  %3506 = load i8, ptr %3505, align 8, !tbaa !5
  %3507 = icmp eq i8 %3506, 3
  br i1 %3507, label %3508, label %3623

3508:                                             ; preds = %3504
  %3509 = load i64, ptr %3497, align 8, !tbaa !9
  %3510 = load i64, ptr %3500, align 8, !tbaa !9
  %3511 = icmp eq i64 %3510, 0
  br i1 %3511, label %3512, label %3513

3512:                                             ; preds = %3508
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #14
  unreachable

3513:                                             ; preds = %3508
  %3514 = getelementptr inbounds %union.StackValue, ptr %3497, i64 3
  store i64 %3509, ptr %3514, align 8, !tbaa !9
  %3515 = getelementptr inbounds %union.StackValue, ptr %3497, i64 3, i32 0, i32 1
  store i8 3, ptr %3515, align 8, !tbaa !5
  %3516 = icmp slt i64 %3510, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %3517 = getelementptr inbounds %union.StackValue, ptr %3497, i64 1, i32 0, i32 1
  %3518 = load i8, ptr %3517, align 8, !tbaa !5
  %3519 = and i8 %3518, 15
  %3520 = icmp eq i8 %3519, 4
  br i1 %3520, label %3521, label %3541

3521:                                             ; preds = %3513
  %3522 = load ptr, ptr %3499, align 8, !tbaa !9
  %3523 = getelementptr inbounds %struct.TString, ptr %3522, i64 0, i32 7
  %3524 = call i64 @luaO_str2num(ptr noundef nonnull %3523, ptr noundef nonnull %7) #13
  %3525 = getelementptr inbounds %struct.TString, ptr %3522, i64 0, i32 4
  %3526 = load i8, ptr %3525, align 1, !tbaa !10
  %3527 = icmp eq i8 %3526, -1
  br i1 %3527, label %3530, label %3528

3528:                                             ; preds = %3521
  %3529 = zext i8 %3526 to i64
  br label %3533

3530:                                             ; preds = %3521
  %3531 = getelementptr inbounds %struct.TString, ptr %3522, i64 0, i32 6
  %3532 = load i64, ptr %3531, align 8, !tbaa !9
  br label %3533

3533:                                             ; preds = %3530, %3528
  %3534 = phi i64 [ %3529, %3528 ], [ %3532, %3530 ]
  %3535 = add i64 %3534, 1
  %3536 = icmp ne i64 %3524, %3535
  %3537 = freeze i1 %3536
  %3538 = select i1 %3537, ptr %3499, ptr %7
  %3539 = select i1 %3537, ptr %3517, ptr %17
  %3540 = load i8, ptr %3539, align 8, !tbaa !5
  br label %3541

3541:                                             ; preds = %3533, %3513
  %3542 = phi i8 [ %3540, %3533 ], [ %3518, %3513 ]
  %3543 = phi ptr [ %3538, %3533 ], [ %3499, %3513 ]
  switch i8 %3542, label %3557 [
    i8 19, label %3544
    i8 3, label %3555
  ]

3544:                                             ; preds = %3541
  %3545 = load double, ptr %3543, align 8, !tbaa !9
  %3546 = call double @llvm.floor.f64(double %3545)
  %3547 = fcmp une double %3546, %3545
  %3548 = and i1 %3516, %3547
  %3549 = fadd double %3546, 1.000000e+00
  %3550 = select i1 %3548, double %3549, double %3546
  %3551 = fcmp oge double %3550, 0xC3E0000000000000
  %3552 = fcmp olt double %3550, 0x43E0000000000000
  %3553 = and i1 %3551, %3552
  br i1 %3553, label %3558, label %3554

3554:                                             ; preds = %3544
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %3560

3555:                                             ; preds = %3541
  %3556 = load i64, ptr %3543, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %3605

3557:                                             ; preds = %3541
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %3560

3558:                                             ; preds = %3544
  %3559 = fptosi double %3550 to i64
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  br label %3605

3560:                                             ; preds = %3557, %3554
  %3561 = load i8, ptr %3517, align 8, !tbaa !5
  %3562 = icmp eq i8 %3561, 19
  br i1 %3562, label %3563, label %3565

3563:                                             ; preds = %3560
  %3564 = load double, ptr %3499, align 8, !tbaa !9
  br label %3599

3565:                                             ; preds = %3560
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %3566 = icmp eq i8 %3561, 3
  br i1 %3566, label %3567, label %3570

3567:                                             ; preds = %3565
  %3568 = load i64, ptr %3499, align 8, !tbaa !9
  %3569 = sitofp i64 %3568 to double
  br label %3596

3570:                                             ; preds = %3565
  %3571 = and i8 %3561, 15
  %3572 = icmp eq i8 %3571, 4
  br i1 %3572, label %3573, label %3598

3573:                                             ; preds = %3570
  %3574 = load ptr, ptr %3499, align 8, !tbaa !9
  %3575 = getelementptr inbounds %struct.TString, ptr %3574, i64 0, i32 7
  %3576 = call i64 @luaO_str2num(ptr noundef nonnull %3575, ptr noundef nonnull %6) #13
  %3577 = getelementptr inbounds %struct.TString, ptr %3574, i64 0, i32 4
  %3578 = load i8, ptr %3577, align 1, !tbaa !10
  %3579 = icmp eq i8 %3578, -1
  br i1 %3579, label %3582, label %3580

3580:                                             ; preds = %3573
  %3581 = zext i8 %3578 to i64
  br label %3585

3582:                                             ; preds = %3573
  %3583 = getelementptr inbounds %struct.TString, ptr %3574, i64 0, i32 6
  %3584 = load i64, ptr %3583, align 8, !tbaa !9
  br label %3585

3585:                                             ; preds = %3582, %3580
  %3586 = phi i64 [ %3581, %3580 ], [ %3584, %3582 ]
  %3587 = add i64 %3586, 1
  %3588 = icmp eq i64 %3576, %3587
  br i1 %3588, label %3589, label %3598

3589:                                             ; preds = %3585
  %3590 = load i8, ptr %18, align 8, !tbaa !5
  %3591 = icmp eq i8 %3590, 3
  %3592 = load i64, ptr %6, align 8
  %3593 = sitofp i64 %3592 to double
  %3594 = bitcast i64 %3592 to double
  %3595 = select i1 %3591, double %3593, double %3594
  br label %3596

3596:                                             ; preds = %3589, %3567
  %3597 = phi double [ %3595, %3589 ], [ %3569, %3567 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %3599

3598:                                             ; preds = %3585, %3570
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @luaG_forerror(ptr noundef nonnull %0, ptr noundef nonnull %3499, ptr noundef nonnull @.str.8) #14
  unreachable

3599:                                             ; preds = %3596, %3563
  %3600 = phi double [ %3564, %3563 ], [ %3597, %3596 ]
  %3601 = fcmp ogt double %3600, 0.000000e+00
  br i1 %3601, label %3602, label %3603

3602:                                             ; preds = %3599
  br i1 %3516, label %3757, label %3605

3603:                                             ; preds = %3599
  %3604 = icmp sgt i64 %3510, 0
  br i1 %3604, label %3757, label %3605

3605:                                             ; preds = %3603, %3602, %3558, %3555
  %3606 = phi i64 [ %3556, %3555 ], [ %3559, %3558 ], [ 9223372036854775807, %3602 ], [ -9223372036854775808, %3603 ]
  %3607 = icmp sgt i64 %3510, 0
  %3608 = icmp sge i64 %3606, %3509
  %3609 = icmp sle i64 %3606, %3509
  %3610 = select i1 %3607, i1 %3608, i1 %3609
  br i1 %3610, label %3611, label %3757

3611:                                             ; preds = %3605
  br i1 %3607, label %3612, label %3617

3612:                                             ; preds = %3611
  %3613 = sub i64 %3606, %3509
  %3614 = icmp eq i64 %3510, 1
  br i1 %3614, label %3621, label %3615

3615:                                             ; preds = %3612
  %3616 = udiv i64 %3613, %3510
  br label %3621

3617:                                             ; preds = %3611
  %3618 = sub i64 %3509, %3606
  %3619 = sub i64 0, %3510
  %3620 = udiv i64 %3618, %3619
  br label %3621

3621:                                             ; preds = %3617, %3615, %3612
  %3622 = phi i64 [ %3616, %3615 ], [ %3613, %3612 ], [ %3620, %3617 ]
  store i64 %3622, ptr %3499, align 8, !tbaa !9
  store i8 3, ptr %3517, align 8, !tbaa !5
  br label %3762

3623:                                             ; preds = %3504, %3493
  %3624 = getelementptr inbounds %union.StackValue, ptr %3497, i64 1, i32 0, i32 1
  %3625 = load i8, ptr %3624, align 8, !tbaa !5
  %3626 = icmp eq i8 %3625, 19
  br i1 %3626, label %3627, label %3629

3627:                                             ; preds = %3623
  %3628 = load double, ptr %3499, align 8, !tbaa !9
  br label %3663

3629:                                             ; preds = %3623
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %3630 = icmp eq i8 %3625, 3
  br i1 %3630, label %3631, label %3634

3631:                                             ; preds = %3629
  %3632 = load i64, ptr %3499, align 8, !tbaa !9
  %3633 = sitofp i64 %3632 to double
  br label %3660

3634:                                             ; preds = %3629
  %3635 = and i8 %3625, 15
  %3636 = icmp eq i8 %3635, 4
  br i1 %3636, label %3637, label %3662

3637:                                             ; preds = %3634
  %3638 = load ptr, ptr %3499, align 8, !tbaa !9
  %3639 = getelementptr inbounds %struct.TString, ptr %3638, i64 0, i32 7
  %3640 = call i64 @luaO_str2num(ptr noundef nonnull %3639, ptr noundef nonnull %5) #13
  %3641 = getelementptr inbounds %struct.TString, ptr %3638, i64 0, i32 4
  %3642 = load i8, ptr %3641, align 1, !tbaa !10
  %3643 = icmp eq i8 %3642, -1
  br i1 %3643, label %3646, label %3644

3644:                                             ; preds = %3637
  %3645 = zext i8 %3642 to i64
  br label %3649

3646:                                             ; preds = %3637
  %3647 = getelementptr inbounds %struct.TString, ptr %3638, i64 0, i32 6
  %3648 = load i64, ptr %3647, align 8, !tbaa !9
  br label %3649

3649:                                             ; preds = %3646, %3644
  %3650 = phi i64 [ %3645, %3644 ], [ %3648, %3646 ]
  %3651 = add i64 %3650, 1
  %3652 = icmp eq i64 %3640, %3651
  br i1 %3652, label %3653, label %3662

3653:                                             ; preds = %3649
  %3654 = load i8, ptr %14, align 8, !tbaa !5
  %3655 = icmp eq i8 %3654, 3
  %3656 = load i64, ptr %5, align 8
  %3657 = sitofp i64 %3656 to double
  %3658 = bitcast i64 %3656 to double
  %3659 = select i1 %3655, double %3657, double %3658
  br label %3660

3660:                                             ; preds = %3653, %3631
  %3661 = phi double [ %3659, %3653 ], [ %3633, %3631 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  br label %3663

3662:                                             ; preds = %3649, %3634
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  call void @luaG_forerror(ptr noundef nonnull %0, ptr noundef nonnull %3499, ptr noundef nonnull @.str.8) #14
  unreachable

3663:                                             ; preds = %3660, %3627
  %3664 = phi double [ %3628, %3627 ], [ %3661, %3660 ]
  %3665 = getelementptr inbounds %union.StackValue, ptr %3497, i64 2, i32 0, i32 1
  %3666 = load i8, ptr %3665, align 8, !tbaa !5
  %3667 = icmp eq i8 %3666, 19
  br i1 %3667, label %3668, label %3670

3668:                                             ; preds = %3663
  %3669 = load double, ptr %3500, align 8, !tbaa !9
  br label %3704

3670:                                             ; preds = %3663
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  %3671 = icmp eq i8 %3666, 3
  br i1 %3671, label %3672, label %3675

3672:                                             ; preds = %3670
  %3673 = load i64, ptr %3500, align 8, !tbaa !9
  %3674 = sitofp i64 %3673 to double
  br label %3701

3675:                                             ; preds = %3670
  %3676 = and i8 %3666, 15
  %3677 = icmp eq i8 %3676, 4
  br i1 %3677, label %3678, label %3703

3678:                                             ; preds = %3675
  %3679 = load ptr, ptr %3500, align 8, !tbaa !9
  %3680 = getelementptr inbounds %struct.TString, ptr %3679, i64 0, i32 7
  %3681 = call i64 @luaO_str2num(ptr noundef nonnull %3680, ptr noundef nonnull %4) #13
  %3682 = getelementptr inbounds %struct.TString, ptr %3679, i64 0, i32 4
  %3683 = load i8, ptr %3682, align 1, !tbaa !10
  %3684 = icmp eq i8 %3683, -1
  br i1 %3684, label %3687, label %3685

3685:                                             ; preds = %3678
  %3686 = zext i8 %3683 to i64
  br label %3690

3687:                                             ; preds = %3678
  %3688 = getelementptr inbounds %struct.TString, ptr %3679, i64 0, i32 6
  %3689 = load i64, ptr %3688, align 8, !tbaa !9
  br label %3690

3690:                                             ; preds = %3687, %3685
  %3691 = phi i64 [ %3686, %3685 ], [ %3689, %3687 ]
  %3692 = add i64 %3691, 1
  %3693 = icmp eq i64 %3681, %3692
  br i1 %3693, label %3694, label %3703

3694:                                             ; preds = %3690
  %3695 = load i8, ptr %15, align 8, !tbaa !5
  %3696 = icmp eq i8 %3695, 3
  %3697 = load i64, ptr %4, align 8
  %3698 = sitofp i64 %3697 to double
  %3699 = bitcast i64 %3697 to double
  %3700 = select i1 %3696, double %3698, double %3699
  br label %3701

3701:                                             ; preds = %3694, %3672
  %3702 = phi double [ %3700, %3694 ], [ %3674, %3672 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  br label %3704

3703:                                             ; preds = %3690, %3675
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  call void @luaG_forerror(ptr noundef nonnull %0, ptr noundef nonnull %3500, ptr noundef nonnull @.str.9) #14
  unreachable

3704:                                             ; preds = %3701, %3668
  %3705 = phi double [ %3669, %3668 ], [ %3702, %3701 ]
  %3706 = load i8, ptr %3501, align 8, !tbaa !5
  %3707 = icmp eq i8 %3706, 19
  br i1 %3707, label %3708, label %3710

3708:                                             ; preds = %3704
  %3709 = load double, ptr %3497, align 8, !tbaa !9
  br label %3744

3710:                                             ; preds = %3704
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %3711 = icmp eq i8 %3706, 3
  br i1 %3711, label %3712, label %3715

3712:                                             ; preds = %3710
  %3713 = load i64, ptr %3497, align 8, !tbaa !9
  %3714 = sitofp i64 %3713 to double
  br label %3741

3715:                                             ; preds = %3710
  %3716 = and i8 %3706, 15
  %3717 = icmp eq i8 %3716, 4
  br i1 %3717, label %3718, label %3743

3718:                                             ; preds = %3715
  %3719 = load ptr, ptr %3497, align 8, !tbaa !9
  %3720 = getelementptr inbounds %struct.TString, ptr %3719, i64 0, i32 7
  %3721 = call i64 @luaO_str2num(ptr noundef nonnull %3720, ptr noundef nonnull %3) #13
  %3722 = getelementptr inbounds %struct.TString, ptr %3719, i64 0, i32 4
  %3723 = load i8, ptr %3722, align 1, !tbaa !10
  %3724 = icmp eq i8 %3723, -1
  br i1 %3724, label %3727, label %3725

3725:                                             ; preds = %3718
  %3726 = zext i8 %3723 to i64
  br label %3730

3727:                                             ; preds = %3718
  %3728 = getelementptr inbounds %struct.TString, ptr %3719, i64 0, i32 6
  %3729 = load i64, ptr %3728, align 8, !tbaa !9
  br label %3730

3730:                                             ; preds = %3727, %3725
  %3731 = phi i64 [ %3726, %3725 ], [ %3729, %3727 ]
  %3732 = add i64 %3731, 1
  %3733 = icmp eq i64 %3721, %3732
  br i1 %3733, label %3734, label %3743

3734:                                             ; preds = %3730
  %3735 = load i8, ptr %16, align 8, !tbaa !5
  %3736 = icmp eq i8 %3735, 3
  %3737 = load i64, ptr %3, align 8
  %3738 = sitofp i64 %3737 to double
  %3739 = bitcast i64 %3737 to double
  %3740 = select i1 %3736, double %3738, double %3739
  br label %3741

3741:                                             ; preds = %3734, %3712
  %3742 = phi double [ %3740, %3734 ], [ %3714, %3712 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %3744

3743:                                             ; preds = %3730, %3715
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  call void @luaG_forerror(ptr noundef nonnull %0, ptr noundef nonnull %3497, ptr noundef nonnull @.str.10) #14
  unreachable

3744:                                             ; preds = %3741, %3708
  %3745 = phi double [ %3709, %3708 ], [ %3742, %3741 ]
  %3746 = fcmp oeq double %3705, 0.000000e+00
  br i1 %3746, label %3747, label %3748

3747:                                             ; preds = %3744
  call void (ptr, ptr, ...) @luaG_runerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.7) #14
  unreachable

3748:                                             ; preds = %3744
  %3749 = fcmp ogt double %3705, 0.000000e+00
  br i1 %3749, label %3750, label %3752

3750:                                             ; preds = %3748
  %3751 = fcmp olt double %3664, %3745
  br i1 %3751, label %3757, label %3754

3752:                                             ; preds = %3748
  %3753 = fcmp olt double %3745, %3664
  br i1 %3753, label %3757, label %3754

3754:                                             ; preds = %3752, %3750
  store double %3664, ptr %3499, align 8, !tbaa !9
  store i8 19, ptr %3624, align 8, !tbaa !5
  store double %3705, ptr %3500, align 8, !tbaa !9
  store i8 19, ptr %3665, align 8, !tbaa !5
  store double %3745, ptr %3497, align 8, !tbaa !9
  store i8 19, ptr %3501, align 8, !tbaa !5
  %3755 = getelementptr inbounds %union.StackValue, ptr %3497, i64 3
  store double %3745, ptr %3755, align 8, !tbaa !9
  %3756 = getelementptr inbounds %union.StackValue, ptr %3497, i64 3, i32 0, i32 1
  store i8 19, ptr %3756, align 8, !tbaa !5
  br label %3762

3757:                                             ; preds = %3750, %3752, %3605, %3602, %3603
  %3758 = lshr i32 %3434, 15
  %3759 = add nuw nsw i32 %3758, 1
  %3760 = zext nneg i32 %3759 to i64
  %3761 = getelementptr inbounds i32, ptr %3432, i64 %3760
  br label %3762

3762:                                             ; preds = %3621, %3754, %3757
  %3763 = phi ptr [ %3761, %3757 ], [ %3432, %3754 ], [ %3432, %3621 ]
  %3764 = icmp eq i32 %3431, 0
  br i1 %3764, label %3769, label %3765, !prof !33

3765:                                             ; preds = %3762
  %3766 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3763) #13
  %3767 = load ptr, ptr %29, align 8, !tbaa !9
  %3768 = getelementptr inbounds %union.StackValue, ptr %3767, i64 1
  br label %3769

3769:                                             ; preds = %3765, %3762
  %3770 = phi i32 [ %3766, %3765 ], [ 0, %3762 ]
  %3771 = phi ptr [ %3768, %3765 ], [ %3433, %3762 ]
  %3772 = getelementptr inbounds i32, ptr %3763, i64 1
  br label %74

3773:                                             ; preds = %3429
  %3774 = lshr i32 %3434, 7
  %3775 = and i32 %3774, 255
  %3776 = zext nneg i32 %3775 to i64
  %3777 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3776
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3778 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %3778, ptr %12, align 8, !tbaa !9
  %3779 = getelementptr inbounds %union.StackValue, ptr %3777, i64 3
  call void @luaF_newtbcupval(ptr noundef %0, ptr noundef nonnull %3779) #13
  %3780 = lshr i32 %3434, 15
  %3781 = zext nneg i32 %3780 to i64
  %3782 = getelementptr inbounds i32, ptr %3432, i64 %3781
  %3783 = getelementptr inbounds i32, ptr %3782, i64 1
  %3784 = load i32, ptr %3782, align 4, !tbaa !39
  br label %3785

3785:                                             ; preds = %3429, %3773
  %3786 = phi i32 [ %3434, %3429 ], [ %3784, %3773 ]
  %3787 = phi ptr [ %3432, %3429 ], [ %3783, %3773 ]
  %3788 = lshr i32 %3786, 7
  %3789 = and i32 %3788, 255
  %3790 = zext nneg i32 %3789 to i64
  %3791 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3790
  %3792 = getelementptr inbounds %union.StackValue, ptr %3791, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3792, ptr noundef nonnull align 8 dereferenceable(48) %3791, i64 48, i1 false)
  %3793 = getelementptr inbounds %union.StackValue, ptr %3791, i64 7
  store ptr %3793, ptr %12, align 8, !tbaa !9
  store ptr %3787, ptr %36, align 8, !tbaa !9
  %3794 = lshr i32 %3786, 24
  call void @luaD_call(ptr noundef %0, ptr noundef nonnull %3792, i32 noundef %3794) #13
  %3795 = load volatile i32, ptr %49, align 8, !tbaa !9
  %3796 = icmp eq i32 %3795, 0
  br i1 %3796, label %3800, label %3797, !prof !33

3797:                                             ; preds = %3785
  %3798 = load ptr, ptr %29, align 8, !tbaa !9
  %3799 = getelementptr inbounds %union.StackValue, ptr %3798, i64 1
  br label %3800

3800:                                             ; preds = %3797, %3785
  %3801 = phi ptr [ %3799, %3797 ], [ %3433, %3785 ]
  %3802 = getelementptr inbounds i32, ptr %3787, i64 1
  %3803 = load i32, ptr %3787, align 4, !tbaa !39
  br label %3804

3804:                                             ; preds = %3429, %3800
  %3805 = phi i32 [ %3434, %3429 ], [ %3803, %3800 ]
  %3806 = phi i32 [ %3431, %3429 ], [ %3795, %3800 ]
  %3807 = phi ptr [ %3432, %3429 ], [ %3802, %3800 ]
  %3808 = phi ptr [ %3433, %3429 ], [ %3801, %3800 ]
  %3809 = lshr i32 %3805, 7
  %3810 = and i32 %3809, 255
  %3811 = zext nneg i32 %3810 to i64
  %3812 = getelementptr inbounds %union.StackValue, ptr %3808, i64 %3811
  %3813 = getelementptr inbounds %union.StackValue, ptr %3812, i64 4, i32 0, i32 1
  %3814 = load i8, ptr %3813, align 8, !tbaa !9
  %3815 = and i8 %3814, 15
  %3816 = icmp eq i8 %3815, 0
  br i1 %3816, label %3826, label %3817

3817:                                             ; preds = %3804
  %3818 = getelementptr inbounds %union.StackValue, ptr %3812, i64 4
  %3819 = getelementptr inbounds %union.StackValue, ptr %3812, i64 2
  %3820 = load i64, ptr %3818, align 8
  store i64 %3820, ptr %3819, align 8
  %3821 = getelementptr inbounds %union.StackValue, ptr %3812, i64 2, i32 0, i32 1
  store i8 %3814, ptr %3821, align 8, !tbaa !5
  %3822 = lshr i32 %3805, 15
  %3823 = zext nneg i32 %3822 to i64
  %3824 = sub nsw i64 0, %3823
  %3825 = getelementptr inbounds i32, ptr %3807, i64 %3824
  br label %3826

3826:                                             ; preds = %3817, %3804
  %3827 = phi ptr [ %3807, %3804 ], [ %3825, %3817 ]
  %3828 = icmp eq i32 %3806, 0
  br i1 %3828, label %3833, label %3829, !prof !33

3829:                                             ; preds = %3826
  %3830 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef %3827) #13
  %3831 = load ptr, ptr %29, align 8, !tbaa !9
  %3832 = getelementptr inbounds %union.StackValue, ptr %3831, i64 1
  br label %3833

3833:                                             ; preds = %3829, %3826
  %3834 = phi i32 [ %3830, %3829 ], [ 0, %3826 ]
  %3835 = phi ptr [ %3832, %3829 ], [ %3808, %3826 ]
  %3836 = getelementptr inbounds i32, ptr %3827, i64 1
  br label %74

3837:                                             ; preds = %3429
  %3838 = lshr i32 %3434, 7
  %3839 = and i32 %3838, 255
  %3840 = zext nneg i32 %3839 to i64
  %3841 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3840
  %3842 = lshr i32 %3434, 16
  %3843 = and i32 %3842, 255
  %3844 = lshr i32 %3434, 24
  %3845 = load ptr, ptr %3841, align 8, !tbaa !9
  %3846 = icmp eq i32 %3843, 0
  br i1 %3846, label %3847, label %3855

3847:                                             ; preds = %3837
  %3848 = load ptr, ptr %12, align 8, !tbaa !9
  %3849 = ptrtoint ptr %3848 to i64
  %3850 = ptrtoint ptr %3841 to i64
  %3851 = sub i64 %3849, %3850
  %3852 = lshr exact i64 %3851, 4
  %3853 = trunc i64 %3852 to i32
  %3854 = add nsw i32 %3853, -1
  br label %3857

3855:                                             ; preds = %3837
  %3856 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %3856, ptr %12, align 8, !tbaa !9
  br label %3857

3857:                                             ; preds = %3855, %3847
  %3858 = phi i32 [ %3854, %3847 ], [ %3843, %3855 ]
  %3859 = add i32 %3858, %3844
  %3860 = and i32 %3434, 32768
  %3861 = icmp eq i32 %3860, 0
  br i1 %3861, label %3868, label %3862

3862:                                             ; preds = %3857
  %3863 = load i32, ptr %3432, align 4, !tbaa !39
  %3864 = shl nuw nsw i32 %3863, 1
  %3865 = and i32 %3864, 2147483392
  %3866 = add i32 %3865, %3859
  %3867 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %3868

3868:                                             ; preds = %3862, %3857
  %3869 = phi i32 [ %3866, %3862 ], [ %3859, %3857 ]
  %3870 = phi ptr [ %3867, %3862 ], [ %3432, %3857 ]
  %3871 = call i32 @luaH_realasize(ptr noundef %3845) #13
  %3872 = icmp ugt i32 %3869, %3871
  br i1 %3872, label %3873, label %3874

3873:                                             ; preds = %3868
  call void @luaH_resizearray(ptr noundef nonnull %0, ptr noundef %3845, i32 noundef %3869) #13
  br label %3874

3874:                                             ; preds = %3873, %3868
  %3875 = icmp sgt i32 %3858, 0
  br i1 %3875, label %3876, label %3908

3876:                                             ; preds = %3874
  %3877 = getelementptr inbounds %struct.Table, ptr %3845, i64 0, i32 6
  %3878 = getelementptr inbounds %struct.GCObject, ptr %3845, i64 0, i32 2
  %3879 = zext nneg i32 %3858 to i64
  br label %3880

3880:                                             ; preds = %3876, %3905
  %3881 = phi i64 [ %3879, %3876 ], [ %3906, %3905 ]
  %3882 = phi i32 [ %3869, %3876 ], [ %3885, %3905 ]
  %3883 = getelementptr inbounds %union.StackValue, ptr %3841, i64 %3881
  %3884 = load ptr, ptr %3877, align 8, !tbaa !67
  %3885 = add i32 %3882, -1
  %3886 = zext i32 %3885 to i64
  %3887 = getelementptr inbounds %struct.TValue, ptr %3884, i64 %3886
  %3888 = load i64, ptr %3883, align 8
  store i64 %3888, ptr %3887, align 8
  %3889 = getelementptr inbounds %struct.TValue, ptr %3883, i64 0, i32 1
  %3890 = load i8, ptr %3889, align 8, !tbaa !5
  %3891 = getelementptr inbounds %struct.TValue, ptr %3884, i64 %3886, i32 1
  store i8 %3890, ptr %3891, align 8, !tbaa !5
  %3892 = and i8 %3890, 64
  %3893 = icmp eq i8 %3892, 0
  br i1 %3893, label %3905, label %3894

3894:                                             ; preds = %3880
  %3895 = load i8, ptr %3878, align 1, !tbaa !9
  %3896 = and i8 %3895, 32
  %3897 = icmp eq i8 %3896, 0
  br i1 %3897, label %3905, label %3898

3898:                                             ; preds = %3894
  %3899 = load ptr, ptr %3883, align 8, !tbaa !9
  %3900 = getelementptr inbounds %struct.GCObject, ptr %3899, i64 0, i32 2
  %3901 = load i8, ptr %3900, align 1, !tbaa !30
  %3902 = and i8 %3901, 24
  %3903 = icmp eq i8 %3902, 0
  br i1 %3903, label %3905, label %3904

3904:                                             ; preds = %3898
  call void @luaC_barrierback_(ptr noundef %0, ptr noundef nonnull %3845) #13
  br label %3905

3905:                                             ; preds = %3894, %3898, %3904, %3880
  %3906 = add nsw i64 %3881, -1
  %3907 = icmp sgt i64 %3881, 1
  br i1 %3907, label %3880, label %3908, !llvm.loop !68

3908:                                             ; preds = %3905, %3874
  %3909 = icmp eq i32 %3431, 0
  br i1 %3909, label %3914, label %3910, !prof !33

3910:                                             ; preds = %3908
  %3911 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef %3870) #13
  %3912 = load ptr, ptr %29, align 8, !tbaa !9
  %3913 = getelementptr inbounds %union.StackValue, ptr %3912, i64 1
  br label %3914

3914:                                             ; preds = %3910, %3908
  %3915 = phi i32 [ %3911, %3910 ], [ 0, %3908 ]
  %3916 = phi ptr [ %3913, %3910 ], [ %3433, %3908 ]
  %3917 = getelementptr inbounds i32, ptr %3870, i64 1
  br label %74

3918:                                             ; preds = %3429
  %3919 = lshr i32 %3434, 7
  %3920 = and i32 %3919, 255
  %3921 = zext nneg i32 %3920 to i64
  %3922 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3921
  %3923 = load ptr, ptr %32, align 8, !tbaa !41
  %3924 = getelementptr inbounds %struct.Proto, ptr %3923, i64 0, i32 17
  %3925 = load ptr, ptr %3924, align 8, !tbaa !69
  %3926 = lshr i32 %3434, 15
  %3927 = zext nneg i32 %3926 to i64
  %3928 = getelementptr inbounds ptr, ptr %3925, i64 %3927
  %3929 = load ptr, ptr %3928, align 8, !tbaa !26
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3930 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %3930, ptr %12, align 8, !tbaa !9
  %3931 = getelementptr inbounds %struct.Proto, ptr %3929, i64 0, i32 6
  %3932 = load i32, ptr %3931, align 8, !tbaa !70
  %3933 = getelementptr inbounds %struct.Proto, ptr %3929, i64 0, i32 18
  %3934 = load ptr, ptr %3933, align 8, !tbaa !71
  %3935 = call ptr @luaF_newLclosure(ptr noundef %0, i32 noundef %3932) #13
  %3936 = getelementptr inbounds %struct.LClosure, ptr %3935, i64 0, i32 5
  store ptr %3929, ptr %3936, align 8, !tbaa !41
  store ptr %3935, ptr %3922, align 8, !tbaa !9
  %3937 = getelementptr inbounds %struct.TValue, ptr %3922, i64 0, i32 1
  store i8 70, ptr %3937, align 8, !tbaa !5
  %3938 = icmp sgt i32 %3932, 0
  br i1 %3938, label %3939, label %3971

3939:                                             ; preds = %3918
  %3940 = getelementptr inbounds %struct.LClosure, ptr %3935, i64 0, i32 2
  %3941 = zext nneg i32 %3932 to i64
  br label %3942

3942:                                             ; preds = %3968, %3939
  %3943 = phi i64 [ 0, %3939 ], [ %3969, %3968 ]
  %3944 = getelementptr inbounds %struct.Upvaldesc, ptr %3934, i64 %3943, i32 1
  %3945 = load i8, ptr %3944, align 8, !tbaa !72
  %3946 = icmp eq i8 %3945, 0
  %3947 = getelementptr inbounds %struct.Upvaldesc, ptr %3934, i64 %3943, i32 2
  %3948 = load i8, ptr %3947, align 1, !tbaa !74
  %3949 = zext i8 %3948 to i64
  br i1 %3946, label %3953, label %3950

3950:                                             ; preds = %3942
  %3951 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3949
  %3952 = call ptr @luaF_findupval(ptr noundef %0, ptr noundef %3951) #13
  br label %3956

3953:                                             ; preds = %3942
  %3954 = getelementptr inbounds ptr, ptr %51, i64 %3949
  %3955 = load ptr, ptr %3954, align 8, !tbaa !26
  br label %3956

3956:                                             ; preds = %3953, %3950
  %3957 = phi ptr [ %3955, %3953 ], [ %3952, %3950 ]
  %3958 = getelementptr inbounds %struct.LClosure, ptr %3935, i64 0, i32 6, i64 %3943
  store ptr %3957, ptr %3958, align 8
  %3959 = load i8, ptr %3940, align 1, !tbaa !75
  %3960 = and i8 %3959, 32
  %3961 = icmp eq i8 %3960, 0
  br i1 %3961, label %3968, label %3962

3962:                                             ; preds = %3956
  %3963 = getelementptr inbounds %struct.UpVal, ptr %3957, i64 0, i32 2
  %3964 = load i8, ptr %3963, align 1, !tbaa !49
  %3965 = and i8 %3964, 24
  %3966 = icmp eq i8 %3965, 0
  br i1 %3966, label %3968, label %3967

3967:                                             ; preds = %3962
  call void @luaC_barrier_(ptr noundef %0, ptr noundef nonnull %3935, ptr noundef nonnull %3957) #13
  br label %3968

3968:                                             ; preds = %3967, %3962, %3956
  %3969 = add nuw nsw i64 %3943, 1
  %3970 = icmp eq i64 %3969, %3941
  br i1 %3970, label %3971, label %3942, !llvm.loop !76

3971:                                             ; preds = %3968, %3918
  %3972 = load ptr, ptr %13, align 8, !tbaa !21
  %3973 = getelementptr inbounds %struct.global_State, ptr %3972, i64 0, i32 3
  %3974 = load i64, ptr %3973, align 8, !tbaa !51
  %3975 = icmp sgt i64 %3974, 0
  br i1 %3975, label %3976, label %3979

3976:                                             ; preds = %3971
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3977 = getelementptr inbounds %union.StackValue, ptr %3922, i64 1
  store ptr %3977, ptr %12, align 8, !tbaa !9
  call void @luaC_step(ptr noundef nonnull %0) #13
  %3978 = load volatile i32, ptr %49, align 8, !tbaa !9
  br label %3979

3979:                                             ; preds = %3976, %3971
  %3980 = phi i32 [ %3978, %3976 ], [ %3431, %3971 ]
  %3981 = icmp eq i32 %3980, 0
  br i1 %3981, label %3986, label %3982, !prof !33

3982:                                             ; preds = %3979
  %3983 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %3984 = load ptr, ptr %29, align 8, !tbaa !9
  %3985 = getelementptr inbounds %union.StackValue, ptr %3984, i64 1
  br label %3986

3986:                                             ; preds = %3982, %3979
  %3987 = phi i32 [ %3983, %3982 ], [ 0, %3979 ]
  %3988 = phi ptr [ %3985, %3982 ], [ %3433, %3979 ]
  %3989 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

3990:                                             ; preds = %3429
  %3991 = lshr i32 %3434, 7
  %3992 = and i32 %3991, 255
  %3993 = zext nneg i32 %3992 to i64
  %3994 = getelementptr inbounds %union.StackValue, ptr %3433, i64 %3993
  %3995 = lshr i32 %3434, 24
  %3996 = add nsw i32 %3995, -1
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %3997 = load ptr, ptr %50, align 8, !tbaa !9
  store ptr %3997, ptr %12, align 8, !tbaa !9
  call void @luaT_getvarargs(ptr noundef %0, ptr noundef nonnull %29, ptr noundef %3994, i32 noundef %3996) #13
  %3998 = load volatile i32, ptr %49, align 8, !tbaa !9
  %3999 = icmp eq i32 %3998, 0
  br i1 %3999, label %4004, label %4000, !prof !33

4000:                                             ; preds = %3990
  %4001 = call i32 @luaG_traceexec(ptr noundef nonnull %0, ptr noundef nonnull %3432) #13
  %4002 = load ptr, ptr %29, align 8, !tbaa !9
  %4003 = getelementptr inbounds %union.StackValue, ptr %4002, i64 1
  br label %4004

4004:                                             ; preds = %4000, %3990
  %4005 = phi i32 [ %4001, %4000 ], [ 0, %3990 ]
  %4006 = phi ptr [ %4003, %4000 ], [ %3433, %3990 ]
  %4007 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

4008:                                             ; preds = %3429
  store ptr %3432, ptr %36, align 8, !tbaa !9
  %4009 = lshr i32 %3434, 7
  %4010 = and i32 %4009, 255
  %4011 = load ptr, ptr %32, align 8, !tbaa !41
  call void @luaT_adjustvarargs(ptr noundef %0, i32 noundef %4010, ptr noundef nonnull %29, ptr noundef %4011) #13
  %4012 = load volatile i32, ptr %49, align 8, !tbaa !9
  %4013 = icmp eq i32 %4012, 0
  br i1 %4013, label %4016, label %4014, !prof !33

4014:                                             ; preds = %4008
  call void @luaD_hookcall(ptr noundef %0, ptr noundef nonnull %29) #13
  store i32 1, ptr %11, align 4, !tbaa !77
  %4015 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  br label %4016

4016:                                             ; preds = %4008, %4014
  %4017 = phi i32 [ %4015, %4014 ], [ 0, %4008 ]
  %4018 = load ptr, ptr %29, align 8, !tbaa !9
  %4019 = getelementptr inbounds %union.StackValue, ptr %4018, i64 1
  %4020 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74

4021:                                             ; preds = %3429
  %4022 = icmp eq i32 %3431, 0
  br i1 %4022, label %4027, label %4023, !prof !33

4023:                                             ; preds = %4021
  %4024 = call i32 @luaG_traceexec(ptr noundef %0, ptr noundef nonnull %3432) #13
  %4025 = load ptr, ptr %29, align 8, !tbaa !9
  %4026 = getelementptr inbounds %union.StackValue, ptr %4025, i64 1
  br label %4027

4027:                                             ; preds = %4023, %4021
  %4028 = phi i32 [ %4024, %4023 ], [ 0, %4021 ]
  %4029 = phi ptr [ %4026, %4023 ], [ %3433, %4021 ]
  %4030 = getelementptr inbounds i32, ptr %3432, i64 1
  br label %74
}

declare hidden i32 @luaG_tracecall(ptr noundef) local_unnamed_addr #5

declare hidden i32 @luaG_traceexec(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @luaC_barrier_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @luaH_getshortstr(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden ptr @luaH_getint(ptr noundef, i64 noundef) local_unnamed_addr #5

declare hidden ptr @luaH_new(ptr noundef) local_unnamed_addr #5

declare hidden void @luaH_resize(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaC_step(ptr noundef) local_unnamed_addr #5

declare hidden ptr @luaH_getstr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

declare hidden void @luaT_trybinTM(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaT_trybiniTM(ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaT_trybinassocTM(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden ptr @luaF_close(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaF_newtbcupval(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @luaT_callorderiTM(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare hidden ptr @luaD_precall(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaF_closeupval(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @luaD_pretailcall(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaD_poscall(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaD_call(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden i32 @luaH_realasize(ptr noundef) local_unnamed_addr #5

declare hidden void @luaH_resizearray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaT_getvarargs(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden void @luaT_adjustvarargs(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden void @luaD_hookcall(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i64 @luaO_str2num(ptr noundef, ptr noundef) local_unnamed_addr #5

declare hidden i32 @luaT_callorderTM(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcoll(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: noreturn
declare hidden void @luaG_forerror(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare hidden ptr @luaF_newLclosure(ptr noundef, i32 noundef) local_unnamed_addr #5

declare hidden ptr @luaF_findupval(ptr noundef, ptr noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 18.1.3 (1ubuntu1)"}
!5 = !{!6, !7, i64 8}
!6 = !{!"TValue", !7, i64 0, !7, i64 8}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{!11, !7, i64 11}
!11 = !{!"TString", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !13, i64 12, !7, i64 16, !7, i64 24}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"int", !7, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !7, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long long", !7, i64 0}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!20, !7, i64 10}
!20 = !{!"Table", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !13, i64 12, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!21 = !{!22, !12, i64 24}
!22 = !{!"lua_State", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !23, i64 12, !7, i64 16, !12, i64 24, !12, i64 32, !7, i64 40, !7, i64 48, !12, i64 56, !7, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !24, i64 96, !12, i64 160, !25, i64 168, !13, i64 176, !13, i64 180, !13, i64 184, !13, i64 188, !13, i64 192}
!23 = !{!"short", !7, i64 0}
!24 = !{!"CallInfo", !7, i64 0, !7, i64 8, !12, i64 16, !12, i64 24, !7, i64 32, !7, i64 56, !23, i64 60, !23, i64 62}
!25 = !{!"long", !7, i64 0}
!26 = !{!12, !12, i64 0}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = !{!20, !12, i64 40}
!30 = !{!31, !7, i64 9}
!31 = !{!"GCObject", !12, i64 0, !7, i64 8, !7, i64 9}
!32 = distinct !{!32, !28}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = distinct !{!34, !28}
!35 = distinct !{!35, !28}
!36 = !{!11, !7, i64 8}
!37 = distinct !{!37, !28}
!38 = !{!22, !12, i64 32}
!39 = !{!13, !13, i64 0}
!40 = !{!22, !13, i64 192}
!41 = !{!42, !12, i64 24}
!42 = !{!"LClosure", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !12, i64 16, !12, i64 24, !7, i64 32}
!43 = !{!44, !12, i64 56}
!44 = !{!"Proto", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !7, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !13, i64 40, !13, i64 44, !13, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112, !12, i64 120}
!45 = !{!"branch_weights", i32 0, i32 -2147483648}
!46 = distinct !{!46, !47}
!47 = !{!"llvm.loop.unroll.disable"}
!48 = distinct !{!48, !28}
!49 = !{!50, !7, i64 9}
!50 = !{!"UpVal", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 16, !7, i64 24}
!51 = !{!52, !25, i64 24}
!52 = !{!"global_State", !12, i64 0, !12, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !25, i64 40, !53, i64 48, !6, i64 64, !6, i64 80, !13, i64 96, !7, i64 100, !7, i64 101, !7, i64 102, !7, i64 103, !7, i64 104, !7, i64 105, !7, i64 106, !7, i64 107, !7, i64 108, !7, i64 109, !7, i64 110, !12, i64 112, !12, i64 120, !12, i64 128, !12, i64 136, !12, i64 144, !12, i64 152, !12, i64 160, !12, i64 168, !12, i64 176, !12, i64 184, !12, i64 192, !12, i64 200, !12, i64 208, !12, i64 216, !12, i64 224, !12, i64 232, !12, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !12, i64 272, !7, i64 280, !7, i64 480, !7, i64 552, !12, i64 1400, !12, i64 1408}
!53 = !{!"stringtable", !12, i64 0, !13, i64 8, !13, i64 12}
!54 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!55 = !{!24, !12, i64 16}
!56 = !{!24, !23, i64 60}
!57 = !{!"branch_weights", i32 1, i32 1999}
!58 = !{!"branch_weights", i32 127, i32 1}
!59 = !{!"branch_weights", i32 1, i32 1}
!60 = distinct !{!60, !47}
!61 = !{!"branch_weights", i32 1, i32 127}
!62 = !{!"branch_weights", i32 0, i32 0}
!63 = distinct !{!63, !28}
!64 = !{!"branch_weights", i32 0, i32 1}
!65 = distinct !{!65, !28}
!66 = !{!24, !23, i64 62}
!67 = !{!20, !12, i64 16}
!68 = distinct !{!68, !28}
!69 = !{!44, !12, i64 72}
!70 = !{!44, !13, i64 16}
!71 = !{!44, !12, i64 80}
!72 = !{!73, !7, i64 8}
!73 = !{!"Upvaldesc", !12, i64 0, !7, i64 8, !7, i64 9, !7, i64 10}
!74 = !{!73, !7, i64 9}
!75 = !{!42, !7, i64 9}
!76 = distinct !{!76, !28}
!77 = !{!22, !13, i64 180}
