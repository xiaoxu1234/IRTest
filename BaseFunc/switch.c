#include <stdio.h>

int main (){
   char grade = 'B';
   int score;
   switch(grade)
   {
   case 'A' :
      score = 4;
      break;
   case 'B' :
      score = 3;
      break;
   case 'C' :
       score = 2;
      break;
   case 'D' :
       score = 1;
      break;
   default :
       score = 0;
   }
   printf("your score: %d\n", score );
   return 0;
}

