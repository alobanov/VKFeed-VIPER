//
//  BaseNetworkHelper.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@interface BaseNetworkHelper : NSObject

- (AFHTTPSessionManager *)sessionmanagerForForeground;

@end
