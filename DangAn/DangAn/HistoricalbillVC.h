//
//  HistoricalbillVC.h
//  DangAn
//
//  Created by 李江 on 16/6/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface HistoricalbillVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIView *haderView;
@property (weak, nonatomic) IBOutlet UILabel *label_date;

@property (weak, nonatomic) IBOutlet UIImageView *image_yue;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,strong)NSString *type; // 1历史账单 2 库存报告

@property (nonatomic,retain)NSString *enterprise_id;//企业的id

@end
