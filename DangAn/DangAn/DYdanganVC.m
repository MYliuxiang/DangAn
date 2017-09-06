//
//  DYdanganVC.m
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "DYdanganVC.h"
#import "DYdanganCell.h"
#import "DYSearchVC.h"
#import "BaseNavigationController.h"
@interface DYdanganVC ()<UITableViewDelegate,UITableViewDataSource,DYSearchVCDelegate>
{
    NSMutableArray *_muArray;
}
@end

@implementation DYdanganVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    if ([_product_id integerValue] == 1) {
        self.text = @"调阅档案";
    }
    if ([_product_id integerValue] == 8) {
        self.text = @"档案回库";
    }
    if ([_product_id integerValue] == 9) {
        self.text = @"销毁";
    }
    if ([_product_id integerValue] == 7) {
        self.text = @"存新档案";
    }
    
    if ([_product_id integerValue] == 12) {
        self.text = @"永久离库";
    }
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _muArray = [NSMutableArray new];
    
    _btu_add.layer.cornerRadius = 5;
    _btu_add.layer.borderWidth = 1;
    _btu_add.layer.borderColor = Color_blue.CGColor;
    _btu_add.layer.masksToBounds = YES;
    
    _hederView.backgroundColor = Color_bg;
    _tableView.tableHeaderView = _hederView;
  
    if (_isadd == YES) {
        
        if ([_product_id integerValue] == 1) {
             _archivesArray = [AppDelegate GetAppDelegate].borrow_idArray;
        }
        if ([_product_id integerValue] == 8) {
             _archivesArray = [AppDelegate GetAppDelegate].huiku_idArray;
        }
        if ([_product_id integerValue] == 9) {
             _archivesArray = [AppDelegate GetAppDelegate].xiaohui_idArray;
        }
        
        if ([_product_id integerValue] == 12) {
            _archivesArray = [AppDelegate GetAppDelegate].foreverliku_idArray;
        }
       
        if (_archivesArray.count > 0) {
            [self _loadData];
        }
        [self addrighttitleString:@"确定"];
        _tableView.tableFooterView = _footView;
    } else {
        _tableView.tableFooterView = nil;
        [self _loadData];
    }
    

    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    _tableView.rowHeight = 60;
    
}

- (void)rightAction
{

    
    if(_archivesArray.count != 0)
    {
        if (_isadd == YES) {
            if ([_product_id integerValue] == 1) {
                [AppDelegate GetAppDelegate].borrow_idArray = _archivesArray;
            }
            if ([_product_id integerValue] == 8) {
                [AppDelegate GetAppDelegate].huiku_idArray = _archivesArray;
            }
            if ([_product_id integerValue] == 9) {
                [AppDelegate GetAppDelegate].xiaohui_idArray = _archivesArray;
            }
            
            if ([_product_id integerValue] == 12) {
                [AppDelegate GetAppDelegate].foreverliku_idArray = _archivesArray;
            }
            
            [_delegate giveborrow_idArray:_product_id];
        }
        
    }
 
    [self.navigationController popViewControllerAnimated:YES];


}

- (void)back
{
   [self.navigationController popViewControllerAnimated:YES];
   
}


- (void)_loadData
{

    NSDictionary *params;
    params = @{@"enterprise_id":[AppDelegate GetAppDelegate].enterprise_id,@"borrow_id":_archivesArray};
    
    
    
    [WXDataService requestAFWithURL:Url_Enterprise_borrowFileList params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        NSLog(@"=====result:%@",result);
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
        
                _ArrayList = dic[@"list"];
                 _lable_head.text = [NSString stringWithFormat:@"已选择%lu份档案",(unsigned long)_ArrayList.count];
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

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _ArrayList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    static NSString *cellID = @"DYdanganCellID";
    DYdanganCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle]loadNibNamed:@"DYdanganCell" owner:nil options:nil] lastObject];
        UIView *lineView = [[UIView alloc]initWithFrame:CGRectMake(0, 60 -1, kScreenWidth, 1)];
        lineView.backgroundColor = Color_bg;
        [cell.contentView addSubview:lineView];
    }
    NSDictionary *dic = _ArrayList[indexPath.row];
    cell.lable_name.text = [NSString stringWithFormat:@"%@",dic[@"number"]];
    cell.lable_bianhao.text = [NSString stringWithFormat:@"备注：%@",dic[@"title"]];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    return cell;
    

}

- (NSArray *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewRowAction *deleteRoWAction = [UITableViewRowAction rowActionWithStyle:UITableViewRowActionStyleDestructive title:@"删除" handler:^(UITableViewRowAction *action, NSIndexPath *indexPath) {//title可自已定义
        NSLog(@"点击删除");
        NSMutableArray *muArray = [NSMutableArray new];
        [muArray addObjectsFromArray:_archivesArray];
        [muArray removeObjectAtIndex:indexPath.row];
        _archivesArray = muArray;
        [self _loadData];
    }];//此处是iOS8.0以后苹果最新推出的api，UITableViewRowAction，Style是划出的标签颜色等状态的定义，这里也可自行定义
  
    return @[deleteRoWAction];//最后返回这俩个RowAction 的数组
}

- (IBAction)btuAddAction:(id)sender {

    DYSearchVC *vc = [[DYSearchVC alloc] init];
    vc.borrow_idArray = [NSMutableArray array];
    [vc.borrow_idArray addObjectsFromArray: _archivesArray];
    vc.delegate = self;
    vc.isdingyue = YES;
    vc.product_id = _product_id;
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
}

- (void)giveborrow_idArray:(NSArray *)borrow_idArray
{
    _archivesArray = borrow_idArray;
   [self _loadData];

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
