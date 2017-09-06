//
//  OrderSureVC.m
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderSureVC.h"
#import "OrderSureOneCell.h"
#import "OrderSureTwoCell.h"
#import "OrderSureListModel.h"
#import "AdressMangerVC.h"
#import "LJservicetypeView.h"
#import "OrderSureProductCell.h"
#import "DYdanganVC.h"
#import "OrderplayVC.h"
#import "DangAnDetailsVC.h"
#import "OrderStateVC.h"
@interface OrderSureVC ()<UIWebViewDelegate,LJservicetypeViewDelegate,AdressMangerVCDelegate,DYdanganVCDelegate,UIAlertViewDelegate>
{
    NSArray *_product_listArray;
    NSDictionary *_address_info;//收货人的地址
    NSString *_price;//总价
    NSString *_service_content;//服务类型的说明
    NSDictionary *_service_type;//服务类型
    UIWebView *_webView;
    NSInteger _seleInt;

}
@end

@implementation OrderSureVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.text = @"订单确认";
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _btn_Done.layer.cornerRadius = 5;
    _btn_Done.layer.borderWidth = 1;
    _btn_Done.layer.borderColor = Color_blue.CGColor;
    _btn_Done.layer.masksToBounds = YES;
    _tableView.tableFooterView = _footView;
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 10)];
    view.backgroundColor = Color_bg;
    _tableView.tableHeaderView = view;
    
    _webView  = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, kScreenWidth , 20)];
    _webView.delegate = self;
    _webView.scrollView.bounces= NO;
    _webView.scrollView.scrollEnabled = NO;
    _webView.scrollView.showsHorizontalScrollIndicator = NO;
    _webView.scrollView.showsVerticalScrollIndicator = NO;
    [_webView setBackgroundColor:[UIColor clearColor]];
    [_webView setOpaque:NO];
    
    _seleInt = 0;
    
    //点击tabbar
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(noti_refre:) name:Noti_refre object:nil];
    
    [self lodaData];
}


