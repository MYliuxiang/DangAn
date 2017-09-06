//
//  MovieVC.m
//  DangAn
//
//  Created by Viatom on 16/8/1.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "MovieVC.h"
#import "MoveCell.h"
#import "AddNewVC.h"

@interface MovieVC ()

@end

@implementation MovieVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self addlefttitleString:@"选择目标位置"];
    [self addrighttitleString:@"取消"];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.footerView.height = 145;
    self.footerView.width = kScreenWidth;
//    self.tableView.tableFooterView = self.footerView;
    self.dataList = [NSMutableArray array];
    self.isBack = NO;
    self.seteled = 0;
    
    self.saveBtn.layer.cornerRadius = 5;
    self.saveBtn.layer.masksToBounds = YES;
    self.saveBtn.layer.borderWidth = .5;
    self.saveBtn.layer.borderColor = Color(13, 148, 252).CGColor;
    [self.dataList addObjectsFromArray:self.localList];

    [self _loadData];
    
    self.addbtn.layer.cornerRadius = 5;
    self.addbtn.layer.masksToBounds = YES;
    self.addbtn.layer.borderWidth = .5;
    self.addbtn.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    
    self.scanAddbtn.layer.cornerRadius = 5;
    self.scanAddbtn.layer.masksToBounds = YES;
    self.scanAddbtn.layer.borderWidth = .5;
    self.scanAddbtn.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;


}

- (void)rightAction
{
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (void)back
{
    
  
}

- (void)_loadData
{
    

    NSDictionary *params;
    
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"level":[NSString stringWithFormat:@"%d",self.type + 1]};
    
//     params = @{@"member_id":@"1",@"level":[NSString stringWithFormat:@"%d",self.type - 1]};
    [WXDataService requestAFWithURL:Url_Archive_moveFile params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                NSArray *array = dic[@"list"];
                NSMutableArray *marray = [NSMutableArray array];
                for (NSDictionary *subDic in array) {
                    ScanModel *model = [[ScanModel alloc] initWithDataDic:subDic];
                    model.ddescription = [NSString stringWithFormat:@"%@",subDic[@"description"]] ;
                    model.level = [NSString stringWithFormat:@"%d",self.type];
                    [marray addObject:model];
                }
               
                for(int i = 0; i< self.localList.count;i ++){
                    
                    ScanModel *m = self.localList[i];
                    
                    for (int j = 0; j < marray.count; j++) {
                        
                        ScanModel *m2 = marray[i];
                        if ([m.number isEqualToString:m2.number]) {
                            
                            [self.list removeObject:m];
                            
                        }
                    }
                    
                }
                [self.dataList addObjectsFromArray:marray];
                
                [self.tableView reloadData];
                
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
    MoveCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell =  [[[NSBundle mainBundle] loadNibNamed:@"MoveCell" owner:nil options:nil]lastObject];
    }
    cell.model = self.dataList[indexPath.row];
    
    if (indexPath.row == self.seteled) {
        cell.stateImageView.hidden = NO;
    }else{
    
        cell.stateImageView.hidden = YES;
    }
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.seteled = indexPath.row;
    [_tableView reloadData];
    
}


- (IBAction)doneAC:(id)sender {
    
    
    ScanModel *model = self.dataList[self.seteled];
    [[NSNotificationCenter defaultCenter] postNotificationName:NoticeScanAdd object:nil userInfo:@{@"place":model,@"list":self.list}];
    
    UIViewController *vc;
    for (UIViewController *subVC in self.navigationController.viewControllers) {
        if ([subVC isKindOfClass:[AddNewVC class]]) {
            vc = subVC;
        }
    }
    
    [self.navigationController popToViewController:vc animated:YES];
    
}

//手动添加
- (IBAction)shouAC:(id)sender {
    
    
}

- (IBAction)scanAdd:(id)sender {
    //扫码添加
    
    
}
@end
