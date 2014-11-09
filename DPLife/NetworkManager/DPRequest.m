//
//  DPRequest.m
//  DPLife
//
//  Created by Administrator on 11/9/14.
//  Copyright (c) 2014 yp. All rights reserved.
//

#import "DPRequest.h"
#import <CommonCrypto/CommonDigest.h>
#import "AFNetworking.h"
#import "AppDelegate.h"

@implementation DPRequest
@synthesize tag, delegate;


- (void)executeGetRequest:(NSString *)data
{
	NSLog(@"点评请求%@", data);
	AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
	[manager GET:data parameters:nil success: ^(AFHTTPRequestOperation *operation, id responseObject) {
	    if ([delegate respondsToSelector:@selector(dpReqiestSucceed:JsonData:)]) {
	        [delegate dpReqiestSucceed:self JsonData:responseObject];
		}
	} failure: ^(AFHTTPRequestOperation *operation, NSError *error) {
	    if ([delegate respondsToSelector:@selector(dpReqiestFailed:Error:)]) {
	        [delegate dpReqiestFailed:self Error:error];
		}
	}];
}

- (void)executePostRequest:(NSString *)data Patams:(NSDictionary *)dict
{
}

@end
