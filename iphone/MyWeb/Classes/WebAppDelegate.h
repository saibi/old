//
//  WebAppDelegate.h
//  Web
//
//  Created by saibi on 10. 7. 31..
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
	IBOutlet UIWebView *webView;
	IBOutlet UIActivityIndicatorView * activeView;
	IBOutlet UITextField* urlField;
	IBOutlet UIBarButtonItem* backButton;
	IBOutlet UIBarButtonItem* fwdButton;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

- (IBAction) loadUrl: (UITextField *) sender; // read webpage


@end

