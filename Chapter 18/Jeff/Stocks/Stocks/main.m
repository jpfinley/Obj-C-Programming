//
//  main.m
//  Stocks
//
//  Created by Jeff Kirsch on 4/14/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ForeignStockHolding.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        StockHolding *stockOne = [[StockHolding alloc] init];
        StockHolding *stockTwo = [[StockHolding alloc] init];
        StockHolding *stockThree = [[StockHolding alloc] init];
        ForeignStockHolding *stockFour = [[ForeignStockHolding alloc] init];
        
        [stockOne setPurchaseSharePrice:2.30];
        [stockOne setCurrentSharePrice:4.50];
        [stockOne setNumberOfShares:40];
        
        [stockTwo setPurchaseSharePrice:12.19];
        [stockTwo setCurrentSharePrice:10.56];
        [stockTwo setNumberOfShares:90];
        
        [stockThree setPurchaseSharePrice:45.10];
        [stockThree setCurrentSharePrice:49.51];
        [stockThree setNumberOfShares:210];
        
        [stockFour setPurchaseSharePrice:2.30];
        [stockFour setCurrentSharePrice:4.50];
        [stockFour setNumberOfShares:40];
        [stockFour setConversionRate:.94];
        
    
        NSMutableArray *stockList = [NSMutableArray array];
        
        [stockList addObject:stockOne];
        [stockList addObject:stockTwo];
        [stockList addObject:stockThree];
        [stockList addObject:stockFour];
        
        for (StockHolding *s in stockList) {
            
            NSLog(@"The stock cost %f and is now worth %f", [s costInDollars], [s valueInDollars]);
            
        }
        
    }
    return 0;
}

