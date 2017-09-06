//
//  LoginVC.h
//  DangAn
//
//  Created by 李江 on 16/6/6.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface LoginVC : BaseViewController

@property (weak, nonatomic) IBOutlet UILabel *labauthcode;

@property (weak, nonatomic) IBOutlet UILabel *labelyingsi;

@property (weak, nonatomic) IBOutlet UIButton *btn_login;
@property (weak, nonatomic) IBOutlet UIView *line1;

@property (weak, nonatomic) IBOutlet UITextField *textfield_phone;
@property (weak, nonatomic) IBOutlet UITextField *textfield_yanzhenma;
@property (weak, nonatomic) IBOutlet UIView *line2;
@property (nonatomic,assign)BOOL isVipVC;
- (IBAction)loginAction:(id)sender;

@end
