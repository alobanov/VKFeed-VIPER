//
//  WallFeedInteractor.m
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallFeedInteractor.h"

#import "WallFeedInteractorOutput.h"

// network
#import "WallNetworkHelper.h"

NSInteger const kWallGroupID = 34234;
NSInteger const kOffsetPagination = 10;

@interface WallFeedInteractor ()

@property (strong, nonatomic) WallNetworkHelper *nh;
@property (strong, nonatomic) NSURLSessionDataTask *wallDataTask;
@property (assign, nonatomic) NSInteger offset;

@end

@implementation WallFeedInteractor

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.nh = [WallNetworkHelper new];
        self.offset = 0;
    }
    return self;
}

#pragma mark - WallFeedInteractorInput -

- (void)obtainWallData
{
    self.wallDataTask = [self.nh obtainWallWithId:@(kWallGroupID) andOffset:@(self.offset)];
    
    __weak typeof(self) wSelf = self;
    self.nh.wallGroupsBlock = ^(NSError *error, NSArray<WallModel *> *wallItems) {
        [wSelf.output loadedWallItems:wallItems andError:error];
    };
}

- (void)cancelNetworkDataTask
{
    if (self.wallDataTask) {
        [self.wallDataTask cancel];
    }
}

- (void)resetPaginationOffset
{
    self.offset = 0;
}

@end