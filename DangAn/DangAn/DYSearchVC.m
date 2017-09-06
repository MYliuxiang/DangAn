//
//  DYSearchVC.m
//  DangAn
//
//  Created by lijiang on 16/8/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "DYSearchVC.h"
#import "ScanVC.h"
#import "DYSearchCell.h"
#import "DangAnDetailsVC.h"
@interface DYSearchVC ()<ScanVCDelegate>

@end

@implementation DYSearchVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.navbarHiden = YES;
    self.dataList = [NSMutableArray array];
   
   
    _btu_add.layer.cornerRadius = 5;
    _btu_add.layer.borderWidth = 1;
    _btu_add.layer.borderColor = Color_blue.CGColor;
    _btu_add.layer.masksToBounds = YES;

    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
     [self.tableView.mj_header beginRefreshing];
    
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    if (_isdingyue) {
        
        
        
        if (_borrow_idArray.count > 0) {
            
            _footView.top = kScreenHeight - _footView.height;
            _footView.left = 0;
             _footView.width = kScreenWidth;
            [self.view addSubview:_footView];
            
            _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, self.footView.height)];

//            _tableView.tableFooterView = self.footView;
        } else {
            
            [_footView removeFromSuperview];
            _tableView.tableFooterView = nil;
            
        }
   
    } else {
    
         _tableView.tableFooterView = nil;
    }
   
    
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
    
    if (_isdingyue) {
        
        
        NSString *file_status = @"";
        NSString *is_special = @"";
        NSString *file_lock = @"";
        //调阅
        if ([_product_id integerValue] == 1) {
            
            file_status = @"1";
            file_lock = @"1";
            
        }
        //回库
        if ([_product_id integerValue] == 8) {
            
            file_status = @"2";
            file_lock = @"1";
            
        }
        //销毁
        if ([_product_id integerValue] == 9) {
            
            
            file_status = @"1";
            file_lock = @"1";
            
        }
        
        //永久离库
        if ([_product_id integerValue] == 12) {
            
            is_special = @"1";
        }
        params = @{@"enterprise_id":[AppDelegate GetAppDelegate].enterprise_id,@"keyword":self.searchText.text,@"file_status":file_status,@"file_lock":file_lock,@"page":[NSString stringWithFormat:@"%d",_pageIndex],@"is_special":is_special};
        url = Url_Enterprise_listFile;
  
    } else {
        
         NSString *file_status;
         file_status = _file_status;
    
        
        params = @{@"enterprise_id":[AppDelegate GetAppDelegate].enterprise_id,@"keyword":self.searchText.text,@"file_status":file_status,@"file_lock":@"",@"page":[NSString stringWithFormat:@"%d",_pageIndex]};
        url = Url_Enterprise_listFile;
    
    }
    
   
    
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSLog(@"---result:%@",result);
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    DAModel *model = [[DAModel alloc] initWithDataDic:subDic];
                    
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
                    
                    if(_isdingyue)
                    {
                        //调阅
                        if ([_product_id integerValue] == 1) {
                            
                            BOOL ishave = NO;
                            
                            for (NSString *p_file_id in [AppDelegate GetAppDelegate].xiaohui_idArray) {
                                if ([model.p_file_id isEqualToString:p_file_id]) {
                                    ishave = YES;
                                    break;
                                }
                            }
                            if (!ishave) {
                                for (NSString *p_file_id in [AppDelegate GetAppDelegate].huiku_idArray) {
                                    if ([model.p_file_id isEqualToString:p_file_id]) {
                                        ishave = YES;
                                        break;
                                    }
                                }
                                
                                for (NSString *p_file_id in [AppDelegate GetAppDelegate].foreverliku_idArray) {
                                    if ([model.p_file_id isEqualToString:p_file_id]) {
                                        ishave = YES;
                                        break;
                                    }
                                }
                                if (!ishave) {
                                   [marray addObject:model];
                                }
                            }
                            
                        }
                        //回库
                        if ([_product_id integerValue] == 8) {
                            
                            BOOL ishave = NO;
                            
                            for (NSString *p_file_id in [AppDelegate GetAppDelegate].borrow_idArray) {
                                if ([model.p_file_id isEqualToString:p_file_id]) {
                                    ishave = YES;
                                    break;
                                }
                            }
                            if (!ishave) {
                                for (NSString *p_file_id in [AppDelegate GetAppDelegate].xiaohui_idArray) {
                                    if ([model.p_file_id isEqualToString:p_file_id]) {
                                        ishave = YES;
                                        break;
                                    }
                                }
                                for (NSString *p_file_id in [AppDelegate GetAppDelegate].foreverliku_idArray) {
                                    if ([model.p_file_id isEqualToString:p_file_id]) {
                                        ishave = YES;
                                        break;
                                    }
                                }
                                
                                if (!ishave) {
                                    [marray addObject:model];
                                }
                            }
                            
                        }
                        //销毁
                        if ([_product_id integerValue] == 9) {
                            
                            BOOL ishave = NO;
                            
                            for (NSString *p_file_id in [AppDelegate GetAppDelegate].borrow_idArray) {
                                if ([model.p_file_id isEqualToString:p_file_id]) {
                                    ishave = YES;
                                    break;
                                }
                            }
                            if (!ishave) {
                                for (NSString *p_file_id in [AppDelegate GetAppDelegate].huiku_idArray) {
                                    if ([model.p_file_id isEqualToString:p_file_id]) {
                                        ishave = YES;
                                        break;
                                    }
                                }
                                
                                for (NSString *p_file_id in [AppDelegate GetAppDelegate].foreverliku_idArray) {
                                    if ([model.p_file_id isEqualToString:p_file_id]) {
                                        ishave = YES;
                                        break;
                                    }
                                }
                                
                                if (!ishave) {
                                    [marray addObject:model];
                                }
                            }
                            
                        }
                        
                        //永久离库
                        if ([_product_id integerValue] == 12) {
                            
                            BOOL ishave = NO;
                            
                            for (NSString *p_file_id in [AppDelegate GetAppDelegate].borrow_idArray) {
                                if ([model.p_file_id isEqualToString:p_file_id]) {
                                    ishave = YES;
                                    break;
                                }
                            }
                            if (!ishave) {
                                for (NSString *p_file_id in [AppDelegate GetAppDelegate].huiku_idArray) {
                                    if ([model.p_file_id isEqualToString:p_file_id]) {
                                        ishave = YES;
                                        break;
                                    }
                                }
                                for (NSString *p_file_id in [AppDelegate GetAppDelegate].xiaohui_idArray) {
                                    if ([model.p_file_id isEqualToString:p_file_id]) {
                                        ishave = YES;
                                        break;
                                    }
                                }
                                if (!ishave) {
                                    [marray addObject:model];
                                }
                            }
                            
                        }

                    
                    } else {
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

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifire = @"cellID";
    DYSearchCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"DYSearchCell" owner:nil options:nil] lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 60 - 1, kScreenWidth, 1)];
        lineView.backgroundColor = Color_bg;
        [cell.contentView addSubview:lineView];
    }
    
    
    cell.selceImage.hidden = YES;
    DAModel *model = self.dataList[indexPath.row];
    for (NSString *p_file_id in _borrow_idArray) {
        if ([model.p_file_id isEqualToString:p_file_id]) {
            cell.selceImage.hidden = NO;
        }
    }
 
    cell.model = model;
    if(_isdingyue)
    {
        cell.stateLabel.hidden = YES;
        cell.stateImageView.hidden = YES;
    } else {
        cell.stateLabel.hidden = NO;
        cell.stateImageView.hidden = NO;
    }
    return cell;
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DAModel *model = self.dataList[indexPath.row];
    if (_isdingyue) {
        BOOL ishave = NO;
        for (NSString *p_file_id in _borrow_idArray) {
            if ([model.p_file_id isEqualToString:p_file_id]) {
                ishave = YES;
                break;
            }
        }
        if (ishave) {
            [_borrow_idArray removeObject:model.p_file_id];
        } else {
            [_borrow_idArray addObject:model.p_file_id];
        }
        
        if (_borrow_idArray.count > 0) {
            
            
            _footView.top = kScreenHeight - _footView.height;
            _footView.left = 0;
            _footView.width = kScreenWidth;
            [self.view addSubview:_footView];
            
            _tableView.tableFooterView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, self.footView.height)];
            
//            _tableView.tableFooterView = self.footView;
        } else {
            
            [_footView removeFromSuperview];
            _tableView.tableFooterView = nil;
        }
        
        [_tableView reloadData];
   
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

- (IBAction)btuAddAction:(id)sender
{

    [_delegate giveborrow_idArray:_borrow_idArray];
    [self dismissViewControllerAnimated:YES completion:nil];


}


- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
    
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
