//
//  PTXDayComponent.h
//  PtxTabooDay
//
//  Created by ptx on 16/4/9.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PTXHoliday.h"
#import "PTXLunarComponent.h"

@interface PTXDayComponent : NSObject

@property (nonatomic,assign) NSUInteger year;
@property (nonatomic,assign) NSUInteger month;
@property (nonatomic,assign) NSUInteger day;
@property (nonatomic,assign) NSUInteger week;
@property (nonatomic,assign) NSUInteger weekDay;

@property (nonatomic,strong) PTXHoliday *holiday;

@property (nonatomic,strong) PTXLunarComponent *lunarDay;

@end
