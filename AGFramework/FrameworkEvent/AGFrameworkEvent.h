//
//  AGFrameworkEvent.h
//  AGFramework
//
//  Created by Anoop Gunaga on 24/11/16.
//  Copyright © 2016 Robosoft. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AGFrameworkEvent : NSObject

+ (void) postEventInfo:(NSDictionary *)attributes;

@end
