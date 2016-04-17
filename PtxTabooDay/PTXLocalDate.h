//
//  PTXLocalDate.h
//  PtxTabooDay
//
//  Created by ptx on 16/4/10.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PTXLocalDate <NSObject>
@optional
@property (nonatomic,strong,readonly) NSString *localYear;
@property (nonatomic,strong,readonly) NSString *localMonth;
@property (nonatomic,strong,readonly) NSString *localDay;

@property (nonatomic,strong,readonly) NSString *localDateName;

@end
