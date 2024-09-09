void bar(char *, int);
void foo(int var) {
A: {
        char z[4096];
        bar(z, 0);
    }

    char *p;
    char x[4096];
    char y[4096];
    if (var) {
        p = x;
    } else {
        bar(y, 1);
        p = y + 1024;
    }
B:
    bar(p, 2);
}