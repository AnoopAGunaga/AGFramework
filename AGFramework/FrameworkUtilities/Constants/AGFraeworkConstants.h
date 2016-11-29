//
//  AGFraeworkConstants.h
//  AGFramework
//
//  Created by Anoop Gunaga on 28/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#ifndef AGFraeworkConstants_h
#define AGFraeworkConstants_h

#pragma mark - MACROS
#pragma mark - 

#define NOTIFICATION_CENTER [NSNotificationCenter defaultCenter]
#define USER_DEFAULTS  [NSUserDefaults standardUserDefaults]
#define AGFRAMEWORK_SHARED_INSTANCE [AGFramework sharedInstance]

#pragma mark - 
#define LOG_ALL(logInfo) [AGFrameworkUtility log:logInfo logLevel:eAGFrameworkLogLevelAll]
#define LOG_MINIMAL(logInfo) [AGFrameworkUtility log:logInfo logLevel:eAGFrameworkLogLevelMinimal]
#define LOG_ERROR(logInfo) [AGFrameworkUtility log:logInfo logLevel:eAGFrameworkLogLevelError]

#pragma mark - ENUMS

typedef NS_ENUM(NSInteger, AGFrameworkLogLevel) {
    eAGFrameworkLogLevelAll = 1,
    eAGFrameworkLogLevelMinimal,
    eAGFrameworkLogLevelError,
};


#endif /* AGFraeworkConstants_h */
