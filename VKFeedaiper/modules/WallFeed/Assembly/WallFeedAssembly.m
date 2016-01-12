//
//  WallFeedAssembly.m
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallFeedAssembly.h"

#import "WallFeedViewController.h"
#import "WallFeedInteractor.h"
#import "WallFeedPresenter.h"
#import "WallFeedRouter.h"

@implementation WallFeedAssembly

+ (void)assembly:(WallFeedViewController *)vc
{
    WallFeedPresenter *presenter = [WallFeedPresenter new];
    WallFeedRouter *router = [WallFeedRouter new];
    WallFeedInteractor *interactor = [WallFeedInteractor new];
    WallFeedDataSource *datasource = [WallFeedDataSource new];
    
    vc.output = presenter;
    presenter.view = vc;
    presenter.router = router;
    presenter.interactor = interactor;
    presenter.datasource = datasource;
    interactor.output = presenter;
}

@end