//
//  WebAppDelegate.h
//  Web
//
//  Created by saibi on 10. 8. 7..
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UIWebView * webView;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

