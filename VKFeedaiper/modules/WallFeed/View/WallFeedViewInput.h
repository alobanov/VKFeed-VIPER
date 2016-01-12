//
//  WallFeedViewInput.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WallFeedViewInput <NSObject>

- (void)setupInitialState;

- (void)showError:(NSError *)error;

- (void)reloadTableView;

@end