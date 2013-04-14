//
//  Employee.m
//  BMITime
//
//  Created by Jeff Kirsch on 4/14/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import "Employee.h"

@implementation Employee

@synthesize employeeID;

- (float)bodyMassIndex

{
    float normalBMI = [super bodyMassIndex];
    return normalBMI * 0.9;
}

@end
