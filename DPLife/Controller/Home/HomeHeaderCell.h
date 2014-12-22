//
//  HomeHeaderCell.h
//  DPLife
//
//  Created by Administrator on 11/28/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HomeHeaderCell : UIView

@property (nonatomic, retain) UILabel *name;
@property (nonatomic, retain) UIButton *pic;

- (void)updateViewWithTitle:(NSString *)title Image:(NSString *)image;
@end
