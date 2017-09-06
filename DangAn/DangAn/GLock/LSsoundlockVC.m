//
//  LSsoundlockVC.m
//  DangAn
//
//  Created by 未来社区 on 16/9/7.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LSsoundlockVC.h"
#import "YuyingyanzhengVC.h"

@interface LSsoundlockVC ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation LSsoundlockVC{

    NSArray *dataAry;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"声音锁";

    dataAry = @[@"启用声音锁",@"重设声音锁",@"尝试验证"];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _tableView.tableHeaderView = [[UIView alloc]initWithFrame:CGRectZero];
    _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return dataAry.count;
    
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *identify = @"fdfdfd";
    
    UITableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:identify];
    UISwitch *swi;
    if (cell==nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identify];
        
        if (indexPath.row==0) {
            swi= [[UISwitch alloc]initWithFrame:CGRectMake(kScreenWidth-90,10 , 90, 35)];
            [swi addTarget:self action:@selector(swiAction:) forControlEvents:UIControlEventValueChanged];
            [cell.contentView addSubview:swi];
            
        }
        
    }
    
    
    
    
    if (indexPath.row !=0) {
        
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    [swi setOn: [[UserDefaults objectForKey:VOice_status] integerValue]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    cell.textLabel.text = dataAry[indexPath.row];
    
    return cell;
}



- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{


    return 55;

}


- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{

    return 0.1;

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    

    
    if (indexPath.row !=0) {
        
        YuyingyanzhengVC *VC = [[YuyingyanzhengVC alloc]init];
        
        if (indexPath.row==1) {
            VC.type =2;
        }
        
        
        if (indexPath.row==2) {
            VC.type =3;
        }
        
        [self.navigationController pushViewController:VC animated:YES];
        
    }
    

 
    
}


- (void)swiAction:(UISwitch *)switchA{

    
    UISwitch *switchButton = (UISwitch*)switchA;
    BOOL isButtonOn = [switchButton isOn];
    
    YuyingyanzhengVC *VC = [[YuyingyanzhengVC alloc]init];

    if (isButtonOn) {
         VC.type =1;
    }else {
         VC.type =0;
    }

    [self.navigationController pushViewController:VC animated:YES];
    

}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
