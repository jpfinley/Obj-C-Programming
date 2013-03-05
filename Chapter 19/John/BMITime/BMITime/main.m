//
//  main.m
//  BMITime
//
//  Created by John Finley on 3/1/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Employee.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // Create an instance of Person
        Employee *john = [[Employee alloc] init];

        // Give the instance interesting values
        [john setWeightInKilos: 96];
        [john setHeightInMeters: 1.8];
        [john setEmployeeID: 001];

        // Get the BMI for John
        float johnBMI = [john bodyMassIndex];
        NSLog(@"Employee %d has a body mass index of %f", [john employeeID], johnBMI);

    }
    return 0;
}
