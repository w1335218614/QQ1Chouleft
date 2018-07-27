//
//  RLLeftSortsViewController.m
//  LeftSlide
//
//  Created by SMLZ on 2017/3/16.
//  Copyright © 2017年 SMLZ. All rights reserved.
//

#import "RLLeftSortsViewController.h"
#import "Macro.h"
#import "DKNightVersion.h"
#import "RLViewController.h"
#import "RLLeftSlideManager.h"

@interface RLLeftSortsViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    NSArray *arr;
}

@end

@implementation RLLeftSortsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    arr=@[@"开通会员",@"QQ钱包",@"网上营业厅",@"个性装扮",@"我的收藏",@"我的相册",@"我的文件"];
    UITableView *tableview = [[UITableView alloc] init];
    self.tableview = tableview;
    tableview.sectionHeaderHeight = 0;
    tableview.sectionFooterHeight = 0;
    tableview.frame = self.view.bounds;
    tableview.dataSource = self;
    tableview.delegate  = self;
    tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.view addSubview:tableview];
    
    
//    UISwitch *lightButton = [UISwitch new];
//    lightButton.frame = CGRectMake((kScreenWidth - kMainPageDistance)/2 +100, kScreenHeight - 50, 200, 44);
//    [lightButton addTarget:self action:@selector(changeLight) forControlEvents:UIControlEventTouchUpInside];
//    
//    [self.view addSubview:lightButton];
    // 设置夜间效果的颜色
//    @weakify(self);
//    [self addColorChangedBlock:^{
//        @strongify(self);
//        self.view.normalBackgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"leftbackiamge"]];
    
//    self.view.normalBackgroundColor=[UIColor yellowColor];
//        self.view.nightBackgroundColor = UIColorFromRGB(0x343434);
//        self.tableview.normalBackgroundColor = [UIColor clearColor];
//        self.tableview.nightBackgroundColor = UIColorFromRGB(0x343434);
//        self.tableview.nightSeparatorColor = UIColorFromRGB(0x313131);
//      self.navigationController.navigationBar.nightBarTintColor = UIColorFromRGB(0x444444);
//        self.navigationItem.leftBarButtonItem.nightTintColor = [UIColor whiteColor];
//        self.navigationItem.rightBarButtonItem.nightTintColor = [UIColor whiteColor];
//    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 7;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *Identifier = @"Identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:Identifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:Identifier];
    }
    cell.textLabel.font = [UIFont systemFontOfSize:20.0f];
    cell.backgroundColor = [UIColor clearColor];
    cell.textLabel.textColor = [UIColor blackColor];
    

    cell.textLabel.text=arr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    RLViewController *vc = [[RLViewController alloc] init];
    //    vc.titleName =
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
//    vc.titleName = cell.textLabel.text;
    [[RLLeftSlideManager sharedIncetance].LeftSlideVC closeLeftView];//关闭左侧抽屉
    vc.hidesBottomBarWhenPushed = YES;
    [[RLLeftSlideManager sharedIncetance].mainNavigationController pushViewController:vc animated:NO];
}


-(void)changeLight{
    NSLog(@"daindad");
    if ([DKNightVersionManager currentThemeVersion] == DKThemeVersionNight) {
        [DKNightVersionManager dawnComing];
    } else {
        [DKNightVersionManager nightFalling];
    }
}




@end
