//
//  Part5ProjectAppDelegate.h
//  Part5Project
//
//  Created by jeff on 5/4/09.
//  Copyright Jeff LaMarche 2009. All rights reserved.
//

@class GLViewController;

@interface Part5ProjectAppDelegate : NSObject <UIApplicationDelegate>
{
	UIWindow				*window;
	GLViewController		*controller;
}
@property (nonatomic, strong) IBOutlet UIWindow *window;
@property (nonatomic, strong) IBOutlet GLViewController *controller;
@end
