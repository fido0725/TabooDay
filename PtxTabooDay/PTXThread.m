//
//  PTXThread.m
//  PtxTabooDay
//
//  Created by ptx on 16/4/10.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import "PTXThread.h"

@implementation PTXThread

-(void)dispatchAsync:(void (^)())block
{
    [self performSelector:@selector(performBlock:) onThread:self withObject:block waitUntilDone:NO];
}

-(void)dispatchSync:(void (^)())block
{
    [self performSelector:@selector(performBlock:) onThread:self withObject:block waitUntilDone:YES ];
}

- (void)performBlock:(void(^)())block
{
    block();
}

#pragma mark - override

-(void)main
{
    while (self.cancelled == NO) {
        @autoreleasepool {
            [[NSRunLoop currentRunLoop] runMode:NSDefaultRunLoopMode beforeDate:[NSDate distantFuture]];
        }
    }
}
@end
