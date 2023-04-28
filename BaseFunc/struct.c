#include <stdio.h>

struct Grade{
    int number;
};
    
struct Stu{
    char *name;
    int age;
    char group;
    float score;
    struct Grade grade1;
};
    
int main(){
    struct Stu stu1;
    stu1.name = "Tom";
    stu1.age = 18;
    stu1.group = 'A';
    stu1.score = 136.5;
    stu1.grade1.number = 4;
    
    printf("%s，%d，%c，%.1f, %d\n", stu1.name,stu1.age, stu1.group, stu1.score, stu1.grade1.number);
    return 0;
}