- (void)lodaData
{
    NSDictionary *params;
    if (_borrow_id.count == 0) {
        _borrow_id = @[@""];
    }
    if (_destory_id.count == 0) {
        _destory_id = @[@""];
    }
    if (_backup_id.count == 0) {
        _backup_id = @[@""];
    }
    if (_yongjiuliku_id.count == 0) {
        _yongjiuliku_id = @[@""];
    }
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"enterprise_id":_enterprise_id,@"product_list":_product_list,@"borrow_id":_borrow_id,@"destory_id":_destory_id,@"backup_id":_backup_id,@"nulled_id":_yongjiuliku_id};
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_confirmOrder params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        
        if(result){
            NSLog(@"======result:%@",result);
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                 NSMutableArray *muArray = [NSMutableArray array];
                NSArray *product_listArray = dic[@"product_list"];
                for (NSDictionary *dict in product_listArray) {
                    OrderSureListModel *model = [[OrderSureListModel alloc]initWithDataDic:dict];
                    [muArray addObject:model];
                    
                }
                _product_listArray = muArray;
        
            }
            
            _price = dic[@"price"];
            _address_info = dic[@"address_info"];
            _service_content = dic[@"service_content"];
            _service_type = dic[@"service_type"];
            //下部Web
            [_webView loadHTMLString:_service_content  baseURL:nil];
            
           
            
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

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    
    NSString *height_str= [webView stringByEvaluatingJavaScriptFromString: @"document.body.offsetHeight"];
    int height = [height_str intValue];
    _webView.height = height + 30 - 2;
    NSLog(@"height: %@", [webView stringByEvaluatingJavaScriptFromString: @"document.body.offsetHeight"]);
    _webView.scrollView.backgroundColor = [UIColor whiteColor];
    _webView.backgroundColor = [UIColor whiteColor];
    
     [_tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    if (_product_listArray.count > 0) {
          return 3;
    } else {
         return 0;
    }
   
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
//    if (section == 0) {
//        return 1;
//    } else
   
    
    if (section == 0 ){
        
        return 1;
        
    } else if (section == 1) {
        return _product_listArray.count;
        
    }  else {
        
        return 2;
    }
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (indexPath.section == 0) {
//        static NSString *cellID = @"cellID";
//        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
//        if (cell == nil) {
//            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
//        }
//        cell.selectionStyle = UITableViewCellSelectionStyleNone;
//        cell.textLabel.textColor = Color_red;
//        cell.textLabel.font = [UIFont systemFontOfSize:14];
//        cell.textLabel.text = @"订单号:12345678";
//        return cell;
//    } else
    if (indexPath.section == 0)
    {
        
        static NSString *cellID = @"OrderSureOneCellID";
        OrderSureOneCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"OrderSureOneCell" owner:nil options:nil] lastObject];
        }
        if (![_address_info[@"address"] isEqualToString:@""]) {
            cell.lable_name.text = [NSString stringWithFormat:@"%@  %@",_address_info[@"name"],_address_info[@"mobile"]];
            cell.lable_adree.text = _address_info[@"address"];
        } else {
        
            cell.lable_name.text = [NSString stringWithFormat:@"请选择地址"];
           
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    
    } else if (indexPath.section == 1) {
        static NSString *cellID = @"OrderSureProductCellID";
        OrderSureProductCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"OrderSureProductCell" owner:nil options:nil] lastObject];
            UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 80 -1, kScreenWidth, 1)];
            lineView.backgroundColor = Color_bg;
            [cell.contentView addSubview:lineView];
        
        }
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.detailTextLabel.font = [UIFont systemFontOfSize:14];
        cell.detailTextLabel.textColor = Color_text;
        
        OrderSureListModel *model = _product_listArray[indexPath.row];
        cell.model = model;
        [cell layoutSubviews];
        
    
        return cell;
    } else {
        if (indexPath.row == 0) {
            
            static NSString *cellID = @"cellThreeID";
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
            if (cell == nil) {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellID];
                UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 45 -1, kScreenWidth, 1)];
                lineView.backgroundColor = Color_bg;
                [cell.contentView addSubview:lineView];
            }
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            cell.textLabel.font = [UIFont systemFontOfSize:14];
            cell.detailTextLabel.font = [UIFont systemFontOfSize:14];
            cell.detailTextLabel.textColor = Color_text;
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            cell.textLabel.text = @"服务类型";
            cell.detailTextLabel.text = _service_type[@"title"];
            
            return cell;
       
        } else {
        
            
            static NSString *cellID = @"OrderSureTwoCellID";
            UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
            if (cell == nil) {
                cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
            }
            [cell.contentView addSubview:_webView];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            return cell;
        
        }
       
    

    }
    

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    //地址
    if (indexPath.section == 0) {
        AdressMangerVC *adressMangerVC = [[AdressMangerVC alloc]init];
        adressMangerVC.ischooseAdress = YES;
        adressMangerVC.delegate = self;
        [self.navigationController pushViewController:adressMangerVC animated:YES];
    }
    //产品
    if(indexPath.section == 1){
        
        _seleInt = indexPath.row;
        
         OrderSureListModel *model = _product_listArray[indexPath.row];
        //如果是调阅 回库 销毁 永久离库档案去详情选择
        if ([model.product_id integerValue] == 1 || [model.product_id integerValue] == 8 || [model.product_id integerValue] == 9 || [model.product_id integerValue] == 12) {
            
            DYdanganVC *dydangan = [[DYdanganVC alloc]init];
            dydangan.isadd = YES;
            dydangan.delegate = self;
            dydangan.product_id = model.product_id;
            [self.navigationController pushViewController:dydangan animated:YES];
            
        }
    
    }
    //服务
    if(indexPath.section == 2){
        if (indexPath.row == 0) {
            
            LJservicetypeView *ljservicetypeView = [[LJservicetypeView alloc]initWithDelegate:self];
            [ljservicetypeView show];
        }
        
    }

}

//加减号刷新
- (void)noti_refre:(NSNotification *)noti
{
     NSString *product_id = noti.object;
    for (int i =0 ; i < _product_listArray.count; i ++) {
        OrderSureListModel *model = _product_listArray[i];
        if ([product_id integerValue] == [model.product_id integerValue]) {
            _seleInt = i;
        }
        
    }
     OrderSureListModel *model = _product_listArray[_seleInt];
    [self giveShopTotal:model.product_number start_numbe:model.start_number];



}

