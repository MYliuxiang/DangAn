//
//  MyLogin.m
//  YDYWProject
//
//  Created by 郭俊威 on 14-10-21.
//  Copyright (c) 2014年 iOS. All rights reserved.
//

#import "MyLogin.h"
#import "VIPbusinessVC.h"
#import "YunStorageVC.h"
#import "ManagementVC.h"

@implementation MyLogin

+ (void)gotoLoginViewWithTarget:(id)target
{
    //登录
    UIViewController *vc = (UIViewController*)target;
  
    LoginVC *loginVC = [[LoginVC alloc]init];
    loginVC.isVipVC = NO;
    if ([vc isKindOfClass:[VIPbusinessVC class]] || [vc isKindOfClass:[YunStorageVC class]] || [vc isKindOfClass:[ManagementVC class]]) {
        loginVC.isVipVC = YES;
    }
      [vc.navigationController pushViewController:loginVC animated:loginVC.isVipVC];
    
  
    
}

@end
