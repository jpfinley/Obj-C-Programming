//
//  main.c
//  Chapter 7 Challenge
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i;
    for (i = 99; i >= 0; i -= 3) {
        printf("%d\n", i);
        if (i % 5 == 0) {
            printf("Found One!\n");
        }
    }
    return 0;
}

