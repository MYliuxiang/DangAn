//
//  NOdetailVC.m
//  Community
//
//  Created by 未来社区 on 16/5/31.
//  Copyright © 2016年 李江. All rights reserved.
//

#import "NOdetailVC.h"


@interface NOdetailVC ()<UITableViewDelegate,UITableViewDataSource,UIWebViewDelegate>
@property(nonatomic,strong)UILabel *lable_title;
@property(nonatomic,strong)UILabel *lable_time;
@property(nonatomic,strong)UIWebView *webVeiw;
@property(nonatomic,strong)UITableView *tableview;



@end

@implementation NOdetailVC{

    UIView *_headerView;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([_type_id integerValue] == 6) {
        self.text =@"帮助中心";
    }
    if ([_type_id integerValue] == 7) {
        self.text =@"联系我们";
    }
    if ([_type_id integerValue] == 8) {
        self.text =@"关于我们";
    }
    if ([_type_id integerValue] == 9) {
        self.text =@"隐私与条款";
    }
    
    
    [self _Initview];
    [self LSmydataservice];

}


- (void)LSmydataservice{

    
    NSDictionary *params = @{@"type_id":self.type_id};
    [WXDataService requestAFWithURL:Url_Other_singlePage params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([result[@"resultCode"]integerValue] == 0) {
     
            NSDictionary *data = result[@"result"];

            [_webVeiw loadHTMLString:data[@"content"]  baseURL:nil];
        }
        [_tableview reloadData];
    } errorBlock:^(NSError *error) {
        
    }];

}

- (void)_Initview{
    
    
    //表视图
    self.tableview = [[UITableView alloc]initWithFrame:CGRectMake(0, 64,kScreenWidth,kScreenHeight-64 )style:UITableViewStylePlain];
    [self.view addSubview:self.tableview];
    self.tableview.backgroundColor = [UIColor clearColor];
    self.tableview.tableHeaderView = [[UIView alloc]initWithFrame:CGRectMake(0, 0,kScreenWidth,100)];
    _headerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 100)];
    _headerView.backgroundColor = [UIColor whiteColor];
    self.tableview.tableFooterView = [[UIView alloc]initWithFrame:CGRectZero];
    
    
//    _lable_title = [[UILabel alloc]initWithFrame:CGRectMake(0, 10, kScreenWidth-20, 20)];
//    _lable_title.font = [UIFont boldSystemFontOfSize:20];
//    _lable_title.numberOfLines = 0;
//    _lable_title.textAlignment = NSTextAlignmentCenter;
//    [_headerView  addSubview:_lable_title];
//    
//
//    
//    _lable_time = [[UILabel alloc]initWithFrame:CGRectMake(10, _lable_title.bottom+10, kScreenWidth - 20, 20)];
//    _lable_time.font = [UIFont systemFontOfSize:14];
//    _lable_time.textColor = Color_text;
//    [_headerView  addSubview:_lable_time];
//    _lable_time.textAlignment = NSTextAlignmentCenter;
    
    
    
    _webVeiw  = [[UIWebView alloc]initWithFrame:CGRectMake(0,_lable_time.bottom + 10, kScreenWidth   , 20)];
    _webVeiw.delegate = self;
    _webVeiw.scrollView.bounces=NO;
    _webVeiw.scrollView.scrollEnabled = NO;
    _webVeiw.scrollView.showsHorizontalScrollIndicator = NO;
    _webVeiw.scrollView.showsVerticalScrollIndicator = NO;
    [_webVeiw setBackgroundColor:[UIColor clearColor]];
    [_webVeiw setOpaque:NO];
    [_headerView addSubview:_webVeiw];

    

}


- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    NSString *height_str= [webView stringByEvaluatingJavaScriptFromString: @"document.body.offsetHeight"];
    int height = [height_str intValue];
    _webVeiw.height = height + 30;
    NSLog(@"height: %@", [webView stringByEvaluatingJavaScriptFromString: @"document.body.offsetHeight"]);
    _webVeiw.scrollView.backgroundColor = [UIColor whiteColor];
    _webVeiw.backgroundColor = [UIColor whiteColor];
    _headerView.height = _webVeiw.bottom;
    _tableview.tableHeaderView = _headerView;
    _tableview.tableFooterView.hidden = NO;
    [_tableview reloadData];
    
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
