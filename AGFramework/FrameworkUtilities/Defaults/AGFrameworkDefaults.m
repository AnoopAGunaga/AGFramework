//
//  AGFrameworkDefaults.m
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import "AGFrameworkDefaults.h"

#define USER_DEFAULTS  [NSUserDefaults standardUserDefaults]

static NSString *const kKeyAnalyticsInfo = @"AGAnalyticsInfo";
static NSString *const kAppUsageInfoKey = @"AppUsageInfo";
static NSString *const kAppLaunchCountKey = @"AppLaunchCountKey";

@implementation AGFrameworkDefaults

#pragma mark - App Analytics info

+ (void) saveEventInfo:(NSDictionary *)attributes {
    [USER_DEFAULTS setObject:attributes
                      forKey:kKeyAnalyticsInfo];
}

#pragma mark - App Luanch count

+ (void) setAppLaunchCount:(NSInteger)launchCount {
    [USER_DEFAULTS setInteger:launchCount
                       forKey:kAppLaunchCountKey];
}

+ (NSInteger) getAppLaunchCount {
    return [USER_DEFAULTS integerForKey:kAppLaunchCountKey];
}

#pragma mark - App Usage info

+ (void) setAppUsageInfo:(double)launchCount {
    [USER_DEFAULTS setDouble:launchCount
                       forKey:kAppUsageInfoKey];
}

+ (double) getAppUsageInfo {
    return [USER_DEFAULTS doubleForKey:kAppUsageInfoKey];
}

@end
