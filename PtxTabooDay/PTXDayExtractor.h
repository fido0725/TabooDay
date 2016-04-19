//
//  PTXDayExtractor.h
//  PtxTabooDay
//
//  Created by ptx on 16/4/17.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PTXHoliday;
@class PTXLunarComponent;
@class PTXTabooModel;
@class LunarCalendar;
@interface PTXDayExtractor : NSObject
@property (nonatomic,strong,readonly) NSDate *dateRef;

-(instancetype)initWithDate:(NSDate *)date;

-(PTXHoliday *)holiday;

-(PTXTabooModel *)tabooModel;

-(PTXLunarComponent *)lunarComponent;

@end
