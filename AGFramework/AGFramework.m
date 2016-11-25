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


- (void) initialise:(NSString *)key logLevel:(AGFrameworkLogLevel)level {
    
    if (![key isEqualToString:SDKValidationKey1]) {
        self.activationStatus = NO;
        [AGFrameworkException raiseKeyMisMatchException];
    } else {
        self.logLevel = level;
        self.activationStatus = YES;
    }
}

#pragma mark - SDK functionalities

- (AGFrameworkLogLevel) frameworkLogLevel {
    return _logLevel;
}

- (BOOL) activationStatus {
    return _activationStatus;
}

- (NSInteger) appLaunchCount {
    return [AGFrameworkDefaults getAppLaunchCount];
}

- (double) appUsageInfo {
    return [AGFrameworkDefaults getAppUsageInfo];
}

#pragma mark - SDK internal methods

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
    
    LOG(([NSString stringWithFormat:@"%ld",(long)launchCount]), eAGFrameworkLogLevelAll);
}

- (void) updateAppUsageInfo {
    NSTimeInterval usage = [AGFrameworkDefaults getAppUsageInfo];
    NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
    
    usage = usage + (currentTime - launchTime);
    [AGFrameworkDefaults setAppUsageInfo:usage];
    LOG(([NSString stringWithFormat:@"APP USAGE INFO : %lf",usage]), eAGFrameworkLogLevelAll);
}

#pragma mark - Notification handlers

- (void) appDidFinishLaunch {
    [self updateLaunchCount];
    launchTime = [NSDate timeIntervalSinceReferenceDate];
    LOG(@"APP DID FINISH LAUNCH", eAGFrameworkLogLevelAll);
    
}

- (void) appDidEnterBackground {
    LOG(@"APP DID ENTER BACKGROUND", eAGFrameworkLogLevelAll);
}

- (void) appWillEnterForeground {
    LOG(@"APP DID ENTER BACKGROUND", eAGFrameworkLogLevelAll);
}

- (void) appWillTerminate {
    [self updateAppUsageInfo];
    LOG(@"APP WILL TERMINATE", eAGFrameworkLogLevelAll);
}


@end
