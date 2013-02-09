//
//  main.c
//  Numbers
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, const char * argv[])
{
    float numberOne = 1;
    double y = 12345.6789;
    printf("y is %f\n", y);
    printf("y is %e\n", y);
    printf("The sine of 1 radian is %.3f", sin(numberOne));
    return 0;
}

