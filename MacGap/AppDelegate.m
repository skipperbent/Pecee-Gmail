//
//  AppDelegate.m
//  MacGap
//
//  Created by Alex MacCaw on 08/01/2012.
//  Copyright (c) 2012 Twitter. All rights reserved.
//

#import "AppDelegate.h"
#import "WindowController.h"
#import "JSON.h"

@implementation AppDelegate

- (void)applicationWillFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

-(BOOL)applicationShouldHandleReopen:(NSApplication*)application hasVisibleWindows:(BOOL)visibleWindows{
    if(!visibleWindows){
        [self.windowController.window makeKeyAndOrderFront: nil];
    }
    return YES;
}

- (void) applicationDidFinishLaunching:(NSNotification *)aNotification {
    
    NSString *configPath = [[NSBundle mainBundle] pathForResource:@"./public/config" ofType:@"json"];
    NSMutableDictionary *config = [[[NSString alloc] initWithContentsOfFile:configPath encoding:NSUTF8StringEncoding error:NULL] JSONObject];
    
    NSString* startUrl = [config objectForKey:@"startUrl"];
    
    self.windowController = [[WindowController alloc] initWithURL: startUrl];
    [self.windowController setWindowParams];
    [self.windowController showWindow:self];
    [[NSUserNotificationCenter defaultUserNotificationCenter] setDelegate:self];
}

- (BOOL)userNotificationCenter:(NSUserNotificationCenter *)center shouldPresentNotification:(NSUserNotification *)notification {
    return YES;
}
@end