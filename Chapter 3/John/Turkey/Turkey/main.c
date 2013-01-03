//
//  main.c
//  Turkey
//
//  Created by John Finley on 1/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{

    // Declar the variable 'weight' of type 'float'.
    float weight = 14.2;
    
    // Log it to the user
    printf("The turkey weighs %f.\n", weight);
    
    // Declare another variable of type float
    float cookingTime;
    
    // Calculate the cooking time and store it in a variable
    cookingTime = 15 + 15 * weight;
    
    // Log that to the user
    printf("Cook the turkey for %f minutes.\n", cookingTime);
    
    // End this function and return success
    return 0;
}
