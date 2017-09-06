//
//  DangAnDetailsVC.m
//  DangAn
//
//  Created by 李江 on 16/8/21.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "DangAnDetailsVC.h"
#import "OrderSureVC.h"
@interface DangAnDetailsVC ()
{
    NSString *_name;
    NSArray *_dataList;
    NSString *_file_lock;
}
@end

@implementation DangAnDetailsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.text = @"档案详情";
    
    self.zaikuimage.layer.cornerRadius = 5;
    self.zaikuimage.layer.masksToBounds = YES;
    self.zaikuimage.backgroundColor = [MyColor colorWithHexString:@"#26d400"];
    
    _tableView.tableFooterView = [[UIView alloc]init];

    //在库
    if ([self.state integerValue] == 1) {
        
        self.zaikuimage.backgroundColor = [MyColor colorWithHexString:@"#26d400"];
        self.zaikullable.textColor = [MyColor colorWithHexString:@"#26d400"];
        
        self.diaoyueImage.image = [UIImage imageNamed:@"调阅1"];
        self.diaoyuelable.textColor = Color_text;
        
        self.huikuimage.image = [UIImage imageNamed:@"回库2"];
        self.huikulable.textColor = Color(147, 148, 149);
        
        self.xiaohuiimage.image = [UIImage imageNamed:@"销毁"];
        self.xiaohuilable.textColor = Color_text;
        
        
        self.yjlikuImage.image = [UIImage imageNamed:@"1234"]; //永久2
        self.yjlikuLable.textColor = Color_text;
        
        self.diaoyueView.userInteractionEnabled = YES;
        self.xiaohuiView.userInteractionEnabled = YES;
        self.yjlikuView.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction)];
        [self.diaoyueView addGestureRecognizer:tap];
        
        UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction1)];
        [self.xiaohuiView addGestureRecognizer:tap1];
        
        UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction3)];
        [self.yjlikuView addGestureRecognizer:tap3];

    //离库
    }else if ([self.state integerValue] == 2){
        
        self.diaoyueImage.image = [UIImage imageNamed:@"调阅2"];
        self.diaoyuelable.textColor = Color(147, 148, 149);
        
        self.huikuimage.image = [UIImage imageNamed:@"回库1"];
        self.huikulable.textColor = Color_text;
        
        self.xiaohuiimage.image = [UIImage imageNamed:@"销毁2"];
        self.xiaohuilable.textColor = Color(147, 148, 149);
        
        self.yjlikuImage.image = [UIImage imageNamed:@"1234"]; //永久2
        self.yjlikuLable.textColor = Color_text;

        self.zaikuimage.backgroundColor = [MyColor colorWithHexString:@"#fe3a39"];
        self.zaikullable.textColor = [MyColor colorWithHexString:@"#fe3a39"];
        
        
        
        self.huikuView.userInteractionEnabled = YES;
        self.yjlikuView.userInteractionEnabled = YES;
       
        UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction2)];
        [self.huikuView addGestureRecognizer:tap2];
        
        UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapAction3)];
        [self.yjlikuView addGestureRecognizer:tap3];


        //永久离库
    } else if ([self.state integerValue] == 3){
        
        self.diaoyueImage.image = [UIImage imageNamed:@"调阅2"];
        self.diaoyuelable.textColor = Color(147, 148, 149);
        
        self.huikuimage.image = [UIImage imageNamed:@"回库2"];
        self.huikulable.textColor = Color(147, 148, 149);
        
        self.xiaohuiimage.image = [UIImage imageNamed:@"销毁2"];
        self.xiaohuilable.textColor = Color(147, 148, 149);
        
        
        self.yjlikuImage.image = [UIImage imageNamed:@"永久2"];
        self.yjlikuLable.textColor = Color(147, 148, 149);
        
        self.zaikuimage.backgroundColor = [MyColor colorWithHexString:@"#fe3a39"];
        self.zaikullable.textColor = [MyColor colorWithHexString:@"#fe3a39"];
        
        //已销毁
    } else if ([self.state integerValue] == 99){
        
        self.diaoyueImage.image = [UIImage imageNamed:@"调阅2"];
        self.diaoyuelable.textColor = Color(147, 148, 149);
        
        self.huikuimage.image = [UIImage imageNamed:@"回库2"];
        self.huikulable.textColor = Color(147, 148, 149);
        
        self.xiaohuiimage.image = [UIImage imageNamed:@"销毁2"];
        self.xiaohuilable.textColor = Color(147, 148, 149);
        
        
        self.yjlikuImage.image = [UIImage imageNamed:@"永久2"];
        self.yjlikuLable.textColor = Color(147, 148, 149);
        
        self.zaikuimage.backgroundColor = [MyColor colorWithHexString:@"#fe3a39"];
        self.zaikullable.textColor = [MyColor colorWithHexString:@"#fe3a39"];
        

        
    }
    
    self.diaoyueView.layer.masksToBounds = YES;
    self.diaoyueView.layer.cornerRadius = 5;
    self.diaoyueView.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.diaoyueView.layer.borderWidth = 1;
    
    self.huikuView.layer.masksToBounds = YES;
    self.huikuView.layer.cornerRadius = 5;
    self.huikuView.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.huikuView.layer.borderWidth = 1;
    
    self.xiaohuiView.layer.masksToBounds = YES;
    self.xiaohuiView.layer.cornerRadius = 5;
    self.xiaohuiView.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.xiaohuiView.layer.borderWidth = 1;
    
    self.yjlikuView.layer.masksToBounds = YES;
    self.yjlikuView.layer.cornerRadius = 5;
    self.yjlikuView.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.yjlikuView.layer.borderWidth = 1;

    
    _tableView.tableHeaderView = _hederView;
    _tableView.rowHeight = 70;
    
    
    [self lodaData];
    
}



