//
//  VIPDangAnListVC.h
//  DangAn
//
//  Created by 李江 on 16/10/18.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface VIPDangAnListVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>

{
    int _pageIndex;
    BOOL _isdownLoad;
    
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property(nonatomic,strong)NSString *file_status;


@property (nonatomic,retain)NSString *enterprise_id;//企业的id

@property (nonatomic,retain)NSMutableArray *dataList;

@property (nonatomic,copy) NSString *count;

@end
