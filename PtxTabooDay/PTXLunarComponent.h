//
//  PTXLunarComponent.h
//  PtxTabooDay
//
//  Created by ptx on 16/4/10.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PTXLocalDate.h"
#import "PTXTabooModel.h"

@interface PTXLunarComponent : NSObject<PTXLocalDate>

@property (nonatomic,strong) NSString *season24Name;
@property (nonatomic,strong) NSString *lunarYear;
@property (nonatomic,strong) NSString *lunarMonth;
@property (nonatomic,strong) NSString *lunarDay;

@property (nonatomic,strong) PTXTabooModel *tabooDay;

@end
