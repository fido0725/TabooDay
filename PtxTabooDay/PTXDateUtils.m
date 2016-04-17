//
//  PTXDateUtils.m
//  PtxTabooDay
//
//  Created by ptx on 16/4/10.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import "PTXDateUtils.h"

#define CAlENDAR_COMPONENT_DEFUALT NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay

@implementation PTXDateUtils

+ (NSCalendar *)calendar
{
    NSMutableDictionary *mDict = [[NSThread currentThread] threadDictionary];
    NSCalendar *cal = [mDict valueForKey:@"PTXCalendar"];
    if (cal) {
        cal = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        cal.locale = [NSLocale currentLocale];
        [mDict setValue:cal forKey:@"PTXCalendar"];
    }
    return cal;
}

+ (NSInteger)daysByUnitType:(PTXDateUnitType)unitType InDate:(NSDate *)date
{
    if (unitType == PTXDateWeekType) {
        return 7;
    }
    
    NSCalendar *cal = [PTXDateUtils calendar];
    
}
@end
