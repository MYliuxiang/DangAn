//
//  MapVC.m
//  DangAn
//
//  Created by 李江 on 16/8/25.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "MapVC.h"
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>
#import "MyAnnotation.h"
#define MERCATOR_OFFSET 268435456
#define MERCATOR_RADIUS 85445659.44705395
#define ZOOM_LEVEL 14

@interface MapVC ()<MKMapViewDelegate,CLLocationManagerDelegate,UIWebViewDelegate,UITableViewDataSource,UITableViewDelegate>
{
    MKMapView * _mapView;
    NSString *_lng ;
    NSString *_lat ;
    UIWebView *_webView;
    UIView *_tabhederView;
}
@end

@implementation MapVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.text = @"订单跟踪";
    
//     _mapView =[[MKMapView alloc]initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight - 64)];
//     [self.view addSubview:_mapView];
    
  
  
    //设置地图类型
//    _mapView.mapType=MKMapTypeStandard;
//    //设置代理
//     _mapView.delegate=self;
    
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 64, kScreenWidth, kScreenHeight - 64) style:UITableViewStylePlain];
    _tableView.tableFooterView = [[UIView alloc]init];
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
//    _tableView.delegate = self;
//    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    
    _tabhederView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth,  kScreenHeight - 64)];
    
    _webView  = [[UIWebView alloc]initWithFrame:CGRectMake(0,0, kScreenWidth ,  kScreenHeight - 64)];
    _webView.delegate = self;
    _webView.scrollView.bounces= NO;
    _webView.scrollView.scrollEnabled = NO;
    _webView.scrollView.showsHorizontalScrollIndicator = NO;
    _webView.scrollView.showsVerticalScrollIndicator = NO;
    [_webView setBackgroundColor:[UIColor clearColor]];
    [_webView setOpaque:NO];
    
    [_tabhederView addSubview:_webView];
    
    
    [self lodaData];
}



//-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation{
//    MKAnnotationView * view = [[MKAnnotationView alloc]initWithAnnotation:annotation reuseIdentifier:@"annotation"];
//    //设置标注的图片
//    view.image=[UIImage imageNamed:@"图标调整"];
//    //点击显示图详情视图 必须MJPointAnnotation对象设置了标题和副标题
//    view.canShowCallout=YES;
//    //设置拖拽 可以通过点击不放进行拖拽
//    view.draggable=YES;
//    return view;
//}


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

- (void)lodaData
{
    NSDictionary *params;
    params = @{@"order_id":_order_id};
    
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_map params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                //下部Web
                [_webView loadHTMLString:dic[@"html"]  baseURL:nil];
                [_tableView reloadData];
                
                
//                double lat = [dic[@"info"][@"lat"] doubleValue];
//                double lng = [dic[@"info"][@"lng"] doubleValue];
//                CLLocationCoordinate2D location1=CLLocationCoordinate2DMake(lat, lng);
//                _mapView.region=MKCoordinateRegionMake(location1, MKCoordinateSpanMake(.1, .1));
//                
//                
//        
//                //初始化一个大头针类
//                MKPointAnnotation * ann = [[MKPointAnnotation alloc]init];
//                //设置大头针坐标
//                ann.coordinate= location1;
//                ann.title=@"您的快递";
//                ann.subtitle=@"正在火速送达";
//                [_mapView addAnnotation:ann];
//            
//                //自动显示标注的layout
//                [_mapView selectAnnotation:ann animated:YES];
                
        
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


#pragma mark 添加大头针


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
