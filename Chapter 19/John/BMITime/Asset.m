//
//  Asset.m
//  BMITime
//
//  Created by John Finley on 3/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import "Asset.h"

@implementation Asset

@synthesize label, resaleValue;

- (NSString *) description
{
    return [NSString stringWithFormat:@"<%@: $%d >", [self label], [self resaleValue]];
}

- (void)dealloc
{
    NSLog(@"deallocating %@", self);
}

@end
