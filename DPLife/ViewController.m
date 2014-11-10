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

//    http://api.dianping.com/v1/business/find_businesses?city=北京&region=海淀区&category=火锅&has_coupon=1&sort=2&limit=1&page=1&appkey=[appkey]&sign=[signature]
    
    
	DPRequest *request = [[DPRequest alloc] init];
	request.delegate = self;
	request.tag = 0;
	[request executeGetRequest:@"http://api.dianping.com/v1/business/find_businesses?city=北京&region=海淀区&category=火锅&has_coupon=1&sort=2&limit=1&page=1&appkey=369040022&sign=[signature]"];

	DPRequest *res = [[DPRequest alloc] init];
    res.delegate = self;
	res.tag = 1;
	[res executeGetRequest:@"http://api.map.baidu.com/telematics/v3/weather?location=%E5%8D%97%E4%BA%AC&output=json&ak=W69oaDTCfuGwzNwmtVvgWfGH"];
    
    NSDictionary *dict = [self parseQueryString:@"http://api.dianping.com/v1/business/find_businesses?city=北京&region=海淀区&category=火锅&has_coupon=1&sort=2&limit=1&page=1&appkey=369040022"];
}


-(NSDictionary *)parseQueryString:(NSString *)query {
    NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithCapacity:6];
    NSArray *pairs = [query componentsSeparatedByString:@"&"];
    
    for (NSString *pair in pairs) {
        NSArray *elements = [pair componentsSeparatedByString:@"="];
        
        if ([elements count] <= 1) {
            return nil;
        }
        
        NSString *key = [[elements objectAtIndex:0] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        NSString *val = [[elements objectAtIndex:1] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        [dict setObject:val forKey:key];
    }
    return dict;
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)dpRequestSucceed:(DPRequest *)request JsonData:(NSDictionary *)json
{
	if (request.tag == 0) {
		NSLog(@"aaaaaa");
	}

	if (request.tag == 1) {
		NSLog(@"bbbbbb");
	}

	NSLog(@"%@", json);
}

- (void)dpRequestFailed:(DPRequest *)request Error:(NSError *)error
{
}

@end
