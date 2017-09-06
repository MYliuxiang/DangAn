//
//  OrderNumVC.m
//  DangAn
//
//  Created by 李江 on 16/10/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderNumVC.h"
#import "OrderVC.h"
@interface OrderNumVC ()
{
    NSString *_countNum1;
    NSString *_countNum2;
}
@end

@implementation OrderNumVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.text = @"订单";
    

    
    [self _loadData];
}

- (void)_loadData
{

    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id]};
    
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_orderMiddlePage params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            _countNum1 = dic[@"count1"];
            _countNum2 = dic[@"count2"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                for (int i = 0 ; i < 2 ; i ++) {
                    UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(10, 80 + 200 * i, kScreenWidth - 20, 180)];
                    bgView.layer.cornerRadius = 5;
                    bgView.layer.borderWidth = 1;
                    bgView.tag = 100 + i;
                    bgView.userInteractionEnabled = YES;
                    bgView.backgroundColor = [UIColor whiteColor];
                    bgView.layer.borderColor = Color_bg.CGColor;
                    [self.view addSubview:bgView];
                    
                    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
                    [bgView addGestureRecognizer:tap];
                    
                    UILabel *lableNum = [[UILabel alloc]initWithFrame:CGRectMake(0, 70, bgView.width, 25)];
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
                        lableNum.text = dic[@"count2"];
                        labletitle.text = @"未完成订单";
                    } else {
                        lableNum.textColor = Color_blue;
                        lableNum.text = dic[@"count1"];
                        labletitle.text = @"已完成订单";
                    
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
 
    //未完成订单
    if(tap.view.tag == 100)
    {
        OrderVC *orderVC = [[OrderVC alloc]init];
        orderVC.typePush = @"2";
        orderVC.count1 = _countNum1;
        orderVC.count2 = _countNum2;
        [self.navigationController pushViewController:orderVC animated:YES];
    
        
    }
    
    //已完成订单
    if(tap.view.tag == 101)
    {
        OrderVC *orderVC = [[OrderVC alloc]init];
        orderVC.typePush = @"1";
        orderVC.count1 = _countNum1;
        orderVC.count2 = _countNum2;
        [self.navigationController pushViewController:orderVC animated:YES];
        
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
