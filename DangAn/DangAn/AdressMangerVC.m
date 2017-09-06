//
//  AdressMangerVC.m
//  DangAn
//
//  Created by lijiang on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AdressMangerVC.h"
#import "AdressmangerCell.h"
#import "AddAdressVCViewController.h"

@interface AdressMangerVC ()

@end

@implementation AdressMangerVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.text = @"地址管理";
    [self addrighttitleString:@"添加"];
    self.dataList = [NSMutableArray array];
    [self lodaData];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self lodaData];

}

- (void)rightAction
{
    AddAdressVCViewController *vc = [[AddAdressVCViewController alloc] init];
    vc.isAdd = YES;
    [self.navigationController pushViewController:vc animated:YES];
    

}

- (void)lodaData
{
    NSDictionary *params;
    params = @{@"member_id":[UserDefaults objectForKey:Member_id]};
    
    

    [WXDataService requestAFWithURL:Url_Other_listAddress params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                [self.dataList removeAllObjects];
                NSArray *array = dic[@"list"];
                for (NSDictionary *subdic in array) {
                    
                    AdressModel *model = [[AdressModel alloc] initWithDataDic:subdic];
                    [self.dataList addObject:model];

                }
                
                [self.tableView reloadData];
            
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString *cellID = @"cellID";
    AdressmangerCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"AdressmangerCell" owner:nil options:nil]lastObject];
        UIView *view = [UIView new];
        view.backgroundColor = [UIColor clearColor];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 22, 22)];
        imageView.image = [UIImage imageNamed:@"购物车已选择"];
        [view addSubview:imageView];
        cell.selectedBackgroundView = view;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    AdressModel *model = self.dataList[indexPath.row];
    cell.model = model;
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;

}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return .1;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    AdressModel *model = self.dataList[indexPath.row];
    
    
    if (_ischooseAdress) {
        NSDictionary *dic = @{@"address":model.address,@"id":model.address_id,@"mobile":model.mobile,@"name":model.name};
        [_delegate clickDic:dic];
        [self.navigationController popViewControllerAnimated:YES];
        return;
    }
    
    
    NSDictionary *params;
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"address_id":model.address_id};
    
    
    
    [WXDataService requestAFWithURL:Url_Other_setDefaultAddress params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
//            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                for (int i = 0; i < self.dataList.count; i ++) {
                    
                    AdressModel *model1 = self.dataList[i];
                    if (i == indexPath.row) {
                        model1.is_default = @"1";
                    }else{
                    
                        model1.is_default = @"0";
                    }
                    
                }
                [self.tableView reloadData];
                
                
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

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return [AdressmangerCell whc_CellHeightForIndexPath:indexPath tableView:tableView];

}

-(void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    editingStyle = UITableViewCellEditingStyleDelete;//此处的EditingStyle可等于任意UITableViewCellEditingStyle，该行代码只在iOS8.0以前版本有作用，也可以不实现。
}

#pragma mark 在滑动手势删除某一行的时候，显示出更多的按钮

- (NSArray *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath

{
    // 添加一个删除按钮
    UITableViewRowAction *deleterowaction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDestructive title:@"删除" handler:^(UITableViewRowAction * _Nonnull action, NSIndexPath * _Nonnull indexPath) {
        
        [self deleaddressWithID:indexPath.row];

    }];
    
    deleterowaction.backgroundColor = [UIColor redColor];
    
    
    return @[deleterowaction,];
    
}

- (void)deleaddressWithID:(int)index
{
    
    AdressModel *model = self.dataList[index];
    NSDictionary *params;
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"address_id":model.address_id};
    

    [WXDataService requestAFWithURL:Url_Other_deleteAddress params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        NSLog(@"===%@",result);
        if ([result[@"status"] intValue] == 0) {
            

            [self lodaData];
            
        }
        if ([result[@"status"] intValue] == 1) {
            
            [MBProgressHUD showError:result[@"errorMsg"] toView:[UIApplication sharedApplication].keyWindow];
            
        }
    } errorBlock:^(NSError *error) {
        
        [MBProgressHUD showError:@"网络连接失败！" toView:[UIApplication sharedApplication].keyWindow];
        
    }];
    
    
    
    
}


- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}



@end
