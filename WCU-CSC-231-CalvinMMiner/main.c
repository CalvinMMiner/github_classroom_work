/*
 * Implement product.c with the following specifications:
*
  *  The program will accept a single command line argument representing the path to a text file containing the values of these integers.
 *       There will be one integer per line.
  *      The values of the integers will be between 1 and 20.
   *     There will be ten lines.
 *   The program will read these ten integers from the text file in part a into an array of integers.
  *  The program will print out the sum of these intergers on one line.
   * The program will print out the product of these integers on the next line.
 */

#include <stdio.h>
#include <stdlib.h>
//#define bufferLength 255

int main(int argc, char** argv) {
    // file pointer
    FILE *fp;

    int sum = 0;
    int product = 1;

    // Check to make sure you have more than the output file name
    if (argc >= 2) {
        // read the second argument as that should be the file name
        fp = fopen(argv[1], "r");
        //printf("%s\n", argv[1]);
    } else {
        fp = fopen("file.txt", "r");
    }
    //printf("%p\n", fp);

    if (fp != NULL) {
        // set the buffer size
        int bufferLength = 255;
        //create the buffer
        char buffer[bufferLength];
        // read the file line by line and put in the buffer
        while (fgets(buffer, bufferLength, fp)) {
            // print lines using buffer
			// You can enble the print for testing. Make sure to comment this out for final submission
            // printf("%s", buffer);
            // You should add your logic/code here
        
		    sum += atoi(buffer);
     		product *= atoi(buffer);
            
        }

        printf("\n%d\n", sum);
        printf("%d\n", product);
    }
    // close the file
    fclose(fp);
    exit(EXIT_SUCCESS);
}

