; ModuleID = 'struct.c'
source_filename = "struct.c"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx13.0.0"

%struct.Stu = type { i8*, i32, i8, float, %struct.Grade }
%struct.Grade = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"Tom\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s\EF\BC\8C%d\EF\BC\8C%c\EF\BC\8C%.1f, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.Stu, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 1
  store i32 18, i32* %4, align 8
  %5 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 2
  store i8 65, i8* %5, align 4
  %6 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 3
  store float 1.365000e+02, float* %6, align 8
  %7 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 4
  %8 = getelementptr inbounds %struct.Grade, %struct.Grade* %7, i32 0, i32 0
  store i32 4, i32* %8, align 4
  %9 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 2
  %14 = load i8, i8* %13, align 4
  %15 = sext i8 %14 to i32
  %16 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 3
  %17 = load float, float* %16, align 8
  %18 = fpext float %17 to double
  %19 = getelementptr inbounds %struct.Stu, %struct.Stu* %2, i32 0, i32 4
  %20 = getelementptr inbounds %struct.Grade, %struct.Grade* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, ...) @printf(i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* noundef %10, i32 noundef %12, i32 noundef %15, double noundef %18, i32 noundef %21)
  ret i32 0
}

declare i32 @printf(i8* noundef, ...) #1

attributes #0 = { noinline nounwind optnone ssp uwtable "darwin-stkchk-strong-link" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "darwin-stkchk-strong-link" "frame-pointer"="all" "no-trapping-math"="true" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+cx8,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 13, i32 1]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Apple clang version 14.0.3 (clang-1403.0.22.14.1)"}
