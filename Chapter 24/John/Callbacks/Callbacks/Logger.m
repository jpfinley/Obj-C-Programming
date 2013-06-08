//
//  Logger.m
//  Callbacks
//
//  Created by John Finley on 6/8/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "Logger.h"

@implementation Logger

- (void)sayOuch:(NSTimer *)t
{
    NSLog(@"Ouch!");
}

// Called each time a chunk of data arrives
- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    NSLog(@"Received %lu bytes", [data length]);

    // Create a mutable data if it doesn't already exist
    if (!incomingData){
        incomingData = [[NSMutableData alloc] init];
    }

    [incomingData appendData:data];
}

// Called when the last bit of data has been processed
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    NSLog(@"Got it all");
    NSString *string = [[NSString alloc] initWithData:incomingData
                                             encoding:NSUTF8StringEncoding];
    incomingData = nil;
    NSLog(@"String has %lu characters", [string length]);

    // Uncomment to see the whole file
    // NSLog(@"The whole string is \n%@", string);
}

// Called if the fetch fails
- (void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    NSLog(@"CONNECTION FAILED: %@", [error localizedDescription]);
}

// Called when the system time zone changes
- (void)zoneChange:(NSNotification *)note
{
    NSLog(@"The system time zone has changed.");
}

@end
