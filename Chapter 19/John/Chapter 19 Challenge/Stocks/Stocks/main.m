//
//  main.m
//  Stocks
//
//  Created by John Finley on 3/1/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // Create Apple
        StockHolding *shareAPPL = [[StockHolding alloc] init];
        [shareAPPL setPurchaseSharePrice: 548.32];
        [shareAPPL setCurrentSharePrice: 430.47];
        [shareAPPL setNumberOfShares: 1 ];
        [shareAPPL setNameOfCompany:@"Apple"];

        // Create Google
        StockHolding *shareGOOG = [[StockHolding alloc] init];
        [shareGOOG setPurchaseSharePrice: 635.67];
        [shareGOOG setCurrentSharePrice: 806.19];
        [shareGOOG setNumberOfShares: 15 ];
        [shareGOOG setNameOfCompany:@"Google"];

        // Create Microsoft
        StockHolding *shareMSFT = [[StockHolding alloc] init];
        [shareMSFT setPurchaseSharePrice: 32.0];
        [shareMSFT setCurrentSharePrice: 27.95];
        [shareMSFT setNumberOfShares: 300 ];
        [shareMSFT setNameOfCompany:@"Microsoft"];

        // create an array for the shares
        Portfolio *johnPortfolio = [[Portfolio alloc] init];

        // Fill them with the shares
        [johnPortfolio addStockHolding:shareAPPL];
        [johnPortfolio addStockHolding:shareGOOG];
        [johnPortfolio addStockHolding:shareMSFT];

        NSLog(@"I am worth $%f today.", [johnPortfolio valueOfPortfolio]);

    }
    return 0;
}
