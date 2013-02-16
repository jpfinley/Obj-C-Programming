//
//  main.m
//  Chapter 13 Challenge
//
//  Created by Jeff Kirsch on 2/16/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *timeZone = [NSTimeZone systemTimeZone];
        
        // ask timeZone if it is in DST
        if ([timeZone isDaylightSavingTime]) {
            NSLog(@"It is currently DST in %@.", timeZone);
        } else if (![timeZone isDaylightSavingTime]) {
            NSLog(@"It is not currently DST in %@.", timeZone);
        }
    }
    return 0;
}

