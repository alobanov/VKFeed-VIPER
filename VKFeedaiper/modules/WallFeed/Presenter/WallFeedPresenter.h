//
//  WallFeedPresenter.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallFeedViewOutput.h"
#import "WallFeedInteractorOutput.h"
#import "WallFeedModuleInput.h"

#import "WallFeedDataSource.h"

@protocol WallFeedViewInput;
@protocol WallFeedInteractorInput;
@protocol WallFeedRouterInput;

@interface WallFeedPresenter : NSObject <WallFeedModuleInput, WallFeedViewOutput, WallFeedInteractorOutput>

@property (nonatomic, weak) id<WallFeedViewInput> view;
@property (nonatomic, strong) id<WallFeedInteractorInput> interactor;
@property (nonatomic, strong) id<WallFeedRouterInput> router;

@property (nonatomic, strong) WallFeedDataSource *datasource;

@end