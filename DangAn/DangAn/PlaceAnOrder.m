//
//  PlaceAnOrder.m
//  DangAn
//
//  Created by 李江 on 16/6/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "PlaceAnOrder.h"
#import "PlaceAnOrderCell.h"
#import "DYdanganVC.h"
#import "OrderSureVC.h"
#import "PlaceAnOrderModel.h"
#import "PlaceAnOrderListModel.h"
#import "BuyAlert.h"
@interface PlaceAnOrder ()<LJOrderAlertViewDelegate,LXBUYViewDelegate,DYdanganVCDelegate>
{
    NSArray *_typeArray;
    NSArray *_listArray;
    NSInteger _typeInt;
    NSInteger _shopInt;
    NSMutableArray *_product_listArray;//选择的商品
    NSInteger _CartNum;//购物车
    


}
@end

@implementation PlaceAnOrder

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.text = @"我要下单";
    
    [AppDelegate GetAppDelegate].borrow_idArray = nil;
    [AppDelegate GetAppDelegate].huiku_idArray = nil;
    [AppDelegate GetAppDelegate].xiaohui_idArray = nil;
    [AppDelegate GetAppDelegate].foreverliku_idArray = nil;
    self.automaticallyAdjustsScrollViewInsets = NO;
    _product_listArray = [NSMutableArray new];

    _typeInt = 0;
    _CartNum = 0;
    
    _label_shopNum.layer.borderWidth = 1;
    _label_shopNum.layer.borderColor = [UIColor whiteColor].CGColor;
    _label_shopNum.backgroundColor = [UIColor whiteColor];
    _label_shopNum.textColor = Color_red;
    _label_shopNum.hidden = YES;
    _label_shopNum.layer.cornerRadius = 15 / 2.0;
    _label_shopNum.layer.masksToBounds = YES;
    
    _btu_Done.layer.borderWidth = .5;
    _btu_Done.layer.borderColor = [UIColor whiteColor].CGColor;
    _btu_Done.layer.cornerRadius = 5;
    _btu_Done.layer.masksToBounds = YES;
    
    
    _TypeTableView.tableFooterView = [[UIView alloc]init];
    _ShopTableView.tableFooterView = [[UIView alloc]init];
    _ShopTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
      
    
    [self _loadData];
}

