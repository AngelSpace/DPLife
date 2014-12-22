//
//  HomeHeader.m
//  DPLife
//
//  Created by Administrator on 11/28/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "HomeHeader.h"

@implementation HomeHeader

@synthesize foodButton;
@synthesize movieButton;
@synthesize groupButton;
@synthesize hotelButton;
@synthesize orderButton;
@synthesize discountButton;
@synthesize writeButton;
@synthesize takewayButton;


- (id)initWithFrame:(CGRect)frame
{
	self = [super initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 200)];

	if (self) {
		foodButton = [[HomeHeaderCell alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4)];
		[foodButton updateViewWithTitle:@"美食" Image:@"icon_food.png"];
		[self addSubview:foodButton];

		foodButton = [[HomeHeaderCell alloc] initWithFrame:CGRectMake(SCREEN_WIDTH / 4, 0, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4)];
		[foodButton updateViewWithTitle:@"美食" Image:@"icon_bar.png"];
		[self addSubview:foodButton];

		foodButton = [[HomeHeaderCell alloc] initWithFrame:CGRectMake(SCREEN_WIDTH / 2, 0, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4)];
		[foodButton updateViewWithTitle:@"美食" Image:@"icon_takeway.png"];
		[self addSubview:foodButton];

		foodButton = [[HomeHeaderCell alloc] initWithFrame:CGRectMake(SCREEN_WIDTH / 4 * 3, 0, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4)];
		[foodButton updateViewWithTitle:@"美食" Image:@"icon_snack.png"];
		[self addSubview:foodButton];


		foodButton = [[HomeHeaderCell alloc] initWithFrame:CGRectMake(0, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4)];
		[foodButton updateViewWithTitle:@"美食" Image:@"icon_group.png"];
		[self addSubview:foodButton];

		foodButton = [[HomeHeaderCell alloc] initWithFrame:CGRectMake(SCREEN_WIDTH / 4,  SCREEN_WIDTH / 4, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4)];
		[foodButton updateViewWithTitle:@"美食" Image:@"icon_discount.png"];
		[self addSubview:foodButton];

		foodButton = [[HomeHeaderCell alloc] initWithFrame:CGRectMake(SCREEN_WIDTH / 2,  SCREEN_WIDTH / 4, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4)];
		[foodButton updateViewWithTitle:@"美食" Image:@"icon_movie.png"];
		[self addSubview:foodButton];

		foodButton = [[HomeHeaderCell alloc] initWithFrame:CGRectMake(SCREEN_WIDTH / 4 * 3,  SCREEN_WIDTH / 4, SCREEN_WIDTH / 4, SCREEN_WIDTH / 4)];
		[foodButton updateViewWithTitle:@"美食" Image:@"icon_hotel.png"];
		[self addSubview:foodButton];
	}

	return self;
}

@end
