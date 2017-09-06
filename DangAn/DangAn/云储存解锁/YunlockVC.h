//
//  YunlockVC.h
//  DangAn
//
//  Created by macvivi on 16/8/21.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "YunLockView.h"
#import "YunStoraModel.h"

@interface YunlockVC : BaseViewController
{
    YunLockView *_Lockview;
}
@property(nonatomic,strong)NSString * reset;
@property(nonatomic,strong)NSString * resetIs;
@property (nonatomic,assign) int index;
@property(nonatomic,strong)YunStoraModel *model;
@property (nonatomic ,copy)NSString *gesture_password;
@property (nonatomic ,copy)NSString *gesture_status;


@end
