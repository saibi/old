//
//  WebAppDelegate.m
//  Web
//
//  Created by saibi on 10. 7. 31..
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "WebAppDelegate.h"

@implementation WebAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	
    [window makeKeyAndVisible];
	
	NSURL * url = [ NSURL URLWithString: @"http://www.google.com" ];
	NSURLRequest * urlReq = [ NSURLRequest requestWithURL: url ];
	
	[webView loadRequest:urlReq ];
	
	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}

- (IBAction) loadUrl: (UITextField *)sender {
	NSString * urlStr = [sender text];
	NSString * tmp1 = @"Hello world";
	NSString * tmp2 = [ NSString stringWithFormat: @"number = %04d", 18 ];
	
	NSLog ( @"URL object = %@.", urlStr) ;
	NSLog ( [tmp1 substringToIndex: 3] );
	NSLog (tmp2);
	
	NSURL * url = [ NSURL URLWithString: urlStr ];
	
	NSURLRequest * urlReq = [ NSURLRequest requestWithURL: url ];
	
	[webView loadRequest: urlReq ];
	
}

- (BOOL) webView: (UIWebView *) view
shouldStartLoadWithRequest: (NSURLRequest *) req
navigationType: (UIWebViewNavigationType) navType
{
	NSLog( @"test" );
	NSLog( [[req URL] host] );
	if ( [ [ [ req URL ] host ] isEqualToString: @"m.daum.net" ] ) {
		NSLog( @"Rejected.");
		return (NO);
	} 
	return (YES);
}


- (void) updateWebBrowser {
	BOOL loading = webView.loading;
	BOOL animating = [ activeView isAnimating ];
	
	NSLog( @"DEBUG updateWebBrowser" );
	if ( (loading == YES ) && ( animating == NO) ) {
		NSLog( @"DEBUG start animating" );
		[ activeView startAnimating ];
	} else if ( ( loading == NO ) && ( animating == YES ) ) {
		NSLog( @"DEBUG stop animating" );
		[ activeView stopAnimating ];
	}
	
	NSURL * url = [webView.request URL ];
	NSString * urlStr = [ url absoluteString ];
	urlField.text = urlStr;
	
	backButton.enabled = webView.canGoBack;
	fwdButton.enabled = webView.canGoForward;
}


- (void) webViewDidStartLoad: (UIWebView *) view
{
	[ self updateWebBrowser ];
}

- (void) webViewDidFinishLoad: (UIWebView *) view 
{
	[ self updateWebBrowser ];
}


- (void) webView: (UIWebView *) view
didFailLoadWithError: (NSError *) error
{
	NSLog( @"DEBUG didfail" );
	
}

@end
