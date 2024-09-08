; ModuleID = 'multi_para.c'
source_filename = "multi_para.c"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx12.0.0"

; Function Attrs: noinline nounwind optnone ssp uwtable
define i64 @add(i64 noundef %a, i64 noundef %b, i64 noundef %c, i64 noundef %d, i64 noundef %e, i64 noundef %f, i64 noundef %g) #0 {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c.addr = alloca i64, align 8
  %d.addr = alloca i64, align 8
  %e.addr = alloca i64, align 8
  %f.addr = alloca i64, align 8
  %g.addr = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  store i64 %c, ptr %c.addr, align 8
  store i64 %d, ptr %d.addr, align 8
  store i64 %e, ptr %e.addr, align 8
  store i64 %f, ptr %f.addr, align 8
  store i64 %g, ptr %g.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %1 = load i64, ptr %b.addr, align 8
  %add = add nsw i64 %0, %1
  %2 = load i64, ptr %c.addr, align 8
  %add1 = add nsw i64 %add, %2
  %3 = load i64, ptr %d.addr, align 8
  %add2 = add nsw i64 %add1, %3
  %4 = load i64, ptr %e.addr, align 8
  %add3 = add nsw i64 %add2, %4
  %5 = load i64, ptr %f.addr, align 8
  %add4 = add nsw i64 %add3, %5
  %6 = load i64, ptr %g.addr, align 8
  %add5 = add nsw i64 %add4, %6
  ret i64 %add5
}

; Function Attrs: noinline nounwind optnone ssp uwtable
define i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i64, align 8
  %b = alloca i64, align 8
  %c = alloca i64, align 8
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  %f = alloca i64, align 8
  %g = alloca i64, align 8
  %cc = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i64 9, ptr %a, align 8
  store i64 10, ptr %b, align 8
  store i64 9, ptr %c, align 8
  store i64 10, ptr %d, align 8
  store i64 9, ptr %e, align 8
  store i64 10, ptr %f, align 8
  store i64 9, ptr %g, align 8
  %0 = load i64, ptr %a, align 8
  %1 = load i64, ptr %b, align 8
  %2 = load i64, ptr %c, align 8
  %3 = load i64, ptr %d, align 8
  %4 = load i64, ptr %e, align 8
  %5 = load i64, ptr %f, align 8
  %6 = load i64, ptr %g, align 8
  %call = call i64 @add(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %cc, align 4
  %7 = load i32, ptr %cc, align 4
  ret i32 %7
}

attributes #0 = { noinline nounwind optnone ssp uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="apple-m1" "target-features"="+aes,+crc,+crypto,+dotprod,+fp-armv8,+fp16fml,+fullfp16,+lse,+neon,+ras,+rcpc,+rdm,+sha2,+sha3,+sm4,+v8.5a,+zcm,+zcz" }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 2, !"SDK Version", [2 x i32] [i32 12, i32 3]}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 7, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 1}
!5 = !{!"clang version 15.0.6 (https://github.com/tabrisling/llvm-project.git 088f33605d8a61ff519c580a71b1dd57d16a03f8)"}
