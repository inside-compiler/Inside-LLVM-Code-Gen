define dso_local noundef zeroext i1 @isEven(i32 noundef %x, i32 noundef %y) {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %returnValue = alloca i8, align 1
  store i32 %x, ptr %x.addr, align 4
  store i32 %y, ptr %y.addr, align 4
  store i8 0, ptr %returnValue, align 1
  %0 = load i32, ptr %x.addr, align 4
  %rem = srem i32 %0, 2
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i8 1, ptr %returnValue, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  store i8 0, ptr %returnValue, align 1
  br label %if.end

if.then3:                                         ; preds = %if.end
  store i8 1, ptr %returnValue, align 1
  br label %if.end5

if.else4:                                ; preds = %if.end
  store i8 0, ptr %returnValue, align 1
  br label %if.end5

if.end:                                  ; preds = %if.else, %if.then
  %1 = load i32, ptr %y.addr, align 4
  %rem1 = srem i32 %1, 3
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %if.then3, label %if.else4

if.end5:                                 ; preds = %if.else4, %if.then3
  %2 = load i8, ptr %returnValue, align 1
  %tobool = trunc i8 %2 to i1
  ret i1 %tobool
}