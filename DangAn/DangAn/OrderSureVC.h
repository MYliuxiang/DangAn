//
//  OrderSureVC.h
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface OrderSureVC : BaseViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UIView *footView;
@property (weak, nonatomic) IBOutlet UIButton *btn_Done;


@property (nonatomic,strong)NSString *enterprise_id;
@property (nonatomic,strong)NSArray *product_list;
@property (nonatomic,strong)NSArray *borrow_id;
@property (nonatomic,strong)NSArray *destory_id;
@property (nonatomic,strong)NSArray *backup_id;
@property (nonatomic,strong)NSArray *yongjiuliku_id;

- (IBAction)btnDoneAction:(id)sender;

@end
