//
//  main.c
//  Chapter 4 Challenge
//
//  Created by John Finley on 1/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    int i = 20;
    int j = 25;
    
    // k = 5
    int k = ( i > j ) ? 10 : 5;

    if ( 5 < j - k ) {
        // first expression true
        printf("The first expression is true.");
    } else if ( j > i ) {
        // second expression true
        printf("The second expression is true.");
    } else {
        printf("Neither expression is true.");
    }
    
    // What will be printed to the console?
    // first
}

