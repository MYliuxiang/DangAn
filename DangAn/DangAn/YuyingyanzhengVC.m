//
//  YuyingyanzhengVC.m
//  DangAn
//
//  Created by 李江 on 16/7/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "YuyingyanzhengVC.h"
#import "YunStorageVC.h"

@interface YuyingyanzhengVC ()

@property(nonatomic,assign)NSInteger voice_status;


@end

@implementation YuyingyanzhengVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    
    [_btn initRecord:self maxtime:10 title:@""];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(luying:) name:@"luying" object:nil];
    

//        [self shenngtype];
    [self getVoice];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (void)luying:(NSNotification *)luying{
    
    CGFloat volume = [luying.object floatValue];
//    she.image = [UIImage imageNamed:[NSString stringWithFormat:@"mic_%.0f.png",volume*10 > 5 ? 5 : volume*10]];
    
    [_btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"声音识别动画 %.0f.png",volume*10 > 3 ? 3 : volume*10]] forState:UIControlStateNormal];
    
    //    [she setImage:[NSString stringWithFormat:@"mic_%.0f.png",volume*10 > 5 ? 5 : volume*10]];
    
}


-(void)endRecord:(NSData *)voiceData{
    
    [_btn setImage:[UIImage imageNamed:@"声音识别动画 0"] forState:UIControlStateNormal];
   
//    NSError *error;
//    play = [[AVAudioPlayer alloc]initWithData:voiceData error:&error];
//    NSLog(@"%@",error);
//    play.volume = 1.0f;
//    [play play];
//    NSLog(@"yesssssssssss..........%f",play.duration);


    
    if (_type==0 || _type==1) {
        [self shengyingshagnchaun:voiceData];
    }

    
    if (_type==2) {
        
          [self shengyingshagnchaun:voiceData];
        
    }
    
    if (_type==3) {
        
        [self shengyingshagnchaun:voiceData];
        
    }
   
}

//获取声音

- (void)getVoice{
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id]};
    [WXDataService requestAFWithURL:Url_Other_getVoiceString params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            NSDictionary *datadic = result[@"result"];
            _shuzi.text = [NSString stringWithFormat:@"%@", datadic[@"string"]];
            
        }
    } errorBlock:^(NSError *error) {
        
        NSLog(@"%@",error);
        
    }];
    
}


//获取声音锁的状态
- (void)shenngtype{
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id]};
    [WXDataService requestAFWithURL:Url_Other_getVoicePassword params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            NSDictionary *datadic = result[@"result"];
            NSDictionary *info = datadic[@"info"];
            
            _shuzi.text = info[@"voice_password_show"];
            _voice_status = [info[@"voice_status"] integerValue];
            
            
        }
    } errorBlock:^(NSError *error) {
        
        NSLog(@"%@",error);
        
    }];
    
}

//上传声音
- (void)shengyingshagnchaun:(NSData *)data{

    [WXDataService postMP3:Url_YuYingUpload params:nil fileData:data finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            NSDictionary *datadic = result[@"result"];

            NSString *path = datadic[@"path"];
            
            
            if (_type==3) {
                [self zhengque:path];
            }else{
             [self shezhi:path];
                
            }
            
           

            
        }

    } errorBlock:^(NSError *error) {
        
    }];
}


//设置声音密码
- (void)shezhi:(NSString *)path{


    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"voice_status":@(self.type),@"voice_password":path};
    [WXDataService requestAFWithURL:Url_Other_setVoicePassword params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){

            [MBProgressHUD showSuccess:result[@"msg"] toView:[UIApplication sharedApplication].keyWindow];
            [[NSNotificationCenter defaultCenter]postNotificationName:@"success" object:nil];
            [UserDefaults setObject:[NSString stringWithFormat:@"%d",self.type] forKey:VOice_status];
            
            [self.navigationController popViewControllerAnimated:YES];
        }else{
         [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        
        NSLog(@"%@",error);
        
    }];
    
    
    
}


//判断声音密码是否正确
- (void)zhengque:(NSString *)path{
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"voice_password":path};
    [WXDataService requestAFWithURL:Url_Other_checkVoicePassword params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"] toView:[UIApplication sharedApplication].keyWindow];
            [[NSNotificationCenter defaultCenter]postNotificationName:@"success" object:nil];
            [self.navigationController popToRootViewControllerAnimated:YES];
        }else{
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        
        NSLog(@"%@",error);
        
    }];
    
    
    
}







@end
