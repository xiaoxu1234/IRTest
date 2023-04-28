#include<stdio.h>

extern int func(int a);
int func(int a) {
 a = a*2;
 return a;
}


int main() {
 int num = 5;
 num = func(num);
 printf("number is %d\n", num);
 return num;
}

