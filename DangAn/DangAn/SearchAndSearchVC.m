//
//  SearchAndSearchVC.m
//  DangAn
//
//  Created by 李江 on 16/10/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "SearchAndSearchVC.h"
#import "ScanVC.h"
#import "DYSearchCell.h"
#import "DangAnDetailsVC.h"
#import "OrderVCModel.h"
#import "OrderCell.h"
#import "SearchAndSearchModel.h"
#import "OrderStateVC.h"
@interface SearchAndSearchVC ()<ScanVCDelegate>

@end

@implementation SearchAndSearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navbarHiden = YES;
    self.dataList = [NSMutableArray array];
    
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tableView.mj_header beginRefreshing];
    
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    _tableView.tableFooterView = nil;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//下啦刷新
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
    
    params = @{@"enterprise_id":[AppDelegate GetAppDelegate].enterprise_id,@"keyword":self.searchText.text,@"page":[NSString stringWithFormat:@"%d",_pageIndex]};
        url = Url_Enterprise_search;
        
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSLog(@"---result:%@",result);
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    
                    
                    
                    SearchAndSearchModel *model = [[SearchAndSearchModel alloc] initWithDataDic:subDic];
                    
                    if ([model.type integerValue] != 1) {
                        
                        if ([model.file_status integerValue] == 1) {
                            model.file_status_text = @"在库";
                        } else if ([model.file_status integerValue] == 2) {
                            model.file_status_text = @"离库";
                        } else if ([model.file_status integerValue] == 3) {
                            model.file_status_text = @"永久离库";
                        } else {
                            model.file_status_text = @"已销毁";
                        }
                        
                        model.ddescription = subDic[@"title"];
                        model.p_file_id = subDic[@"file_id"];
                        
                    }
                   
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
    if (self.dataList.count == 0) {
        return 0;
    }
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    SearchAndSearchModel *model = self.dataList[indexPath.row];
    //订单
    if ([model.type integerValue] == 1) {
        
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
        
        OrderVCModel *ordermodel = [[OrderVCModel alloc] init];
        ordermodel.order_id = model.order_id;
        ordermodel.sn = model.sn;
        ordermodel.order_status = model.order_status;
        ordermodel.order_status_text = model.order_status_text;
        ordermodel.time = model.time;
        cell.model = ordermodel;
        [cell layoutSubviews];
        
        return cell;
        
    } else {
    
        static NSString *identifire = @"cellID";
        DYSearchCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"DYSearchCell" owner:nil options:nil] lastObject];
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 70 - 1, kScreenWidth, 1)];
            lineView.backgroundColor = Color_bg;
            [cell.contentView addSubview:lineView];
        }
        
        
        cell.selceImage.hidden = YES;
        DAModel *damodel = [[DAModel alloc] init];
        damodel.p_file_id = model.p_file_id;
        damodel.number = model.number;
        damodel.ddescription = model.ddescription;
        damodel.file_status = model.file_status;
        damodel.file_status_text = model.file_status_text;
        damodel.level = model.level;
        cell.model = damodel;
     
        return cell;
    
    
  }

}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    SearchAndSearchModel *model = self.dataList[indexPath.row];
    //订单
    if ([model.type integerValue] == 1) {
        
        OrderStateVC *orderstateVC = [[OrderStateVC alloc]init];
        orderstateVC.order_id = model.order_id;
        orderstateVC.type = @"1";
        [self.navigationController pushViewController:orderstateVC animated:YES];
    
    } else {
       
        DangAnDetailsVC *dangAnDetailsVC = [[DangAnDetailsVC alloc]init];
        dangAnDetailsVC.p_file_id = model.p_file_id;
        dangAnDetailsVC.titleText = model.number;
        dangAnDetailsVC.noteText = model.ddescription;
        dangAnDetailsVC.stateText = model.file_status_text;
        dangAnDetailsVC.state = model.file_status;
        [self.navigationController pushViewController:dangAnDetailsVC animated:YES];
    
    }
    
   
    
    
    
    
    
    
    
    
}



- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}


//- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
//{
//    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 30)];
//    view.backgroundColor = Color(248, 248, 248);
//    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, kScreenWidth - 20, 30)];
////    label.text = self.titleArray[section];
//    label.font = [UIFont systemFontOfSize:12];
//    label.textColor = [UIColor lightGrayColor];
//    [view addSubview:label];
//    return view;
//
//}


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


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
