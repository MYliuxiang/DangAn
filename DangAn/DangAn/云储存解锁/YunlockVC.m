//
//  YunlockVC.m
//  DangAn
//
//  Created by macvivi on 16/8/21.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "YunlockVC.h"
#import "YunStoraModel.h"
#import "WenjianVC.h"

#define SWHITH [UIScreen mainScreen].bounds.size.width
#define SHIGHT [UIScreen mainScreen].bounds.size.height

static int countMark;

@interface YunlockVC ()<YunlockViewDelegate ,UIAlertViewDelegate>

@property (nonatomic ,strong)UIButton * overlookBtn;
@property (nonatomic ,strong)UILabel * promptBoardLabel;




@end

@implementation YunlockVC

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
        _promptBoardLabel.text = @"确认已保存的手势";
        
    }
    _promptBoardLabel.adjustsFontSizeToFitWidth =YES;
    _promptBoardLabel.numberOfLines = 0;
    _promptBoardLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:_promptBoardLabel];
    
    
    _Lockview = [[YunLockView alloc]init];
    _Lockview.backgroundColor = Color_bg;
    _Lockview.delegate = self;
    _Lockview.gesture_status= _gesture_status;
    _Lockview.gesture_password = _gesture_password;
    _Lockview.frame=CGRectMake((SWHITH- 590*SWHITH/750)/2, 64 + 150, 590*SWHITH/750, 590*SWHITH/750);
    [self.view addSubview:_Lockview];
    
}

-(void)overlookjump{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}


