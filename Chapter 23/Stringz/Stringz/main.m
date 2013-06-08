//
//  main.m
//  Stringz
//
//  Created by John Finley on 6/8/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        NSMutableString *str = [[NSMutableString alloc] init];
        for (int i = 0; i < 10; i++){
            [str appendString:@"John is cool.\n"];
        }

        // Declare, but do not instantiate, an NSError object
        NSError *error = nil;

        // Pass the NSError pointer by reference to the NSString
        BOOL success = [str writeToFile:@"/tmp/cool.txt"
              atomically:YES
                encoding:NSUTF8StringEncoding
                   error:&error];

        // Test the bool and query the error if the write failed
        if (success){
            NSLog(@"done writing /tmp/cool.txt");
        } else {
            NSLog(@"writing /tmp/cool.txt failed: %@", [error localizedDescription]);
        }

    }
    return 0;
}
