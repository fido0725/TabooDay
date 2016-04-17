//
//  PtxCalendarManager.h
//  PtxTabooDay
//
//  Created by ptx on 16/4/9.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

@class  PTXDayComponent;
typedef void(^PTXLoadDaysBlock)(NSArray <PTXDayComponent *> *_Nullable dayComponents, NSError * _Nullable error);
typedef void(^PTXLoadDayBlock)(PTXDayComponent * _Nullable dayComponent);

@interface PtxCalendarManager : NSObject

-(void)loadDaysDistance:(NSInteger)distance fromDate:(nonnull NSDate *)date completion:(nonnull PTXLoadDaysBlock)completion;
-(void)loadDaysDistance:(NSInteger)distance fromDate:(nonnull NSDate *)date onQueue:(nonnull dispatch_queue_t)queue completion:(nonnull PTXLoadDaysBlock)completion;

@end
