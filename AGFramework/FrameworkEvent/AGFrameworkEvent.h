//
//  AGFrameworkEvent.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGFrameworkEvent : NSObject

/*!
 *  Use this method to post the application event information to the SDK
 *  @param attributes The Event info in the form of key-value pair
 */
+ (void) postEventInfo:(NSDictionary *)attributes;

@end
