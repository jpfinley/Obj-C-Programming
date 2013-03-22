//
//  Portfolio.m
//  Stocks
//
//  Created by John Finley on 3/21/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

- (void)addStockHolding:(StockHolding *)s
{
    if (!stockHoldings){
        stockHoldings = [[NSMutableArray alloc] init];
    }
    [stockHoldings addObject:s];
}

- (float)valueOfPortfolio
{
    float value = 0.0;
    for (StockHolding *s in stockHoldings) {
        value += [s valueInDollars];
    }
    return value;
}

@end
