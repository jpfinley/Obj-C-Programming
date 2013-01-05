//
//  main.c
//  Chapter 5 Challenge
//
//  Created by John Finley on 1/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>


float remainingAngle(float firstAngle, float secondAngle){
    // 180-(30+60)
    float thirdAngle = 180 - (firstAngle + secondAngle);
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

// The output should be:
// "The thrid angle is 90.0"
