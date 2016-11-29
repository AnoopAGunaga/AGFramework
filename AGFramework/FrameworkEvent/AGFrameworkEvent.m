//
//  AGFrameworkEvent.m
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import "AGFrameworkEvent.h"
#import "AGFrameworkDefaults.h"
#import "AGFramework.h"
#import "AGFrameworkException.h"
#import "AGFrameworkUtility.h"

@interface AGFrameworkEvent ()

@end

@implementation AGFrameworkEvent

+ (void) postEventInfo:(NSDictionary *)attributes {
    
    if (YES == [AGFramework activationStatus]) {
        LOG_MINIMAL(@"EVENTS POSTED SUCCESSFULLY");
        [AGFrameworkDefaults saveEventInfo:attributes];
    } else {
        LOG_MINIMAL(@"EVENTS INFO POST FAILED");
        [AGFrameworkException raiseSDKNotInitialisedException];
    }
}

@end
