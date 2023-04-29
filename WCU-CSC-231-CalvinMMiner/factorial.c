/*
*
    *You are to correct all errors in factorial.c and the program run correctly.
    *You should add code to take commandline input and return factorial value of that input number.
*/

#include <stdio.h>
#include <stdlib.h>

int main(int argc, char* aragv[])
{
    int fact = 1;
    int n = atoi(aragv[1]);
    if(argc>=2)
    {
       for(int i = 1; i <= n;i++)
       {
            fact *=i;
       }
    }
    
    printf("%d", fact);

    return 0;
}
