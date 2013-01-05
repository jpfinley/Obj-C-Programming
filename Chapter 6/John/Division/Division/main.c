//
//  main.c
//  Division
//
//  Created by John Finley on 1/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

int main(int argc, const char * argv[])
{
    printf("3 * 3 + 5 * 2 = %d\n", 3 * 3 + 5 * 2);
    printf("11 / 3 = %d with a remainder of %d \n", 11 / 3, 11 % 3);
    printf("11 / 3.0 = %f\n", 11 / (float)3);
    // Why does casting as a float have diferent syntax from seeking absolute value?
    // In the latter, you are calling the function, so: ____();
    printf("The absolute value of -5 is %d.\n", abs(-5));

    return 0;
}

