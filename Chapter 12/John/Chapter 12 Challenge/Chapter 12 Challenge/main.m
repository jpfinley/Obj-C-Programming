//
//  main.m
//  Chapter 12 Challenge
//
//  Created by John Finley on 2/10/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1984];
        [comps setMonth:10];
        [comps setDay:26];
        [comps setHour:12];
        [comps setMinute:11];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSLog(@"I was born on %@", dateOfBirth);

        NSDate *now = [NSDate date];
        NSLog(@"Today's date is %@", now);
        
        double seconds = [now timeIntervalSinceDate:dateOfBirth];
        NSLog(@"It has been %f seconds since I was born.", seconds);
        
    }
    return 0;
}

