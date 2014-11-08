//
//  ViewController.m
//  DPLife
//
//  Created by Administrator on 11/8/14.
//  Copyright (c) 2014 yp. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
	[manager GET:@"http://api.map.baidu.com/telematics/v3/weather?location=%E5%8C%97%E4%BA%AC&output=json&ak=W69oaDTCfuGwzNwmtVvgWfGH" parameters:nil success: ^(AFHTTPRequestOperation *operation, id responseObject) {
	    NSLog(@"JSON:%@", responseObject);
	} failure: ^(AFHTTPRequestOperation *operation, NSError *error) {
	    NSLog(@"Error:%@", error);
	}];
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

@end
