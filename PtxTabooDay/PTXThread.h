//
//  PTXThread.h
//  PtxTabooDay
//
//  Created by ptx on 16/4/10.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PTXThread : NSThread

- (void)dispatchAsync:(void(^)())block;
- (void)dispatchSync:(void(^)())block;

@end
