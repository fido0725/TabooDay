//
//  PTXTabooModel.h
//  PtxTabooDay
//
//  Created by ptx on 16/4/17.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_OPTIONS(NSUInteger, TabooType) {
    TabooTypeNone  = 0,
    TabooTypeSex   = 1<<0,
};
@interface PTXTabooModel : NSObject

@property (nonatomic,assign) BOOL isTaboo;
@property (nonatomic,assign) TabooType tabooType;
@property (nonatomic,strong) NSString *reason;
@property (nonatomic,strong) NSString *consequences;
@end
