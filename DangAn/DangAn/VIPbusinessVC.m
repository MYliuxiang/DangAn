//
//  VIPbusinessVC.m
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "VIPbusinessVC.h"
#import "LoginVC.h"
#import "HistoricalbillVC.h"
#import "OrderVC.h"
#import "PlaceAnOrder.h"
#import "MSeachVC.h"
#import "BaseNavigationController.h"
#import "NewsVC.h"
#import "VIPDangAnListVC.h"
#import "DYSearchVC.h"
#import "SearchAndSearchVC.h"
#import "OrderNumVC.h"
#import "DangAnNumVC.h"
@interface VIPbusinessVC ()<UITableViewDelegate,UITableViewDataSource,SDCycleScrollViewDelegate>
{
    NSString *count;
    NSString *content;
    NSString *order_id;
    NSMutableArray *cycleList;
    NSString *_enterprise_id;
    UIScrollView *scrollView;
    UIView *_scrollbgView;
}
@end

@implementation VIPbusinessVC

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if (![UserDefaults boolForKey:ISLogin]) {
     
        self.tableView.tableHeaderView = _hedeView;
        
        scrollView.hidden = NO;;
        _scrollbgView.hidden = NO;
  
    } else {
    
        _LoginHeaderView.height = _LoginHeaderView.height ;
        self.tableView.tableHeaderView = _LoginHeaderView;
        scrollView.hidden = YES;
        _scrollbgView.hidden = YES;
        [self loadData];
        
        
        
        if([[UserDefaults objectForKey:Enterprise_id] intValue] == 0)
        {
            self.label_manger.text = @"";
            //公司名称
            //            self.lable_title.text = result[@"result"][@"member"][@"title"];
            self.lable_title.text = @"";
            //在库统计
            UILabel *lable = (UILabel *)[[_LoginHeaderView viewWithTag:100] viewWithTag:200];
            lable.text = @"";
            //离库统计
            UILabel *lable1 = (UILabel *)[[_LoginHeaderView viewWithTag:101] viewWithTag:201];
            lable1.text = @"";
            //订单统计
            UILabel *lable2 = (UILabel *)[[_LoginHeaderView viewWithTag:102] viewWithTag:202];
            lable2.text = @"";
            
//            [self.image_user sd_setImageWithURL:[NSURL URLWithString:@""] placeholderImage:nil];
            
        } else {
        
            
        
        }
        
    }
    
}

- (void)initGuide
{
    
    _scrollbgView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight - 49)];
    _scrollbgView.backgroundColor = [UIColor blackColor];
    _scrollbgView.hidden = YES;
    _scrollbgView.alpha = .5;
    [self.view addSubview:_scrollbgView];
    
    scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight - 49)];
    
    [scrollView setPagingEnabled:YES];  //视图整页显示
    scrollView.delegate = self;
    scrollView.backgroundColor = [UIColor clearColor];
    scrollView.showsHorizontalScrollIndicator = NO;
    scrollView.showsVerticalScrollIndicator = NO;
    scrollView.bounces = NO;
    scrollView.hidden = YES;
    scrollView.alwaysBounceHorizontal = NO;
    //    [scrollView setBounces:NO]; //避免弹跳效果,避免把根视图露出来
    NSArray *array = @[[UIImage imageNamed:@"2VIP1"],[UIImage imageNamed:@"2VIP2"],[UIImage imageNamed:@"2VIP3"],[UIImage imageNamed:@"2VIP4"]];
   
    [scrollView setContentSize:CGSizeMake(kScreenWidth * array.count, kScreenHeight - 49)];
    
    
    for (int i = 0; i<array.count; i++) {
        
        
        UIImageView *imageview = [[UIImageView alloc] initWithFrame:CGRectMake(10 +  (kScreenWidth - 20) * i + 20 * i, (scrollView.height - (kScreenHeight - 140)) / 2.0, kScreenWidth - 20, kScreenHeight - 140)];
        [imageview setImage:array[i]];
        imageview.contentMode = UIViewContentModeScaleAspectFit;
        imageview.userInteractionEnabled = YES;
        [scrollView addSubview:imageview];
        
    
        if (i==array.count-1) {
            
            NSArray *btnArray = @[@"已签约, 立即使用",@"推荐给好友"];
            for (int i = 0; i< btnArray.count; i++) {
                UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];//在imageview3上加载一个透明的button
                [button setTitle:btnArray[i] forState:UIControlStateNormal];
                [button setTitleColor:Color_blue forState:UIControlStateNormal];
                [button setFrame:CGRectMake( 80,230 * ratioHeight + i * 65 * ratioHeight , imageview.width - 80 * 2.0, 50)];
                button.layer.masksToBounds = YES;
                button.titleLabel.font = [UIFont boldSystemFontOfSize:17];
                button.layer.borderWidth = 1.0; //设置边框宽度
                button.layer.cornerRadius = 5;
                button.layer.borderColor = [Color_blue CGColor]; //设置边框颜色
                button.tag = 100 + i;
                //    [self.layer setCornerRadius:5.0];
                
                [button addTarget:self action:@selector(firstpressed:) forControlEvents:UIControlEventTouchUpInside];
                [imageview addSubview:button];
            }
            
           
        }
    }
    [self.view addSubview:scrollView];
    
}

