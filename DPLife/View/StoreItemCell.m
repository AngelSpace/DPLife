//
//  StoreItemCell.m
//  DPLife
//
//  Created by Administrator on 11/18/14.
//  Copyright (c) 2014 yp. All rights reserved.
//

#import "StoreItemCell.h"

@implementation StoreItemCell
@synthesize thumbnail, storeNameLabel, addressLabel;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 30, 30)];
        [self addSubview:thumbnail];
        storeNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 0, 100, 20)];
        [self addSubview:storeNameLabel];
        addressLabel = [[UILabel alloc] initWithFrame:CGRectMake(40, 30, 100, 20)];
        [self addSubview:addressLabel];
    }
    return self;
}

@end
