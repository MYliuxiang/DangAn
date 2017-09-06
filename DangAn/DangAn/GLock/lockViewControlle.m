//
//  lockViewController.m
//  Glock
//
//  Created by 刘家男 on 15/12/18.
//  Copyright © 2015年 刘家男. All rights reserved.
//

#import "lockViewController.h"
#import "lockView.h"
#define SWHITH [UIScreen mainScreen].bounds.size.width
#define SHIGHT [UIScreen mainScreen].bounds.size.height

static int countMark;
@interface lockViewController ()<lockViewDelegate,UIAlertViewDelegate>
@property (nonatomic ,strong)UIButton * overlookBtn;
@property (nonatomic ,strong)UILabel * promptBoardLabel;
@property (nonatomic ,copy)NSString *gesture_password;
@property (nonatomic ,copy)NSString *gesture_status;



@end

@implementation lockViewController
- (void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    //避免因程序意外退出时保存上次结果
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
    [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordTwo"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
//    _promptBoardLabel.text =_reset;
//    if([_resetIs isEqualToString:@"resetIs"]){
//        _overlookBtn.hidden=YES;
//    }
    
    
}
- (void)viewDidLoad {
    
    [super viewDidLoad];
    self.view.backgroundColor = Color_bg;
    countMark=0;
    [self logoSet];    
    
}
//logo
-(void)logoSet{
    
   
    
//    UIImageView *imageView1 = [[UIImageView alloc] initWithFrame:CGRectMake((kScreenWidth - 255) / 2.0, 64 + (205 - 80) / 2.0, 255, 80)];
//    imageView1.image = [UIImage imageNamed:@"我－彩色点"];
//    [self.view addSubview:imageView1];

    _promptBoardLabel =[[UILabel alloc]initWithFrame:CGRectMake(0, 64 + 70, kScreenWidth, 50)];
    _promptBoardLabel.textColor =[UIColor colorWithRed:25/255.0 green:173/255.0 blue:255/255.0 alpha:1.0];
   
    _promptBoardLabel.text = @"绘制手势，请至少连接四个点";
    if (self.index == 1) {
        _promptBoardLabel.text = @"确认已保存的密码";
    }
    _promptBoardLabel.adjustsFontSizeToFitWidth =YES;
    _promptBoardLabel.numberOfLines = 0;
    _promptBoardLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_promptBoardLabel];
    
 
    _Lockview = [[lockView alloc]init];
    _Lockview.backgroundColor = Color_bg;
 

    _Lockview.delegate = self;
    _Lockview.frame=CGRectMake((SWHITH- 590*SWHITH/750)/2, 64 + 150, 590*SWHITH/750, 590*SWHITH/750);
    
    [self.view addSubview:_Lockview];
    
}