- (void)giveborrow_idArray:(NSString *)product_id
{
    //订阅
    if ([product_id integerValue] == 1) {
        _borrow_id = [AppDelegate GetAppDelegate].borrow_idArray;
        [self giveShopTotal:[NSString stringWithFormat:@"%d",[AppDelegate GetAppDelegate].borrow_idArray.count] start_numbe:@"0"];
    }
    //回库
    if ([product_id integerValue] == 8) {
        _backup_id = [AppDelegate GetAppDelegate].huiku_idArray;
        [self giveShopTotal:[NSString stringWithFormat:@"%d",[AppDelegate GetAppDelegate].huiku_idArray.count] start_numbe:@"0"];
    }
    //销毁
    if ([product_id integerValue] == 9) {
        _destory_id = [AppDelegate GetAppDelegate].xiaohui_idArray;
        [self giveShopTotal:[NSString stringWithFormat:@"%d",[AppDelegate GetAppDelegate].xiaohui_idArray.count] start_numbe:@"0"];
    }
    
    //永久离库
    if ([product_id integerValue] == 12) {
        _yongjiuliku_id = [AppDelegate GetAppDelegate].foreverliku_idArray;
        [self giveShopTotal:[NSString stringWithFormat:@"%d",[AppDelegate GetAppDelegate].foreverliku_idArray.count] start_numbe:@"0"];
    }
    
    
    
}

//获取商品总数
- (void)giveShopTotal:(NSString *)num start_numbe:(NSString *)start_numbe
{
   
    OrderSureListModel *model = _product_listArray[_seleInt];
    model.product_number = num;
    NSMutableArray *muArray = [NSMutableArray new];
    [muArray addObjectsFromArray:_product_list];
    for (NSDictionary *dic in _product_list) {
        NSMutableDictionary *muDic = [NSMutableDictionary dictionaryWithDictionary:dic];
        if ([muDic[@"product_id"] integerValue] == [model.product_id integerValue]) {

            [muDic setObject:num forKey:@"product_number"];
        
        }
        [muArray removeObject:dic];
        [muArray addObject:muDic];
        _product_list = muArray;
        
    }
  
    [self GetTotal];
    
}

#pragma mark ------ 获取总价格 --------------
- (void)GetTotal
{
    
    
    NSDictionary *params;
    params = @{@"product_list":_product_list,@"member_id":[UserDefaults objectForKey:Member_id]};
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_calculatePrice params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        NSLog(@"rrsult:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                _price =  [NSString stringWithFormat:@"%@",dic[@"price"]];
                
                
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
            [_tableView reloadData];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
        
    }];
    
    
}


#pragma mark ----------------------   选择地址 -------------------------------------
- (void)clickDic:(NSDictionary *)dic
{
    _address_info = dic;
    [_tableView reloadData];

}


#pragma mark ------------------------ 选择服务类型 ----------------------------------
- (void)clickindex:(int)index
{
     _webView.height = 50;
    [self serviceData:[NSString stringWithFormat:@"%d",index]];

}


- (void)serviceData:(NSString *)service_typeString
{
    [WXDataService requestAFWithURL:Url_Enterprise_getServiceContent params:@{@"service_type":service_typeString} httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if(result){
            NSLog(@"======result:%@",result);
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
          
            _service_content = dic[@"content"];
                NSDictionary *dicType = @{@"title":dic[@"title"],@"id":dic[@"service_type"]};
            _service_type = dicType;
            //下部Web
            [_webView loadHTMLString:_service_content  baseURL:nil];
        
            
            }
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }

    
   } errorBlock:^(NSError *error) {
      
   }];


}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    if (indexPath.section == 0) {
//        return 45;
//    } else
    
    if (indexPath.section == 0 ){
    
        return 210 / 2.0;
   
    } else if (indexPath.section == 1) {
        return 80;
    
    }  else  {
        
        if(indexPath.row == 0)
        {
             return 45;
        
        } else {
             return _webView.height;
        }
       
    }

}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    if (section == 1) {
        return 0.1;
    }
    return 10;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return .1;
//    if (section == 2) {
//        return 55;
//    }
//    return .1;


}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    return nil;
    
