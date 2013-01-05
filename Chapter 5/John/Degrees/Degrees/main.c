//
//  main.c
//  Degrees
//
//  Created by John Finley on 1/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h>

// Declare a static variable & initialize it to 50 degrees
static float lastTemperature = 50.0;

float farenheightFromCelsius(float cel){
    lastTemperature = cel;
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celsius is %f Fahrenheight\n", cel, fahr);
    return fahr;
}

int main(int argc, const char * argv[])
{

    float freezeInC = 0;
    float freezeInF = farenheightFromCelsius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheight\n", freezeInF);
    printf("The last temperature converted was %f\n", freezeInF);
    return EXIT_SUCCESS;
}

