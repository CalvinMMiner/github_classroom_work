/*
*
    *You are to correct all errors in factorial.c and the program run correctly.
    *You should add code to take commandline input and return factorial value of that input number.
   * Please make sure to read the comments in the factorial.c before you add your code.
  *  I already added hints in the code file. Also, please feel free to ask me question in the class (if you need additional help).
 *   Please only change the factorial.c and README.md file. If you change any other file(s), then you will receive 0 point for the assignment.
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
