//
//  main.m
//  Chapter 13 Challenge
//
//  Created by John Finley on 2/11/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSTimeZone *currentTimeZone = [NSTimeZone systemTimeZone];
        
        NSLog(@"The current time zone is %@.", currentTimeZone);
        
        // Printing out the Daylight Savings with an if-then switch
        if (currentTimeZone.isDaylightSavingTime) {
            NSLog(@"And, YES, we are currently in Daylight Savings.");
        } else {
            NSLog(@"And, NO, we are not currently in Daylight Savings.");
        }
        
        // Printing out the Daylight Savings based on the boolean
        // Tried to cast the BOOL as a string but didn't have documentation available.
        NSLog(@"Are we currently in Daylight Savings? %d", currentTimeZone.isDaylightSavingTime);
        
    }
    return 0;
}

