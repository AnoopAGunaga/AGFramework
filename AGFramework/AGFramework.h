//
//  AGFramework.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AGFraeworkConstants.h"

//! Project version number for AGFramework.
FOUNDATION_EXPORT double AGFrameworkVersionNumber;

//! Project version string for AGFramework.
FOUNDATION_EXPORT const unsigned char AGFrameworkVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <AGFramework/PublicHeader.h>
#import "AGFrameworkEvent.h"

@interface AGFramework : NSObject

/*!
 *  Initialize the sdk. This must be called before any other API for the SDK is used.
 *  @param key License key for the SDK
 *  @param level SDK log level
 */
+ (void) initialize:(NSString *)key logLevel:(AGFrameworkLogLevel)level;

/*!
 *  Initialize the sdk. This must be called before any other API for the SDK is used.
 */
+ (void) initialise;

/*!
 *  Use this method to get the app launch count
 * @return The app launch count
 */
+ (NSInteger) appLaunchCount;


/*!
 *  Use this method to get the app usage duration from app install day till date
 * @return App usage duration
 */
+ (double) appUsageInfo;


/*!
 *  Use this method to get the activation state of the SDK
 * @return SDK activations status
 */
+ (BOOL) activationStatus;
/*!
 *  Use this method to get the activation state of the SDK
 * @return SDK activations status
 */
+ (BOOL) identifierForVendor;


/*!
 *  Use this method to get the activation state of the SDK
 * @return SDK activations status
 */
+ (NSString *) advertisingIdentifier;


/*!
 *  Use this method to get the active loglevel of the framework
 * @return active SDK log level
 */
+ (AGFrameworkLogLevel) frameworkLogLevel;

@end


