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

        // Create a dictionary of executives
        NSMutableDictionary *executives = [[NSMutableDictionary alloc] init];

        for (int i = 0; i < 10; i++) {
            // Create an instance of Employee
            Employee *person = [[Employee alloc] init];

            // Give the instance values interesting names
            [person setWeightInKilos:90 + i];
            [person setHeightInMeters:1.8 - i/10.0];
            [person setEmployeeID:i];

            // Put the employees into the array
            [employees addObject:person];

            // Is this the first employee?
            if (i ==0){
                [executives setObject:person forKey:@"CEO"];
            }

            // Is this the second employee?
            if (i == 1){
                [executives setObject:person forKey:@"CTO"];
            }
        }

        NSMutableArray *allAssets = [[NSMutableArray alloc] init];

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

            // Add it to the All Assets array
            [allAssets addObject:asset];
        }

        NSLog(@"Employees %@", employees);

        NSLog(@"Giving up ownership on one employee");
        [employees removeObjectAtIndex:5];

        NSLog(@"allAssets: %@", allAssets);

        NSLog(@"executives: %@", executives);
        executives = nil;

//        NSPredicate *predicate = [NSPredicate predicateWithFormat:@"holder.valueOfAssets > 70"];
//        NSArray *toBeReclaimed = [allAssets filteredArrayUsingPredicate:predicate];
//        NSLog(@"toBeReclaimed: %@", toBeReclaimed);
//        toBeReclaimed = nil;

        NSLog(@"Giving up ownership of array");
        allAssets = nil;
        employees = nil;

    }
    return 0;
}
