//
//  PhotoAppDelegate.m
//  Photo
//
//  Created by saibi on 10. 7. 30..
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "PhotoAppDelegate.h"

@implementation PhotoAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