//    if (section == 2) {
//        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 55)];
//        
//        UILabel *lable1 = [[UILabel alloc]initWithFrame:CGRectMake(kScreenWidth - 160, 0, 100, bgView.height - 10)];
//        lable1.textColor = Color_blue;
//        lable1.textAlignment = NSTextAlignmentRight;
//        lable1.font = [UIFont systemFontOfSize:14];
//        lable1.text = @"应用费用";
//        [bgView addSubview:lable1];
//        
//        UILabel *lable2 = [[UILabel alloc]initWithFrame:CGRectMake(lable1.right, 0, 50, lable1.height)];
//        lable2.textColor = Color_text;
//        lable2.textAlignment = NSTextAlignmentRight;
//        lable2.font = [UIFont systemFontOfSize:14];
//        lable2.text = [NSString stringWithFormat:@"%@元",_price];
//        [bgView addSubview:lable2];
//        
//        UIView *lineVeiw = [[UIView alloc]initWithFrame:CGRectMake(0, 45, kScreenWidth, 10)];
//        lineVeiw.backgroundColor = Color_bg;
//        [bgView addSubview:lineVeiw];
//        
//        
//        
//        return bgView;
//    }
//    return nil;


}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{

    return nil;


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

- (IBAction)btnDoneAction:(id)sender {
    
    
    UIAlertView *aler = [[UIAlertView alloc]initWithTitle:@"提示" message:@"是否确认下单" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [aler show];
 
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{

    if (buttonIndex == 1) {
        
        if (_borrow_id.count == 0) {
            _borrow_id = @[@""];
        }
        if (_destory_id.count == 0) {
            _destory_id = @[@""];
        }
        if (_backup_id.count == 0) {
            _backup_id = @[@""];
        }
        if (_yongjiuliku_id.count == 0) {
            _yongjiuliku_id = @[@""];
        }
        
        if ([_address_info[@"address"] isEqualToString:@""]) {
            [MBProgressHUD showError:@"请选择地址" toView:self.view];
            return;
        }
        NSLog(@"===%@",@{@"enterprise_id":_enterprise_id,@"member_id":[UserDefaults objectForKey:Member_id],@"name":[NSString stringWithFormat:@"%@",_address_info[@"name"]],@"mobile":[NSString stringWithFormat:@"%@",_address_info[@"mobile"]],@"address":[NSString stringWithFormat:@"%@",_address_info[@"address"]],@"price":_price,@"product_list":_product_list,@"borrow_id":_borrow_id,@"destory_id":_destory_id,@"backup_id":_backup_id,@"nulled_id":_yongjiuliku_id,@"service_type":_service_type[@"id"]});
       
        [WXDataService requestAFWithURL:Url_Enterprise_placeOrder params:@{@"enterprise_id":_enterprise_id,@"member_id":[UserDefaults objectForKey:Member_id],@"name":[NSString stringWithFormat:@"%@",_address_info[@"name"]],@"mobile":[NSString stringWithFormat:@"%@",_address_info[@"mobile"]],@"address":[NSString stringWithFormat:@"%@",_address_info[@"address"]],@"price":_price,@"product_list":_product_list,@"borrow_id":_borrow_id,@"destory_id":_destory_id,@"backup_id":_backup_id,@"nulled_id":_yongjiuliku_id,@"service_type":_service_type[@"id"]} httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
            if(result){
                NSLog(@"======result:%@",result);
                NSDictionary *dic = result[@"result"];
                
                if ([[result objectForKey:@"status"] integerValue] == 0) {
                    
                    if([dic[@"price"] integerValue] == 0)
                    {
                     
                        
                       
//                        if ([AppDelegate GetAppDelegate].iszaikuandliku) {
//                            for (UIViewController *temp in self.navigationController.viewControllers) {
//                                if ([temp isKindOfClass:[DangAnDetailsVC class]]) {
//                                    [self.navigationController popToViewController:temp animated:YES];
//                                }
//                            }
//                            
//                        } else {
//                            
//                            [self.navigationController popToRootViewControllerAnimated:YES];
//                        }
                        
                        [MBProgressHUD showSuccess:@"下单成功" toView: [UIApplication sharedApplication].keyWindow];
                        OrderStateVC *orderstateVC = [[OrderStateVC alloc]init];
                        orderstateVC.order_id = dic[@"order_id"];
                        orderstateVC.type = @"2";
                        [self.navigationController pushViewController:orderstateVC animated:YES];
                        
                    
                    } else {
                    
                        OrderplayVC *orderplayVC = [[OrderplayVC alloc]init];
                        orderplayVC.order_id = dic[@"order_id"];
                        orderplayVC.allPrice = dic[@"price"];
                        [self.navigationController pushViewController:orderplayVC animated:YES];
                    }
                  
                    
                   
                    
                    
                   
//
                }
                //没有数据了
                if ([[result objectForKey:@"status"] integerValue] == 1) {
                    
                    
                    [MBProgressHUD showError:result[@"msg"] toView:self.view];
                    
                }
            }
            
            
        } errorBlock:^(NSError *error) {
            
        }];
    }

}




@end
