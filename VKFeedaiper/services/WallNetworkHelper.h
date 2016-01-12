//
//  NetworkHelper.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseNetworkHelper.h"

// model
#import "WallModel.h"

typedef void (^nhWallGroupsBlock)(NSError *error, NSArray<WallModel *> *wallItems);

@interface WallNetworkHelper : BaseNetworkHelper

- (NSURLSessionDataTask *)obtainWallWithId:(NSNumber *)groupId andOffset:(NSNumber *)offset;
@property (copy, nonatomic) nhWallGroupsBlock wallGroupsBlock;

@end
