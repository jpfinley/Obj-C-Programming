//
//  main.m
//  Stocks
//
//  Created by John Finley on 3/1/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create Apple
        StockHolding *shareAPPL = [[StockHolding alloc] init];
        [shareAPPL setPurchaseSharePrice: 45.678888888];
        [shareAPPL setCurrentSharePrice: 500.4567];
        [shareAPPL setNumberOfShares: 1 ];
//        [shareAPPL setNameOfCompany:@"Apple"];

        // Create Google
        StockHolding *shareGOOG = [[StockHolding alloc] init];
        [shareGOOG setPurchaseSharePrice: 45.678888888];
        [shareGOOG setCurrentSharePrice: 500.4567];
        [shareGOOG setNumberOfShares: 15 ];
//        [shareGOOG setNameOfCompany:@"Google"];
        
        // Create Microsoft
        StockHolding *shareMSFT = [[StockHolding alloc] init];
        [shareMSFT setPurchaseSharePrice: 45.678888888];
        [shareMSFT setCurrentSharePrice: 500.4567];
        [shareMSFT setNumberOfShares: 1000 ];
//        [shareMSFT setNameOfCompany:@"Microsoft"];

        // create an array for the shares
        NSMutableArray *portfolio = [[NSMutableArray alloc] init];
        
        // Fill them with the shares
        [portfolio addObject:shareAPPL];
        [portfolio addObject:shareGOOG];
        [portfolio addObject:shareMSFT];

        // Then iterate through the array printing out the value of each.
        for (StockHolding *s in portfolio) {
            int shareNumber = [s numberOfShares];
//            NSString *shareName = [s nameOfCompany];
            NSLog(@"I own %d shares of this company", shareNumber);
        }
    }
    return 0;
}

