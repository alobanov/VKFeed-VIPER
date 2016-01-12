//
//  WallFeedPresenter.m
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallFeedPresenter.h"

#import "WallFeedViewInput.h"
#import "WallFeedInteractorInput.h"
#import "WallFeedRouterInput.h"

@implementation WallFeedPresenter

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

#pragma mark - WallFeedModuleInput -

#pragma mark - WallFeedViewOutput -

- (void)didTriggerViewReadyEvent
{
    [self.view setupInitialState];
    
    [self obtainWallData];
}

- (void)obtainWallData
{
    [self.interactor obtainWallData];
}

#pragma mark - WallFeedInteractorOutput -

- (void)loadedWallItems:(NSArray<WallModel *> *)items andError:(NSError *)error
{
    if (error) {
        [self.view showError:error];
        return;
    }
    
    self.datasource.items = items;
    [self.view reloadTableView];
}

@end