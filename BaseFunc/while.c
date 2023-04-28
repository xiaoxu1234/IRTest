#include <stdio.h>
 
int main()
{
   int a = 0, b = 1;
   while(a < 5)
   {
       a++;
       b *= a;
   }
   return b;
}

