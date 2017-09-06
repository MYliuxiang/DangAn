//
//  HistoricalbillVC.m
//  DangAn
//
//  Created by 李江 on 16/6/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "HistoricalbillVC.h"
#import "OneAlert.h"
#import "DVYearMonthDatePicker.h"
@interface HistoricalbillVC ()<LXOneViewDelegate,UIWebViewDelegate,DVYearMonthDatePickerDelegate>
{
    NSArray *imageArray;
    NSString *_year;
    NSString *_month;
    NSString *_content;
    NSString *_title;
    UIView *_tabhederView;
    UIWebView *_webView;
    UIDatePicker *_datePicker;
}
@end

@implementation HistoricalbillVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //获取当前时间
    NSDate *now = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *dateComponent = [calendar components:unitFlags fromDate:now];
    int yeardate = [dateComponent year];
    int monthdate = [dateComponent month];
   
    
    if ([_type integerValue] == 1) {
        self.text = @"历史账单";
       
        if(monthdate == 1)
        {
            yeardate = yeardate - 1;
            monthdate = 12;
        } else {
            monthdate = monthdate - 1;
            
        }
        _year = [NSString stringWithFormat:@"%ld",(long)yeardate];
        _month = [NSString stringWithFormat:@"%.2ld",(long)monthdate];
        _label_date.text = [NSString stringWithFormat:@"%ld年%.2ld月",(long)yeardate,(long)monthdate];
        _image_yue.hidden = NO;
        _haderView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dateAction)];
        [_haderView addGestureRecognizer:tap];
    }
   
    if ([_type integerValue] == 2) {
     
        if(monthdate == 1)
        {
            yeardate = yeardate - 1;
            monthdate = 12;
        } else {
            monthdate = monthdate - 1;
            
        }
        
        _year = [NSString stringWithFormat:@"%ld",(long)yeardate];
        _month = [NSString stringWithFormat:@"%.2ld",(long)monthdate];
        _label_date.text = [NSString stringWithFormat:@"%ld年%.2ld月",(long)yeardate,(long)monthdate];
        _image_yue.hidden = NO;
        _haderView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dateAction)];
        [_haderView addGestureRecognizer:tap];
        
        self.text = @"库存报告";
   
    }
    

    [self addrighttitleString:@"下载"];
    
    self.label_date.textColor = Color_text;
    
    _tableView.tableFooterView = [[UIView alloc]init];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    _tabhederView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 200)];
    
    _webView  = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, kScreenWidth , 20)];
    _webView.delegate = self;
    _webView.scrollView.bounces= NO;
    _webView.scrollView.scrollEnabled = NO;
    _webView.scrollView.showsHorizontalScrollIndicator = NO;
    _webView.scrollView.showsVerticalScrollIndicator = NO;
    [_webView setBackgroundColor:[UIColor clearColor]];
    [_webView setOpaque:NO];

    [_tabhederView addSubview:_webView];
    [self loadData];
    
    [self xiaxialaAction];
    
}


//监听下拉的点击时间
- (void)xiaxialaAction{
    
    //背景颜色
    
    UIImageView *bjview = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    bjview.userInteractionEnabled = YES;
    bjview.hidden = YES;
    [bjview setBackgroundColor:[UIColor colorWithRed:0 green:0 blue:0 alpha:0.4]];
    bjview.tag = 6000;
    //添加手势
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction:)];
    [bjview addGestureRecognizer:tap];
    
    [self.view addSubview:bjview];
    
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(0, kScreenHeight - 216, kScreenWidth, 216)];
    view1.backgroundColor = [UIColor whiteColor];
    [bjview addSubview:view1];
    
    DVYearMonthDatePicker *yearMonth = [[DVYearMonthDatePicker alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, view1.height)];
    yearMonth.haveMonth = YES;
