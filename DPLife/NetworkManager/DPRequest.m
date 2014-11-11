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
#import "DPConstants.h"

@implementation DPRequest
@synthesize tag, delegate;

// get request
- (void)executeGetRequest:(NSString *)data
{
	NSLog(@"Get : %@", data);
	[self serializeURL:data params:nil];
	AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
	[manager GET:[self serializeURL:data params:nil] parameters:nil success: ^(AFHTTPRequestOperation *operation, id responseObject) {
	    if ([delegate respondsToSelector:@selector(dpRequestSucceed:JsonData:)]) {
	        [delegate dpRequestSucceed:self JsonData:responseObject];
		}
	} failure: ^(AFHTTPRequestOperation *operation, NSError *error) {
	    if ([delegate respondsToSelector:@selector(dpRequestFailed:Error:)]) {
	        [delegate dpRequestFailed:self Error:error];
		}
	}];
}

// post request
- (void)executePostRequest:(NSString *)data Patams:(NSDictionary *)dict
{
	NSLog(@"Post : %@", data);
	[self serializeURL:data params:nil];
	AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];

	[manager POST:[self serializeURL:data params:nil] parameters:dict success: ^(AFHTTPRequestOperation *operation, id responseObject) {
	    if ([delegate respondsToSelector:@selector(dpRequestSucceed:JsonData:)]) {
	        [delegate dpRequestSucceed:self JsonData:responseObject];
		}
	} failure: ^(AFHTTPRequestOperation *operation, NSError *error) {
	    if ([delegate respondsToSelector:@selector(dpRequestFailed:Error:)]) {
	        [delegate dpRequestFailed:self Error:error];
		}
	}];
}

- (NSString *)serializeURL:(NSString *)baseURL params:(NSDictionary *)params
{
	NSURL *parsedURL = [NSURL URLWithString:[baseURL stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
	NSMutableDictionary *paramsDic = [NSMutableDictionary dictionaryWithDictionary:[self parseQueryString:[parsedURL query]]];

	if (params) {
		[paramsDic setValuesForKeysWithDictionary:params];
	}

	NSMutableString *signString = [NSMutableString stringWithString:[DPConstants getAppKey]];
	NSMutableString *paramsString = [NSMutableString stringWithFormat:@"appkey=%@", [DPConstants getAppKey]];
	NSArray *sortedKeys = [[paramsDic allKeys] sortedArrayUsingSelector:@selector(compare:)];

	for (NSString *key in sortedKeys) {
		[signString appendFormat:@"%@%@", key, [paramsDic objectForKey:key]];
		[paramsString appendFormat:@"&%@=%@", key, [paramsDic objectForKey:key]];
	}

	[signString appendString:[DPConstants getAppSercet]];
	unsigned char digest[CC_SHA1_DIGEST_LENGTH];
	NSData *stringBytes = [signString dataUsingEncoding:NSUTF8StringEncoding];

	if (CC_SHA1([stringBytes bytes], [stringBytes length], digest)) {
		/* SHA-1 hash has been calculated and stored in 'digest'. */
		NSMutableString *digestString = [NSMutableString stringWithCapacity:CC_SHA1_DIGEST_LENGTH];

		for (int i = 0; i < CC_SHA1_DIGEST_LENGTH; i++) {
			unsigned char aChar = digest[i];
			[digestString appendFormat:@"%02X", aChar];
		}

		[paramsString appendFormat:@"&sign=%@", [digestString uppercaseString]];
		return [NSString stringWithFormat:@"%@://%@%@?%@", [parsedURL scheme], [parsedURL host], [parsedURL path], [paramsString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
	}
	else {
		return nil;
	}
}

- (NSDictionary *)parseQueryString:(NSString *)query
{
	NSMutableDictionary *dict = [[NSMutableDictionary alloc] initWithCapacity:6];
	NSArray *pairs = [query componentsSeparatedByString:@"&"];

	for (NSString *pair in pairs) {
		NSArray *elements = [pair componentsSeparatedByString:@"="];

		if ([elements count] <= 1) {
			return nil;
		}

		NSString *key = [[elements objectAtIndex:0] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
		NSString *val = [[elements objectAtIndex:1] stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];

		[dict setObject:val forKey:key];
	}

	return dict;
}

@end
