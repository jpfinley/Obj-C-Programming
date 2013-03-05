//
//  Asset.h
//  BMITime
//
//  Created by John Finley on 3/5/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Asset : NSObject
{
    NSString *label;
    unsigned int resaleValue;
}
@property (strong) NSString *label;
@property unsigned int resaleValue;

@end
