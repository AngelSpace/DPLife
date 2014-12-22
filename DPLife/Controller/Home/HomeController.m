//
//  HomeController.m
//  DPLife
//
//  Created by Administrator on 11/28/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "HomeController.h"
#import "StoreItemCell.h"
#import "StoreResponse.h"
@interface HomeController ()

@end

@implementation HomeController
@synthesize tableView;
@synthesize homeHeader;
@synthesize storeArray;

- (void)viewDidLoad
{
	[super viewDidLoad];
    [self setTitle:@"主页"];

	tableView  = [[PullTableView alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, SCREEN_HEIGHT - 150) style:UITableViewStylePlain];
    homeHeader = [[HomeHeader alloc] initWithFrame:CGRectMake(0, 64, SCREEN_WIDTH, 200)];
    
	tableView.delegate = self;
	tableView.dataSource = self;
	tableView.pullDelegate = self;
    tableView.tableHeaderView = homeHeader;
	[self.view addSubview:tableView];
	[tableView startRefresh];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	StoreItemCell *cell = [[StoreItemCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
	NSDictionary *dict = [storeArray objectAtIndex:[indexPath row]];
	Store *store = [[Store alloc] initWithJsonData:dict];
	[cell updateViewWith:store];

	return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return 90;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return storeArray.count;
}

- (void)didReceiveMemoryWarning
{
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (void)dpRequestSucceed:(DPRequest *)request JsonData:(NSDictionary *)json
{
	NSLog(@"%@", json);
	StoreResponse *response = [[StoreResponse alloc] initWithJsonData:json];
	storeArray = response.storeArray;
	[tableView setPullTableIsRefreshing:NO];
	[tableView setPullTableIsLoadingMore:NO];
	[tableView reloadData];
}

- (void)dpRequestFailed:(DPRequest *)request Error:(NSError *)error
{
}

- (void)pullTableViewDidTriggerRefresh:(PullTableView *)pullTableView
{
	DPRequest *request = [[DPRequest alloc] init];
	request.delegate = self;
	request.tag = 0;
	[request executeGetRequest:@"http://api.dianping.com/v1/business/find_businesses?city=北京&region=海淀区&category=火锅&has_coupon=1&sort=2&limit=10&page=1"];
}

- (void)pullTableViewDidTriggerLoadMore:(PullTableView *)pullTableView
{
    return;
	DPRequest *request = [[DPRequest alloc] init];
	request.delegate = self;
	request.tag = 0;
	[request executeGetRequest:@"http://api.dianping.com/v1/business/find_businesses?city=北京&region=海淀区&category=火锅&has_coupon=1&sort=2&limit=1&page=1"];
}

@end
