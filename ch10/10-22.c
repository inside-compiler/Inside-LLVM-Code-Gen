void bubbleSort(int a[], int length) {
    int i, j;
    for(i = 0; i < length -1; ++i ) {
        for(j = 0; j < length - i -1; ++j) {
            if(a[j] > a[j+1]) {
                int temp = a[j];
                a[j] = a[j+1];
                a[j+1] = temp;
            }
        }
    }
}