- (void)lodaData
{
    NSDictionary *params;
    params = @{@"enterprise_id":[AppDelegate GetAppDelegate].enterprise_id,@"file_id":_p_file_id};
    
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_detailFile params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                _name = dic[@"file_info"][@"name"];
                
                _titlelable.text = dic[@"file_info"][@"number"];
                _beizhulable.text = [NSString stringWithFormat:@"备注：%@",dic[@"file_info"][@"title"]];
                _zaikullable.text = dic[@"file_info"][@"file_status_text"];;
                _label_statrTime.text = [NSString stringWithFormat:@"%@",dic[@"file_info"][@"addtime"]];
                _lable_endTime.text = [NSString stringWithFormat:@"%@",dic[@"file_info"][@"updatetime"]];
                
                _file_lock = dic[@"file_info"][@"file_lock"];
                
                if ([_file_lock integerValue] == 1) {
                    
                    self.diaoyueImage.image = [UIImage imageNamed:@"调阅2"];
                    self.diaoyuelable.textColor = Color(147, 148, 149);
                    
                    self.huikuimage.image = [UIImage imageNamed:@"回库2"];
                    self.huikulable.textColor = Color(147, 148, 149);
                    
                    self.xiaohuiimage.image = [UIImage imageNamed:@"销毁2"];
                    self.xiaohuilable.textColor = Color(147, 148, 149);
                    
                    
                    self.yjlikuImage.image = [UIImage imageNamed:@"永久2"];
                    self.yjlikuLable.textColor = Color(147, 148, 149);
                    
                    
                    self.xiaohuiView.userInteractionEnabled = NO;
                    self.diaoyueView.userInteractionEnabled = NO;
                    self.huikuView.userInteractionEnabled = NO;
                    self.yjlikuView.userInteractionEnabled = NO;
                    
                }
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"borrow_history"];
                for (NSDictionary *subDic in array) {
                    JHModel *model = [[JHModel alloc] initWithDataDic:subDic];
                    model.name = _name;
                    model.start_time = [NSString stringWithFormat:@"%@",subDic[@"borrow"][@"time"]];
                    model.end_time = [NSString stringWithFormat:@"%@",subDic[@"returns"][@"time"]];
//                      model.end_time = subDic[@"returns"][@"time"];
                    [marray addObject:model];
                  
                  
                }
                
                _dataList = marray;
                
                [_tableView reloadData];
                
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



#pragma mark --------- 调阅 --------
- (void)tapAction
{

    OrderSureVC *orderSureVC = [[OrderSureVC alloc]init];
    orderSureVC.enterprise_id = [AppDelegate GetAppDelegate].enterprise_id;
    [AppDelegate GetAppDelegate].borrow_idArray = @[_p_file_id];
    [AppDelegate GetAppDelegate].iszaikuandliku = YES;
    orderSureVC.borrow_id = [AppDelegate GetAppDelegate].borrow_idArray;
    orderSureVC.product_list = @[@{@"product_id":@"1",@"product_number":@"1",@"start_numbe":@"0"}];
    [self.navigationController pushViewController:orderSureVC animated:YES];

}
#pragma mark --------- 销毁 --------
- (void)tapAction1
{
    
    OrderSureVC *orderSureVC = [[OrderSureVC alloc]init];
    orderSureVC.enterprise_id = [AppDelegate GetAppDelegate].enterprise_id;
    [AppDelegate GetAppDelegate].xiaohui_idArray = @[_p_file_id];
    [AppDelegate GetAppDelegate].iszaikuandliku = YES;
    orderSureVC.destory_id = [AppDelegate GetAppDelegate].xiaohui_idArray;
    orderSureVC.product_list = @[@{@"product_id":@"9",@"product_number":@"1",@"start_numbe":@"0"}];
    [self.navigationController pushViewController:orderSureVC animated:YES];
    
}
#pragma mark --------- 回库 --------
- (void)tapAction2
{
    
    OrderSureVC *orderSureVC = [[OrderSureVC alloc]init];
    orderSureVC.enterprise_id = [AppDelegate GetAppDelegate].enterprise_id;
    [AppDelegate GetAppDelegate].huiku_idArray = @[_p_file_id];
    [AppDelegate GetAppDelegate].iszaikuandliku = YES;
    orderSureVC.backup_id = [AppDelegate GetAppDelegate].huiku_idArray;
    orderSureVC.product_list = @[@{@"product_id":@"8",@"product_number":@"1",@"start_numbe":@"0"}];
    [self.navigationController pushViewController:orderSureVC animated:YES];
    
}

#pragma mark -------- 永久离库 ------------
- (void)tapAction3
{

    OrderSureVC *orderSureVC = [[OrderSureVC alloc]init];
    orderSureVC.enterprise_id = [AppDelegate GetAppDelegate].enterprise_id;
    [AppDelegate GetAppDelegate].foreverliku_idArray = @[_p_file_id];
    [AppDelegate GetAppDelegate].iszaikuandliku = YES;
    orderSureVC.yongjiuliku_id = [AppDelegate GetAppDelegate].foreverliku_idArray;
    orderSureVC.product_list = @[@{@"product_id":@"12",@"product_number":@"1",@"start_numbe":@"0"}];
    [self.navigationController pushViewController:orderSureVC animated:YES];


}



#pragma  mark --------UITableView Delegete----------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return _dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *identifire = @"cellID";
    JieYueCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"JieYueCell" owner:nil options:nil] lastObject];
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
    cell.model = _dataList[indexPath.row];
    
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
