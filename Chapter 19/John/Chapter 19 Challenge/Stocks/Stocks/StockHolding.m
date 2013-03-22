//
//  StockHolding.m
//  Stocks
//
//  Created by John Finley on 3/1/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding

@synthesize numberOfShares, purchaseSharePrice, currentSharePrice, nameOfCompany;

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}
-(float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
