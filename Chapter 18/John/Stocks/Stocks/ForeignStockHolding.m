//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by John Finley on 3/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "ForeignStockHolding.h"
#import "StockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    return [super costInDollars] * [self conversionRate];
}
- (float)valueInDollars
{
    return [super valueInDollars] * [self conversionRate];
}

@end