-(void)overlookjump{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


//设置成功
- (void)setPassWordNotice:(NSString *)notice{
    
    if (_Lockview.index == 1) {
        //修改密码
        
        _promptBoardLabel.text =notice;
        _promptBoardLabel.textColor =[UIColor colorWithRed:25/255.0 green:173/255.0 blue:255/255.0 alpha:1.0];

        if([notice isEqualToString:@"解锁失败"]){
            _promptBoardLabel.textColor =[UIColor redColor];
            _promptBoardLabel.text =@"验证失败";

        }
        if([notice isEqualToString:@"两次密码设置不一致，请您重新设置密码"]){
        
            _promptBoardLabel.textColor =[UIColor redColor];

        }
        
        if ([notice isEqualToString:@"解锁成功"]){
            _promptBoardLabel.text =@"绘制手势，请至少连接四个点";
            _Lockview.index = 1;
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
            

        }
        
        if ([notice isEqualToString:@"密码设置成功"]) {
            
            NSDictionary *params;
            params = @{@"gestrue_password":[UserDefaults objectForKey:Gesture_index],@"member_id":[UserDefaults objectForKey:Member_id]};
            
            [WXDataService requestAFWithURL:Url_Other_setGesturePassword params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
                
                
                if(result){
                    
                    if ([[result objectForKey:@"status"] integerValue] == 0) {
                        
                        [MBProgressHUD showSuccess:@"成功" toView:self.view];
                        [UserDefaults setObject:[UserDefaults objectForKey:Gesture_index] forKey:Gesture_password];
                        [UserDefaults synchronize];
                        [self.navigationController popViewControllerAnimated:YES];
                        
                    }
                    
                    //没有数据了
                    if ([[result objectForKey:@"status"] integerValue] == 1) {
                        
                        [MBProgressHUD showError:result[@"msg"] toView:self.view];
                        [self.navigationController popViewControllerAnimated:YES];
                        
                    }
                }
            } errorBlock:^(NSError *error) {
                NSLog(@"%@",error);
                
                [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
                
            }];
        }
        
        return;
        
    
    
    }
    
    
    _promptBoardLabel.text =notice;
    _promptBoardLabel.textColor =[UIColor colorWithRed:25/255.0 green:173/255.0 blue:255/255.0 alpha:1.0];
 
    if ([notice isEqualToString:@"密码设置成功"]) {
        
        NSDictionary *params;
        params = @{@"gestrue_password":[UserDefaults objectForKey:Gesture_password],@"member_id":[UserDefaults objectForKey:Member_id]};
        
        NSLog(@"个人中心设置手势密码%@",params);
        
        [WXDataService requestAFWithURL:Url_Other_setGesturePassword params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
            
            
            if(result){
                
                if ([[result objectForKey:@"status"] integerValue] == 0) {
                    
                    [MBProgressHUD showSuccess:@"成功" toView:self.view];
                    [UserDefaults setObject:[NSString stringWithFormat:@"1"]  forKey:Gexsture_status];
                    [UserDefaults synchronize];
                    [self.navigationController popViewControllerAnimated:YES];
                    
                }
                
                //没有数据了
                if ([[result objectForKey:@"status"] integerValue] == 1) {
                  
                    
                    [MBProgressHUD showError:result[@"msg"] toView:self.view];
                    [UserDefaults setObject:[NSString stringWithFormat:@"0"]  forKey:Gexsture_status];
                    [UserDefaults synchronize];
                    [self.navigationController popViewControllerAnimated:YES];


                    
                }
            }
        } errorBlock:^(NSError *error) {
            NSLog(@"%@",error);
            
            [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
            [UserDefaults setObject:[NSString stringWithFormat:@"0"]  forKey:Gexsture_status];
            [UserDefaults synchronize];
            
        }];

    
    }else if ([notice isEqualToString:@"解锁成功"]) {
        if (self.index == 1) {
            _Lockview.index = 1;
            _promptBoardLabel.text =@"绘制解锁图案";

            return;
        }
        if ([_resetIs isEqualToString:@"resetIs"]) {
            
            _promptBoardLabel.text =@"验证成功";
            [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"passwordGlock"];
            [[NSUserDefaults standardUserDefaults] synchronize];
            
        }else{
            [self dismissViewControllerAnimated:YES completion:nil];
        }
        
    }else if([notice isEqualToString:@"两次密码设置不一致，请您重新设置密码"]||[notice isEqualToString:@"解锁失败"]){
        
        _promptBoardLabel.textColor =[UIColor redColor];
        
        if ([notice isEqualToString:@"解锁失败"]) {
            countMark++;
            if(countMark ==1){
                
                _promptBoardLabel.text =@"您的解锁密码输入有误";
                
            }else if(countMark ==5){
                
                _promptBoardLabel.text =[NSString stringWithFormat:@"您的解锁密码输入错误，累计已到%d次",countMark];
          
                UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"手势密码已失效" message:@"请您重新登录！" delegate:self cancelButtonTitle:@"重新登录" otherButtonTitles:nil];
                [alert show];
                
            }else{
                
                _promptBoardLabel.text =[NSString stringWithFormat:@"您的解锁密码输入错误，累计已到%d次",countMark];
            }
        }

    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    
    NSDictionary *params;
    params = @{@"gestrue_password":@"",@"member_id":[UserDefaults objectForKey:Member_id]};
    
    [WXDataService requestAFWithURL:Url_Other_setGesturePassword params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                [MBProgressHUD showSuccess:@"成功" toView:self.view];
                [UserDefaults setObject:[NSString stringWithFormat:@"0"]  forKey:Gexsture_status];
                [UserDefaults synchronize];
                [MyLogin gotoLoginViewWithTarget:self];

            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
                
                
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];

    
  //  [self dismissViewControllerAnimated:YES completion:nil];
    //进行重新登录跳转
}




@end