//    if ([_type integerValue]== 1) {
//        yearMonth.haveMonth = YES;
//    } else {
//        yearMonth.haveMonth = NO;
//    }
    
    yearMonth.dvDelegate = self;
    
    [yearMonth selectToday];
    
    [view1 addSubview:yearMonth];
    
    
    UIImageView *dateimg = [[UIImageView alloc]initWithFrame:CGRectMake(0, view1.top-40*ratioHeight, kScreenHeight, 40*ratioHeight)];
    dateimg.backgroundColor = Color(245, 245, 245);
    [bjview addSubview:dateimg];
    dateimg.userInteractionEnabled =YES;
    
    //确定按钮
    UIButton *enter = [[UIButton alloc]initWithFrame:CGRectMake(10*ratioWidth, 0, 40*ratioWidth,dateimg.height )];
    [enter setTitle:@"确定" forState:UIControlStateNormal];
    enter.titleLabel.font = [UIFont systemFontOfSize:14*ratioHeight];
    [enter setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [dateimg addSubview:enter];
    [enter addTarget:self action:@selector(enterAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}

- (void)yearMonthDatePicker:(DVYearMonthDatePicker *)yearMonthDatePicker didSelectedDate:(NSDate *)date {
    
    NSLog(@"%@", date);
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM"];
    //获取当前时间
    NSDate *now = date;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    NSDateComponents *dateComponent = [calendar components:unitFlags fromDate:now];
    int yeardate = [dateComponent year];
    int monthdate = [dateComponent month];
    _year = [NSString stringWithFormat:@"%ld",(long)yeardate];
    _month = [NSString stringWithFormat:@"%.2ld",(long)monthdate];
    
}


//时间选择器的确定按钮
- (void)enterAction:(UIButton *)buton{
   
    UIView *bgview = [[UIApplication sharedApplication].keyWindow viewWithTag:6000];
    bgview.hidden = YES;
  
    _label_date.text = [NSString stringWithFormat:@"%@年%@月",_year,_month];
    [self loadData];
    
    
}

//手势点击
- (void)tapAction:(UITapGestureRecognizer *)tap
{
    UIView *bgview = [[UIApplication sharedApplication].keyWindow viewWithTag:6000];
    bgview.hidden = YES;
    [bgview removeFromSuperview];
    
}

//选择时间
- (void)dateAction
{

    UIView *bgview = [[UIApplication sharedApplication].keyWindow viewWithTag:6000];
    bgview.hidden = NO;
    

}

- (void)webViewDidFinishLoad:(UIWebView *)webView
{
    
    NSString *height_str= [webView stringByEvaluatingJavaScriptFromString: @"document.body.offsetHeight"];
    int height = [height_str intValue];
    _webView.height = height + 30;
    NSLog(@"height: %@", [webView stringByEvaluatingJavaScriptFromString: @"document.body.offsetHeight"]);
    _webView.scrollView.backgroundColor = [UIColor whiteColor];
    _webView.backgroundColor = [UIColor whiteColor];
    _tabhederView.height = _webView.bottom;
    _tableView.tableHeaderView = _tabhederView;
    
}

- (void)loadData
{
  
    NSString *url;
    //历史账单
    if ([_type integerValue] == 1) {
       
         url = Url_Enterprise_historyBill;
        
    }
    //库存报告
    if ([_type integerValue] == 2) {
        url = Url_Enterprise_stockReport;
    }

      NSDictionary *params = @{@"enterprise_id":_enterprise_id,@"year":_year,@"month":_month};

    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                _content = dic[@"content"];
                _title = dic[@"title"];
                //下部Web
                [_webView loadHTMLString:_content  baseURL:nil];
                
                [_tableView reloadData];
                
            }
            

            if ([[result objectForKey:@"status"] integerValue] == 1) {
              
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
    
        
    }];



}

//下载
- (void)rightAction
{
    
    OneAlert *alert = [[OneAlert alloc] initWithTitle:@"输入邮箱" Message:nil Placeholdet:@"请输入邮箱" delegate:self];
    [alert.button1 setTitle:@"取消" forState:UIControlStateNormal];
    [alert.button2 setTitle:@"下载" forState:UIControlStateNormal];
        [alert show];

}

- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text
{
    
    NSDictionary *params;
    params = @{@"email":text,@"download_type":_type,@"enterprise_id":_enterprise_id};
    
    [WXDataService requestAFWithURL:Url_Enterprise_sendMail params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if(result){
        
            if ([[result objectForKey:@"status"] integerValue] == 0) {
               [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
                
            }
            
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
        
    }];

    
    NSLog(@"=====%@",text);

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellID = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];

    }

    
    return cell;

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
