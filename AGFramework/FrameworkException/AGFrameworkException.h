//
//  AGFrameworkException.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGFrameworkException : NSObject

+ (void) raiseKeyMisMatchException;
+ (void) raiseSDKNotInitialisedException;

@end
