0 define dso_local void @foo(i32 noundef %var) local_unnamed_addr {
1 entry:
2   %z = alloca [4096 x i8], align 16
3   %x = alloca [4096 x i8], align 16
4   %y = alloca [4096 x i8], align 16
5   call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %z)
6   call void @bar(ptr noundef nonnull %z, i32 noundef 0)
7   call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %z)
8   %tobool.not = icmp eq i32 %var, 0
9   call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %x)
10   br i1 %tobool.not, label %if.else, label %B

11 if.else:                                          ; preds = %entry
12   call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %y)
13   call void @bar(ptr noundef nonnull %y, i32 noundef 1)
14   %add.ptr = getelementptr inbounds i8, ptr %y, i64 1024
15   br label %B

16 B:                                                ; preds = %entry, %if.else
17   %p.0 = phi ptr [ %add.ptr, %if.else ], [ %x, %entry ]
18   call void @bar(ptr noundef nonnull %p.0, i32 noundef 2)
19   call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %x)
20   call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %y)
21   ret void
22 }