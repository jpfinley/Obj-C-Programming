//
//  Person.m
//  BMITime
//
//  Created by Jeff Kirsch on 2/17/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import "Person.h"

@implementation Person

@synthesize heightInMeters, weightInKilos;

- (float)bodyMassIndex
{
    float h = [self heightInMeters];
    return [self weightInKilos] / (h * h);
}

@end
