//
//  Asset.m
//  BMITime
//
//  Created by John Finley on 3/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "Asset.h"
#import "Employee.h"

@implementation Asset

@synthesize label, resaleValue, holder;

- (NSString *) description
{
    // Is holder non-nil?
    if ([self holder]) {
        return [NSString stringWithFormat:@"<%@: $%d, assigned to %@>", [self label], [self resaleValue], [self holder]];
    } else {
        return [NSString stringWithFormat:@"<%@: $%d unassigned>", [self label], [self resaleValue]];
    }
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
