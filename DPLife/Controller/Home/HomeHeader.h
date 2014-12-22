//
//  HomeHeader.h
//  DPLife
//
//  Created by Administrator on 11/28/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HomeHeaderCell.h"

@interface HomeHeader : UIView

@property (nonatomic, retain) HomeHeaderCell *foodButton;
@property (nonatomic, retain) HomeHeaderCell *movieButton;
@property (nonatomic, retain) HomeHeaderCell *groupButton;
@property (nonatomic, retain) HomeHeaderCell *hotelButton;
@property (nonatomic, retain) HomeHeaderCell *orderButton;
@property (nonatomic, retain) HomeHeaderCell *discountButton;
@property (nonatomic, retain) HomeHeaderCell *writeButton;
@property (nonatomic, retain) HomeHeaderCell *takewayButton;
@end
