//
//  Logger.h
//  Callbacks
//
//  Created by John Finley on 6/8/13.
//  Copyright (c) 2013 John Finley. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Logger : NSObject {
    NSMutableData *incomingData;
}
- (void)sayOuch:(NSTimer *)t;

@end
