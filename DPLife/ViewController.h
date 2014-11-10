//
//  ViewController.h
//  DPLife
//
//  Created by Administrator on 11/8/14.
//  Copyright (c) 2014 yp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseController.h"
#import "DPRequest.h"

@interface ViewController : BaseController

- (NSDictionary *)parseQueryString:(NSString *)query;

@end
