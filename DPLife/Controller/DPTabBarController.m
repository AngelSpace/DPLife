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

	self.viewControllers = navArray;
	UIImage *storeImgNor = [UIImage imageNamed:@"tab_user_nor.png"];
	UIImage *storeImgSel = [UIImage imageNamed:@"tab_user_sel.png"];
	nav1.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"首页" image:storeImgSel tag:0];
	[nav1.tabBarItem setFinishedSelectedImage:storeImgSel withFinishedUnselectedImage:storeImgNor];

	nav2.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:storeImgSel tag:1];
	[nav2.tabBarItem setFinishedSelectedImage:storeImgSel withFinishedUnselectedImage:storeImgNor];


	self.delegate = self;
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

/*
   #pragma mark - Navigation

   // In a storyboard-based application, you will often want to do a little preparation before navigation
   - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
   }
 */

@end
