//
//  OrderVC.m
//  DangAn
//
//  Created by 李江 on 16/6/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderVC.h"
#import "OrderCell.h"
#import "OrderStateVC.h"
#import "OrderVCModel.h"
@interface OrderVC ()
{
    NSString *_type; // 1已完成 2 未完成
    int _pageIndex;
    BOOL _isdownLoad;
}
@end

@implementation OrderVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSArray * arr=[NSArray arrayWithObjects:[NSString stringWithFormat:@"已完成 %@",_count1],[NSString stringWithFormat:@"未完成 %@",_count2],nil];
    UISegmentedControl * seg=[[UISegmentedControl alloc]initWithItems:arr];
    seg.frame =CGRectMake((kScreenWidth - 150 ) / 2.0,20 + 5,150.0,34.0);
    [self.nav addSubview:seg];
    
    [seg addTarget:self action:@selector(selected:) forControlEvents:UIControlEventValueChanged];
    
    if ([_typePush integerValue] == 1) {
        seg.selectedSegmentIndex = 0;//设置默认选择项索引
        _type = @"1";
    } else {
    
        seg.selectedSegmentIndex = 1;//设置默认选择项索引
        _type = @"2";
    }
    
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    _myTableView.tableFooterView = [[UIView alloc]init];
    _myTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _myTableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_myTableView.mj_header beginRefreshing];
    _myTableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
}

////下啦刷新
- (void)downLoad
{
    _isdownLoad = YES;
    _pageIndex = 1;
    [self _loadData];
    
}

//上啦加载
- (void)upLoad
{
    _isdownLoad = NO;
    [self _loadData];
    
}



- (void)_loadData
{
    
    NSDictionary *params;
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"page":[NSString stringWithFormat:@"%d",_pageIndex],@"order_status":_type};
    
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_listOrder params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    OrderVCModel *model = [[OrderVCModel alloc] initWithDataDic:subDic];
    
                    [marray addObject:model];
                }
                
    
                if (_isdownLoad) {
                    self.dataList = marray;
                    
                    
                } else {
                    [self.dataList addObjectsFromArray:marray];
                }
                
                
                
                
                if ([dic[@"page"] intValue] == 0) {
                    //没有更多了
                    if (_isdownLoad) {
                        
                        [_myTableView.mj_header endRefreshing];
                        [_myTableView.mj_footer endRefreshingWithNoMoreData];
                        
                    } else {
                        
                        [_myTableView.mj_footer endRefreshing];
                        [_myTableView.mj_footer endRefreshingWithNoMoreData];
                    }
                    
                    
                }else{
                    
                    //还有更多
                    if (_isdownLoad) {
                        
                        [_myTableView.mj_header endRefreshing];
                        [_myTableView.mj_footer resetNoMoreData];
                    } else {
                        
                        [_myTableView.mj_footer endRefreshing];
                        [_myTableView.mj_footer resetNoMoreData];
                    }
                    
                }
                
                [_myTableView reloadData];
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                if (_isdownLoad) {
                    [_myTableView.mj_header endRefreshing];
                } else {
                    [_myTableView.mj_footer endRefreshing];
                }
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
        if (_isdownLoad) {
            [_myTableView.mj_header endRefreshing];
        } else {
            [_myTableView.mj_footer endRefreshing];
        }
        
    }];
    
}

#pragma mark ------ 头部选择事件 -----------------
-(void)selected:(UISegmentedControl *)sender
{
    //已完成
    if (sender.selectedSegmentIndex == 0) {
        _type = @"1";
    }
    //未完成
    if (sender.selectedSegmentIndex == 1) {
        _type = @"2";
    }
    [_myTableView.mj_header beginRefreshing];



}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _dataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"OrderCellID";
    OrderCell *cell= [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell==nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"OrderCell" owner:nil options:nil] lastObject];
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 70 -1, kScreenWidth, 1)];
        lineView.backgroundColor = Color_bg;
        [cell.contentView addSubview:lineView];
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    OrderVCModel *model;
    if( indexPath.row  < _dataList.count )
    {
        model = _dataList[indexPath.row];
    
    }
  
    
    cell.model = model;
    [cell layoutSubviews];
   
    return cell;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     OrderVCModel *model = _dataList[indexPath.row];
    OrderStateVC *orderstateVC = [[OrderStateVC alloc]init];
    orderstateVC.order_id = model.order_id;
    orderstateVC.type = @"1";
    [self.navigationController pushViewController:orderstateVC animated:YES];

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
