//
//  main.c
//  TwoFloats
//
//  Created by John Finley on 1/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // In its main() function, declare two variables of type float and assign
    // each of them a number with a decimal point, like 3.14 or 42.0.
    // Declare another variable of type double and assign it the sum of the two floats.
    // Print the result using printf().
    
    float firstFloat = 3.14;
    
    float secondFloat = 42.0;
    
    double summation = firstFloat + secondFloat;
    
    printf("The sum of the two floats is %f.", summation);
    
    // This program will run with or without the 'return' statement...
    // return 0;
}
