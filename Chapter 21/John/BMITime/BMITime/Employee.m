//
//  Employee.m
//  BMITime
//
//  Created by John Finley on 3/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "Employee.h"
#import "Asset.h"

@implementation Employee

@synthesize employeeID;

- (void)addAssetsObject:(Asset *)a
{
    // Is assets nil?
    if (!assets) {
        // Create the array
        assets = [[NSMutableSet alloc] init];
    }
    [assets addObject:a];
    [a setHolder:self];
}

- (unsigned int)valueofAssets
{
    //Sum up the resale value of all assets
    unsigned int sum = 0;
    for (Asset *a in assets) {
        sum += [a resaleValue];
    }
    return sum;
}

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return 0.9 * normalBMI;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"<Employee %d: $%d in assets>", [self employeeID], [self valueofAssets]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
