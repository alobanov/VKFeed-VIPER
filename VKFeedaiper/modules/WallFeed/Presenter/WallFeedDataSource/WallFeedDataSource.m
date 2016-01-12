//
//  WallFeedDataSource.m
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 12.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallFeedDataSource.h"

@implementation WallFeedDataSource

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.items = @[];
    }
    return self;
}

#pragma mark - UITableViewDataSource -

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    WallModel *model = [self.items objectAtIndex:indexPath.row];
    WallFeedViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kWallFeedViewCellIdentifier forIndexPath:indexPath];
    
    [cell reloadCellWithModel:model];
    
    [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    return cell;
}

@end
