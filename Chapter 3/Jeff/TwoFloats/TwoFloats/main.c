//
//  main.c
//  TwoFloats
//
//  Created by Jeff Kirsch on 1/15/13.
//  Copyright (c) 2013 Jeff Kirsch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // Create a variable of type float, and assign it a value
    
    float numberOne = 3.99;
    
    // Create another
    
    float numberTwo = 42.0;
    
    // Create double
    
    double sumEm = numberOne + numberTwo;
    
    // And print
    
    printf("The sum of the numbs is %f.\n", sumEm);
    
    // Return 0 and exit
    
    return 0;
    
}

