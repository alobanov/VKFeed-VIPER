//
//  WallModel.m
//  VKFeedaiper
//
//  Created by Lobanov Aleksey on 11.01.16.
//  Copyright © 2016 Lobanov Aleksey. All rights reserved.
//

#import "WallModel.h"

@implementation WallModel

+ (JSONKeyMapper *)keyMapper
{
    return [[JSONKeyMapper alloc] initWithDictionary:@{ @"attachment.photo.src_big": @"photo" }];
}

+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
    return YES;
}

@end
