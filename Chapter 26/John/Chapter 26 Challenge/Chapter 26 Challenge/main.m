//
//  main.m
//  Chapter 26 Challenge
//
//  Created by John Finley on 6/8/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSMutableArray *stocks = [[NSMutableArray alloc] init];
        
        NSMutableDictionary *stock;
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"AAPL"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:200]
                  forKey:@"shares"];
        [stock setObject:[NSDate date]
                  forKey:@"purchaseDate"];
        [stock setObject:[NSNumber numberWithFloat:564.62] forKey:@"sharePrice"];
        [stocks addObject:stock];
        
        stock = [NSMutableDictionary dictionary];
        [stock setObject:@"GOOG"
                  forKey:@"symbol"];
        [stock setObject:[NSNumber numberWithInt:160]
                  forKey:@"shares"];
        [stock setObject:[NSNumber numberWithBool:YES]
                  forKey:@"purchasedHolding"];
        [stock setObject:[NSData dataWithContentsOfFile:@"/tmp/google.png"]
                  forKey:@"corporateLogo"];
        [stocks addObject:stock];
        
        [stocks writeToFile:@"/tmp/challenge.plist"
                 atomically:YES];
        
        NSArray *stockList = [NSArray arrayWithContentsOfFile:@"/tmp/challenge.plist"];
        
        for (NSDictionary *d in stockList) {
            NSLog(@"I have %@ shares of %@", [d objectForKey:@"shares"], [d objectForKey:@"symbol"]);
        }
        
    }
    return 0;
}