//设置成功
- (void)setPassWordNotice:(NSString *)notice{
    

    //
    if ([_gesture_status integerValue]==0 ) { ///未设置解锁
        
        _promptBoardLabel.text =notice;
        _promptBoardLabel.textColor =[UIColor colorWithRed:25/255.0 green:173/255.0 blue:255/255.0 alpha:1.0];
        
        if([notice isEqualToString:@"两次密码设置不一致，请您重新设置密码"]){
            
            _promptBoardLabel.textColor =[UIColor redColor];
            
        }
        
        if ([notice isEqualToString:@"解锁成功"]){
            _promptBoardLabel.text =@"绘制手势，请至少连接四个点";
            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordOne"];
            
            
        }
        
        if ([notice isEqualToString:@"密码设置成功"]) {

            NSString *passwo = [UserDefaults objectForKey:Yun_password];
            NSLog(@"手势密码:%@",passwo);
            [self setGesturePassword:passwo];
        }
        
    }else{
    
        
        
        _promptBoardLabel.textColor =[UIColor colorWithRed:25/255.0 green:173/255.0 blue:255/255.0 alpha:1.0];
        
        if (_index==3) { //设置为私密
             _promptBoardLabel.text =@"设置成功";
            
        }else if (_index==4){
             _promptBoardLabel.text =@"设置成功";
            
        }else{
       
            _promptBoardLabel.text =notice;
        }
        
        
//        _promptBoardLabel.text =notice;
//        _promptBoardLabel.textColor =[UIColor colorWithRed:25/255.0 green:173/255.0 blue:255/255.0 alpha:1.0];
        
        
        
      if ([notice isEqualToString:@"解锁成功"]) {
          
          if (_index==3) { //设置为私密
              [self shimi_loadtata:_model.Yunid shoushiMM:_gesture_password];
          }else if (_index==4){
          
              [self gongkai_loadtata:_model.Yunid shoushiMM:_gesture_password];
          }else{
          
              
              WenjianVC *vc  = [[WenjianVC alloc]init];
              vc.zhujianid =_model.Yunid;
              vc.title = _model.title;
              UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:0 target:nil action:nil];
              [self.navigationItem setBackBarButtonItem:bar];
              [self.navigationController pushViewController:vc animated:YES];
              
//              DangAnVC *vc = [[DangAnVC alloc]init];
//              vc.DAtitle = _model.title;
//              vc.DAid = _model.Yunid;
//              vc.type = 2;
//              UIBarButtonItem *bar = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:0 target:nil action:nil];
//              [self.navigationItem setBackBarButtonItem:bar];
//              [self.navigationController pushViewController:vc animated:YES];
              
              
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
    
    
    
    
//    _promptBoardLabel.text =notice;
//    _promptBoardLabel.textColor =[UIColor colorWithRed:25/255.0 green:173/255.0 blue:255/255.0 alpha:1.0];
//    
//    if ([notice isEqualToString:@"密码设置成功"]) {
//        
//        NSDictionary *params;
//        params = @{@"gestrue_password":[UserDefaults objectForKey:Gesture_password],@"member_id":[UserDefaults objectForKey:Member_id]};
//        
//        [WXDataService requestAFWithURL:Url_Other_getNotice params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
//            
//            
//            if(result){
//                
//                if ([[result objectForKey:@"status"] integerValue] == 0) {
//                    
//                    [MBProgressHUD showSuccess:@"成功" toView:self.view];
//                    [UserDefaults setObject:[NSString stringWithFormat:@"1"]  forKey:Gexsture_status];
//                    [UserDefaults synchronize];
//                    [self.navigationController popViewControllerAnimated:YES];
//                    
//                }
//                
//                //没有数据了
//                if ([[result objectForKey:@"status"] integerValue] == 1) {
//                    
//                    
//                    [MBProgressHUD showError:result[@"msg"] toView:self.view];
//                    [UserDefaults setObject:[NSString stringWithFormat:@"0"]  forKey:Gexsture_status];
//                    [UserDefaults synchronize];
//                    [self.navigationController popViewControllerAnimated:YES];
//                    
//                    
//                    
//                }
//            }
//        } errorBlock:^(NSError *error) {
//            NSLog(@"%@",error);
//            
//            [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
//            [UserDefaults setObject:[NSString stringWithFormat:@"0"]  forKey:Gexsture_status];
//            [UserDefaults synchronize];
//            
//        }];
//        
//        
//    }else if ([notice isEqualToString:@"解锁成功"]) {
//        if ([_resetIs isEqualToString:@"resetIs"]) {
//            
//            _promptBoardLabel.text =@"验证成功";
//            [[NSUserDefaults standardUserDefaults]removeObjectForKey:@"passwordGlock"];
//            [[NSUserDefaults standardUserDefaults]synchronize];
//            
//        }else{
//            [self dismissViewControllerAnimated:YES completion:nil];
//        }
//        
//    }else if([notice isEqualToString:@"两次密码设置不一致，请您重新设置密码"]||[notice isEqualToString:@"解锁失败"]){
//        
//        _promptBoardLabel.textColor =[UIColor redColor];
//        
//        if ([notice isEqualToString:@"解锁失败"]) {
//            countMark++;
//            if(countMark ==1){
//                
//                _promptBoardLabel.text =@"您的解锁密码输入有误";
//                
//            }else if(countMark ==5){
//                
//                _promptBoardLabel.text =[NSString stringWithFormat:@"您的解锁密码输入错误，累计已到%d次",countMark];
//                
//                UIAlertView *alert=[[UIAlertView alloc] initWithTitle:@"手势密码已失效" message:@"请您重新登录！" delegate:self cancelButtonTitle:@"重新登录" otherButtonTitles:nil];
//                [alert show];
//                
//            }else{
//                
//                _promptBoardLabel.text =[NSString stringWithFormat:@"您的解锁密码输入错误，累计已到%d次",countMark];
//            }
//        }
//        
//    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{

    
    [self setGesturePassword:@""];
   
    //进行重新登录跳转
}


//设置为私密档案的网络请求
- (void)shimi_loadtata:(NSString *)zjid shoushiMM:(NSString *)shoushimmima{
    
    NSDictionary *params = @{@"cloud_archives_id":zjid,@"member_id":[UserDefaults objectForKey:Member_id],@"gesture_password":shoushimmima};
    
    [WXDataService requestAFWithURL:Url_Cloud_toPrivate params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
            [self.navigationController popViewControllerAnimated:YES];
            [[NSNotificationCenter defaultCenter]postNotificationName:@"shuanxinDA" object:nil];
            
        }else{
            
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
            
        }
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    
    
}


//设置为公开档案

- (void)gongkai_loadtata:(NSString *)zjid shoushiMM:(NSString *)shoushimmima{
    
    NSDictionary *params = @{@"cloud_archives_id":zjid,@"member_id":[UserDefaults objectForKey:Member_id],@"gesture_password":shoushimmima};
    
    [WXDataService requestAFWithURL:Url_Cloud_toPublic params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
            [self.navigationController popViewControllerAnimated:YES];
            [[NSNotificationCenter defaultCenter]postNotificationName:@"shuanxinDA" object:nil];
        }else{
            
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
            
        }
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}


//设置手势密码
- (void)setGesturePassword:(NSString *)GesturePassword{

    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"gestrue_password":GesturePassword};
    [WXDataService requestAFWithURL:Url_Other_setGesturePassword params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
             [[NSNotificationCenter defaultCenter]postNotificationName:NotiCenter_TabbarSeleced object:@"4"];
            [MyLogin gotoLoginViewWithTarget:self];
            
            
        }else{
            
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
            
        }
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];

}




@end
