//
//  main.m
//  Common Names
//
//  Created by Jeff Kirsch on 2/16/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        int count = 0;
        
        // Read in both files as strings
        NSString *properNamesString = [NSString stringWithContentsOfFile:@"/usr/share/dict/propernames"
                                                          encoding:NSUTF8StringEncoding
                                                             error:NULL
                                 ];
        NSString *wordsString = [NSString stringWithContentsOfFile:@"/usr/share/dict/words"
                                                          encoding:NSUTF8StringEncoding
                                                             error:NULL
                                 ];
        
        // Break into arrays
        NSArray *properNames = [properNamesString componentsSeparatedByString:@"\n"];
        NSArray *words = [wordsString componentsSeparatedByString:@"\n"];
        
        // Go through the first array one at a time to look for matches to the second
        
        for (NSString *p in properNames) {
            for (NSString *w in words) {
                if ([p caseInsensitiveCompare:w]) {
                        count++;
                        NSLog(@"%@ matches to %@.", p, w);
                   
                }
            }
        }
        
        NSLog(@"The total number of matches is %d", count);
        
    }
    return 0;
}

