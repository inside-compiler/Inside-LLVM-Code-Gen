long callee(long a, long b) {
    long c = a + b;
    return c;
}
int caller() {
    long d = 1;
    long e = 2;
    int f = callee(d, e);
    return f;
}