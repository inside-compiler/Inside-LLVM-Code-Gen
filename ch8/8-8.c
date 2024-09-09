int g_val = 1;
int MUL(int x, int y) {
    int a = y * x;
    int z = g_val * x;
    int q = x + a;
    return z * q;
}