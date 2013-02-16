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
        BOOL DST = [timeZone isDaylightSavingTime];
        if (DST) {
            NSLog(@"It is currently DST in %@.", timeZone);
        } else if (!DST) {
            NSLog(@"It is not currently DST in %@.", timeZone);
        }
    }
    return 0;
}

