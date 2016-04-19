//
//  PtxCalendarManager.m
//  PtxTabooDay
//
//  Created by ptx on 16/4/9.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import "PtxCalendarManager.h"
#import "PTXThread.h"
#import "PTXDayExtractor.h"
#import "PTXDayBuilder.h"
#import "GLDateUtils.h"

@interface PtxCalendarManager()

@property (nonatomic,strong) PTXThread *thread;
@property (nonatomic,strong) PTXDayExtractor *extractor;
@property (nonatomic,strong) PTXDayBuilder *builder;
@end

@implementation PtxCalendarManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _thread = [[PTXThread alloc]init];
        [_thread start];
    }
    return self;
}

-(void)dealloc
{
    [self.thread cancel];
}
-(void)loadDaysDistance:(NSInteger)distance fromDate:(nonnull NSDate *)date completion:(nonnull PTXLoadDaysBlock)completion
{
    [self loadDaysDistance:distance fromDate:date onQueue:dispatch_get_main_queue() completion:completion];
}

-(void)loadDaysDistance:(NSInteger)distance fromDate:(NSDate *)date onQueue:(dispatch_queue_t)queue completion:(PTXLoadDaysBlock)completion
{
    [self.thread dispatchAsync:^{
        
        NSMutableArray *days = [[NSMutableArray alloc] init];
        NSInteger min = MIN(distance, 0);
        NSInteger max = MAX(distance+1,0);

        for (int i=min; i< max; i++) {
            @autoreleasepool {
                NSDate *oneDate = [GLDateUtils dateByAddingDays:i toDate:date];
                self.extractor = [[PTXDayExtractor alloc] initWithDate:oneDate];
                self.builder = [[PTXDayBuilder alloc]initWithExtractor:self.extractor];
                [days addObject:self.builder.dayComponent];
            }
        }
        dispatch_async(queue, ^{
            if (completion) {
                completion([days copy],nil);
            }
        });
    }];
}

@end
