//
//  StoreItemCell.h
//  DPLife
//
//  Created by Administrator on 11/18/14.
//  Copyright (c) 2014 yp. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIImageView+WebCache.h"

@interface StoreItemCell : UITableViewCell

@property UIImageView *thumbnail;
@property UILabel *storeNameLabel;
@property UILabel *addressLabel;

-(void) updateView:()

@end
