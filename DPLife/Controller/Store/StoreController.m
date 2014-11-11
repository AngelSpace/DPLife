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
@synthesize tableView;

- (void)viewDidLoad
{
	[super viewDidLoad];

	tableView  = [[PullTableView alloc] initWithFrame:CGRectMake(0, 80, SCREEN_WIDTH, SCREEN_HEIGHT - 150) style:UITableViewStylePlain];
	tableView.delegate = self;
	tableView.dataSource = self;
	tableView.pullDelegate = self;
	[self.view addSubview:tableView];
	[tableView startRefresh];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
	cell.textLabel.text = @"小众点评";

	return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return 30;
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)dpRequestSucceed:(DPRequest *)request JsonData:(NSDictionary *)json
{
	NSLog(@"%@", json);
	[tableView setPullTableIsRefreshing:NO];
	[tableView setPullTableIsLoadingMore:NO];
}

- (void)dpRequestFailed:(DPRequest *)request Error:(NSError *)error
{
}

- (void)pullTableViewDidTriggerRefresh:(PullTableView *)pullTableView
{
	DPRequest *request = [[DPRequest alloc] init];
	request.delegate = self;
	request.tag = 0;
	[request executeGetRequest:@"http://api.dianping.com/v1/business/find_businesses?city=北京&region=海淀区&category=火锅&has_coupon=1&sort=2&limit=1&page=1"];
}

- (void)pullTableViewDidTriggerLoadMore:(PullTableView *)pullTableView
{
	DPRequest *request = [[DPRequest alloc] init];
	request.delegate = self;
	request.tag = 0;
	[request executeGetRequest:@"http://api.dianping.com/v1/business/find_businesses?city=北京&region=海淀区&category=火锅&has_coupon=1&sort=2&limit=1&page=1"];
}

@end
