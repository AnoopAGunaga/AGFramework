//
//  AGFrameworkUtility.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AGFramework.h"

#define NOTIFICATION_CENTER [NSNotificationCenter defaultCenter]
#define USER_DEFAULTS  [NSUserDefaults standardUserDefaults]
#define AGFRAMEWORK_SHARED_INSTANCE [AGFramework sharedInstance]

#pragma mark -
#define LOG_ALL(logInfo) [AGFrameworkUtility log:logInfo logLevel:eAGFrameworkLogLevelAll]
#define LOG_MINIMAL(logInfo) [AGFrameworkUtility log:logInfo logLevel:eAGFrameworkLogLevelMinimal]
#define LOG_ERROR(logInfo) [AGFrameworkUtility log:logInfo logLevel:eAGFrameworkLogLevelError]

@interface AGFrameworkUtility : NSObject

/*!
 *  Use this method to handle the SDK logs based on user preference which he set during initiailisation
 *  @param logInfo The text to be logged
 *  @param level The SDK log preference level
 */
+ (void) log:(NSString *)logInfo
    logLevel:(AGFrameworkLogLevel)level;

@end
