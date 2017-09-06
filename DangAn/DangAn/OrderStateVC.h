//
//  OrderStateVC.h
//  DangAn
//
//  Created by lijiang on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface OrderStateVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;


@property (strong, nonatomic) IBOutlet UIView *footView;


@property (weak, nonatomic) IBOutlet UIButton *btn_cance;
@property (weak, nonatomic) IBOutlet UIButton *btn_zhifu;

- (IBAction)btnCanceAction:(id)sender;

- (IBAction)zhifuAction:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *headerView;

@property (weak, nonatomic) IBOutlet UILabel *label_OrderNum;

@property (weak, nonatomic) IBOutlet UILabel *label_OrderTime;

@property (weak, nonatomic) IBOutlet UILabel *label_zhixunPhone;

@property (weak, nonatomic) IBOutlet UILabel *label_yewuPhone;


@property (nonatomic,nonatomic)NSString *order_id;

@property (nonatomic,nonatomic)NSString *type;//1从订单列表进去  2是从下单结算进去


@end
