//
//  main.c
//  Chapter 8 Challenge
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>
#include <math.h>


int main(int argc, const char * argv[])
{
    long howLarge = ((sizeof(short))) + 2^7;
    long howLargeUnsigned = sizeof(unsigned short) * 2^8;
    printf("A float uses %zu bytes of memory.\n", sizeof(float));
    printf("The smallest number a short can hold is 5ld.\n", howLarge*-9);
    printf("The largest number a short can hold is %ld.\n", howLarge*9);
    printf("The largest number an unsigned short can hold is %ld.\n", howLargeUnsigned*9);
    
    return 0;
}

