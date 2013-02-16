//
//  main.m
//  Chapter 12 Challenge
//
//  Created by Jeff Kirsch on 2/16/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSDateComponents *comps = [[NSDateComponents alloc] init];
        [comps setYear:1982];
        [comps setMonth:1];
        [comps setDay:26];
        [comps setHour:6];
        [comps setMinute:35];
        [comps setSecond:0];
        
        NSCalendar *g = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
        NSDate *dateOfBirth = [g dateFromComponents:comps];
        
        NSDate *now = [NSDate date];
        
        double d = [now timeIntervalSinceDate:dateOfBirth];
                         
        NSLog(@"I was born on %@", dateOfBirth);
        NSLog(@"Today is %@", now);
        NSLog(@"I was born %f seconds ago", d);
        
    }
    return 0;
}

