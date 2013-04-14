//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Jeff Kirsch on 4/14/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding

@synthesize conversionRate;

- (float)costInDollars
{
    float localCost = [super costInDollars];
    return localCost * conversionRate;
}

- (float)valueInDollars
{
    float localValue = [super valueInDollars];
    return localValue * conversionRate;
}

@end
