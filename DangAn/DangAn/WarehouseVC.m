//
//  WarehouseVC.m
//  DangAn
//
//  Created by 刘翔 on 16/6/12.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "WarehouseVC.h"
#import "DangACVC.h"
#import "BaseNavigationController.h"
#import "MSeachVC.h"
@interface WarehouseVC ()

@end

@implementation WarehouseVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if (self.isOnline) {
        self.text = @"在库档案";
    }else{
        
        self.text = @"离库档案";
    }
    self.dataList = [NSMutableArray array];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self addrightImage:@"搜索字符"];
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_tableView.mj_header beginRefreshing];
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [_tableView.mj_header beginRefreshing];

}

- (void)rightAction
{
    

//    LXSearchVC *vc = [[LXSearchVC alloc] init];
//    vc.searChtype = SearChtypeF;
//    vc.url = self.isOnline ? Url_Archive_fileListOnline :Url_Archive_fileListOffline;
//    [self.navigationController pushViewController:vc animated:YES];

    NSLog(@"搜索");
    
    MSeachVC *vc = [[MSeachVC alloc] init];
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
    
    
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
    
    
    NSString *url;
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"page":[NSString stringWithFormat:@"%d",_pageIndex]};
    url = self.isOnline ? Url_Archive_fileListOnline :Url_Archive_fileListOffline;
    
    
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    DAModel *model = [[DAModel alloc] initWithDataDic:subDic];
            
                    model.ddescription = subDic[@"description"];
                    model.p_file_id = subDic[@"p_file_id"];
                    
                    [marray addObject:model];
                }
                
                self.count = dic[@"count"];
                if (_isdownLoad) {
                    self.dataList = marray;
                    
                    
                } else {
                    [self.dataList addObjectsFromArray:marray];
                }
                
                
                
                
                if ([dic[@"page"] intValue] == 0) {
                    //没有更多了
                    if (_isdownLoad) {
                        
                        [_tableView.mj_header endRefreshing];
                        [_tableView.mj_footer endRefreshingWithNoMoreData];
                        
                    } else {
                        
                        [_tableView.mj_footer endRefreshing];
                        [_tableView.mj_footer endRefreshingWithNoMoreData];
                    }
                    
                    
                }else{
                    
                    //还有更多
                    if (_isdownLoad) {
                        
                        [_tableView.mj_header endRefreshing];
                        [_tableView.mj_footer resetNoMoreData];
                    } else {
                        
                        [_tableView.mj_footer endRefreshing];
                        [_tableView.mj_footer resetNoMoreData];
                    }
                    
                }
                
                [_tableView reloadData];
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                if (_isdownLoad) {
                    [_tableView.mj_header endRefreshing];
                } else {
                    [_tableView.mj_footer endRefreshing];
                }
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
        if (_isdownLoad) {
            [_tableView.mj_header endRefreshing];
        } else {
            [_tableView.mj_footer endRefreshing];
        }
        
    }];
    
}




#pragma  mark --------UITableView Delegete----------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    if (self.dataList.count == 0) {
        return 0;
    }
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *identifire = @"cellID";
    WarehouseCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"WarehouseCell" owner:nil options:nil] lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    cell.isOnline = self.isOnline;
    cell.model = self.dataList[indexPath.row];
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 30;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
    
}


- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 30)];
    view.backgroundColor = Color(248, 248, 248);
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, kScreenWidth - 20, 30)];
    label.text = [NSString stringWithFormat:@"包含档案册%@个",self.count];
    label.font = [UIFont systemFontOfSize:12];
    label.textColor = [UIColor lightGrayColor];
    [view addSubview:label];
    return view;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DAModel *model = self.dataList[indexPath.row];
    

        
    DangACVC *vc = [[DangACVC alloc] init];
    vc.p_file_id = model.p_file_id;
    vc.titleText = model.number;
    vc.noteText = model.ddescription;
    vc.stateText = model.file_status_text;
    vc.state = model.file_status;
    //    vc.updataBlock = ^(NSString *dd){
    //
    //        model.ddescription = dd;
    //        [self.tableView reloadData];
    //
    //    };
    //    vc.deletedBlock = ^(){
    //
    //        [self.dataList removeObject:model];
    //        [self.tableView reloadData];
    //
    //    };
    [self.navigationController pushViewController:vc animated:YES];
        
    
    
    
    
}

@end




