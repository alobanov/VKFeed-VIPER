//
//  WallFeedViewCell.m
//  VKFeedaiper
//
//  Created by Lobanov on 12.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallFeedViewCell.h"
#import "MDHTMLLabel.h"

@interface WallFeedViewCell ()

@property (weak, nonatomic) IBOutlet MDHTMLLabel *contentLabel;

@end

@implementation WallFeedViewCell

- (void)awakeFromNib
{
    // Initialization code
}

- (void)reloadCellWithModel:(WallModel *)model
{
    self.contentLabel.htmlText = model.text;
}

@end
