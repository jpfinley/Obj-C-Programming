//
//  main.c
//  Chapter Ten Challenge
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[])
{

    long secondsSince1970 = time(NULL);
    printf("it has been %ld seconds since 1970\n", secondsSince1970);
    
    struct tm now;
    localtime_r(&secondsSince1970, &now);
    printf("the time is %d:%d:%d\n", now.tm_hour, now.tm_min, now.tm_sec);
    printf("the date is now %d-%d-%d", (now.tm_mon + 1), now.tm_mday, (now.tm_year + 1900));
    struct tm later;
    later = *(&now + 4000000);
    printf("the date will be %d-%d-%d", (later.tm_mon + 1), later.tm_mday, (later.tm_year + 1900));
    return 0;
}

