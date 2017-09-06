//
//  WarehouseVC.h
//  DangAn
//
//  Created by 刘翔 on 16/6/12.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "WarehouseCell.h"

@interface WarehouseVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>
{
    int _pageIndex;
    BOOL _isdownLoad;
    
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,assign)BOOL isOnline;

@property (nonatomic,retain)NSString *enterprise_id;//企业的id

@property (nonatomic,retain)NSMutableArray *dataList;
@property (nonatomic,copy) NSString *count;
@end
