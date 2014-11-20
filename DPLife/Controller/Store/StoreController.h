//
//  StoreController.h
//  DPLife
//
//  Created by Administrator on 11/8/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "BaseController.h"
#import "PullTableView.h"

@interface StoreController : BaseController <PullTableViewDelegate, UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) PullTableView *tableView;
@property NSArray *storeArray;
@end
