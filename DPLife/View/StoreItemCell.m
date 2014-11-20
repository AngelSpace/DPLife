//
//  StoreItemCell.m
//  DPLife
//
//  Created by Administrator on 11/18/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "StoreItemCell.h"

@implementation StoreItemCell
@synthesize thumbnail, storeNameLabel, addressLabel;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
	self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];

	if (self) {
		thumbnail = [[UIImageView alloc] initWithFrame:CGRectMake(10, 15, 60, 60)];
		[self addSubview:thumbnail];
		storeNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 20, 200, 20)];
		[self addSubview:storeNameLabel];
		addressLabel = [[UILabel alloc] initWithFrame:CGRectMake(80, 55, 200, 20)];
		[self addSubview:addressLabel];
	}

	return self;
}

- (void)updateViewWith:(Store *)store
{
	storeNameLabel.text = store.name;
	[thumbnail sd_setImageWithURL:[NSURL URLWithString:store.s_photo_url] placeholderImage:[UIImage imageNamed:@"tab_user_sel.png"]];
	addressLabel.text = store.address;
}

@end
