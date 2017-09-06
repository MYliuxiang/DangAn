//
//  MSeachVC.m
//  DangAn
//
//  Created by 刘翔 on 16/6/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "MSeachVC.h"
#import "ScanVC.h"

@interface MSeachVC ()<ScanVCDelegate>

@end

@implementation MSeachVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navbarHiden = YES;
    self.dataList = [NSMutableArray array];
    self.dataList1 = [NSMutableArray array];
    self.dataList2 = [NSMutableArray array];
    self.list = [NSMutableArray array];
    self.titleArray = [NSMutableArray array];
    
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
//    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
  
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"keyword":self.searchText.text};
    url = Url_Archive_getSelectResult;
    
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                NSMutableArray *marray = [NSMutableArray array];
                NSArray *array = dic[@"address_list"];
                for (NSDictionary *subDic in array) {
                    LModel *model = [[LModel alloc] initWithDataDic:subDic];
                    model.ddescription = subDic[@"description"];
                    [marray addObject:model];
                }
                
                
                NSMutableArray *marray1 = [NSMutableArray array];
                NSArray *array1 = dic[@"box_list"];
                for (NSDictionary *subDic in array1) {
                    CModel *model = [[CModel alloc] initWithDataDic:subDic];
                    model.ddescription = subDic[@"description"];
                    [marray1 addObject:model];
                }
                

                NSMutableArray *marray2 = [NSMutableArray array];
                NSArray *array2 = dic[@"file_list"];
                for (NSDictionary *subDic in array2) {
                    FModel *model = [[FModel alloc] initWithDataDic:subDic];
                    model.ddescription = subDic[@"description"];
                    [marray2 addObject:model];
                }
                
                if (_isdownLoad) {
                    
                    [self.list removeAllObjects];

                    self.dataList = marray;
                    self.dataList1 = marray1;
                    self.dataList2 = marray2;
                    if (self.dataList.count != 0) {
                        [self.list addObject:self.dataList];
                        [self.titleArray addObject:@"货架"];
                    }
                    if (self.dataList1.count != 0) {
                        [self.list addObject:self.dataList1];
                        [self.titleArray addObject:@"档案箱"];

                    }
                    if (self.dataList2.count != 0) {
                        [self.list addObject:self.dataList2];
                        [self.titleArray addObject:@"档案册"];

                    }
                    
                    
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



- (IBAction)cancleAC:(UIButton *)sender {
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)erWeiAC:(id)sender {
    
    ScanVC *vc = [[ScanVC alloc] init];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
    
}

#pragma  mark --------UITableView Delegete----------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.list.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSArray *array = self.list[section];
    return array.count;
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
    
//    cell.model = self.dataList[indexPath.row];
    id model = self.list[indexPath.section][indexPath.row];
    if ([model isKindOfClass:[LModel class]]) {
        
        cell.model = model;
        
    }else if ([model isKindOfClass:[CModel class]]){
    
        cell.cmodel = model;
        
    }else{
    
        cell.fmodel = model;
    }
    
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id model = self.list[indexPath.section][indexPath.row];
    if ([model isKindOfClass:[LModel class]]) {
        //货架
        LModel *model = self.list[indexPath.section][indexPath.row];
        HuojiaVC *vc = [[HuojiaVC alloc] init];
        vc.p_address_id = model.p_address_id;
        vc.titleText = model.number;
        vc.noteText = model.ddescription;
       [self.navigationController pushViewController:vc animated:YES];
        
        
    }else if ([model isKindOfClass:[CModel class]]){
        
        CModel *model = self.list[indexPath.section][indexPath.row];
        DangAXVC *vc = [[DangAXVC alloc] init];
        vc.p_box_id = model.p_box_id;
        vc.titleText = model.number;
        vc.noteText = model.ddescription;
        
        [self.navigationController pushViewController:vc animated:YES];
        
    }else{
        
        FModel *model = self.list[indexPath.section][indexPath.row];
        DangACVC *vc = [[DangACVC alloc] init];
        vc.p_file_id = model.p_file_id;
        vc.titleText = model.number;
        vc.noteText = model.ddescription;
        vc.stateText = model.file_status_text;
        vc.state = model.file_status;
        [self.navigationController pushViewController:vc animated:YES];
        
    }

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
    label.text = self.titleArray[section];
    label.font = [UIFont systemFontOfSize:12];
    label.textColor = [UIColor lightGrayColor];
    [view addSubview:label];
    return view;
    
}


#pragma mark -------ScanVCDelegate-----
- (void)scanStr:(NSString *)scanStr
{
    [self.view endEditing:YES];
    self.searchText.text = scanStr;
    [self.tableView.mj_header beginRefreshing];
    
}

#pragma mark -------UITextField Delegate-------------
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [textField selectAll:self];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];    //主要是[receiver resignFirstResponder]在哪调用就能把receiver对应的键盘往下收
    [self.tableView.mj_header beginRefreshing];

    return YES;
}

@end















