//
//  WallFeedViewController.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "WallFeedViewInput.h"

@protocol WallFeedViewOutput;

@interface WallFeedViewController : UIViewController <WallFeedViewInput>

@property (nonatomic, strong) id<WallFeedViewOutput> output;

@end