//
//  AGFramework.m
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AGFramework.h"
#import "AGFrameworkException.h"
#import "AGFrameworkDefaults.h"
#import "AGFrameworkUtility.h"

static AGFramework *frameworkObj;
static NSString *SDKValidationKey1 = @"dsfkhskjdfbksjdfkjsdf";

@interface AGFramework () {
    NSTimeInterval launchTime;
}

@property (assign, nonatomic) BOOL activationStatus;
@property (assign, nonatomic) AGFrameworkLogLevel logLevel;

@end

@implementation AGFramework

-(void)dealloc {
    frameworkObj = nil;
}

#pragma mark - Initialisation

+ (instancetype) sharedInstance {
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
        frameworkObj = [[AGFramework alloc] init];
        
        [frameworkObj registerForNotifications];
        frameworkObj.activationStatus = NO;
    });
    return frameworkObj;
}


+ (void) initialise:(NSString *)key logLevel:(AGFrameworkLogLevel)level {
  
    if (![key isEqualToString:SDKValidationKey1]) {
        AGFRAMEWORK_SHARED_INSTANCE.activationStatus = NO;
        [AGFrameworkException raiseKeyMisMatchException];
    } else {
        NSLog(@"AGFRAMEWORK version : %lf", AGFrameworkVersionNumber);
        AGFRAMEWORK_SHARED_INSTANCE.logLevel = level;
        AGFRAMEWORK_SHARED_INSTANCE.activationStatus = YES;
    }
}

#pragma mark - SDK functionalities

+ (AGFrameworkLogLevel) frameworkLogLevel {
    [AGFramework verifyActivationAndProceed];
    return AGFRAMEWORK_SHARED_INSTANCE.logLevel;
}

+ (BOOL) activationStatus {
    return AGFRAMEWORK_SHARED_INSTANCE.activationStatus;
}

+ (NSInteger) appLaunchCount {
    [AGFramework verifyActivationAndProceed];
    return [AGFrameworkDefaults getAppLaunchCount];
}

+ (double) appUsageInfo {
    [AGFramework verifyActivationAndProceed];
    return [AGFrameworkDefaults getAppUsageInfo];
}

#pragma mark - SDK internal methods

+ (void) verifyActivationAndProceed {
    if (NO == [AGFramework activationStatus]) {
        [AGFrameworkException raiseKeyMisMatchException];
    }
}

- (void) registerForNotifications {
    [NOTIFICATION_CENTER addObserver:self
                            selector:@selector(appDidFinishLaunch)
                                name:UIApplicationDidFinishLaunchingNotification
                              object:nil];
    
    [NOTIFICATION_CENTER addObserver:self
                            selector:@selector(appDidEnterBackground)
                                name:UIApplicationDidEnterBackgroundNotification
                              object:nil];
    
    [NOTIFICATION_CENTER addObserver:self
                            selector:@selector(appWillEnterForeground)
                                name:UIApplicationWillEnterForegroundNotification
                              object:nil];
    
    [NOTIFICATION_CENTER addObserver:self
                            selector:@selector(appWillTerminate)
                                name:UIApplicationWillTerminateNotification
                              object:nil];
}

- (void) updateLaunchCount {
    NSInteger launchCount = [AGFrameworkDefaults getAppLaunchCount];
    launchCount = launchCount + 1;
    [AGFrameworkDefaults setAppLaunchCount:launchCount];
    
    LOG_ALL(([NSString stringWithFormat:@"%ld",(long)launchCount]));
}

- (void) updateAppUsageInfo {
    NSTimeInterval usage = [AGFrameworkDefaults getAppUsageInfo];
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    
    usage = usage + (currentTime - launchTime);
    [AGFrameworkDefaults setAppUsageInfo:usage];
    LOG_ALL(([NSString stringWithFormat:@"APP USAGE INFO : %lf",usage]));
}

#pragma mark - Notification handlers

- (void) appDidFinishLaunch {
    [AGFRAMEWORK_SHARED_INSTANCE updateLaunchCount];
    launchTime = [NSDate timeIntervalSinceReferenceDate];
    LOG_ALL(@"APP DID FINISH LAUNCH");
}

- (void) appDidEnterBackground {
    LOG_ALL(@"APP DID ENTER BACKGROUND");
}

- (void) appWillEnterForeground {
    LOG_ALL(@"APP DID ENTER BACKGROUND");
}

- (void) appWillTerminate {
    [self updateAppUsageInfo];
    LOG_ALL(@"APP WILL TERMINATE");
}


@end
