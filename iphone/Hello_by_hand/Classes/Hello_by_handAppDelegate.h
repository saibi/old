//
//  Hello_by_handAppDelegate.h
//  Hello_by_hand
//
//  Created by saibi on 10. 7. 31..
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Hello_by_handViewController;

@interface Hello_by_handAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    Hello_by_handViewController *viewController;
	UILabel *label;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet Hello_by_handViewController *viewController;
@property (nonatomic, retain) UILabel *label; // get/set method 자동 생성, retain

@end

