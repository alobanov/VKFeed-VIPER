//
//  NetworkHelper.m
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallNetworkHelper.h"

static NSInteger const kWallByGroupCount = 50;
static NSString * const kWallMethod = @"wall.get";

@implementation WallNetworkHelper

- (NSURLSessionDataTask *)obtainWallWithId:(NSNumber *)groupId andOffset:(NSNumber *)offset
{
    // request parameters
    NSMutableDictionary *params = [NSMutableDictionary dictionary];
    [params setObject:groupId forKey:@"owner_id"];
    [params setObject:offset forKey:@"offset"];
    [params setObject:@(kWallByGroupCount) forKey:@"count"];
    
    AFHTTPSessionManager *manager = [self sessionmanagerForForeground];
    manager.completionQueue = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0);
    
    return [manager GET:kWallMethod parameters:params progress:^(NSProgress *_Nonnull downloadProgress) {
        // nothing
    } success:^(NSURLSessionDataTask *_Nonnull task, id _Nullable responseObject) {
        [self parseResponse:responseObject];
    } failure:^(NSURLSessionDataTask *_Nullable task, NSError *_Nonnull error) {
        dispatch_async(dispatch_get_main_queue(), ^(void){
            self.wallGroupsBlock(error, nil);
        });
    }];
}

- (void)parseResponse:(id)responseObject
{
    NSArray *wall = [responseObject objectForKey:@"response"];
    
    if (wall && [wall isKindOfClass:[NSArray class]]) {
        NSMutableArray *wallItems = [NSMutableArray array];
        
        for (NSDictionary *rawItem in wall) {
            if (![rawItem isKindOfClass:[NSDictionary class]]) {
                continue;
            }
            
            NSError *error;
            WallModel *wallItem = [[WallModel alloc] initWithDictionary:rawItem error:&error];
            if (error) {
                dispatch_async(dispatch_get_main_queue(), ^(void){
                    self.wallGroupsBlock(error, nil);
                });
                return;
            } else {
                if (wallItem.text.length > 0) {
                    [wallItems addObject:wallItem];
                }
            }
        }
        
        dispatch_async(dispatch_get_main_queue(), ^(void){
            self.wallGroupsBlock(nil, wallItems);
        });
    }
}

@end