- (void)firstpressed:(UIButton *)btn
{
    //已签约, 立即使用
    if(btn.tag == 100)
    {
        [MyLogin gotoLoginViewWithTarget:self];
    
    }
    //推荐给好友
    if(btn.tag == 101)
    {
        
    }

}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.label_manger.textColor = Color_text;
    self.image_user.layer.cornerRadius = self.image_user.height / 2.0;
    self.image_user.layer.masksToBounds = YES;
    
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.nav.hidden = YES;
    
    self.tableView.tableFooterView = [[UIView alloc]init];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    [self _initHeaderView];
    
    [self initGuide];
}

//首页请求数据
- (void)loadData
{
    [WXDataService requestAFWithURL:Url_Enterprise_index params:@{@"member_id":[UserDefaults objectForKey:Member_id]} httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        NSLog(@"----%@",result);
       
        if([result[@"status"] integerValue] == 0)
        {
        
            self.label_manger.text = result[@"result"][@"member"][@"uname"];
            //公司名称
            self.lable_title.text = result[@"result"][@"member"][@"title"];
//            self.lable_title.text = [UserDefaults objectForKey:Company];
            //在库统计
            UILabel *lable = (UILabel *)[[_LoginHeaderView viewWithTag:100] viewWithTag:200];
            lable.text = result[@"result"][@"file_in_count"];
            //离库统计
            UILabel *lable1 = (UILabel *)[[_LoginHeaderView viewWithTag:101] viewWithTag:201];
            lable1.text = result[@"result"][@"file_out_count"];
            //订单统计
            UILabel *lable2 = (UILabel *)[[_LoginHeaderView viewWithTag:102] viewWithTag:202];
            lable2.text = result[@"result"][@"order_count"];
            
            [self.image_user sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",result[@"result"][@"member"][@"headimgurl"]]] placeholderImage:nil];
            
            count = result[@"result"][@"notice"][@"count"];
            content = result[@"result"][@"notice"][@"content"];
            order_id = result[@"result"][@"notice"][@"order_id"];
            _enterprise_id = result[@"result"][@"enterprise_id"];
            [UserDefaults setObject:_enterprise_id forKey:Enterprise_id];
            [UserDefaults synchronize];
            [AppDelegate GetAppDelegate].enterprise_id = _enterprise_id;
            cycleList = [NSMutableArray new];
            NSArray *array = result[@"result"][@"adv_list"];
            NSMutableArray *imageArray = [NSMutableArray new];
            for (NSDictionary *subDic in array) {
    
                [cycleList addObject:subDic];
                [imageArray addObject:subDic[@"thumb"]];
            }
            _cycleScrollView.imageURLStringsGroup = imageArray;
            
            [_tableView reloadData];
            
            
        } else {
            
         [MBProgressHUD showError:result[@"msg"] toView:self.view];
        
        }
        
    } errorBlock:^(NSError *error) {
        
    }];
    
   
}

