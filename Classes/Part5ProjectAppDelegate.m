//
//  Part5ProjectAppDelegate.m
//  Part5Project
//
//  Created by jeff on 5/4/09.
//  Copyright Jeff LaMarche 2009. All rights reserved.
//

#import "Part5ProjectAppDelegate.h"
#import "GLViewController.h"
#import "GLView.h"
#import <QuartzCore/QuartzCore.h>


@implementation Part5ProjectAppDelegate
@synthesize window;
@synthesize controller;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
	CGRect	rect = [[UIScreen mainScreen] bounds];
	
	window.frame = rect;
	
	GLViewController *theController = [[GLViewController alloc] init];
	self.controller = theController;
	
	self.window.rootViewController = self.controller;

	GLView *glView = [[GLView alloc] initWithFrame:rect];
	[self.window addSubview:glView];

	
	theController.view = glView;
	
	glView.controller = controller;
	glView.animationInterval = 1.0 / kRenderingFrequency;
	[glView startAnimation];
	
	glView.layer.contentsScale = [UIScreen mainScreen].scale;
		
	return YES;
}

@end
