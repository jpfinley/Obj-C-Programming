//
//  main.m
//  Chapter 14 Challenge
//
//  Created by Jeff Kirsch on 2/16/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSHost *myComputer = [NSHost currentHost];
        NSString *computerNameString = [myComputer localizedName];
        NSLog(@"My computer is named %@", computerNameString);
    
    }
    return 0;
}

