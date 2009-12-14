//
//  DemoAppAppDelegate.m
//  DemoApp
//
//  Created by aa on 12/11/09.
//  Copyright Yammer, Inc 2009. All rights reserved.
//

#import "DemoAppAppDelegate.h"
#import "Menu.h"
#import "Messages.h"

@implementation DemoAppAppDelegate

- (void)applicationDidFinishLaunching:(UIApplication *)application {    

  TTNavigator* navigator = [TTNavigator navigator];
  navigator.supportsShakeToReload = YES;
  navigator.persistenceMode = TTNavigatorPersistenceModeNone;
  
  TTURLMap* map = navigator.URLMap;
  
  [map from:@"*" toViewController:[TTWebController class]];
  [map from:@"demo://menu" toViewController:[Menu class]];
  [map from:@"demo://messages" toViewController:[Messages class]];
  
  [navigator openURL:@"demo://menu" animated:NO];
}


- (void)dealloc {
  [super dealloc];
}


@end
