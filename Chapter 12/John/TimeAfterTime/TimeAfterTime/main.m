//
//  main.m
//  TimeAfterTime
//
//  Created by John Finley on 2/10/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSDate *now = [NSDate date];
        NSLog(@"The new date lives at %@", now);

        double seconds = [NSDate timeIntervalSinceReferenceDate];
        NSLog(@"It has been %f seconds since Jan 1, 2000.", seconds);
        
        NSDate *later = [now dateByAddingTimeInterval:4000000];
        NSLog(@"In four million seconds it will be %@", later);

    }
    return 0;
}

