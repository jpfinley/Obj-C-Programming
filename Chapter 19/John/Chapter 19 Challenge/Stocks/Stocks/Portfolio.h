//
//  Portfolio.h
//  Stocks
//
//  Created by John Finley on 3/21/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
{
    NSMutableArray *stockHoldings;
}

- (void)addStockHolding:(StockHolding *)s;
- (float)valueOfPortfolio;

@end
