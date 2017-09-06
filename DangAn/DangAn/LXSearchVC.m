//
//  LXSearchVC.m
//  DangAn
//
//  Created by Viatom on 16/8/4.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "LXSearchVC.h"

@interface LXSearchVC ()<ScanVCDelegate>

@end

@implementation LXSearchVC

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
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    
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
    
    if (self.searChtype == SearChtypeL) {
          params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"page":[NSString stringWithFormat:@"%d",_pageIndex],@"number":self.searchText.text};
        url = self.url;
    }else if(self.searChtype == SearChtypeF){
    
        params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"page":[NSString stringWithFormat:@"%d",_pageIndex],@"number":self.searchText.text};
        url = self.url;
    }
 
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                NSMutableArray *marray = [NSMutableArray array];
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    
                    if(self.searChtype == SearChtypeL){
                    LModel *model = [[LModel alloc] initWithDataDic:subDic];
                    model.ddescription = subDic[@"description"];
                    [marray addObject:model];
                    }else if (self.searChtype == SearChtypeF){
                    
                        DAModel *model = [[DAModel alloc] initWithDataDic:subDic];
                        model.ddescription = subDic[@"description"];
                        model.p_file_id = subDic[@"p_file_id"];
                        [marray addObject:model];
                    
                    }
                }
                
                
                
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



- (IBAction)cancleAC:(UIButton *)sender {
    
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)erWeiAC:(id)sender {
    
    ScanVC *vc = [[ScanVC alloc] init];
    vc.delegate = self;
    [self.navigationController pushViewController:vc animated:YES];
    
}

#pragma  mark --------UITableView Delegete----------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
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
    
    //    cell.model = self.dataList[indexPath.row];
    id model = self.dataList[indexPath.row];
    if ([model isKindOfClass:[LModel class]]) {
        cell.model = model;
    }else if ([model isKindOfClass:[CModel class]]){
        
        cell.cmodel = model;
    }else if([model isKindOfClass:[DAModel class]]){
        
        cell.dmodel = model;
    }else{
    
        cell.fmodel = model;
    }
    
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    id model = self.dataList[indexPath.row];
    if ([model isKindOfClass:[LModel class]]) {
        //货架
        LModel *model = self.dataList[indexPath.row];
        HuojiaVC *vc = [[HuojiaVC alloc] init];
        vc.p_address_id = model.p_address_id;
        vc.titleText = model.number;
        vc.noteText = model.ddescription;
        [self.navigationController pushViewController:vc animated:YES];
        
        
    }else if ([model isKindOfClass:[CModel class]]){
        
        CModel *model = self.dataList[indexPath.row];
        DangAXVC *vc = [[DangAXVC alloc] init];
        vc.p_box_id = model.p_box_id;
        vc.titleText = model.number;
        vc.noteText = model.ddescription;
        [self.navigationController pushViewController:vc animated:YES];
        
    }else if([model isKindOfClass:[DAModel class]]){
        
        DAModel *model = self.dataList[indexPath.row];
        DangACVC *vc = [[DangACVC alloc] init];
        vc.p_file_id = model.p_file_id;
        vc.titleText = model.number;
        vc.noteText = model.ddescription;
        vc.stateText = model.file_status_text;
        vc.state = model.file_status;
        [self.navigationController pushViewController:vc animated:YES];
        
    }else{
        
        FModel *model = self.dataList[indexPath.row];
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
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
    
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
