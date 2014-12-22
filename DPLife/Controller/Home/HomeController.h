//
//  HomeController.h
//  DPLife
//
//  Created by Administrator on 11/28/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "BaseController.h"
#import "HomeHeader.h"
#import "PullTableView.h"

@interface HomeController : BaseController<PullTableViewDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) HomeHeader *homeHeader;
@property (nonatomic, retain) PullTableView *tableView;
@property NSArray *storeArray;

@end
