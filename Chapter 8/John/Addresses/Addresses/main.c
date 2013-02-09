//
//  main.c
//  Addresses
//
//  Created by John Finley on 1/8/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#include <stdio.h>

int main(int argc, const char * argv[])
{
    int i = 17;
    int *addressOfI = &i;
    printf("i stores its value at %p\n", addressOfI);
    printf("main stores its value at %p\n", main);
    printf("the int stored at addressOfI is %d\n", *addressOfI);
    
    *addressOfI = 89;
    printf("now i is %d\n", i);
    
    printf("an int is %zu bytes\n", sizeof(int));
    printf("a pointer is %zu bytes\n", sizeof(*addressOfI));
    
    return 0;
}

