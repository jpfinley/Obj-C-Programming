//
//  main.c
//  Chapter 7 Chalenge
//
//  Created by John Finley on 1/8/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    for (int i = 99; i > -1; i-- ) {
        printf("%d\n", i);
        if (i % 5 == 0){
            printf("Found one!\n");
        }
    }
    return 0;
}

