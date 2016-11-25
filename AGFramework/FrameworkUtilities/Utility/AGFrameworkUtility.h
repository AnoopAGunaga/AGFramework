//
//  AGFrameworkUtility.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AGFramework.h"

@interface AGFrameworkUtility : NSObject

#define LOG(logInfo, level) [AGFrameworkUtility log:logInfo logLevel:level]


+ (void) log:(NSString *)logInfo
    logLevel:(AGFrameworkLogLevel)level;

@end
