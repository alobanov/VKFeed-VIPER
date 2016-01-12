//
//  WallFeedInteractor.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11/01/2016.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallFeedInteractorInput.h"

@protocol WallFeedInteractorOutput;

@interface WallFeedInteractor : NSObject <WallFeedInteractorInput>

@property (nonatomic, weak) id<WallFeedInteractorOutput> output;

@end