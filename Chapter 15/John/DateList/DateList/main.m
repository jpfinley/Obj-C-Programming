//
//  main.m
//  DateList
//
//  Created by John Finley on 2/20/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create three NSDate objects
        NSDate *now = [NSDate date];
        NSDate *tomorrow = [now dateByAddingTimeInterval:24 * 60 * 60];
        NSDate *yesterday = [now dateByAddingTimeInterval:-24 * 60 * 60];
        
        // Create an new array
        NSMutableArray *dateList = [NSMutableArray array];

        // Add the dates to the array
        [dateList addObject:now];
        [dateList addObject:tomorrow];
        
        // Put yesterday at the beginning of the list
        [dateList insertObject:yesterday atIndex:0];
                                    
        // How many dates are there?
        NSLog(@"There are %lu dates in the array.", (unsigned long)[dateList count]);
        
        // Print a couple
        NSLog(@"The first date is %@", [dateList objectAtIndex:0]);
        NSLog(@"The thrid date is %@", [dateList objectAtIndex:2]);
        
        // Iterate over the array and print out all the dates
        for (NSDate *d in dateList){
            NSLog(@"Here is a date: %@", d);
        }
        
        // Remove yesterday
        [dateList removeObjectAtIndex:0];
        NSLog(@"Now the first date is %@", [dateList objectAtIndex:0]);

    }
    return 0;
}

