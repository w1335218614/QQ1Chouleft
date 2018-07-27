# QQ1Chouleft
#import "RLLeftSlideViewController.h"
#import "MainViewController.h"
#import "RLLeftSortsViewController.h"

    MainViewController *mainVC = [[MainViewController alloc]init];   
    RLLeftSortsViewController *LeftVC = [[RLLeftSortsViewController alloc]init];
    RLLeftSlideViewController *rootVC = [[RLLeftSlideViewController alloc]initWithLeftView:LeftVC andMainView:mainVC];
    self.window.rootViewController = rootVC;
