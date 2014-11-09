//
//  ViewController.m
//  DPLife
//
//  Created by Administrator on 11/8/14.
//  Copyright (c) 2014 yp. All rights reserved.
//

#import "ViewController.h"
#import "DPRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];

	DPRequest *request = [[DPRequest alloc] init];
	request.delegate = self;
	request.tag = 0;
	[request executeGetRequest:@"http://api.map.baidu.com/telematics/v3/weather?location=%E5%8C%97%E4%BA%AC&output=json&ak=W69oaDTCfuGwzNwmtVvgWfGH"];

	DPRequest *res = [[DPRequest alloc] init];
    res.delegate = self;
	res.tag = 1;
	[res executeGetRequest:@"http://api.map.baidu.com/telematics/v3/weather?location=%E5%8D%97%E4%BA%AC&output=json&ak=W69oaDTCfuGwzNwmtVvgWfGH"];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)dpReqiestSucceed:(DPRequest *)request JsonData:(NSDictionary *)json
{
	if (request.tag == 0) {
		NSLog(@"aaaaaa");
	}

	if (request.tag == 1) {
		NSLog(@"bbbbbb");
	}

	NSLog(@"%@", json);
}

- (void)dpReqiestFailed:(DPRequest *)request Error:(NSError *)error
{
}

@end
