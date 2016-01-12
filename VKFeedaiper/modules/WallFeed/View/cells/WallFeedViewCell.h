//
//  WallFeedViewCell.h
//  VKFeedaiper
//
//  Created by Lobanov on 12.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WallModel.h"

static NSString * const kWallFeedViewCellIdentifier = @"WallFeedViewCell";

@interface WallFeedViewCell : UITableViewCell

- (void)reloadCellWithModel:(WallModel *)model;

@end
