//
//  GestureVC.m
//  DangAn
//
//  Created by 刘翔 on 16/8/18.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "GestureVC.h"
#import "lockViewController.h"

@interface GestureVC ()

@end

@implementation GestureVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self.tableView reloadData];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    self.text = @"手势锁";

}

#pragma  mark --------UITableView Delegete----------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if ([[UserDefaults objectForKey:Gexsture_status] integerValue] == 0) {

        return 1;
    }else{
        
        return 2;
    }
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        
        return 1;
        
    }else{
    
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *identifire = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifire];
               cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        if (indexPath.section == 0) {
            UISwitch *sw = [[UISwitch alloc] initWithFrame:CGRectMake(kScreenWidth - 70, 7, 0, 0)];
            
            if ([[UserDefaults objectForKey:Gexsture_status] integerValue] == 0) {
                
                [sw setOn:NO];
            }else{
                
                [sw setOn:YES];
            }
            
            sw.tag = 100;
            [sw addTarget:self action:@selector(switchAC:) forControlEvents:UIControlEventValueChanged];
            [cell.contentView addSubview:sw];
            
        }

    }
    
//    UISwitch *sw = [cell.contentView vie]
//    uiswitch 
   
    UISwitch *sw = [cell.contentView viewWithTag:100];
    if (indexPath.section == 0) {
        
        if ([[UserDefaults objectForKey:Gexsture_status] integerValue] == 0) {
            
            [sw setOn:NO];
        }else{
            
            [sw setOn:YES];
        }
        
    }

    if (indexPath.section ==0) {
        
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.textLabel.text = @"手势密码开关";
        
    }else{
    
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

        if (indexPath.row == 0) {
            
            cell.textLabel.text = @"修改密码";

        }else{
            
            cell.textLabel.text = @"忘记密码";

        }
    }
    cell.textLabel.font =[UIFont systemFontOfSize:14];
    
    return cell;
    
    
}

- (void)switchAC:(UISwitch *)sender
{
    if(sender.on){
        NSLog(@"打开");
        lockViewController *vc = [[lockViewController alloc] init];
        [self.navigationController pushViewController:vc animated:YES];
    
    }else{
        NSLog(@"关闭");
        NSDictionary *params;
        
        params = @{@"gestrue_password":@"",@"member_id":[UserDefaults objectForKey:Member_id]};
        
        [WXDataService requestAFWithURL:Url_Other_setGesturePassword params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
            
            if(result){
                NSDictionary *dic = result[@"result"];
                
                if ([[result objectForKey:@"status"] integerValue] == 0) {
                    
                    [MBProgressHUD showSuccess:@"成功" toView:self.view];
                    [UserDefaults setObject:[NSString stringWithFormat:@"0"]  forKey:Gexsture_status];
                    [UserDefaults synchronize];
                    [self.tableView reloadData];
                }
                
                //没有数据了
                if ([[result objectForKey:@"status"] integerValue] == 1) {
                    
                    
                    [MBProgressHUD showError:result[@"msg"] toView:self.view];
                  
                    [self.tableView reloadData];

                    
                    
                }
            }
        } errorBlock:^(NSError *error) {
            NSLog(@"%@",error);
            
            [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
            [self.tableView reloadData];

            
        }];
        

    }


}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 10;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section ==1) {
        
        if (indexPath.row == 0) {
            //修改密码
            lockViewController *vc = [[lockViewController alloc] init];
            vc.index = 1;
            [self.navigationController pushViewController:vc animated:YES];
            
            
        }else{
        
            //忘记密码
            
        }
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
