//
//  DPTabBarController.m
//  DPLife
//
//  Created by Administrator on 11/8/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "DPTabBarController.h"

@interface DPTabBarController ()

@end

@implementation DPTabBarController
@synthesize userCtrl, storeCtrl;


- (void)viewDidLoad
{
	[super viewDidLoad];
	NSMutableArray *navArray = [NSMutableArray array];
	userCtrl = [[UserController alloc] init];
	storeCtrl = [[StoreController alloc] init];

	DPNavigationController *nav1 = [[DPNavigationController alloc] initWithRootViewController:storeCtrl];
	[navArray addObject:nav1];

	DPNavigationController *nav2 = [[DPNavigationController alloc] initWithRootViewController:userCtrl];
	[navArray addObject:nav2];

	DPNavigationController *nav3 = [[DPNavigationController alloc] initWithRootViewController:userCtrl];
	[navArray addObject:nav3];

	DPNavigationController *nav4 = [[DPNavigationController alloc] initWithRootViewController:userCtrl];
	[navArray addObject:nav4];

	self.viewControllers = navArray;
	UIImage *homeImgNor = [UIImage imageNamed:@"home_footbar_icon_dianping.png"];
	UIImage *homeImgSel = [UIImage imageNamed:@"home_footbar_icon_dianping_pressed.png"];

	UIImage *groupImgNor = [UIImage imageNamed:@"home_footbar_icon_group.png"];
	UIImage *groupImgSel = [UIImage imageNamed:@"home_footbar_icon_group_pressed.png"];

	UIImage *foundImgNor = [UIImage imageNamed:@"home_footbar_icon_found.png"];
	UIImage *foundImgSel = [UIImage imageNamed:@"home_footbar_icon_found_pressed.png"];

	UIImage *myImgNor = [UIImage imageNamed:@"home_footbar_icon_my.png"];
	UIImage *myImgSel = [UIImage imageNamed:@"home_footbar_icon_my_pressed.png"];

	if ([homeImgNor respondsToSelector:@selector(imageWithRenderingMode:)]) {
		homeImgNor = [homeImgNor imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
		homeImgSel = [homeImgSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
		groupImgNor = [groupImgNor imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
		groupImgSel = [groupImgSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
		foundImgNor = [foundImgNor imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
		foundImgSel = [foundImgSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
		myImgNor = [myImgNor imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
		myImgSel = [myImgSel imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
	}

	nav1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:homeImgSel tag:0];
	[nav1.tabBarItem setFinishedSelectedImage:homeImgSel withFinishedUnselectedImage:homeImgNor];

	nav2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"团购" image:groupImgNor tag:1];
	[nav2.tabBarItem setFinishedSelectedImage:groupImgSel withFinishedUnselectedImage:groupImgNor];

	nav3.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"发现" image:foundImgNor tag:2];
	[nav3.tabBarItem setFinishedSelectedImage:foundImgSel withFinishedUnselectedImage:foundImgNor];

	nav4.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:myImgNor tag:3];
	[nav4.tabBarItem setFinishedSelectedImage:myImgSel withFinishedUnselectedImage:myImgNor];

	[[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor grayColor], UITextAttributeTextColor, nil] forState:UIControlStateNormal];
	[[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor], UITextAttributeTextColor, nil] forState:UIControlStateSelected];
	self.delegate = self;
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
