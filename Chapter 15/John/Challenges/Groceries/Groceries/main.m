//
//  main.m
//  Groceries
//
//  Created by John Finley on 2/20/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // Create some grocery items
        NSString *item1 = @"Pork Chops";
        NSString *item2 = @"šea Salt";
        NSString *item3 = @"French Bread";
        NSString *item4 = @"Whole Wheat Pásta";
        NSString *item5 = @"Whiskey";
        
        // Start by creating an empty NSMutableArray object.
        NSMutableArray *groceryList = [NSMutableArray array];
        
        // Then add several grocery-like items to the array.
        [groceryList addObject:item1];
        [groceryList addObject:item2];
        [groceryList addObject:item3];
        [groceryList addObject:item4];
        [groceryList addObject:item5];

        // Finally, use fast enumeration to print out your grocery list.
        for (NSString *s in groceryList){
            NSLog(@"%@", s);
        }
    }
    return 0;
}

