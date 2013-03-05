//
//  Employee.m
//  BMITime
//
//  Created by John Finley on 3/3/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex
{
    float normalBMI = [super bodyMassIndex];
    return 0.9 * normalBMI;
}

@end
