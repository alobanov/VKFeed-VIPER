//
//  WallModel.h
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import <JSONModel/JSONModel.h>

@interface WallModel : JSONModel

@property (strong, nonatomic) NSString *text;
@property (strong, nonatomic) NSNumber *date;
@property (strong, nonatomic) NSString *photo;

@end
