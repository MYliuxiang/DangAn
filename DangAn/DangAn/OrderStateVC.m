//
//  OrderStateVC.m
//  DangAn
//
//  Created by lijiang on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderStateVC.h"
#import "OrderStateCell.h"
#import "PlaceAnOrderCell.h"
#import "DYdanganVC.h"
#import "OrderplayVC.h"
#import "MapVC.h"
@interface OrderStateVC ()
{
    NSArray *log_list;
    NSArray *pro_list;
    NSString *allprice;
    NSMutableArray *_product_listArray;
    NSString *_order_status;
    NSString *_have_map;

}
@end

@implementation OrderStateVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.text = @"订单状态";
    self.label_OrderNum.textColor = Color_red;
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _product_listArray = [NSMutableArray new];
    
    _label_OrderTime.textColor = Color_text;
    _label_yewuPhone.textColor = Color_text;
    _label_zhixunPhone.textColor = Color_text;
    _btn_zhifu.layer.cornerRadius = 5;
    _btn_zhifu.layer.borderWidth = 1;
    _btn_zhifu.layer.borderColor = Color_red.CGColor;
    [_btn_zhifu setTitleColor:Color_red forState:UIControlStateNormal];
    _btn_zhifu.layer.masksToBounds = YES;
    
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self lodaData];
    
}

- (void)back
{

    if ([_type intValue] == 1) {
        [self.navigationController popViewControllerAnimated:YES];

    } else {

        [self.navigationController popToRootViewControllerAnimated:YES];
    }

}

