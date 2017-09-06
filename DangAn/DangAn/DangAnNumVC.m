//
//  DangAnNumVC.m
//  DangAn
//
//  Created by 李江 on 16/10/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "DangAnNumVC.h"
#import "VIPDangAnListVC.h"
@interface DangAnNumVC ()
{
    NSString *_countNum1;
    NSString *_countNum2;
    NSString *_countNum3;
    NSString *_countNum4;
}
@end

@implementation DangAnNumVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.text = @"全部档案";
    
    [self _loadData];
}
- (void)_loadData
{
    
    NSDictionary *params = @{@"enterprise_id":[UserDefaults objectForKey:Member_id]};
    
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_archiveMiddlePage params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            _countNum1 = dic[@"count1"];
            _countNum2 = dic[@"count2"];
            _countNum3 = dic[@"count3"];
            _countNum4 = dic[@"count4"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                for (int i = 0 ; i < 4 ; i ++) {
                    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(10, 64 + 10 * (i + 1) + ((kScreenHeight - 64 - 50) / 4.0) * i, kScreenWidth - 20, (kScreenHeight - 64 - 50) / 4.0)];
                    bgView.layer.cornerRadius = 5;
                    bgView.layer.borderWidth = 1;
                    bgView.tag = 100 + i;
                    bgView.userInteractionEnabled = YES;
                    bgView.backgroundColor = [UIColor whiteColor];
                    bgView.layer.borderColor = Color_bg.CGColor;
                    [self.view addSubview:bgView];
                    
                    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
                    [bgView addGestureRecognizer:tap];
                    
                    UILabel *lableNum = [[UILabel alloc]initWithFrame:CGRectMake(0, ((kScreenHeight - 64 - 50) / 4.0 - 25 - 15 -20) / 2.0, bgView.width, 25)];
                    lableNum.textAlignment = NSTextAlignmentCenter;
                    lableNum.font = [UIFont boldSystemFontOfSize:22];
                    [bgView addSubview:lableNum];
                    
                    UILabel *labletitle = [[UILabel alloc]initWithFrame:CGRectMake(0, lableNum.bottom + 15, bgView.width, 20)];
                    labletitle.textAlignment = NSTextAlignmentCenter;
                    labletitle.font = [UIFont systemFontOfSize:15];
                    labletitle.textColor = Color_text;
                    [bgView addSubview:labletitle];
                    
                    if (i == 0) {
                        lableNum.textColor = Color_yellow;
                        lableNum.text = dic[@"count1"];
                        labletitle.text = @"在库数量";
                    } else if (i == 1){
                        lableNum.textColor = Color_yellow;
                        lableNum.text = dic[@"count2"];
                        labletitle.text = @"离库数量";
                        
                    } else if (i == 2){
                        lableNum.textColor = Color_blue;
                        lableNum.text = dic[@"count3"];
                        labletitle.text = @"永久离库数量";
                        
                    } else {
                        lableNum.textColor = Color_blue;
                        lableNum.text = dic[@"count4"];
                        labletitle.text = @"已销毁数量";
                        
                    }
                    
                    
                }
                
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
    
    
    
}


- (void)tapAction:(UITapGestureRecognizer *)tap
{
    
    NSString *file_status;
    // file_status 状态 1-在库 2-离库 3-永久离库 99-已销毁
    if(tap.view.tag == 100)
    {
       
       file_status = @"1";
        
    }
    if(tap.view.tag == 101)
    {
        file_status = @"2";
        
    }
    if(tap.view.tag == 102)
    {
        file_status = @"3";
        
    }
    if(tap.view.tag == 103)
    {
        file_status = @"99";
        
    }
    
    VIPDangAnListVC *vc = [[VIPDangAnListVC alloc] init];
    vc.enterprise_id = _enterprise_id;
    vc.file_status = file_status;
    [self.navigationController pushViewController:vc animated:YES];
    
    
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
