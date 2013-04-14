//
//  StockHolding.m
//  Stocks
//
//  Created by Jeff Kirsch on 4/14/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

- (float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