- (void)lodaData
{
    NSDictionary *params;
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"order_id":_order_id};
    
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_detailOrder params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                _label_OrderNum.text = [NSString stringWithFormat:@"订单号：%@",dic[@"order_info"][@"sn"]];
                _label_OrderTime.text = [NSString stringWithFormat:@"下单时间：%@",dic[@"order_info"][@"time"]];
                _label_zhixunPhone.text = [NSString stringWithFormat:@"咨询电话：%@",dic[@"telphone1"]];
                _label_yewuPhone.text = [NSString stringWithFormat:@"业务电话：%@",dic[@"telphone2"]];
                _order_status = [NSString stringWithFormat:@"%@",dic[@"order_info"][@"order_status"]];
                _have_map = [NSString stringWithFormat:@"%@",dic[@"have_map"]];
                // 1-待支付（显示去付款） 2-待处理  3-已出库 4-已发货 5-已签收 10-已完成
                if([dic[@"order_info"][@"order_status"] integerValue] == 1)
                {
                    _headerView.height = 164;
                    _btn_zhifu.hidden = NO;
                   
                } else {
                
                    _headerView.height = 100;
                    _btn_zhifu.hidden = YES;
                }
                 _tableView.tableHeaderView = _headerView;
                
                
                
                log_list = dic[@"log_list"];
                pro_list = dic[@"pro_list"];
                for (NSDictionary *pro_listDic in pro_list) {
                    NSDictionary *dict = @{@"product_id":pro_listDic[@"product_id"],@"product_number":pro_listDic[@"product_number"]};
                    [_product_listArray addObject:dict];
                }
                if (_product_listArray.count > 0) {
                    [self GetTotal];
                }
    
                [_tableView reloadData];
                
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
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return pro_list.count;
        
    } else {
    
        return log_list.count;
    }
   
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 65;
    } else {
        return 70;
    }

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        
        static NSString *cellID = @"PlaceAnOrderCellID";
        PlaceAnOrderCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"PlaceAnOrderCell" owner:nil options:nil] lastObject];
            UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(10, 65 -1, kScreenWidth - 10, 1)];
            lineView.backgroundColor = Color_bg;
            [cell.contentView addSubview:lineView];
        }
        NSDictionary *dic = pro_list[indexPath.row];
        if ([dic[@"product_id"] integerValue] == 1 || [dic[@"product_id"] integerValue] == 8 || [dic[@"product_id"] integerValue] == 9 || [dic[@"product_id"] integerValue] == 12) {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            [cell.btn_add setTitle:[NSString stringWithFormat:@"    %@",dic[@"product_number"]] forState:UIControlStateNormal];
        } else if ( [dic[@"product_id"] integerValue] == 7 && [_order_status integerValue] == 10)
        {
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            [cell.btn_add setTitle:[NSString stringWithFormat:@"    %@",dic[@"product_number"]] forState:UIControlStateNormal];
        
        } else {
            cell.accessoryType = UITableViewCellAccessoryNone;
            [cell.btn_add setTitle:[NSString stringWithFormat:@"%@   ",dic[@"product_number"]] forState:UIControlStateNormal];
        }

        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.label_title.text = dic[@"product_title"];
        [cell.imageView_shop sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",dic[@"product_thumb"]]] placeholderImage:nil];
        [cell.btn_add setImage:nil forState:UIControlStateNormal];
        [cell.btn_add setTitleColor:Color_text forState:UIControlStateNormal];
//        cell.btn_add.backgroundColor = [UIColor redColor];
        cell.btn_add.titleLabel.font = [UIFont systemFontOfSize:15];
//        cell.detailTextLabel.textColor = Color_text;
//        cell.detailTextLabel.text = [NSString stringWithFormat:@"%@",dic[@"product_number"]];
        return cell;

        
    } else {
    
        static NSString *cellID = @"OrderStateCellID";
        OrderStateCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"OrderStateCell" owner:nil options:nil] lastObject];
            UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(46, 70 -1, kScreenWidth - 46, 1)];
            lineView.backgroundColor = Color_bg;
            [cell.contentView addSubview:lineView];
            UIView *top = [[UIView alloc]initWithFrame:CGRectMake(cell.image_type.left + cell.image_type.width / 2.0, 0, 1, cell.image_type.top)];
            top.backgroundColor = Color(182, 182, 182);
            top.tag = 100;
            [cell.contentView addSubview:top];
            
            UIView *bttom = [[UIView alloc]initWithFrame:CGRectMake(cell.image_type.left + cell.image_type.width / 2.0, cell.image_type.bottom, 1, 70 - cell.image_type.bottom)];
            bttom.backgroundColor = Color(182, 182, 182);
            bttom.tag = 200;
            [cell.contentView addSubview:bttom];
        }
        UIView *topView = [cell.contentView viewWithTag:100];
        //    UIView *bttomView = [cell.contentView viewWithTag:200];
        if (indexPath.row == 0) {
            topView.hidden = YES;
           
            if([_have_map integerValue] == 1)
            {
               cell.btn_lookmap.hidden = NO;
            } else {
               cell.btn_lookmap.hidden = YES;
            }
            
            cell.label_title.textColor = Color_blue;
            cell.lable_time.textColor = Color_blue;
            cell.image_type.image = [UIImage imageNamed:@"位置"];
        } else {
            topView.hidden = NO;
            cell.btn_lookmap.hidden = YES;
            cell.label_title.textColor = Color_text;
            cell.lable_time.textColor = Color_text;
            cell.image_type.image = [UIImage imageNamed:@"icon_history_message"];
            
        }
        NSDictionary *dic = log_list[indexPath.row];
        cell.label_title.text = dic[@"description"];
        cell.lable_time.text = dic[@"time"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        return cell;
        
        
    }
    
 
    

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (indexPath.section == 0) {
        NSDictionary *dic = pro_list[indexPath.row];
        if ([dic[@"product_id"] integerValue] == 1 || [dic[@"product_id"] integerValue] == 8 || [dic[@"product_id"] integerValue] == 9 || [dic[@"product_id"] integerValue] == 7 || [dic[@"product_id"] integerValue] == 12) {
            DYdanganVC *dydangan = [[DYdanganVC alloc]init];
            if ([dic[@"product_id"] integerValue] == 1) {
                //"调阅档案"
                
                 NSArray *array = dic[@"borrow_archives"];
                if (array.count == 0) {
                    array = @[@""];
                }
                 dydangan.archivesArray = array;
            }
            if ([dic[@"product_id"] integerValue] == 8) {
                //"档案回库"
                NSArray *array = dic[@"backup_archives"];
                if (array.count == 0) {
                    array = @[@""];
                }
                dydangan.archivesArray = array;
            }
            if ([dic[@"product_id"] integerValue] == 9) {
                //"销毁"
                 NSArray *array = dic[@"destroy_archives"];
                if (array.count == 0) {
                    array = @[@""];
                }
                dydangan.archivesArray = array;
            }
            
            if ([dic[@"product_id"] integerValue] == 7 ) {
                
                if([_order_status integerValue] == 10)
                {
                    //新增档案
                    NSArray *array = dic[@"new_archives"];
                    if (array.count == 0) {
                        array = @[@""];
                        return;
                    }
                    dydangan.archivesArray = array;
                
                } else {
                    return;
                }
               
            }
            
            if ([dic[@"product_id"] integerValue] == 12) {
                //永久离库
                NSArray *array = dic[@"nulled_archives"];
                if (array.count == 0) {
                    array = @[@""];
                    return;
                }
                dydangan.archivesArray = array;
            }
           
            dydangan.isadd = NO;
            dydangan.product_id = dic[@"product_id"];
            [self.navigationController pushViewController:dydangan animated:YES];
           
        }
    }
    
    if (indexPath.section == 1) {
        //查看地图
        if (indexPath.row == 0) {
            MapVC *mapVC = [[MapVC alloc]init];
            mapVC.order_id = _order_id;
            [self.navigationController pushViewController:mapVC animated:YES];
        }
    }


}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    if (section == 0) {
        if(pro_list.count > 0)
        {
            return 10;
        }
        return .1;
    } else {
    
        if(log_list.count > 0)
        {
            return 30;
        }
        return .1;
        
    }
    
    
   

}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    if (section == 0) {
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 30)];
        view.backgroundColor = Color_bg;
        return view;
  
    } else {
        
        if(log_list.count > 0)
        {
            UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 30)];
            view.backgroundColor = Color_bg;
            UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(10, 0, kScreenWidth - 20, 30)];
            lable.textColor = Color_text;
            lable.font = [UIFont systemFontOfSize:14];
            lable.textAlignment = NSTextAlignmentLeft;
            lable.text = @"订单跟踪";
            [view addSubview:lable];
            return view;
        }
        return nil;
        
       
        
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

- (IBAction)btnCanceAction:(id)sender {
}

- (IBAction)zhifuAction:(id)sender {
    
    OrderplayVC *orderplayVC = [[OrderplayVC alloc]init];
    orderplayVC.order_id = _order_id;
    orderplayVC.allPrice = allprice;
    [self.navigationController pushViewController:orderplayVC animated:YES];
    
}

#pragma mark ------ 获取总价格 --------------
- (void)GetTotal
{
    
    
    NSDictionary *params;
    params = @{@"product_list":_product_listArray,@"member_id":[UserDefaults objectForKey:Member_id]};
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_calculatePrice params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        NSLog(@"rrsult:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                allprice = [NSString stringWithFormat:@"%.2f",[dic[@"price"] floatValue]] ;
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

@end