- (void)_initHeaderView
{
    NSArray *titleArray = @[@"在库",@"离库",@"订单",@"全部\n档案"];
    float count_num = titleArray.count / 1.0;
    for (int i = 0; i < titleArray.count; i ++) {
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(kScreenWidth / count_num * i, _heder_lineView.top, kScreenWidth / count_num, _LoginHeaderView.height - _heder_lineView.bottom)];
        view.tag = 100 + i;
        view.userInteractionEnabled = YES;
        [_LoginHeaderView addSubview:view];
        
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(view.width - 1, 0, 1, view.height)];
        lineView.backgroundColor = _heder_lineView.backgroundColor;
        [view addSubview:lineView];
        
        UILabel *numLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, (view.height - 50) / 2.0, view.width, 20)];
        numLabel.textColor = Color_yellow;
        numLabel.textAlignment = NSTextAlignmentCenter;
        numLabel.font = [UIFont systemFontOfSize:20];
        numLabel.tag = 200 + i;
        [view addSubview:numLabel];
        
        UILabel *typeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, numLabel.bottom + 10, view.width, 20)];
        typeLabel.textColor = Color_text;
        typeLabel.text = titleArray[i];
        typeLabel.textAlignment = NSTextAlignmentCenter;
        typeLabel.numberOfLines = 0;
        typeLabel.font = [UIFont systemFontOfSize:14];
        [view addSubview:typeLabel];
        if(i == 3)
        {
            typeLabel.top = 0;
            typeLabel.height = view.height;
            
        }
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
        [view addGestureRecognizer:tap];
    }
}

#pragma mark ------- 头部按钮事件 -------------------
- (void)tapAction:(UITapGestureRecognizer *)tap
{
    
    if (![UserDefaults boolForKey:ISLogin]) {
        [MyLogin gotoLoginViewWithTarget:self];
        return;
        
    }
    
  
    
     //在库
    if(tap.view.tag == 100)
    {
        //判断是否是VIPEnterprise_id
        if ([[UserDefaults objectForKey:Enterprise_id] integerValue] == 0) {
            
            [MBProgressHUD showError:@"您不是企业用户，没有权限查看此页面" toView:self.view];
            return;
        }
        VIPDangAnListVC *vc = [[VIPDangAnListVC alloc] init];
        vc.enterprise_id = _enterprise_id;
        vc.file_status = @"1";
        [self.navigationController pushViewController:vc animated:YES];
    
    }
    //离库
    if(tap.view.tag == 101)
    {
        //判断是否是VIPEnterprise_id
        if ([[UserDefaults objectForKey:Enterprise_id] integerValue] == 0) {
            
            [MBProgressHUD showError:@"您不是企业用户，没有权限查看此页面" toView:self.view];
            return;
        }
        VIPDangAnListVC *vc = [[VIPDangAnListVC alloc] init];
        vc.enterprise_id = _enterprise_id;
        vc.file_status = @"2";
        [self.navigationController pushViewController:vc animated:YES];
        
    }
    //订单
    if(tap.view.tag == 102)
    {
         OrderNumVC *orderNumVC = [[OrderNumVC alloc]init];
        [self.navigationController pushViewController:orderNumVC animated:YES];
       
        
    }
    //全部档案
    if(tap.view.tag == 103)
    {
        //判断是否是VIPEnterprise_id
        if ([[UserDefaults objectForKey:Enterprise_id] integerValue] == 0) {
            
            [MBProgressHUD showError:@"您不是企业用户，没有权限查看此页面" toView:self.view];
            return;
        }
        
        DangAnNumVC *dangAnNumVC = [[DangAnNumVC alloc]init];
        dangAnNumVC.enterprise_id = _enterprise_id;
        [self.navigationController pushViewController:dangAnNumVC animated:YES];
        
        
    }
    

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        
        static NSString *cellID = @"cellID";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
        if (cell == nil) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
            
            UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10,0, kScreenWidth - 10  - 10, 30)];
            label.font = [UIFont systemFontOfSize:14];
            label.textColor = Color_text;
            label.text = @"常用工具";
            label.textAlignment = NSTextAlignmentLeft;
            [cell.contentView addSubview:label];
            
            NSArray *imageArray = @[@"搜一搜",@"我要下单",@"历史账单",@"库存报告"];
            NSArray *titleArray = @[@"搜一搜",@"我要下单",@"历史账单",@"库存报告"];
            
            for (int i = 0; i < imageArray.count ; i ++) {
                UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];//button的类型
                if(i == 0 || i == 1)
                {
                  button.frame = CGRectMake(10 + i * (10 + (kScreenWidth - 30) / 2.0), label.bottom ,(kScreenWidth - 30) / 2.0, 210 / 2.0);//button的frame
                } else {
                
                 button.frame = CGRectMake(10 + (i - 2 )* (10 + (kScreenWidth - 30) / 2.0), label.bottom + 10 + 210 / 2.0,(kScreenWidth - 30) / 2.0, 210 / 2.0);//button的frame
                
                }
                
                button.layer.cornerRadius = 5;
                button.layer.borderWidth = 1;
                button.layer.borderColor = Color_bg.CGColor;
                button.layer.masksToBounds = YES;
               
               
                //    在UIButton中有三个对EdgeInsets的设置：ContentEdgeInsets、titleEdgeInsets、imageEdgeInsets
                [button setImage:[UIImage imageNamed:imageArray[i]] forState:UIControlStateNormal];//给button添加image
                button.imageEdgeInsets = UIEdgeInsetsMake(-15,50,0,0);//设置image在button上的位置（上top，左left，下bottom，右right）这里可以写负值，对上写－5，那么image就象上移动5个像素
                
                [button setTitle:titleArray[i] forState:UIControlStateNormal];//设置button的title
                button.titleLabel.font = [UIFont systemFontOfSize:14];//title字体大小
                button.titleLabel.textAlignment = NSTextAlignmentCenter;//设置title的字体居中
                [button setTitleColor:Color_text forState:UIControlStateNormal];//设置title在一般情况下为白色字体
            
                button.titleEdgeInsets = UIEdgeInsetsMake(210 / 2.0 - 40, -30, 0, 0);//设置title在button上的位置（上top，左left，下bottom，右right）
                
                //    [button setContentEdgeInsets:UIEdgeInsetsMake(70, 0, 0, 0)];//
                
                
                   button.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;//设置button的内容横向居中。。设置content是title和image一起变化
                button.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
                
                button.tag = 100 + i;
                
                [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
                [cell.contentView addSubview:button];
            }
            
        }
        
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
      
        return cell;
    }
    
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
      
        //轮播图
        _cycleScrollView = [SDCycleScrollView cycleScrollViewWithFrame:CGRectMake(10, 0, kScreenWidth - 20, 154 / 2.0 * ratioHeight) delegate:self placeholderImage:[UIImage imageNamed:@""]];
        [_cycleScrollView setPageControlAliment:SDCycleScrollViewPageContolAlimentCenter];
        [_cycleScrollView setPageControlStyle:SDCycleScrollViewPageContolStyleAnimated];
        [_cycleScrollView setPageControlDotSize:CGSizeMake(6, 6)];
        _cycleScrollView.autoScrollTimeInterval = 5;
        [cell.contentView addSubview:_cycleScrollView];
        
    }
     cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    
}


