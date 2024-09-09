void func()
{
    int i = 1;
    int flag = 0;
    while(i > 0 && !flag) {
        if (i == 1) {
            flag = 1;
        } else {
            i++;
        }
    }
}