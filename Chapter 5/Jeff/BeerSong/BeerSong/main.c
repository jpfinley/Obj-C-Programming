//
//  main.c
//  BeerSong
//
//  Created by Jeff Kirsch on 1/15/13.
//  Copyright (c) 2013 Jeff Kirsch. All rights reserved.
//

#include <stdio.h>

void singTheSong(int numberOfBottles)
{
    if (numberOfBottles == 0) {
        printf("There are simply no more bottles of beer on the wall.\n");
    } else {
        printf("%d bottles of beer on the wall. %d bottles of beer.\n", numberOfBottles, numberOfBottles);
        int oneFewer = numberOfBottles -1;
        printf("Take one down, pass it around, %d bottles of beer on the wall.\n", oneFewer);
        singTheSong(oneFewer); // This function calls itself!
        printf("Put a bottle in the recyling, %d bottles in the bin.\n", numberOfBottles);
    }
}

int main(int argc, const char * argv[])
{

    // insert code here...
    singTheSong(99);
    return 0;
}

