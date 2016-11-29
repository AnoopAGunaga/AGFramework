//
//  AGFrameworkException.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGFrameworkException : NSObject

/*!
 *  Use this method to raise the SDK internal exception when the user License key is not an athorised key
 */
+ (void) raiseKeyMisMatchException;

/*!
 *  Use this method to raise the SDK internal exception when user try to access SDK feature before SDK initiailisation
 */
+ (void) raiseSDKNotInitialisedException;

@end
