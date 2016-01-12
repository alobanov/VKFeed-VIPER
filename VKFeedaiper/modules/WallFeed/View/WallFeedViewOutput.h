//
//  WallFeedViewOutput.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>

// datasource
#import "WallFeedDataSource.h"

@protocol WallFeedViewOutput <NSObject>

- (void)didTriggerViewReadyEvent;

- (void)obtainWallData;

@property (strong, nonatomic, readonly) WallFeedDataSource *datasource;

@end