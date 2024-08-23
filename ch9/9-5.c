void foo(int var) {
    char x[4096];
    char *p;
    bar(x, 0);
    if (var) {
        p = x;
    } else {
        bar(x, 1);
        p = x + 1024;
    }
    bar(p, 2);
}