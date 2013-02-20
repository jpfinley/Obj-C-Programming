//
//  main.m
//  Chapter 14 Challenge
//
//  Created by John Finley on 2/20/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        

        NSHost *myHost = [NSHost currentHost];
        NSString *hostName = [myHost localizedName];
        NSLog(@"My hostname is %@.", hostName);
        
    }
    return 0;
}

