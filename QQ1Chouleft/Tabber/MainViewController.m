//
//  MainViewController.m
//  LeftSlide
//
//  Created by SMLZ on 2017/3/16.
//  Copyright © 2017年 SMLZ. All rights reserved.
//

#import "MainViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "DKNightVersionManager.h"
#import "RLViewController.h"
#import "RLLeftSlideManager.h"
#import "RLLeftSlideViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    FirstViewController *firstVC = [[FirstViewController alloc]init];
//    firstVC.title = @"首页";
//    UINavigationController *firstNVC = [[UINavigationController alloc]initWithRootViewController:firstVC];
//    SecondViewController *secondVC = [[SecondViewController alloc]init];
//    secondVC.title = @"个人";
//    UINavigationController *secondNVC = [[UINavigationController alloc]initWithRootViewController:secondVC];
//    self.viewControllers = @[firstNVC,secondNVC];
}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 7;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    static NSString *Identifier = @"Identifier";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Identifier];
//    }
//    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
//    cell.textLabel.font = [UIFont systemFontOfSize:20.0f];
//    cell.backgroundColor = [UIColor clearColor];
//    cell.textLabel.textColor = [UIColor whiteColor];
//    
//    if (indexPath.row == 0) {
//        cell.textLabel.text = @"开通会员";
//    } else if (indexPath.row == 1) {
//        cell.textLabel.text = @"QQ钱包";
//    } else if (indexPath.row == 2) {
//        cell.textLabel.text = @"网上营业厅";
//    } else if (indexPath.row == 3) {
//        cell.textLabel.text = @"个性装扮";
//    } else if (indexPath.row == 4) {
//        cell.textLabel.text = @"我的收藏";
//    } else if (indexPath.row == 5) {
//        cell.textLabel.text = @"我的相册";
//    } else if (indexPath.row == 6) {
//        cell.textLabel.text = @"我的文件";
//    }
//    return cell;
//}
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    
//     RLViewController *vc = [[RLViewController alloc] init];
//    //    vc.titleName =
//    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
////    vc.titleName = cell.textLabel.text;
//    [[RLLeftSlideManager sharedIncetance].LeftSlideVC closeLeftView];//关闭左侧抽屉
//    vc.hidesBottomBarWhenPushed = YES;
//    [[RLLeftSlideManager sharedIncetance].mainNavigationController pushViewController:vc animated:NO];
//}
//
//-(void)changeLight{
//    NSLog(@"daindad");
//    if ([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) {
//        [DKNightVersionManager dawnComing];
//    } else {
//        [DKNightVersionManager nightFalling];
//    }
//}


@end
