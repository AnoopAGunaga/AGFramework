//
//  AGFrameworkDefaults.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGFrameworkDefaults : NSObject

+ (void) saveEventInfo:(NSDictionary *)attributes;
+ (void) setAppLaunchCount:(NSInteger)launchCount;
+ (void) setAppUsageInfo:(double)launchCount;

+ (NSInteger) getAppLaunchCount;
+ (double) getAppUsageInfo;

@end
