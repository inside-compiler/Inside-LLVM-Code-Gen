extern void swap(int &a, int &b);
int test(int a, int b)
{
    if (a > b) {
        return a;
    }
    swap(a, b);
    return a;
}