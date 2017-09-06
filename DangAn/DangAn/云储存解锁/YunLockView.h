//
//  YunLockView.h
//  DangAn
//
//  Created by macvivi on 16/8/21.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol YunlockViewDelegate <NSObject>

-(void)setPassWordNotice:(NSString *)notice;

@end

@interface YunLockView : UIView{

    CGPoint Aloc;
    CGPoint Bloc;
    int markBtn;


}

// 保存所有的按钮
@property (nonatomic, strong) NSArray* buttons;
// 保存所有“碰过”的按钮
@property (nonatomic, strong) NSMutableArray* selectedButtons;

// 定义一个线的颜色
@property (nonatomic, strong) UIColor *lineColor;


// 记录最后用户触摸的点
@property (nonatomic, assign) CGPoint currentPoint;



@property (nonatomic, weak) id<YunlockViewDelegate> delegate;
@property (nonatomic,assign)int index;
@property (nonatomic ,copy)NSString *gesture_password;
@property (nonatomic ,copy)NSString *gesture_status;




@end
