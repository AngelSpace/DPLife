//
//  HomeHeaderCell.m
//  DPLife
//
//  Created by Administrator on 11/28/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "HomeHeaderCell.h"

@implementation HomeHeaderCell
@synthesize name, pic;

- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:frame];

	if (self) {
		pic = [[UIButton alloc] initWithFrame:CGRectMake(20, 20, 54, 54)];
		name = [[UILabel alloc] initWithFrame:CGRectMake(0, 75, 100, 20)];
        name.font = [UIFont systemFontOfSize:12.0];
        name.textAlignment = NSTextAlignmentCenter;
		[self addSubview:name];
		[self addSubview:pic];
	}

	return self;
}

- (void)updateViewWithTitle:(NSString *)title Image:(NSString *)image
{
	name.text = title;
	[pic setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
}

@end
