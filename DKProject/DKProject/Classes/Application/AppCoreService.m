//
//  AppCoreService.m
//  DKProject
//
//  Created by 雪凌 on 2018/8/23.
//  Copyright © 2018年 雪凌. All rights reserved.
//

#import "AppCoreService.h"

@implementation AppDelegate (CoreService)

// 初始化窗口
- (void)loadWindow {
    
    // 创建窗口
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // 设置窗口背景颜色
    self.window.backgroundColor = [UIColor whiteColor];
    
    // 加载根控制器
    [self loadRootController];
    
    // 设置应用风格
    [self configureStyle];
    
    // 将窗口设置为主窗口并可见
    [self.window makeKeyAndVisible];}

// 加载内容
- (void)loadRootController {
    
    // 创建选项卡控制器
    BaseTabBarController *tabBarController = [[BaseTabBarController alloc] init];
    
    // 创建首页视图
    UINavigationController *homeNavigation = [[DKHelper homeBoard] instantiateInitialViewController];
    homeNavigation.tabBarItem.title = @"首页";
    homeNavigation.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -2);
    homeNavigation.tabBarItem.image = [UIImage imageNamed:@"tab_home_icon"];
    
    // 创建登录视图
    UINavigationController *loginNavigation = [[DKHelper loginBoard] instantiateInitialViewController];
    loginNavigation.tabBarItem.title = @"我的";
    loginNavigation.tabBarItem.titlePositionAdjustment = UIOffsetMake(0, -2);
    loginNavigation.tabBarItem.image = [UIImage imageNamed:@"tab_login_icon"];
    
    // 设置选项卡视图们
    tabBarController.viewControllers = @[homeNavigation, loginNavigation];
    self.tabBarController = tabBarController;
    
    // 将选项卡设置为根视图控制器
    self.window.rootViewController = tabBarController;
}

- (void)configureStyle {
    
    //设置导航栏主题属性
    UINavigationBar *navBar = [UINavigationBar appearance];
//    [navBar setBarTintColor:[UIColor purpleColor]];
//    [navBar setTintColor:[UIColor whiteColor]];
    [navBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor blackColor]}];
    
    // 设置状态栏
    // [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleDefault];
}

@end
