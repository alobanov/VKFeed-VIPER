//
//  WallFeedInteractorOutput.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <Foundation/Foundation.h>

// models
#import "WallModel.h"

@protocol WallFeedInteractorOutput <NSObject>

- (void)loadedWallItems:(NSArray<WallModel *> *)items andError:(NSError *)error;

@end