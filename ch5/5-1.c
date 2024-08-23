int test(int n) {
    int a = 1;
    for (int i = 0; i < n; ++i)
        a += a * i;
    return a;
}