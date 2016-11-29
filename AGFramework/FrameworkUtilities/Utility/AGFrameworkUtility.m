//
//  AGFrameworkUtility.m
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import "AGFrameworkUtility.h"

@implementation AGFrameworkUtility

+ (void) log:(NSString *)logInfo
    logLevel:(AGFrameworkLogLevel)level {
    
    switch ([AGFramework frameworkLogLevel]) {
        case eAGFrameworkLogLevelAll: {
            NSLog(@"%@",logInfo);
        }
            break;
            
        case eAGFrameworkLogLevelMinimal: {
            if (level == eAGFrameworkLogLevelMinimal) {
                NSLog(@"%@",logInfo);
            }
        }
            break;
            
        case eAGFrameworkLogLevelError: {
            if (level == eAGFrameworkLogLevelError) {
                NSLog(@"%@",logInfo);
            }
        }
            break;
            
        default:
            break;
    }
}

@end
