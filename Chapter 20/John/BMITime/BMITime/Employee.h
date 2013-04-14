//
//  Employee.h
//  BMITime
//
//  Created by John Finley on 3/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@class Asset;

@interface Employee : Person
{
    int employeeID;
    NSMutableArray *assets;
}

@property int employeeID;
- (void)addAssetsObject:(Asset *)a;
- (unsigned int)valueofAssets;

@end
