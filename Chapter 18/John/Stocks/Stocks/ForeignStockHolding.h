//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by John Finley on 3/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding
{
    float conversionRate;
}
@property float conversionRate;

@end
