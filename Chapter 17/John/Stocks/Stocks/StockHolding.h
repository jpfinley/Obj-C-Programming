//
//  StockHolding.h
//  Stocks
//
//  Created by John Finley on 3/1/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
{
    float purchaseSharePrice;
    float currentSharePrice;
    int numberOfShares;
    char nameOfCompany;
}

@property float purchaseSharePrice, currentSharePrice;
@property int numberOfShares;
@property char nameOfCompany;

- (float)costInDollars;
- (float)valueInDollars;

@end
