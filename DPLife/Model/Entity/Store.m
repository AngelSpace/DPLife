//
//  Store.m
//  DPLife
//
//  Created by Administrator on 11/20/14.
//  Copyright (c) 2014 github.com/AngelSpace. All rights reserved.
//

#import "Store.h"

@implementation Store
@synthesize business_id, name, address, telephone, city, s_photo_url;

- (id)initWithJsonData:(NSDictionary *)dict
{
	if (self) {
		self.business_id = [dict objectForKey:@"business_id"];
		NSLog(@"%@", self.business_id);
		self.name = [dict objectForKey:@"name"];
		self.address = [dict objectForKey:@"address"];
		self.telephone = [dict objectForKey:@"telephone"];
		self.city = [dict objectForKey:@"city"];
		self.s_photo_url = [dict objectForKey:@"s_photo_url"];
	}

	return self;
}

@end
