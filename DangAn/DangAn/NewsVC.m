//
//  NewsVC.m
//  DangAn
//
//  Created by 刘翔 on 16/6/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "NewsVC.h"
#import "NewsCell.h"
#import "CommentVC.h"

@interface NewsVC ()

@end

@implementation NewsVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    _pageIndex = 1;
    _isdownLoad = YES;
    [self _loadData];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.text = @"新闻资讯";
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self addrighttitleString:@"分享"];
    self.webView.delegate = self;
    self.webView.scrollView.scrollEnabled = NO;

    self.dataList = [NSMutableArray array];
    
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    _pageIndex = 1;
    _isdownLoad = YES;
    [self _loadData];
    
    
}

- (void)creatView
{
    
    self.titleLabel.text = self.model.title;
    self.timeLabel.text = self.model.time;
    [self.webView loadHTMLString:self.model.content baseURL:nil];
    
//    self.placeLabel.text = @"";
    
    self.headerView.width = kScreenWidth;
    
    self.commentBtn.layer.cornerRadius = 4;
    self.commentBtn.layer.masksToBounds = YES;
    self.commentBtn.layer.borderColor = [MyColor colorWithHexString:@"#007cff"].CGColor;
    self.commentBtn.layer.borderWidth = 1;
    
    self.footerView.width = kScreenWidth;
    self.footerView.height = 120;
    self.tableView.tableFooterView = self.footerView;

    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    NSString *str = @"document.getElementsByTagName('body')[0].style.webkitTextSizeAdjust= '100%'";
    [webView stringByEvaluatingJavaScriptFromString:str];
        NSString *height_str= [webView stringByEvaluatingJavaScriptFromString: @"document.body.offsetHeight"];
        int height = [height_str intValue];
        self.webHeightlayout.constant = height;
        self.headerView.height = self.webHeightlayout.constant + 15 + self.titleLabel.bottom + 30;
//        [self.headerView setupAutoHeightWithBottomView:self.webView bottomMargin:15];
//    self.tableView.tableHeaderView = self.headerView;

//        self.tableView.tableHeaderView = self.headerView;
    
            [self.tableView beginUpdates];
            [self.tableView setTableHeaderView:self.headerView];
            [self.tableView endUpdates];
    
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
    params = @{@"page":[NSString stringWithFormat:@"%d",_pageIndex],@"news_id":self.newsId};
    [WXDataService requestAFWithURL:Url_detail params:params httpMethod:@"POST" isHUD:_isdownLoad finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"com_list"];
                self.total = dic[@"count"];
                for (NSDictionary *subDic in array) {
                    CommentModel *model = [[CommentModel alloc] initWithDataDic:subDic];
                    [marray addObject:model];
                }
                
                if (_isdownLoad) {
                    
                    self.dataList = marray;
                    
                } else {
                    
                    [self.dataList addObjectsFromArray:marray];
                }
                
                NSDictionary *newsdic = dic[@"news"];
                self.model = [[NewsDetailModel alloc] initWithDataDic:newsdic];
                
                if (_isdownLoad == YES) {
                    
                    [self creatView];
                    
                }
                
                if ([dic[@"page"] intValue] == 0) {
                    //没有更多了
                    if (_isdownLoad) {
                        
                        [_tableView.mj_footer endRefreshingWithNoMoreData];
                        
                    } else {
                        
                        [_tableView.mj_footer endRefreshing];
                        [_tableView.mj_footer endRefreshingWithNoMoreData];
                    }
                    
                    
                }else{
                    
                    //还有更多
                    if (_isdownLoad) {
                        
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

        
        } else {
            
            [_tableView.mj_footer endRefreshing];
        }
        
    }];
    
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
    NewsCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"NewsCell" owner:nil options:nil] lastObject ];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    cell.model = self.dataList[indexPath.row];
    
    return cell;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return [NewsCell whc_CellHeightForIndexPath:indexPath tableView:tableView];

}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (self.dataList.count == 0) {
        return .1;
    }
    return 40;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (self.dataList.count == 0) {
        
        return nil;
        
    }else{
        
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 40)];
    view.backgroundColor = [MyColor colorWithHexString:@"#eeedf3"];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, kScreenWidth - 10, 30)];
    label.font = [UIFont systemFontOfSize:14];
    label.text = [NSString stringWithFormat:@"评论 %@",self.total];
    label.textColor = [MyColor colorWithHexString:@"#666666"];
    [view addSubview:label];
    
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 39, kScreenWidth, .5)];
    imageView.backgroundColor = [MyColor colorWithHexString:@"#c8c8c8"];
    [view addSubview:imageView];
    
    return view;
    }

}

#pragma mark ---------分享---------
- (void)rightAction
{


}

#pragma mark ----------发表评论----------------
- (IBAction)commentAC:(UIButton *)sender {
    
    if (![UserDefaults boolForKey:ISLogin]) {
        
        [MyLogin gotoLoginViewWithTarget:self];
        
    } else {
        
        CommentVC *vc = [[CommentVC alloc] init];
        vc.newsID = self.newsId;
        [self.navigationController pushViewController:vc animated:YES];
        
    }

}
@end



















