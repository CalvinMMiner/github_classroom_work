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