/** 点击图片回调banner */
- (void)cycleScrollView:(SDCycleScrollView *)cycleScrollView didSelectItemAtIndex:(NSInteger)index
{
    NSDictionary *dic = cycleList[index];
    if ([dic[@"adv_type"] integerValue] == 1) {
        //新闻
        NewsVC *vc = [[NewsVC alloc] init];
        vc.newsId = dic[@"news_id"];
        [self.navigationController pushViewController:vc animated:YES];
        
    }else if ([dic[@"adv_type"] integerValue] == 2){
        //下单
        PlaceAnOrder *placeAnOrder = [[PlaceAnOrder alloc]init];
        [self.navigationController pushViewController:placeAnOrder animated:YES];
        
    }else{
        //静态图片
        
    }
    
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0) {
        return 520 / 2.0;
    }
    return 154 / 2.0 * ratioHeight;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 40 * ratioHeight)];
        UIImageView *imageView = [[UIImageView alloc]initWithFrame:CGRectMake(10, (view.height - 25) / 2.0, 25, 25)];
        imageView.image = [UIImage imageNamed:@"通知"];
        [view addSubview:imageView];
        
        UILabel *labelNum = [[UILabel alloc]initWithFrame:CGRectMake(imageView.right - 10, imageView.top - 7,15, 15)];
        labelNum.font = [UIFont systemFontOfSize:10];
        labelNum.textColor = [UIColor whiteColor];
        if([count integerValue] > 0)
        {
            labelNum.hidden = NO;
        } else {
            labelNum.hidden = YES;
        }
        labelNum.text = count;
        labelNum.backgroundColor = UIColorFromRGB(0xfa3a36);
        labelNum.layer.cornerRadius = labelNum.height/2.0;
        labelNum.layer.masksToBounds = YES;
        labelNum.textAlignment = NSTextAlignmentCenter;
        [view addSubview:labelNum];
        
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(imageView.right + 5, imageView.top, kScreenWidth - 10 - imageView.right - 5, imageView.height)];
        label.font = [UIFont systemFontOfSize:14];
        label.textColor = Color_text;
        label.text = content;
        label.userInteractionEnabled = YES;
        label.textAlignment = NSTextAlignmentLeft;
        [view addSubview:label];
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(noticeAction)];
        [label addGestureRecognizer:tap];
        
        UIView *bgline = [[UIView alloc]initWithFrame:CGRectMake(0, view.height-1, kScreenWidth, 1)];
        bgline.backgroundColor = Color_bg;
        [view addSubview:bgline];
        
        return view;
        
    } else {
        UIView *view = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 30)];
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(10,0, kScreenWidth - 10  - 10, 30)];
        label.font = [UIFont systemFontOfSize:14];
        label.textColor = Color_text;
        label.text = @"广告";
        label.textAlignment = NSTextAlignmentLeft;
        [view addSubview:label];
        return view;
    
    }
    


}

