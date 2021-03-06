//
//  main.m
//  BMITime
//
//  Created by Jeff Kirsch on 2/17/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instance of Person
        
        Person *person = [[Person alloc] init];
        
        // Give the instance variables interesting values
        
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        
        // Call the BMI method
        
        float bmi = [person bodyMassIndex];
        NSLog(@"person (%d, %f) has a BMI of %f", [person weightInKilos], [person heightInMeters], bmi);
        
    }
    return 0;
}

