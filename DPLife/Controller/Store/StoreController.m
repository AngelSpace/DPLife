//
//  StoreController.m
//  DPLife
//
//  Created by Administrator on 11/8/14.
//  Copyright (c) 2014 yp. All rights reserved.
//

#import "StoreController.h"

@interface StoreController ()

@end

@implementation StoreController

- (void)viewDidLoad
{
	[super viewDidLoad];
	DPRequest *request = [[DPRequest alloc] init];
	request.delegate = self;
	request.tag = 0;
	[request executeGetRequest:@"http://api.dianping.com/v1/business/find_businesses?city=北京&region=海淀区&category=火锅&has_coupon=1&sort=2&limit=1&page=1"];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)dpRequestSucceed:(DPRequest *)request JsonData:(NSDictionary *)json
{
    NSLog(@"%@",json);
    
}

- (void)dpRequestFailed:(DPRequest *)request Error:(NSError *)error
{
}

@end
