//
//  StoreResponse.h
//  DPLife
//
//  Created by Administrator on 11/18/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Store.h"

@interface StoreResponse : NSObject

@property NSArray *storeArray;
@property NSNumber *count;
@property NSNumber *total_count;

- (id)initWithJsonData:(NSDictionary *)data;

@end
