//
//  ViewController.m
//  PtxTabooDay
//
//  Created by ptx on 16/4/9.
//  Copyright © 2016年 ptx. All rights reserved.
//

#import "ViewController.h"
#import "PtxCalendarManager.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    PtxCalendarManager *ptxCM = [[PtxCalendarManager alloc]init];
    [ptxCM loadDaysDistance:1000 fromDate:[NSDate date] completion:^(NSArray<PTXDayComponent *> * _Nullable dayComponents, NSError * _Nullable error) {
        
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
