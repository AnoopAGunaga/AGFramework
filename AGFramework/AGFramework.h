//
//  AGFramework.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, AGFrameworkLogLevel) {
    eAGFrameworkLogLevelAll = 1,
    eAGFrameworkLogLevelMinimal,
    eAGFrameworkLogLevelError,
};

//! Project version number for AGFramework.
FOUNDATION_EXPORT double AGFrameworkVersionNumber;

//! Project version string for AGFramework.
FOUNDATION_EXPORT const unsigned char AGFrameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <AGFramework/PublicHeader.h>
#import "AGFrameworkEvent.h"

#define NOTIFICATION_CENTER [NSNotificationCenter defaultCenter]


@interface AGFramework : NSObject

+ (instancetype) sharedInstance;
- (void) initialise:(NSString *)key logLevel:(AGFrameworkLogLevel)level;

- (NSInteger) appLaunchCount;
- (double) appUsageInfo;
- (BOOL) activationStatus;
- (AGFrameworkLogLevel) frameworkLogLevel;

@end


