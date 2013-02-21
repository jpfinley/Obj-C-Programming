//
//  main.m
//  Compare
//
//  Created by John Finley on 2/20/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Read in a huge file as a string, ignoring all possibility of error
        NSString *nameString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSString *wordString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];

        // Break them into an arrays of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        // Go through the array one string at a time
        for (NSString *w in words) {
            for (NSString *n in names) {
            
                // Was it found?
                if ([w caseInsensitiveCompare:n] == NSOrderedSame) {
                    // Is it a common word?
                    if ([w compare:n options:NSLiteralSearch]) {
                        NSLog(@"%@ and %@ are ascending", n, w);
                    }
                }
            }
        }
    }
    return 0;
}