- (void)_loadData
{
    
    NSDictionary *params;
    params = @{@"member_id":[UserDefaults objectForKey:Member_id]};
    

    [WXDataService requestAFWithURL:Url_Enterprise_productStore params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
     
        NSLog(@"*****result:%@",result);
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"product_type"];
                for (NSDictionary *subDic in array) {
                    PlaceAnOrderModel *model = [[PlaceAnOrderModel alloc] initWithDataDic:subDic];
                    model.type_num = @"0";
                    [marray addObject:model];
                }
                _typeArray = marray;
                PlaceAnOrderModel *model = _typeArray.firstObject;
                _listArray = model.product_list;
                
     
                [_TypeTableView reloadData];
                [_ShopTableView reloadData];
                NSIndexPath * selIndex = [NSIndexPath indexPathForRow:0 inSection:0];
                [_TypeTableView selectRowAtIndexPath:selIndex animated:YES scrollPosition:UITableViewScrollPositionMiddle];
                
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
    if(tableView == _TypeTableView)
    {
        return _typeArray.count;
    }
    return _listArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (tableView == _TypeTableView) {
        
        static NSString *cellID = @"cellID1";
        UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
            UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 40 -.5, kScreenWidth, .5)];
            lineView.backgroundColor = Color(200, 200, 200);
            [cell.contentView addSubview:lineView];
            UILabel *numLable = [[UILabel alloc]initWithFrame:CGRectMake(_TypeTableView.width - 15 - 5, 5, 15, 15)];
            numLable.layer.borderWidth = 1;
            numLable.backgroundColor = [UIColor whiteColor];
            numLable.layer.borderColor = Color_red.CGColor;
            numLable.layer.cornerRadius = 15 / 2.0;
            numLable.layer.masksToBounds = YES;
            numLable.textColor = Color_red;
            numLable.font = [UIFont systemFontOfSize:8];
            numLable.textAlignment = NSTextAlignmentCenter;
            numLable.tag = 100;
            [cell.contentView addSubview:numLable];
            
        }
        
        PlaceAnOrderModel *model = _typeArray[indexPath.row];
        
        cell.selectedBackgroundView = [[UIView alloc] initWithFrame:cell.frame];
        cell.selectedBackgroundView.backgroundColor = [UIColor whiteColor];
        UILabel *numLable = (UILabel *)[cell.contentView viewWithTag:100];
        
        if ([model.type_num  integerValue] == 0) {
            numLable.hidden = YES;
        } else {
            numLable.hidden = NO;
        }
        numLable.text = model.type_num ;
        cell.backgroundView.backgroundColor = [UIColor clearColor];
        cell.backgroundColor = [UIColor clearColor];
        cell.textLabel.text = model.type_name;
        cell.textLabel.font = [UIFont systemFontOfSize:12];
        cell.textLabel.textAlignment = NSTextAlignmentLeft;
        return cell;
   
    } else {
    
        static NSString *cellID = @"PlaceAnOrderCellID";
        PlaceAnOrderCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle]loadNibNamed:@"PlaceAnOrderCell" owner:nil options:nil] lastObject];
            UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 65 -1, kScreenWidth, 1)];
            lineView.backgroundColor = Color_bg;
            [cell.contentView addSubview:lineView];
        }
        PlaceAnOrderListModel *model = _listArray[indexPath.row];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        cell.label_title.text = model.product_name;
        [cell.imageView_shop sd_setImageWithURL:[NSURL URLWithString:model.product_thumb] placeholderImage:nil];
        if ([model.product_num integerValue] == 0) {
            [cell.btn_add setImage:[UIImage imageNamed:@"添加购物车"] forState:UIControlStateNormal];
        } else {
            [cell.btn_add setImage:[UIImage imageNamed:@"购物车已选择"] forState:UIControlStateNormal];
        }
        return cell;
    
    }

}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (tableView == _TypeTableView) {
        return 40;
    } else {
    
        return 65;
    }

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{

    if (tableView == _TypeTableView) {
        _typeInt = indexPath.row;
        PlaceAnOrderModel *model = _typeArray[indexPath.row];
        _listArray = model.product_list;
        [_ShopTableView reloadData];
        
    } else {
        _shopInt  = indexPath.row;
        PlaceAnOrderModel *model = _typeArray[_typeInt];
        PlaceAnOrderListModel *listModel = model.product_list[indexPath.row];
            
        if ([listModel.product_num integerValue] == 0) {
            
            //如果是调阅 回库 销毁 永久离库档案去详情选择
            if ([listModel.product_id integerValue] == 1 ||[listModel.product_id integerValue] == 8 || [listModel.product_id integerValue] == 9 || [listModel.product_id integerValue] == 12) {
                
                DYdanganVC *dydangan = [[DYdanganVC alloc]init];
                dydangan.isadd = YES;
                dydangan.delegate = self;
                dydangan.product_id = listModel.product_id;
                [self.navigationController pushViewController:dydangan animated:YES];
                return;
            }
        
            //如果是条形码类型
            if ([listModel.product_id integerValue] == 2 || [listModel.product_id integerValue] == 3 || [listModel.product_id integerValue] == 4) {
                
                //判断是否是VIP
                if ([[UserDefaults objectForKey:Member_vip_id] integerValue] == 1) {
                    [self giveNum];
                } else {
                    [self giveBarcodeNum];
                
                }
                
            } else {
            
                [self giveNum];
                
            }
           
            
        } else {
            
           
        }
    

    
    }
}

