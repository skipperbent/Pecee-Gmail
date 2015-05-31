//
//  AppDelegate.h
//  MacGap
//
//  Created by Alex MacCaw on 08/01/2012.
//  Copyright (c) 2012 Twitter. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class WindowController;

@interface AppDelegate : NSObject <NSApplicationDelegate,NSUserNotificationCenterDelegate>

@property (retain, nonatomic) WindowController *windowController;

@end
