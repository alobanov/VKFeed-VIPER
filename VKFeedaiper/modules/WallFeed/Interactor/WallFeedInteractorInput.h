//
//  WallFeedInteractorInput.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol WallFeedInteractorInput <NSObject>

- (void)obtainWallData;

- (void)cancelNetworkDataTask;

- (void)resetPaginationOffset;

@end