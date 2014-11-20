//
//  DPTabBarController.h
//  DPLife
//
//  Created by Administrator on 11/8/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DPNavigationController.h"
#import "StoreController.h"
#import "UserController.h"

@interface DPTabBarController : UITabBarController <UITabBarControllerDelegate>
@property (nonatomic, retain) StoreController *storeCtrl;
@property (nonatomic, retain) UserController *userCtrl;

@end
