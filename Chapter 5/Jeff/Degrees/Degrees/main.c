//
//  main.c
//  Degrees
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>

float fahrenheitFromCelcius(float cel)
{
    float fahr = cel * 1.8 + 32.0;
    printf("%f Celcius is %f Fahrenheit\n", cel, fahr);
    return fahr;
}


int main(int argc, const char * argv[])
{
    float freezeInC = 0;
    float freezeInF = fahrenheitFromCelcius(freezeInC);
    printf("Water freezes at %f degrees Fahrenheit\n",
           freezeInF);
    return 0;
}

