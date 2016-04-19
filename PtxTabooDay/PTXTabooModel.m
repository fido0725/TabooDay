//
//  PTXTabooModel.m
//  PtxTabooDay
//
//  Created by ptx on 16/4/17.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import "PTXTabooModel.h"

@implementation PTXTabooModel

- (instancetype)init
{
    self = [super init];
    if (self) {
        _isTaboo = YES;
        _tabooType = TabooTypeSex;
        _reason = @"某神值....";
        _consequences = @"减寿";
    }
    return self;
}
@end
