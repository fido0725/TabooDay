//
//  PTXDayExtractor.m
//  PtxTabooDay
//
//  Created by ptx on 16/4/17.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import "PTXDayExtractor.h"
#import "PTXHoliday.h"
#import "PTXTabooModel.h"
#import "PTXLunarComponent.h"
#import "LunarCalendar.h"

@interface PTXDayExtractor()

@property (nonatomic,strong) NSDate *dateRef;
@property (nonatomic,strong) LunarCalendar *lunarCalendar;
@end

@implementation PTXDayExtractor

-(instancetype)initWithDate:(NSDate *)date
{
    self = [super init];
    if (self) {
        self.dateRef = date;
        self.lunarCalendar = [self.dateRef chineseCalendarDate];
    }
    return self;
}
-(PTXHoliday *)holiday
{
    PTXHoliday *holiday = [[PTXHoliday alloc] init];
    holiday.holidayName = [[[self.lunarCalendar.Holiday firstObject] componentsSeparatedByString:@" "] firstObject];
    return holiday;
}

-(PTXTabooModel *)tabooModel
{
    PTXTabooModel *taboo = [[PTXTabooModel alloc]init];
    
    return taboo;
}

-(PTXLunarComponent *)lunarComponent
{
    PTXLunarComponent *lunar = [[PTXLunarComponent alloc]init];
    lunar.season24Name =  self.lunarCalendar.SolarTermTitle;
    lunar.lunarYear = [self.lunarCalendar.YearHeavenlyStem stringByAppendingString:self.lunarCalendar.YearEarthlyBranch];
    lunar.lunarMonth = [self.lunarCalendar.MonthHeavenlyStem stringByAppendingString:self.lunarCalendar.MonthEarthlyBranch];
    lunar.lunarDay = [self.lunarCalendar.DayHeavenlyStem stringByAppendingString:self.lunarCalendar.DayEarthlyBranch];
    lunar.tabooDay = [self tabooModel];
    return lunar;
}


@end
