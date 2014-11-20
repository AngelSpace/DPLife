//
//  StoreItemCell.h
//  DPLife
//
//  Created by Administrator on 11/18/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"
#import "Store.h"

@interface StoreItemCell : UITableViewCell

@property UIImageView *thumbnail;
@property UILabel *storeNameLabel;
@property UILabel *addressLabel;

- (void)updateViewWith:(Store *)store;

@end
