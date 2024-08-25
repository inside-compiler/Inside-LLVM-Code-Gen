int swap_problem(int n) {
    int x = 1;
    int y = 2;
    do {
        int temp =x;
        x = y;
        y = temp;
    } while(n > 10);
    return x/y;
}