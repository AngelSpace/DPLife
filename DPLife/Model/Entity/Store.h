//
//  Store.h
//  DPLife
//
//  Created by Administrator on 11/20/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Store : NSObject


@property NSNumber *business_id;
@property NSString *name;
@property NSString *address;
@property NSString *telephone;
@property NSString *city;
@property NSString *s_photo_url;


- (id)initWithJsonData:(NSDictionary *)data;

@end
