//
//  PTXDayBuilder.m
//  PtxTabooDay
//
//  Created by ptx on 16/4/19.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import "PTXDayBuilder.h"
#import "PTXDayExtractor.h"
#import "PTXDayComponent.h"
#import "GLDateUtils.h"

@interface PTXDayBuilder()
@property (nonatomic,strong) PTXDayExtractor *extractor;
@end

@implementation PTXDayBuilder

-(id)initWithExtractor:(PTXDayExtractor *)extractor
{
    self = [super init];
    if (self) {
        _extractor = extractor;
    }
    return self;
}

-(PTXDayComponent *)dayComponent
{
    PTXDayComponent *dayComponent = [[PTXDayComponent alloc]init];
    
    NSArray *ymdArray = [[GLDateUtils descriptionForDate:self.extractor.dateRef ] componentsSeparatedByString:@"/"];
    dayComponent.year = [ymdArray[0] integerValue];
    dayComponent.month = [ymdArray[1] integerValue];
    dayComponent.day = [ymdArray[2] integerValue];
    
    dayComponent.holiday = self.extractor.holiday;
    dayComponent.lunarDay = self.extractor.lunarComponent;
    
    return dayComponent;
}
@end
