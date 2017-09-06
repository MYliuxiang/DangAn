//
//  DangAXVC.m
//  DangAn
//
//  Created by Viatom on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "DangAXVC.h"
#import "MSeachVC.h"
#import "BaseNavigationController.h"


@interface DangAXVC ()

@end

@implementation DangAXVC
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [_tableView.mj_header beginRefreshing];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
     self.text = @"档案箱";
     self.automaticallyAdjustsScrollViewInsets = NO;
     self.headerView.height = 150;
     self.tableView.tableHeaderView = self.headerView;
    self.dataList = [NSMutableArray array];

    [self addrighttitleString:@"编辑"];
    
    self.titleLabel.text = self.titleText;
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",self.noteText] ;
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_tableView.mj_header beginRefreshing];
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    
    UIButton *rightbutton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    rightbutton1.frame = CGRectMake(kScreenWidth - 50 / 2.0 - 15  - 25 - 15, 20 + (self.nav.height - 20 - 50 / 2.0) / 2.0 , 50 / 2.0, 50 / 2.0);
    [rightbutton1 setImage:[UIImage imageNamed:@"Search"] forState:UIControlStateNormal];
    [rightbutton1 addTarget:self action:@selector(rightAC1) forControlEvents:UIControlEventTouchUpInside];
    [self.nav addSubview:rightbutton1];


}

#pragma mark -------搜索--------
- (void)rightAC1
{
    MSeachVC *vc = [[MSeachVC alloc] init];
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
    
}

#pragma mark --------编辑--------
- (void)rightAction
{
    NSArray *array;
    if (self.dataList.count == 0) {
        
        array = @[@"备注信息",@"添加档案",@"更换条码",@"删除"];
    }else{
        
        array = @[@"备注信息",@"添加档案",@"更换条码"];
        
    }
    ZFActionSheet *sheet = [ZFActionSheet actionSheetWithTitle:nil confirms:array cancel:@"取消" style:ZFActionSheetStyleDefault];
    sheet.delegate = self;
    [sheet showInView:self.view];
    self.text = @"档案管理";

    NSLog(@"编辑");
    
}

#pragma mark ------ZFActionSheetDelegate-------
- (void)clickAction:(ZFActionSheet *)actionSheet atIndex:(NSUInteger)index
{
    self.text = @"档案箱";
    if (index == 0) {
        //备注信息
        [self modifyAC:nil];
    }else if (index == 1){
        //添加档案
        AddNewVC *vc = [[AddNewVC alloc] init];
        vc.clink = ^(){
            
            SugressAlert *alert = [[SugressAlert alloc] initWithMessage:@"添加成功" title1:@"完成" title2:@"继续添加" delegate:self];
            [alert show];
            
        };
        [self.navigationController pushViewController:vc animated:YES];
        
        
        
    }else if (index == 2){
        //更换条码
        ScanVC *vc = [[ScanVC alloc] init];
        vc.delegate = self;
        [self.navigationController pushViewController:vc animated:YES];
    }else if(index == 3){
        //删除
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"亲！您确定要删除吗？" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
        
    }
    
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        [self deleted];
    }
    
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

#pragma mark -------ScanVCDelegate-----
- (void)scanStr:(NSString *)scanStr
{
    
    NSDictionary *params;
    
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"level":@"2",@"number":scanStr,@"id":self.p_box_id};
    
    [WXDataService requestAFWithURL:Url_Archive_updateFileNumber params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if(result){
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                self.titleText = scanStr;
                self.titleLabel.text = scanStr;
                //                    self.updataBlock(text);
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
 
    
}


- (void)deleted
{
    NSDictionary *params;
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"level":@"2",@"id":self.p_box_id};
    [WXDataService requestAFWithURL:Url_Archive_deleteFile params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if(result){
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                [self.navigationController popViewControllerAnimated:YES];
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
    
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
    
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"page":[NSString stringWithFormat:@"%d",_pageIndex],@"p_box_id":self.p_box_id};
    url = Url_Archive_fileListByParent;
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    FModel *model = [[FModel alloc] initWithDataDic:subDic];
                    model.ddescription = [NSString stringWithFormat:@"%@",subDic[@"description"]] ;
                    [marray addObject:model];
                }
                
                self.count = dic[@"count"];
                if (_isdownLoad) {
                    self.dataList = marray;
                    self.titleLabel.text = dic[@"info"][@"number"];
                    self.noteLabel.text =  [NSString stringWithFormat:@"备注：%@",dic[@"info"][@"description"]];
                    self.lmodel = [[LModel alloc] initWithDataDic:dic[@"address_info"]];
                    self.lmodel.ddescription = dic[@"address_info"][@"description"];
                    
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
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        if (self.lmodel == nil) {
            return 0;
        }
        return 1;
    }
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0) {
        
        static NSString *identifire = @"cellID1";
        AdressCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"AdressCell" owner:nil options:nil] lastObject];
            [cell.btn addTarget:self action:@selector(btnAC) forControlEvents:UIControlEventTouchUpInside];
        }
        cell.adressText = self.lmodel.number;
        cell.noteText = self.lmodel.ddescription;
        return cell;
        
    }
    static NSString *identifire = @"cellID";
    WarehouseCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"WarehouseCell" owner:nil options:nil] lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    cell.fmodel = self.dataList[indexPath.row];
    
    return cell;
    
}

#pragma mark ----------查看货架--------------
- (void)btnAC
{
    HuojiaVC *vc = [[HuojiaVC alloc] init];
    vc.p_address_id = _lmodel.p_address_id;
    vc.titleText = _lmodel.number;
    vc.noteText = _lmodel.ddescription;
//    vc.updataBlock = ^(NSString *dd){
//        
//        _lmodel.ddescription = dd;
//        [self.tableView reloadData];
//        
//    };
//    vc.deletedBlock = ^(){
//        
//        [self.tableView reloadData];
//        
//    };
    [self.navigationController pushViewController:vc animated:YES];
//    [self.navigationController popViewControllerAnimated:YES];

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
    label.font = [UIFont systemFontOfSize:12];
    label.textColor = [UIColor lightGrayColor];
    [view addSubview:label];
    if (section == 0) {
        
        label.text = @"所在位置";

    }else{
    
        label.text = [NSString stringWithFormat:@"包含档案册%d个",[self.count intValue]];

    }
    return view;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        [self btnAC];
        return;
    }
    FModel *model = self.dataList[indexPath.row];
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
//        
//    };
    [self.navigationController pushViewController:vc animated:YES];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)modifyAC:(UIButton *)sender {
    
    OneAlert *alert = [[OneAlert alloc] initWithTitle:@"备注信息" Message:self.titleText Placeholdet:@"备注" delegate:self];
    [alert show];
    
}

#pragma  mark ---------- LXOneViewDelegate-------
- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text
{
    if(index == 1){
        
        NSDictionary *params;
        
        params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"level":@"2",@"description":text,@"id":self.p_box_id};
        
        [WXDataService requestAFWithURL:Url_Archive_Archive_updateDescription params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
            
            if(result){
                
                if ([[result objectForKey:@"status"] integerValue] == 0) {
                    
                    self.noteText = text;
                    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",text];
//                    self.updataBlock(text);
                    
                }
                
                //没有数据了
                if ([[result objectForKey:@"status"] integerValue] == 1) {
                    
                    [MBProgressHUD showError:result[@"msg"] toView:self.view];
                    
                }
            }
        } errorBlock:^(NSError *error) {
            NSLog(@"%@",error);
            
            [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
            
        }];
        
    }
    
}
@end
