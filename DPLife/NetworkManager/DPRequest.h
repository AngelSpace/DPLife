//
//  DPRequest.h
//  DPLife
//
//  Created by Administrator on 11/9/14.
//  Copyright (c) 2014 yp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DPRequest;
@protocol DPResuestDelegate <NSObject>

- (void)dpReqiestSucceed:(DPRequest *)request JsonData:(NSDictionary *)json;
- (void)dpReqiestFailed:(DPRequest *)request Error:(NSError *)error;

@end

@interface DPRequest : NSObject
@property (nonatomic, assign) int tag;
@property (nonatomic, retain) id <DPResuestDelegate> delegate;

- (void)executeGetRequest:(NSString *)data;
- (void)executePostRequest:(NSString *)data Patams:(NSDictionary *)dict;

@end
