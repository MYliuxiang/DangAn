//
//  MainTabBarController.m
//  iCheated
//
//  Created by yunhe on 15/5/29.
//  Copyright (c) 2015年 01. All rights reserved.
//

#import "MainTabBarController.h"
#import "BaseNavigationController.h"
#import "HomeVC.h"
#import "ManagementVC.h"
#import "VIPbusinessVC.h"
#import "MyVC.h"
#import "YunStorageVC.h"
@interface MainTabBarController ()<UITabBarControllerDelegate,UITabBarDelegate>

@end

static MainTabBarController *mainTVC = nil;

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    mainTVC = self;
    self.delegate = self;
//    self.tabBar.alpha = .9;
    
    //自定义标签栏
    [self _initTabBar];
//    self.tabBar.selectedImageTintColor = [UIColor colorWithRed:65/255.0 green:205/255.0 blue:62/255.0 alpha:1];
    
    //点击tabbar
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tabbarSelect:) name:NotiCenter_TabbarSeleced object:nil];
   
}



- (void)gotoHomeAction
{
    self.selectedIndex = 0;

}

- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{

    return YES;
}

- (void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
   
    

}

- (void)tabbarSelect:(NSNotification*)noti
{
    NSInteger count = [noti.object integerValue];
    self.selectedIndex = count;
//    [self tabBarController:self didSelectViewController:nil];
    
}

- (void)_initTabBar
{
    
        //点击tabbar
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tabbarSelect:) name:NotiCenter_TabbarSeleced object:nil];
        
        self.tabBar.tintColor= Color_blue;
        
        UITabBarItem *tabBarItem1 = [self.tabBar.items objectAtIndex:0];
        UITabBarItem *tabBarItem2 = [self.tabBar.items objectAtIndex:1];
        UITabBarItem *tabBarItem3 = [self.tabBar.items objectAtIndex:2];
        UITabBarItem *tabBarItem4 = [self.tabBar.items objectAtIndex:3];
        UITabBarItem *tabBarItem5 = [self.tabBar.items objectAtIndex:4];
        
        
        HomeVC *homeVC = [[HomeVC alloc]init];
        BaseNavigationController *nav_main = [[BaseNavigationController alloc]initWithRootViewController:homeVC];
        tabBarItem1 = [[UITabBarItem alloc] initWithTitle:@"首页" image:[UIImage imageNamed:@"home1"] selectedImage:[UIImage imageNamed:@"home2"]];
        homeVC.tabBarItem = tabBarItem1;
        
      
        ManagementVC *managementVC = [[ManagementVC alloc]init];
        BaseNavigationController *nav_managementVC = [[BaseNavigationController alloc]initWithRootViewController:managementVC];
        tabBarItem2 = [[UITabBarItem alloc] initWithTitle:@"自主管理" image:[UIImage imageNamed:@"自主1"] selectedImage:[UIImage imageNamed:@"自主2"]];
        managementVC.tabBarItem = tabBarItem2;
        
        
        VIPbusinessVC *vipbusinessVC = [[VIPbusinessVC alloc]init];
        BaseNavigationController *nav_vipbusinessVC = [[BaseNavigationController alloc]initWithRootViewController:vipbusinessVC];
        tabBarItem3 = [[UITabBarItem alloc] initWithTitle:@"VIP业务" image:[UIImage imageNamed:@"vip1"] selectedImage:[UIImage imageNamed:@"vip2"]];
        vipbusinessVC.tabBarItem = tabBarItem3;
        
       
        YunStorageVC *yunStorageVC = [[YunStorageVC alloc]init];
        BaseNavigationController *nav_yunStorageVC = [[BaseNavigationController alloc]initWithRootViewController:yunStorageVC];
        tabBarItem4 = [[UITabBarItem alloc] initWithTitle:@"云存储" image:[UIImage imageNamed:@"云1"] selectedImage:[UIImage imageNamed:@"云2"]];
        yunStorageVC.tabBarItem = tabBarItem4;
        
        
        MyVC *myVC = [[MyVC alloc]init];
        BaseNavigationController *nav_myVC = [[BaseNavigationController alloc]initWithRootViewController:myVC];
        tabBarItem5 = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"我1"] selectedImage:[UIImage imageNamed:@"我2"]];
        myVC.tabBarItem = tabBarItem5;
    
        self.viewControllers = @[nav_main,nav_managementVC,nav_vipbusinessVC,nav_yunStorageVC,nav_myVC];


}

//单例方法
+ (instancetype)shareMainTabBarController;
{
    return mainTVC;
    
}



@end
