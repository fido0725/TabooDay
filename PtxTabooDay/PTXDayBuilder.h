//
//  PTXDayBuilder.h
//  PtxTabooDay
//
//  Created by ptx on 16/4/19.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PTXDayExtractor;
@class PTXDayComponent;
@interface PTXDayBuilder : NSObject

-(id)initWithExtractor:(PTXDayExtractor*)extractor;

-(PTXDayComponent *)dayComponent;

@end
