bool isEven(int x, int y)
{
    bool returnValue = false;
    if (x % 2 == 0)
        returnValue = true;
    else
        returnValue = false;

    if (y % 3 == 0)
        returnValue = true;
    else
        returnValue = false;

    return returnValue;
}