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

/*!
 *  Use this method to handle the SDK logs based on user preference which he set during initiailisation
 *  @param logInfo The text to be logged
 *  @param level The SDK log preference level
 */
+ (void) log:(NSString *)logInfo
    logLevel:(AGFrameworkLogLevel)level;

@end
