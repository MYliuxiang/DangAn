//
//  AppDelegate.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (nonatomic,strong)NSString *enterprise_id;//公司ID

@property (nonatomic,strong)NSArray *borrow_idArray;//购买的订阅档案id

@property (nonatomic,strong)NSArray *huiku_idArray;//购买的回库档案id


@property (nonatomic,strong)NSArray *xiaohui_idArray;//购买的销毁档案id

@property (nonatomic,strong)NSArray *foreverliku_idArray;//永远离库档案id


@property (nonatomic,assign)BOOL iszaikuandliku;

+ (AppDelegate *)GetAppDelegate;

@end

