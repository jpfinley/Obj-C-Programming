//
//  main.c
//  Numbers
//
//  Created by John Finley on 1/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    unsigned long x = 255;
    printf("In decimal, x is %lu.\n", x);
    printf("In octal, x is %lo.\n", x);
    printf("In hexadecimal, x is %lx.\n\n", x);
    
    double y = 12345.6789;
    // The .2 in front of the token modifies the number of digits after the decimal.
    printf("y is %.2f.\n", y);
    printf("y is %.2e.\n", y);
    
    return 0;
}

