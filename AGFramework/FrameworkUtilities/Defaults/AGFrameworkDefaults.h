//
//  AGFrameworkDefaults.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGFrameworkDefaults : NSObject

/*!
 *  Use this method to save eventInfo posted by the application into the userdefaults
 *  @param attributes The Event info in the form of key-value pair
 */
+ (void) saveEventInfo:(NSDictionary *)attributes;

/*!
 *  Use this method to save/update the application launch count (Number of times the app launched)
 *  @param launchCount The updated application launch count
 */
+ (void) setAppLaunchCount:(NSInteger)launchCount;

/*!
 *  Use this method to save/update app usage duration til date
 *  @param usageInfo The app usage duration value
 */
+ (void) setAppUsageInfo:(double)usageInfo;

/*!
 *  Use this method to get the app launch count
 *  @return The app launch count
 */
+ (NSInteger) getAppLaunchCount;

/*!
 *  Use this method to get the app launch count
 *  @return The app usage duration
 */
+ (double) getAppUsageInfo;



@end
