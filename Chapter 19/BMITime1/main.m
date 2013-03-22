//
//  main.m
//  BMITime
//
//  Created by John Finley on 3/1/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
#import "Asset.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // Create an array of Employee objects
        NSMutableArray *employees = [[NSMutableArray alloc] init];

        for (int i = 0; i < 10; i++) {
            // Create an instance of Employee
            Employee *person = [[Employee alloc] init];

            // Give the instance values interesting names
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];

            // Put the employees into the array
            [employees addObject:person];
        }

        for (int i = 0; i < 10; i++) {
            // Create an asset
            Asset *asset = [[Asset alloc] init];

            // Give it an interesting label
            NSString *currentLabel = [NSString stringWithFormat:@"Laptop %d", i];
            [asset setLabel:currentLabel];
            [asset setResaleValue:i * 17];

            // Get a random number between 0 and 9 inclusive
            NSUInteger randomIndex = random() % [employees count];

            // Find that employee
            Employee *randomEmployee = [employees objectAtIndex:randomIndex];

            // Assign that asset to the employee
            [randomEmployee addAssetsObject:asset];
        }


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
