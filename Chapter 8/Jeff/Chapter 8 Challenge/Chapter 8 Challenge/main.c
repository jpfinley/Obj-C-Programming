//
//  main.c
//  Chapter 8 Challenge
//
//  Created by Jeff Kirsch on 2/9/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#include <stdio.h>
#include <math.h>


int main(int argc, const char * argv[])
{
    printf("A short number starts at %.0f until %.0f\n", -(pow(2,sizeof(short)*8-1)), pow(2,sizeof(short)*8-1)-1);
    printf("A unsigned short number starts at 0 until %.0f\n", pow(2,sizeof(short)*8)-1);
    
    return 0;
}

