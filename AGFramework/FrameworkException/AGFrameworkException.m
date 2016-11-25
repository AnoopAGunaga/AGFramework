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
        
        LOG(@"\n*************************************\n", eAGFrameworkLogLevelError);
        LOG(([NSString stringWithFormat:@"INVALID REGISTRATION KEY EXCEPTION : %@", keyMisMatchException.description]), eAGFrameworkLogLevelError);
        LOG(@"\n*************************************\n", eAGFrameworkLogLevelError);
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
    @catch(NSException *sdkNotInitialised) {
        
        LOG(@"\n*************************************\n", eAGFrameworkLogLevelError);
        LOG(([NSString stringWithFormat:@"INVALID REGISTRATION KEY EXCEPTION : %@", sdkNotInitialised.description]), eAGFrameworkLogLevelError);
        LOG(@"\n*************************************\n", eAGFrameworkLogLevelError);
        
    }
}

@end
