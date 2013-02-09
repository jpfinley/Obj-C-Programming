//
//  main.c
//  Triangle
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>

float remainingAngle(float firstAngle, float secondAngle)
{
    float thirdAngle = 180 - firstAngle - secondAngle;
    return thirdAngle;
}

int main(int argc, const char * argv[])
{

    float angleA = 30.0;
    float angleB = 60.0;
    float angleC = remainingAngle(angleA, angleB);
    printf("The third angle is %.2f\n", angleC);
    return 0;
}

