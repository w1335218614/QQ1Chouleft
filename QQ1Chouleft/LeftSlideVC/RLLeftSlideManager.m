//
//  RLLeftSlideManager.m
//  LeftSlide
//
//  Created by SMLZ on 2017/3/16.
//  Copyright © 2017年 SMLZ. All rights reserved.
//

#import "RLLeftSlideManager.h"

@implementation RLLeftSlideManager
static id _instance;

+ (instancetype)sharedIncetance{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [[self alloc]init];
    });
    return _instance;
}

@end
