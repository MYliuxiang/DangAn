//
//  VIPDangAnListVC.m
//  DangAn
//
//  Created by 李江 on 16/10/18.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "VIPDangAnListVC.h"
#import "DYSearchVC.h"
#import "DangAnDetailsVC.h"
#import "BaseNavigationController.h"
@interface VIPDangAnListVC ()

@end

@implementation VIPDangAnListVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    if ([self.file_status integerValue] == 1) {
        self.text = @"在库档案";
    } else if ([self.file_status integerValue] == 2) {
        self.text = @"离库档案";
    } else if ([self.file_status integerValue] == 3) {
        self.text = @"永久离库档案";
    } else {
        self.text = @"已销毁档案";
    }
    self.dataList = [NSMutableArray array];
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self addrightImage:@"搜索字符"];
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_tableView.mj_header beginRefreshing];
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    _tableView.tableFooterView = [[UIView alloc]init];
    
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [_tableView.mj_header beginRefreshing];
    
}

- (void)rightAction
{
    
    
    DYSearchVC *vc = [[DYSearchVC alloc] init];
    vc.isdingyue = NO;
    if ([self.file_status integerValue] == 1) {
        vc.file_status = @"1";
    } else if ([self.file_status integerValue] == 2) {
        vc.file_status = @"2";
    } else if ([self.file_status integerValue] == 3) {
        vc.file_status = @"3";
    } else {
        vc.file_status = @"99";
    }
    
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];

    
    
    NSLog(@"搜索");
    
    
    
    
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
    params = @{@"enterprise_id":_enterprise_id,@"page":[NSString stringWithFormat:@"%d",_pageIndex],@"file_status":_file_status};
    url =  Url_Enterprise_listFile ;
        

    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    DAModel *model = [[DAModel alloc] initWithDataDic:subDic];
                    model.file_status_text = subDic[@"file_status_text"];
//                    if ([model.file_status integerValue] == 1) {
//                        model.file_status_text = @"在库";
//                    } else if ([model.file_status integerValue] == 2) {
//                        model.file_status_text = @"离库";
//                    } else if ([model.file_status integerValue] == 3) {
//                        model.file_status_text = @"永久离库";
//                    } else {
//                        model.file_status_text = @"已销毁";
//                    }
                    
                    model.ddescription = subDic[@"title"];
                    model.p_file_id = subDic[@"file_id"];
                   
                
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
    
    DangAnDetailsVC *dangAnDetailsVC = [[DangAnDetailsVC alloc]init];
    dangAnDetailsVC.p_file_id = model.p_file_id;
    dangAnDetailsVC.titleText = model.number;
    dangAnDetailsVC.noteText = model.ddescription;
    dangAnDetailsVC.stateText = model.file_status_text;
    dangAnDetailsVC.state = model.file_status;
    [self.navigationController pushViewController:dangAnDetailsVC animated:YES];
       
    
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
