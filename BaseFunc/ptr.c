#include <stdio.h>

int main(){
    int i = 10;
    int* pi = &i;
    printf("i的值为：%d",i);
    printf("*pi的值为：%d",*pi);
    printf("&i的地址值为：%d",&i);
    printf("pi的地址值为：%d",&pi);
}

