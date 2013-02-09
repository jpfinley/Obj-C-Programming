//
//  main.c
//  Chapter 10 Challenge
//
//  Created by John Finley on 2/9/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

// The challenge is to write a program that will tell you what the
// date (4-30-2015 format is fine) will be in 4 million seconds.


#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{

    long secondsSince1970 = time(NULL);
    long inFourMilSeconds = secondsSince1970 + 4000000;
    printf("It has been %ld seconds since 1970\n\n", secondsSince1970);
    printf("It has been %ld seconds since 1970 + four million seconds\n\n", inFourMilSeconds);

    struct tm now;
    struct tm fourMillion;
    
    localtime_r(&secondsSince1970, &now);
    localtime_r(&inFourMilSeconds, &fourMillion);
    
    printf("The date is now %d-%d-%d\n", now.tm_mon + 1, now.tm_mday, now.tm_year + 1900);
    printf("In four million seconds the time will be %d-%d-%d\n", fourMillion.tm_mon + 1, fourMillion.tm_mday, fourMillion.tm_year +1900);
    return 0;
}

