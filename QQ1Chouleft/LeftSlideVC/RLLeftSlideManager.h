//
//  RLLeftSlideManager.h
//  LeftSlide
//
//  Created by SMLZ on 2017/3/16.
//  Copyright © 2017年 SMLZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RLLeftSlideViewController.h"

@interface RLLeftSlideManager : NSObject
@property (nonatomic,strong) RLLeftSlideViewController *LeftSlideVC;
@property (strong, nonatomic) UINavigationController *mainNavigationController;
+ (instancetype)sharedIncetance;

@end
