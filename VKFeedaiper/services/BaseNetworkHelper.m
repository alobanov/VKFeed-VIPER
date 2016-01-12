//
//  BaseNetworkHelper.m
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "BaseNetworkHelper.h"

@implementation BaseNetworkHelper

static AFHTTPSessionManager *__sessionManagerForForeground = nil;
- (AFHTTPSessionManager *)sessionmanagerForForeground
{
    if (__sessionManagerForForeground == nil) {
        NSURL *URL = [NSURL URLWithString:[self apiURL]];
        __sessionManagerForForeground = [[AFHTTPSessionManager alloc] initWithBaseURL:URL];
        AFJSONRequestSerializer *ser = [AFJSONRequestSerializer serializer];
        ser.timeoutInterval = 1. * 60.;
        __sessionManagerForForeground.requestSerializer = ser;
    }
    return __sessionManagerForForeground;
}

- (NSString *)apiURL
{
    NSString *apiURLWithVersion = [NSString stringWithFormat:@"%@%@", @"https://api.vk.com/", @"method/"];
    return apiURLWithVersion;
}

@end
