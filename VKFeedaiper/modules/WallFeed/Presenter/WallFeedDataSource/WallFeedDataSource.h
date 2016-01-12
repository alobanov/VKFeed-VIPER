//
//  WallFeedDataSource.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 12.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

// model
#import "WallFeedViewCell.h"

@interface WallFeedDataSource : NSObject <UITableViewDataSource>

@property (strong, nonatomic) NSArray<WallModel *> *items;

@end
