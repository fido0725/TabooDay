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

@interface PTXDayExtractor : NSObject

-(PTXHoliday *)holiday;

-(PTXTabooModel *)tabooModel;

-(PTXLunarComponent *)lunarComponent;

@end