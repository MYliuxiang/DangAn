//
//  OrderplayVC.h
//  DangAn
//
//  Created by 李江 on 16/8/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface OrderplayVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)NSString *order_id;
@property(nonatomic,strong)NSString *allPrice;

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end
