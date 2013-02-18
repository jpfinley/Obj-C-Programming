//
//  Person.m
//  BMITime
//
//  Created by Jeff Kirsch on 2/17/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)setHeightInMeters:(float)h
{
    heightInMeters = h;
}
- (void)setWeightInKilos:(int)w
{
    weightInKilos = w;
}
- (float)bodyMassIndex
{
    return weightInKilos / (heightInMeters * heightInMeters);
}

@end
