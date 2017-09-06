//
//  HomeVC.m
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "HomeVC.h"
#import "HomeCell.h"
#import "HeaderCell.h"
#import "HomeAlert.h"
#import "NewsVC.h"
#import "MainTabBarController.h"
#import "PlaceAnOrder.h"

@interface HomeVC ()

@end

@implementation HomeVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navbarHiden = YES;
    
    self.dataList = [NSMutableArray array];
    self.titles = @[@"档案收取",@"调阅使用",@"物料采购",@"数字加工",@"机密销毁",@"专案项目",@"技术支持"];
     self.imageNames = @[@"首页－档案收取",@"首页－调阅使用",@"首页－物料采购",@"首页－数字加工",@"首页－机密销毁",@"首页－专案项目",@"首页－技术支持"];
    
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.headerView.height = (kScreenWidth / 320) * 170 + 100;
    self.headerView.width = kScreenWidth;
    self.tableView.tableHeaderView = self.headerView;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    //轮播图
    _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(0, 0, kScreenWidth, (kScreenWidth / 320) * 170) delegate:self placeholderImage:[UIImage imageNamed:@""]];
    [_cycleScrollView setPageControlAliment:SDCycleScrollViewPageContolAlimentCenter];
    [_cycleScrollView setPageControlStyle:SDCycleScrollViewPageContolStyleAnimated];
    [_cycleScrollView setPageControlDotSize:CGSizeMake(6, 6)];
    _cycleScrollView.autoScrollTimeInterval = 5;
    [self.headerView addSubview:_cycleScrollView];

    
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_tableView.mj_header beginRefreshing];
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    self.myLaout.itemSize = CGSizeMake(kScreenWidth / 4.0,93);
    self.myLaout.scrollDirection = UICollectionViewScrollDirectionHorizontal;
    //    self.layout.headerReferenceSize = CGSizeMake(kScreenWidth , 50);
    self.myLaout.minimumLineSpacing = 0;
    self.myLaout.minimumInteritemSpacing = 0;
    
    _collectionView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    self.collectionView.allowsMultipleSelection = YES;//默认为NO,是否可以多选
    [_collectionView registerNib:[UINib nibWithNibName:@"HeaderCell" bundle:nil] forCellWithReuseIdentifier:@"HeaderCellID"];
}

/** 点击图片回调banner */
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    CycleModel *model = self.cycleList[index];
    if ([model.adv_type integerValue] == 1) {
        //新闻
        NewsVC *vc = [[NewsVC alloc] init];
        vc.newsId = model.news_id;
        [self.navigationController pushViewController:vc animated:YES];
        
    }else if ([model.adv_type integerValue] == 2){
        //下单
    
    }else{
        //静态图片
    
    }
   
    
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
    
    params = @{@"page":[NSString stringWithFormat:@"%d",_pageIndex]};
    
    [WXDataService requestAFWithURL:Url_index params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"news_list"];
                
                NSMutableArray *marray1 = [NSMutableArray array];
                NSMutableArray *imarray = [NSMutableArray array];

                NSArray *array1 = dic[@"adv_list"];
                
                for (NSDictionary *subDic in array1) {
                    CycleModel *model = [[CycleModel alloc] initWithDataDic:subDic];
                    [marray1 addObject:model];
                    [imarray addObject:model.thumb];
                }
                _cycleList = marray1;
                _cycleScrollView.imageURLStringsGroup = imarray;

                
                for (NSDictionary *subDic in array) {
                    NewsModel *model = [[NewsModel alloc] initWithDataDic:subDic];
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


#pragma mark - UICollectionView Delegate
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
    
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.imageNames.count;
    
}


- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    //如果有闲置的就拿到使用,如果没有,系统自动的去创建
    HeaderCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"HeaderCellID" forIndexPath:indexPath];
    [cell setImage:[UIImage imageNamed:self.imageNames[indexPath.row]] titles:self.titles[indexPath.row]];
    [cell setNeedsLayout];
    return cell;
    
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (![UserDefaults boolForKey:ISLogin]) {
        
        [MyLogin gotoLoginViewWithTarget:self];
        return;
    }
    
    if(indexPath.row == 0){
        
    HomeAlert *alert = [[HomeAlert alloc] initWithImage:[UIImage imageNamed:@"档案收取"] Title:@"档案收取" Content:@"前往客户指定地点\n收取档案资料" delegate:self];
    alert.tag = indexPath.row;
    [alert show];
        
    }else if (indexPath.row == 1){
    
        HomeAlert *alert = [[HomeAlert alloc] initWithImage:[UIImage imageNamed:@"调阅使用"] Title:@"调阅使用" Content:@"实物调阅，直接派送至客户指定地点\n电子调阅，将档案电子化发送给客户\n现场调阅，客户前往文件保管中心进\n行档案查阅" delegate:self];
        alert.tag = indexPath.row;
        [alert show];
        
    }else if (indexPath.row == 2){
    
        HomeAlert *alert = [[HomeAlert alloc] initWithImage:[UIImage imageNamed:@"物料采购"] Title:@"物料采购" Content:@"客户采购档案所需材料\n配送至指定地点" delegate:self];
        alert.tag = indexPath.row;
        [alert show];
    
    }else if (indexPath.row == 3){
    
        HomeAlert *alert = [[HomeAlert alloc] initWithImage:[UIImage imageNamed:@"数字加工"] Title:@"数字加工" Content:@"采用专业设备将纸质档案转变为\n电子、影像等资料" delegate:self];
        alert.tag = indexPath.row;
        [alert show];
    
    }else if (indexPath.row == 4){
    
        HomeAlert *alert = [[HomeAlert alloc] initWithImage:[UIImage imageNamed:@"机密销毁"] Title:@"机密销毁" Content:@"将无保存价值的档案资料进行\n机密销毁作业" delegate:self];
        alert.tag = indexPath.row;
        [alert show];
    
    }else if (indexPath.row == 5){
    
        HomeAlert *alert = [[HomeAlert alloc] initWithImage:[UIImage imageNamed:@"专案项目"] Title:@"专案项目" Content:@"派遣专业档案团队前往\n客户端服务" delegate:self];
        alert.tag = indexPath.row;
        [alert show];
        
    }else{
    
        HomeAlert *alert = [[HomeAlert alloc] initWithImage:[UIImage imageNamed:@"技术支持"] Title:@"技术支持" Content:@"资深档案专家前往客户端进行\n现场诊断、提供解决方案" delegate:self];
        alert.tag = indexPath.row;
        [alert show];
    
    }


}

#pragma mark --------LXViewDelegate---------
- (void)clickindex:(int)index lxView:(HomeAlert *)alert
{
    
    NSLog(@"index:%d,alert.tag:%d",index,alert.tag);
    if (index == 0) {
        if (![UserDefaults boolForKey:ISLogin]) {
            [MBProgressHUD showError:@"请先登陆" toView:self.view];
      
        } else {
            //下单
            PlaceAnOrder *placeAnOrder = [[PlaceAnOrder alloc]init];
            [self.navigationController pushViewController:placeAnOrder animated:YES];
        }
       
        
    }else{
        //vip业务
        
        [MainTabBarController shareMainTabBarController].selectedIndex = 2;
    
    }
    


}


#pragma mark -------UITableView Delegate ------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataList.count;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifire = @"cellID";
    HomeCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"HomeCell" owner:nil options:nil] lastObject];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    cell.model = self.dataList[indexPath.row];
    
    return cell;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    
    return self.firstHeader;

}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    
    return 45;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 85;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NewsVC *vc = [[NewsVC alloc] init];
    NewsModel *model = self.dataList[indexPath.row];
    vc.newsId = model.news_id;
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end














