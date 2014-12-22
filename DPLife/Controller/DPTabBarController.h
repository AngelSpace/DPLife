//
//  DPTabBarController.h
//  DPLife
//
//  Created by Administrator on 11/8/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPNavigationController.h"
#import "HomeController.h"
#import "UserController.h"
#import "FoundController.h"

@interface DPTabBarController : UITabBarController <UITabBarControllerDelegate>
@property (nonatomic, retain) HomeController *homeCtrl;
@property (nonatomic, retain) UserController *userCtrl;
@property (nonatomic, retain) FoundController *foundCtrl;

@end
