//
//  AGFrameworkException.m
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import "AGFrameworkException.h"
#import "AGFrameworkUtility.h"

@implementation AGFrameworkException

+ (void) raiseKeyMisMatchException {
    @try {
        NSException *keyMisMatchException = [NSException
                          exceptionWithName:@"SDK Initialisation Error"
                          reason:@"The registration/initialisation key is not valid"
                          userInfo:nil];
        @throw keyMisMatchException;
    }
    @catch(NSException *keyMisMatchException) {
        @throw keyMisMatchException;
        //LOG_ERROR(([NSString stringWithFormat:@"INVALID REGISTRATION KEY EXCEPTION : %@", keyMisMatchException.description]));
    }
}


+ (void) raiseSDKNotInitialisedException {
    @try {
        NSException *sdkNotInitialised = [NSException
                                             exceptionWithName:@"SDK Activation Error"
                                             reason:@"SDK not initialised"
                                             userInfo:nil];
        @throw sdkNotInitialised;
    }
    @catch(NSException *sdkNotInitialisedException) {
        @throw sdkNotInitialisedException;
        //LOG_ERROR(([NSString stringWithFormat:@"INVALID REGISTRATION KEY EXCEPTION : %@", sdkNotInitialisedException.description]));
    }
}

@end
