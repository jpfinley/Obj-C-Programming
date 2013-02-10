//
//  main.c
//  Memory Allocation
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>
#include <stdlib.h> //malloc and free are in stdlib

int main(int argc, const char * argv[])
{

    // Declare a pointer
    float *startOfBuffer;
    
    // Ask to use some bytes from the heap
    startOfBuffer = malloc(1000 * sizeof(float));
    
    // ...use the buffer here...
    
    // Relinquish your claim on the memory so it can be reused
    
    free(startOfBuffer);
    
    // Forget where that memory is
    startOfBuffer = NULL;
    
    return 0;
}

