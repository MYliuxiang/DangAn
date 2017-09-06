//
//  FileMangerVC.m
//  DangAn
//
//  Created by 刘翔 on 16/6/13.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "FileMangerVC.h"
#import "FileMangerCell.h"
#import "AddNewVC.h"
#import "SugressAlert.h"
#import "MSeachVC.h"
#import "BaseNavigationController.h"

@interface FileMangerVC ()<LXSugressViewDelegate>

@end

@implementation FileMangerVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [_tableView.mj_header beginRefreshing];

}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.text = @"档案管理";
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.dataList = [NSMutableArray array];
    self.count = 0;
    
  UIButton *rightbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    rightbutton.frame = CGRectMake(kScreenWidth - 50 / 2.0 - 15, 20 + (self.nav.height - 20 - 50 / 2.0) / 2.0 , 50 / 2.0, 50 / 2.0);
    //    _rightbutton.backgroundColor = [UIColor redColor];
    [rightbutton setImage:[UIImage imageNamed:@"详情添加"] forState:UIControlStateNormal];
    [rightbutton addTarget:self action:@selector(rightAC) forControlEvents:UIControlEventTouchUpInside];
    [self.nav addSubview:rightbutton];
    
    UIButton *rightbutton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    rightbutton1.frame = CGRectMake(kScreenWidth - 50 / 2.0 - 15  - 25, 20 + (self.nav.height - 20 - 50 / 2.0) / 2.0 , 50 / 2.0, 50 / 2.0);
    //    _rightbutton.backgroundColor = [UIColor redColor];
    [rightbutton1 setImage:[UIImage imageNamed:@"Search"] forState:UIControlStateNormal];
    [rightbutton1 addTarget:self action:@selector(rightAC1) forControlEvents:UIControlEventTouchUpInside];
    [self.nav addSubview:rightbutton1];
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_tableView.mj_header beginRefreshing];
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];

    
}

#pragma mark -------添加--------
- (void)rightAC
{
    
    AddNewVC *vc = [[AddNewVC alloc] init];
    vc.clink = ^(){
        
        SugressAlert *alert = [[SugressAlert alloc] initWithMessage:@"添加成功" title1:@"完成" title2:@"继续添加" delegate:self];
        [alert show];
        
    };
    [self.navigationController pushViewController:vc animated:YES];

    NSLog(@"添加");
    
}

#pragma mark -------搜索--------
- (void)rightAC1
{
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
        url = Url_Archive_AddressList;
    
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    LModel *model = [[LModel alloc] initWithDataDic:subDic];
                    model.ddescription = [NSString stringWithFormat:@"%@",subDic[@"description"] ];
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
    FileMangerCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"FileMangerCell" owner:nil options:nil] lastObject];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
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
    return 70;

}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 30)];
    view.backgroundColor = Color(248, 248, 248);
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, kScreenWidth - 20, 30)];
    label.text = [NSString stringWithFormat:@"包含货架%d个",[self.count intValue]];
    label.font = [UIFont systemFontOfSize:12];
    label.textColor = [UIColor lightGrayColor];
    [view addSubview:label];
    return view;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    LModel *model = self.dataList[indexPath.row];
    HuojiaVC *vc = [[HuojiaVC alloc] init];
    vc.p_address_id = model.p_address_id;
    vc.titleText = model.number;
    vc.noteText = model.ddescription;
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
//    
//    };
    [self.navigationController pushViewController:vc animated:YES];

}

#pragma mark --------添加成功---------------
- (void)clickindex:(int)index lxView:(SugressAlert *)alert
{
    
    if(index == 1){
        
        AddNewVC *vc = [[AddNewVC alloc] init];
        vc.clink = ^(){
            
            SugressAlert *alert = [[SugressAlert alloc] initWithMessage:@"添加成功" title1:@"完成" title2:@"继续添加" delegate:self];
            [alert show];
            
        };
        [self.navigationController pushViewController:vc animated:YES];
        
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
