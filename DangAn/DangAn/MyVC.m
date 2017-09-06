//
//  MyVC.m
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "MyVC.h"
#import "lockViewController.h"
#import "NOdetailVC.h"
#import "ContactViewController.h"
#import "OrderVC.h"
#import "AdressMangerVC.h"
#import "ModifydataVC.h"
#import "GestureVC.h"
#import "YuyingyanzhengVC.h"
#import "LSsoundlockVC.h"
#import "OrderNumVC.h"

@interface MyVC ()

@end

@implementation MyVC


- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    
    if (![UserDefaults boolForKey:ISLogin]) {
       
         [MyLogin gotoLoginViewWithTarget:self];
   
    } else {
    
        [self loadData];

        [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:[UserDefaults objectForKey:Headimgurl]] placeholderImage:nil];
        if ([UserDefaults objectForKey:Company]) {
            _lable_name.text = [NSString stringWithFormat:@"欢迎您，%@%@",[UserDefaults objectForKey:Company],[UserDefaults objectForKey:Name]];
        } else {
          _lable_name.text = [UserDefaults objectForKey:Name];
        }
        
    }
    
    [_tableView reloadData];

}

- (void)loadData
{
    
    NSDictionary *params;
    
    params = @{@"member_id":[UserDefaults objectForKey:Member_id]};
    
    [WXDataService requestAFWithURL:Url_Other_index params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        
        if(result){
            NSDictionary *dic = result[@"result"];
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
               [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"headimgurl"]] forKey:Headimgurl];
               [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"uname"] ]forKey:Name];
                [UserDefaults setObject:[NSString stringWithFormat:@"%@",dic[@"gesture_status"]]  forKey:Gexsture_status];
                [UserDefaults synchronize];
                [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:[UserDefaults objectForKey:Headimgurl]] placeholderImage:nil];
                if ([UserDefaults objectForKey:Company]) {
                    _lable_name.text = [NSString stringWithFormat:@"欢迎您，%@%@",[UserDefaults objectForKey:Company],[UserDefaults objectForKey:Name]];
                } else {
                    _lable_name.text = [UserDefaults objectForKey:Name];
                }
                
               
                
                
            }
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
              
            }
        }
    } errorBlock:^(NSError *error) {
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
        
    }];



}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navbarHiden = YES;
    
    self.automaticallyAdjustsScrollViewInsets = NO;

    self.headerView.height = 205;
    self.headerView.width = kScreenWidth;
    self.tableView.tableHeaderView = self.headerView;
    
    
    self.footView.height = 80;
    self.footView.width = kScreenWidth;
    self.tableView.tableFooterView = self.footView;
    
    
    NSMutableAttributedString *attributedString1 = [[NSMutableAttributedString alloc] initWithString:[NSString stringWithFormat:@"软件版本：%@\n中泰德信版权所有©2016",[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]]];
    NSMutableParagraphStyle * paragraphStyle1 = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle1 setLineSpacing:8];
    [attributedString1 addAttribute:NSParagraphStyleAttributeName value:paragraphStyle1 range:NSMakeRange(0, [[NSString stringWithFormat:@"软件版本：%@\n中泰德信版权所有©2016",[[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"]] length])];
    [self.footLabel setAttributedText:attributedString1];
    self.footLabel.textColor = [MyColor colorWithHexString:@"#666666"];
    self.footLabel.textAlignment = NSTextAlignmentCenter;
    
    self.headerImageView.layer.masksToBounds = YES;
    self.headerImageView.layer.cornerRadius = 40;
    _lable_name.textColor = Color_text;
    self.titles = @[@[@"个人资料",@"我的订单",@"地址管理",@"声音锁",@"手势锁"],@[@"留言反馈",@"帮助中心",@"联系我们",@"关于我们",@"隐私与条款"]];
    self.images = @[@[@"我－个人资料",@"我－隐私条款",@"我－地址",@"我－声音锁",@"我－手势锁"],@[@"我－留言",@"我－帮助",@"我－联系",@"我－关于",@"我－隐私条款"]];
    
}


#pragma mark -------UITableView Delegate ------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        
        return 5;
        
    }else if (section == 1){
        
        return 5;
    }else{
    
        return 1;
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 3;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifire = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifire];
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 45)];
        label.textColor = [UIColor redColor];
        label.tag = 100;
        label.textAlignment = NSTextAlignmentCenter;
        label.font = [UIFont systemFontOfSize:16];
        [cell.contentView addSubview:label];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
        
    }
    
    UILabel *label = (UILabel *)[cell.contentView viewWithTag:100];
    
    if (indexPath.section == 2) {
        label.hidden = NO;
        label.text = @"退出登录";
        cell.accessoryType = UITableViewCellAccessoryNone;

        
    }else{
       
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

        label.hidden = YES;
        cell.imageView.image = [UIImage imageNamed:self.images[indexPath.section][indexPath.row]];
        cell.textLabel.text = self.titles[indexPath.section][indexPath.row];
        cell.textLabel.font = [UIFont systemFontOfSize:14];
        cell.detailTextLabel.font = [UIFont systemFontOfSize:14];
    }
    if (indexPath.section == 0 ) {
        if (indexPath.row == 3) {
          
            if ([[UserDefaults objectForKey:VOice_status] integerValue] == 0) {
                cell.detailTextLabel.text = @"未开启";
                
            }else{
                
                cell.detailTextLabel.text = @"已开启";
                
            }
          
            
        }
        
        if (indexPath.row == 4) {
            
          
    
            if ([[UserDefaults objectForKey:Gexsture_status] integerValue] == 0) {
                cell.detailTextLabel.text = @"未开启";

            }else{
            
                cell.detailTextLabel.text = @"已开启";

            }
            

            
        }
    }else{
    
        cell.detailTextLabel.text = @"";

        
    }
    
    
    return cell;
    
}



- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 10;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 45;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0) {
        
        //个人资料
        if(indexPath.row == 0)
        {
            ModifydataVC *vc = [[ModifydataVC alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
            
            
         
        }
        //我的订单
        if(indexPath.row == 1)
        {
//            OrderVC *orderVC = [[OrderVC alloc]init];
//            [self.navigationController pushViewController:orderVC animated:YES];
            
            OrderNumVC *orderNumVC = [[OrderNumVC alloc]init];
            [self.navigationController pushViewController:orderNumVC animated:YES];
        }
        
        //地址管理
        if (indexPath.row == 2) {
            
            AdressMangerVC *adressMangerVC = [[AdressMangerVC alloc]init];
            [self.navigationController pushViewController:adressMangerVC animated:YES];
            
        }
        
        //手势索
        if (indexPath.row == 3) {
            
            UIAlertView *alerview = [[UIAlertView alloc]initWithTitle:@"提示" message:@"正在开发中" delegate:self cancelButtonTitle:nil otherButtonTitles:@"确定", nil];
            
            [alerview show];
            
            return;
            
            LSsoundlockVC * lock =[LSsoundlockVC new];
            [self.navigationController pushViewController:lock animated:YES];
            
        }
        
        if (indexPath.row == 4) {
            GestureVC *vc = [[GestureVC alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
    
    if (indexPath.section == 1) {
        //留言
        if(indexPath.row == 0)
        {
            ContactViewController *contactViewController = [[ContactViewController alloc]init];
            [self.navigationController pushViewController:contactViewController animated:YES];
        
        } else {
        
            NSString *type_id;
            //帮助中心
            if(indexPath.row == 1)
            {
                type_id = @"6";
            }
            //联系我们
            if(indexPath.row == 2)
            {
                 type_id = @"7";
            }
            //关于我们
            if(indexPath.row == 3)
            {
                type_id = @"8";
            }
            //隐私政策
            if(indexPath.row == 4)
            {
                type_id = @"9";
            }
           
            NOdetailVC *nodetailVC  = [[NOdetailVC alloc]init];
            nodetailVC.type_id = type_id;
            [self.navigationController pushViewController:nodetailVC animated:YES];
        
        
        }
    }
    
    
    //退出登录
    if (indexPath.section == 2) {
        
        [UserDefaults setBool:NO forKey:ISLogin];
        [UserDefaults setObject:@"" forKey:Headimgurl];
        [UserDefaults setObject:@"" forKey:Member_id];
        [UserDefaults setObject:@"" forKey:Member_vip_id];
        [UserDefaults setObject:@"" forKey:Mobile];
        [UserDefaults setObject:@"" forKey:Username];
        [UserDefaults setObject:@"" forKey:Name];
        [UserDefaults setObject:@""  forKey:Company];
        [UserDefaults setObject:@"" forKey:VOice_status];
        [UserDefaults setObject:@"" forKey:Gexsture_status];
        [UserDefaults setObject:@"" forKey:Gesture_password];
        [UserDefaults setObject:@"" forKey:Enterprise_id];
        [UserDefaults synchronize];
        [MyLogin gotoLoginViewWithTarget:self];
       
    }
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)noticeAC:(UIButton *)sender {
    
    NoticeVC *vc = [[NoticeVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}
@end

































