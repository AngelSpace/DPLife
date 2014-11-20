//
//  StoreResponse.h
//  DPLife
//
//  Created by Administrator on 11/18/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoreResponse : NSObject

@property NSString *url;
@property NSString *storeName;
@property NSString *storeAddress;

-(id)initWithJsonData:(NSString *)data;

@end
