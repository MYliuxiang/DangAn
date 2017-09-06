//
//  LoginVC.m
//  DangAn
//
//  Created by 李江 on 16/6/6.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LoginVC.h"

@interface LoginVC ()

@end

@implementation LoginVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 64, kScreenWidth, 1)];
    lineView.backgroundColor = Color_bg;
    [self.view addSubview:lineView];
    
    self.line1.backgroundColor = Color_bg;
    self.line2.backgroundColor = Color_bg;
    self.labelyingsi.textColor = Color_text;
    
    self.labauthcode.layer.cornerRadius = 5;
    self.labauthcode.layer.masksToBounds = YES;
    self.labauthcode.layer.borderWidth = 1;
    self.labauthcode.layer.borderColor = Color_blue.CGColor;
    self.labauthcode.userInteractionEnabled = YES;
    
    self.btn_login.layer.cornerRadius = 5;
    self.btn_login.layer.masksToBounds = YES;
    self.btn_login.layer.borderWidth = 1;
    self.btn_login.layer.borderColor = Color_blue.CGColor;
    
    //测试数据
//    _textfield_phone.text = @"18500335907";
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(YanzhengAction)];
    [self.labauthcode addGestureRecognizer:tap];
    
    self.view.backgroundColor = [UIColor whiteColor];
}

//验证的点击事件
- (void)YanzhengAction{
    
    //        | 参数名称 | 必选 | 类型 | 参数含义 |
    //        | -----   | --- |--- |----- |
    //        | mobile  | true | string | 手机号 |
    
    if (_textfield_phone.text.length ==0) {
        [MBProgressHUD showError:@"手机号码不能为空" toView:[UIApplication sharedApplication].keyWindow];
        return;
    }

    
    if (![InputCheck isPhone:_textfield_phone.text]) {
        [MBProgressHUD showError:@"请输入正确的手机号码" toView:[UIApplication sharedApplication].keyWindow];
        return;
    }
    
    _labauthcode.userInteractionEnabled = NO;
    _labauthcode.text = @"60秒";
    [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(repeat:) userInfo:nil repeats:YES];
    
    NSString *phone = _textfield_phone.text;
    NSDictionary *params = @{@"mobile":phone,
                             };
    if (phone.length !=0) {
        [UIView animateWithDuration:.35 animations:^{
            [self.view setTop:0];
        }];
        [self.view endEditing:YES];
        [WXDataService requestAFWithURL:Url_Member_getMobileCode params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
            if ([result[@"status"]integerValue]==0) {
                NSDictionary *ress = result[@"result"];
                NSString *Yanzhengma = ress[@"code"];
               
                if([phone isEqualToString:@"18500335907"])
                {
                  _textfield_yanzhenma.text = [NSString stringWithFormat:@"%@",ress[@"code"]];
                }
                NSLog(@"%@",Yanzhengma);
            }else{
                [MBProgressHUD showError:result[@"msg"] toView:[UIApplication sharedApplication].keyWindow];
            }
        } errorBlock:^(NSError *error) {
            NSLog(@"%@",error);
        }];
    }else{
        [MBProgressHUD showError:@"手机号码不能为空" toView:[UIApplication sharedApplication].keyWindow];
    }
}

- (void)repeat:(NSTimer*)timer
{
    
    static int i = 1;
    int max = 60;
    if ((i%max)<max&&(i%max)!=0) {
        
        _labauthcode.text = [NSString stringWithFormat:@"%.2d秒",(max-i%max)];
        i++;
    }
    else
    {
        [timer invalidate];
        i++;
        _labauthcode.userInteractionEnabled = YES;
        
        
        _labauthcode.text = @"获取验证码";
    }
    
    //    [authfield becomeFirstResponder];
}

- (IBAction)loginAction:(id)sender {
    
    if (_textfield_phone.text.length == 0) {
        [MBProgressHUD showError:@"手机号码不能为空" toView:[UIApplication sharedApplication].keyWindow];
        return;
    }
    
    if (![InputCheck isPhone:_textfield_phone.text]) {
        [MBProgressHUD showError:@"请输入正确的手机号码" toView:[UIApplication sharedApplication].keyWindow];
        return;
    }
    
    if (_textfield_yanzhenma.text.length == 0) {
        [MBProgressHUD showError:@"验证码不能为空" toView:[UIApplication sharedApplication].keyWindow];
        return;
    }
    
    [WXDataService requestAFWithURL:Url_Member_login params:@{@"mobile":_textfield_phone.text,@"code":_textfield_yanzhenma.text} httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
       
        NSLog(@"===%@",result);
        if ([result[@"status"]integerValue]==0) {
            NSDictionary *dic = result[@"result"][@"info"];
            [UserDefaults setBool:YES forKey:ISLogin];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"headimgurl"]] forKey:Headimgurl];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"member_id"]] forKey:Member_id];
//            [UserDefaults setObject:[NSString stringWithFormat:@"1"] forKey:Member_id];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"member_vip_id"]] forKey:Member_vip_id];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"mobile"]] forKey:Mobile];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"username"] ]forKey:Username];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"name"]] forKey:Name];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"company"]]  forKey:Company];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"voice_status"]]  forKey:VOice_status];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"gesture_status"]]  forKey:Gexsture_status];
            [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"gesture_password"]]  forKey:Gesture_password];
            
            
             [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"enterprise_id"]]  forKey:Enterprise_id];
             [AppDelegate GetAppDelegate].enterprise_id = [UserDefaults objectForKey:Enterprise_id];
            [UserDefaults synchronize];
            [self.navigationController popToRootViewControllerAnimated:YES];
          
        }else{
            [MBProgressHUD showError:result[@"msg"] toView:[UIApplication sharedApplication].keyWindow];
        }
        
    } errorBlock:^(NSError *error) {
        
    }];
    
    
}


- (void)back
{

    if (_isVipVC) {
        [self.navigationController popViewControllerAnimated:YES];
    } else {
         [self.navigationController popViewControllerAnimated:NO];
        [[NSNotificationCenter defaultCenter]postNotificationName:NotiCenter_TabbarSeleced object:@"2"];
    }
    
   

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/


@end
