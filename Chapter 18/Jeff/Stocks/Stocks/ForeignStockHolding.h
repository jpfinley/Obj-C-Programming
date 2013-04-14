//
//  ForeignStockHolding.h
//  Stocks
//
//  Created by Jeff Kirsch on 4/14/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import "StockHolding.h"

@interface ForeignStockHolding : StockHolding

{
    float conversionRate;
}

@property float conversionRate;

@end