//点击通知
- (void)noticeAction
{
    //只有订单消息才有order_id,点击跳转到订单详情;order_id=0表示为普通消息,点击会跳转到消息列表页面

    if ([order_id integerValue] != 0) {
        
    }
    

}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 40 * ratioHeight;
    }
    return 30;
    
}


#pragma mark ------------------ 常用工具事件 ----------------
- (void)buttonAction:(UIButton *)btn
{
    if (![UserDefaults boolForKey:ISLogin]) {
        [MyLogin gotoLoginViewWithTarget:self];
        return;
    }
    
 
    
    //搜一搜
    if (btn.tag == 100) {
        
//        MSeachVC *vc = [[MSeachVC alloc] init];
//        BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
//        
//        [self presentViewController:nav animated:YES completion:nil];
        
        //判断是否是VIP
        if ([[UserDefaults objectForKey:Enterprise_id] integerValue] == 0) {
            
            [MBProgressHUD showError:@"您不是企业用户，没有权限查看此页面" toView:self.view];
            return;
        }
        
      
        SearchAndSearchVC *vc = [[SearchAndSearchVC alloc] init];
        BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
        [self presentViewController:nav animated:YES completion:nil];
        
    }
    //我要下单
    if (btn.tag == 101) {
        PlaceAnOrder *placeAnOrder = [[PlaceAnOrder alloc]init];
        [self.navigationController pushViewController:placeAnOrder animated:YES];
        
    }
    //历史账单
    if (btn.tag == 102) {
//        HistoricalbillVC *historicalbillVC = [[HistoricalbillVC alloc]init];
//        historicalbillVC.type = @"1";
//        historicalbillVC.enterprise_id = _enterprise_id;
//        [self.navigationController pushViewController:historicalbillVC animated:YES];
        
//        OrderVC *orderVC = [[OrderVC alloc]init];
//        orderVC.typePush = @"2";
//        [self.navigationController pushViewController:orderVC animated:YES];
        
        OrderNumVC *orderNumVC = [[OrderNumVC alloc]init];
        [self.navigationController pushViewController:orderNumVC animated:YES];
        
    }
    //库存报告
    if (btn.tag == 103) {
        
        //判断是否是VIP
        if ([[UserDefaults objectForKey:Enterprise_id] integerValue] == 0) {
            
            [MBProgressHUD showError:@"您不是企业用户，没有权限查看此页面" toView:self.view];
            return;
        }
        
        HistoricalbillVC *historicalbillVC = [[HistoricalbillVC alloc]init];
        historicalbillVC.type = @"2";
        historicalbillVC.enterprise_id = _enterprise_id;
        [self.navigationController pushViewController:historicalbillVC animated:YES];
        
    }
    

}

- (IBAction)LoginAction:(id)sender {
    
    [MyLogin gotoLoginViewWithTarget:self];
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
