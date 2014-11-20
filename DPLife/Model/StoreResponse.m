//
//  StoreResponse.m
//  DPLife
//
//  Created by Administrator on 11/18/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "StoreResponse.h"

@implementation StoreResponse

@synthesize storeArray, count, total_count;

- (id)initWithJsonData:(NSDictionary *)data
{
	if (self) {
		storeArray = [data objectForKey:@"businesses"];
	}

	return self;
}

@end
