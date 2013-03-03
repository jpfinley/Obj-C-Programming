//
//  Person.h
//  BMITime
//
//  Created by John Finley on 3/1/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    // has two instance variables
    float heightInMeters;
    int weightInKilos;
}

// set those instance variables with these methods
//    - (void)setHeightInMeters:(float)h;
//    - (void)setWeightInKilos:(int)w;

// Implement accessors
@property float heightInMeters;
@property int weightInKilos;

// this method calculates the Body Mass Index
- (float)bodyMassIndex;

@end
