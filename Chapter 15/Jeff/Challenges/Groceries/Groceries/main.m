//
//  main.m
//  Groceries
//
//  Created by Jeff Kirsch on 2/16/13.
//  Copyright (c) 2013 jeffkirsch. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Create the empty array
        NSMutableArray *groceryList = [NSMutableArray array];
        
        //Define some groceries
        NSString *itemOne = @"Oranges";
        NSString *itemTwo = @"Apples";
        NSString *itemThree = @"Meat";
        NSString *itemFour = @"Cheese";
        
        [groceryList addObject:itemOne];
        [groceryList addObject:itemTwo];
        [groceryList addObject:itemThree];
        [groceryList addObject:itemFour];
        
        for (NSString *currentItem in groceryList) {
            NSLog(@"We need some %@.",currentItem);
        }
        
    }
    return 0;
}

