define i64 @callee(i64 noundef %a, i64 noundef %b)  {
entry:
  %a.addr = alloca i64, align 8
  %b.addr = alloca i64, align 8
  %c = alloca i64, align 8
  store i64 %a, ptr %a.addr, align 8
  store i64 %b, ptr %b.addr, align 8
  %0 = load i64, ptr %a.addr, align 8
  %1 = load i64, ptr %b.addr, align 8
  %add = add nsw i64 %0, %1
  store i64 %add, ptr %c, align 8
  %2 = load i64, ptr %c, align 8
  ret i64 %2
}
define i32 @caller() {
entry:
  %d = alloca i64, align 8
  %e = alloca i64, align 8
  %f = alloca i32, align 4
  store i64 1, ptr %d, align 8
  store i64 2, ptr %e, align 8
  %0 = load i64, ptr %d, align 8
  %1 = load i64, ptr %e, align 8
  %call = call i64 @callee(i64 noundef %0, i64 noundef %1)
  %conv = trunc i64 %call to i32
  store i32 %conv, ptr %f, align 4
  %2 = load i32, ptr %f, align 4
  ret i32 %2
}