- (void)giveborrow_idArray:(NSString *)product_id
{
    //订阅
    if ([product_id integerValue] == 1) {
         [self giveShopTotal:[NSString stringWithFormat:@"%d",[AppDelegate GetAppDelegate].borrow_idArray.count] start_numbe:@"0"];
    }
    //回库
    if ([product_id integerValue] == 8) {
          [self giveShopTotal:[NSString stringWithFormat:@"%d",[AppDelegate GetAppDelegate].huiku_idArray.count] start_numbe:@"0"];
    }
    //销毁
    if ([product_id integerValue] == 9) {
        [self giveShopTotal:[NSString stringWithFormat:@"%d",[AppDelegate GetAppDelegate].xiaohui_idArray.count] start_numbe:@"0"];
    }
    //永久离库
    if ([product_id integerValue] == 12) {
        [self giveShopTotal:[NSString stringWithFormat:@"%d",[AppDelegate GetAppDelegate].foreverliku_idArray.count] start_numbe:@"0"];
    }
   
}

- (void)giveNum{
    
    LJOrderAlertView *ljOrderAlertView = [[LJOrderAlertView alloc]initWithtitleString:@"填写数量" textFieldPlace:@"档案数量" delegate:self];
    [ljOrderAlertView show];
}

//条形码
- (void)giveBarcodeNum{
    
    BuyAlert *alert = [[BuyAlert alloc] initWithDelegate:self];
   [alert show];
}

- (void)clickindex:(int)index lxView:(BuyAlert *)alert whiteText1:(NSString *)text1 whithText2:(NSString *)text2 whithText3:(NSString *)text3
{
    if ([text2 integerValue] <= 0) {
        [MBProgressHUD showError:@"选择数量要大于0" toView:self.view];
        return;
    }
    if ([text3 integerValue] <= 0) {
        [MBProgressHUD showError:@"起始编号要大于0" toView:self.view];
        return;
    }

    [self giveShopTotal:text2 start_numbe:text3];

}

- (void)clickcontentString:(NSString *)contentString lxView:(LJOrderAlertView *)alert
{
    
    if ([contentString integerValue] <= 0) {
        [MBProgressHUD showError:@"选择数量要大于0" toView:self.view];
        return;
    }
    [self giveShopTotal:contentString start_numbe:@"0"];
    NSLog(@"===%@",contentString);
    
}


//获取商品总数
- (void)giveShopTotal:(NSString *)num start_numbe:(NSString *)start_numbe
{
    
    
    PlaceAnOrderModel *model = _typeArray[_typeInt];
    PlaceAnOrderListModel *listModel = model.product_list[_shopInt];
    listModel.product_num = num ;
    model.type_num = [NSString stringWithFormat:@"%d",[model.type_num integerValue]+ [listModel.product_num  integerValue]];
    NSDictionary *dic = @{@"product_id":listModel.product_id,@"product_number":listModel.product_num,@"start_numbe":start_numbe};
    [_product_listArray addObject:dic];
    [_TypeTableView reloadData];
    [_ShopTableView reloadData];
    _CartNum = _CartNum + [listModel.product_num  integerValue];
    if (_CartNum > 0) {
//        _label_shopNum.hidden = NO;
        
    }
    _label_shopNum.text = [NSString stringWithFormat:@"%d",_CartNum];
    [self GetTotal];
    
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
                
                _label_Price.text = [NSString stringWithFormat:@"%@元",dic[@"price"]] ;
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

- (IBAction)btuDone:(id)sender {
    
    if (_product_listArray.count <= 0) {
        [MBProgressHUD showError:@"请选择商品" toView:self.view];
        return;
    }
    
    OrderSureVC *orderSureVC = [[OrderSureVC alloc]init];
    orderSureVC.enterprise_id = [AppDelegate GetAppDelegate].enterprise_id;
    orderSureVC.borrow_id = [AppDelegate GetAppDelegate].borrow_idArray;
    orderSureVC.destory_id = [AppDelegate GetAppDelegate].xiaohui_idArray;
    orderSureVC.backup_id = [AppDelegate GetAppDelegate].huiku_idArray;
    orderSureVC.yongjiuliku_id = [AppDelegate GetAppDelegate].foreverliku_idArray;
    [AppDelegate GetAppDelegate].iszaikuandliku = NO;
    orderSureVC.product_list = _product_listArray;
    [self.navigationController pushViewController:orderSureVC animated:YES];
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
