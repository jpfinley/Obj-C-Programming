//
//  main.m
//  BMITime
//
//  Created by Jeff Kirsch on 2/17/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create an instance of Person
        
        Employee * person = [[Employee alloc] init];
        
        // Give the instance variables interesting values
        
        [person setWeightInKilos:96];
        [person setHeightInMeters:1.8];
        [person setEmployeeID:15];
        
        // Call the BMI method
        
        float bmi = [person bodyMassIndex];
        NSLog(@"Employee %d has a BMI of %f", [person employeeID], bmi);
        
    }
    return 0;
}

