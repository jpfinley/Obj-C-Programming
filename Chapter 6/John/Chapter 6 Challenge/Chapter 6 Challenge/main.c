//
//  main.c
//  Numbers
//
//  Created by John Finley on 1/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    float initialValue = 1;
    printf("The sine of %.0f radian is %0.3f.\n", initialValue, sin(initialValue));

    return 0;
}

// The sine of 1 radian is 0.841471.
