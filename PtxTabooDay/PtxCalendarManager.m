//
//  PtxCalendarManager.m
//  PtxTabooDay
//
//  Created by ptx on 16/4/9.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import "PtxCalendarManager.h"

@implementation PtxCalendarManager

-(void)loadDaysDistance:(NSInteger)distance fromDate:(nonnull NSDate *)date completion:(nonnull PTXLoadDaysBlock)completion
{
    [self loadDaysDistance:distance fromDate:date onQueue:dispatch_get_main_queue() completion:completion];
}

-(void)loadDaysDistance:(NSInteger)distance fromDate:(NSDate *)date onQueue:(dispatch_queue_t)queue completion:(PTXLoadDaysBlock)completion
{
    
}
@end
