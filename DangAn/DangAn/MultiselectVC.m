//
//  MultiselectVC.m
//  DangAn
//
//  Created by 刘翔 on 16/7/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "MultiselectVC.h"
#import "MultiselectCell.h"
#import "MovieVC.h"

@interface MultiselectVC ()

@end

@implementation MultiselectVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self addrighttitleString:@"完成"];
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.isBack = NO;
    
    self.yidongBtn.layer.cornerRadius = 4;
    self.yidongBtn.layer.masksToBounds = YES;
    self.yidongBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    self.yidongBtn.layer.borderWidth = 1;
    
    if (self.type == 0){
        
        self.yidongBtn.hidden = YES;
        self.list = [NSMutableArray arrayWithArray:self.dataList];
        
    }else if(self.type == 1){
    
        self.yidongBtn.hidden = NO;
        self.list = [NSMutableArray arrayWithArray:self.dataList1];

    }else{
    
        self.yidongBtn.hidden = NO;
        self.list = [NSMutableArray arrayWithArray:self.dataList2];

    }

   _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _backBtn.frame = CGRectMake(10, 24, 60, 40);
    [_backBtn addTarget:self action:@selector(backAC:) forControlEvents:UIControlEventTouchUpInside];
    [_backBtn setImage:[UIImage imageNamed:@"未选择"] forState:UIControlStateNormal];
     [_backBtn setImage:[UIImage imageNamed:@"已选择"] forState:UIControlStateSelected];
    [_backBtn setTitle:@"全选" forState:UIControlStateNormal];
    [_backBtn setTitleColor:Color_blue forState:UIControlStateNormal];
    _backBtn.titleLabel.font =[UIFont systemFontOfSize:16];
    _backBtn.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0);
    [self.view addSubview:_backBtn];
    self.count = 0;
    self.countLabel.text = [NSString stringWithFormat:@"已选 %d",self.count];

    self.mdic = [NSMutableDictionary dictionary];
    for (int i = 0; i < _list.count; i++) {
        [self.mdic setObject:@(NO) forKey:[NSString stringWithFormat:@"%d",i]];
    }
    

}

- (void)back
{
  
}



- (void)backAC:(UIButton *)sender
{
    sender.selected = !sender.selected;
    NSArray *array = [self.mdic allKeys];
    for (int i = 0; i <array.count; i++) {
        NSString *key = array[i];
        [self.mdic setObject:@(sender.selected) forKey:key];
    }
    
    if (sender.selected) {
        
        self.count = self.list.count;
        
    }else{
        
        self.count = 0;

    }
    self.countLabel.text = [NSString stringWithFormat:@"已选 %d",self.count];

    [_tableView reloadData];

}

- (void)rightAction
{
    
    self.doneBlock(self.list);
    [self.navigationController popViewControllerAnimated:YES];

}

#pragma  mark --------UITableView Delegete----------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.list.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *identifire = @"cellID";
    MultiselectCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
       cell =  [[[NSBundle mainBundle] loadNibNamed:@"MultiselectCell" owner:nil options:nil]lastObject];
    }
    cell.model = self.list[indexPath.row];
    cell.Isseleted = [[self.mdic objectForKey:[NSString stringWithFormat:@"%d",indexPath.row]] boolValue];
    
    return cell;
    
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    

    ScanModel *model = self.list[indexPath.row];
    if ([model.level intValue] == 1) {
        
        return 60;
    }
    
    return 90;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    BOOL isseleted = [[self.mdic objectForKey:[NSString stringWithFormat:@"%d",indexPath.row]] boolValue];
    [self.mdic setObject:@(!isseleted) forKey:[NSString stringWithFormat:@"%d",indexPath.row]];
    
    [tableView reloadRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath,nil] withRowAnimation:UITableViewRowAnimationNone];
    
    if (isseleted) {
       
        self.count = self.count - 1;
    }else{
        
        self.count = self.count + 1;

    }
    
    self.countLabel.text = [NSString stringWithFormat:@"已选 %d",self.count];


}

- (IBAction)deletedAC:(id)sender {
    
    NSArray *array = [self.mdic allKeys];
    NSMutableArray *marray = [NSMutableArray array];
    for (int i = 0; i <array.count; i++) {
        NSString *key = array[i];
        if ([[self.mdic objectForKey:key] boolValue]) {
            //删除
            [marray addObject:self.list[[key intValue]]];
            
        }else{
            //未选中
            
        }
        
    }

    
    if (marray.count == 0) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请选择选项！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"是否删除所选？" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确认", nil];
    [alert show];
    
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        
        _backBtn.selected = NO;
        
        NSArray *array = [self.mdic allKeys];
        NSMutableArray *paths = [NSMutableArray array];
        NSMutableArray *marray = [NSMutableArray array];
        for (int i = 0; i <array.count; i++) {
            NSString *key = array[i];
            if ([[self.mdic objectForKey:key] boolValue]) {
                //删除
                [marray addObject:self.list[[key intValue]]];
                NSIndexPath *path = [NSIndexPath indexPathForRow:[key intValue] inSection:0];
                [paths addObject:path];
                
            }else{
                //未选中
                
            }
            
        }
        
        [self.list removeObjectsInArray:marray];
        
        [self.tableView beginUpdates];
        [self.tableView deleteRowsAtIndexPaths:paths withRowAnimation:UITableViewRowAnimationTop];
        [self.tableView endUpdates];
        
        [self.mdic removeAllObjects];
        for (int i = 0; i<self.list.count; i ++) {
            [self.mdic setObject:@(NO) forKey:[NSString stringWithFormat:@"%d",i]];
        }
        
        self.count = 0;
        self.countLabel.text = [NSString stringWithFormat:@"已选 %d",self.count];

        self.doneBlock(self.list);
    }


}

- (IBAction)yidongAC:(id)sender {
    
    NSArray *array = [self.mdic allKeys];
    NSMutableArray *marray = [NSMutableArray array];
    for (int i = 0; i <array.count; i++) {
        NSString *key = array[i];
        if ([[self.mdic objectForKey:key] boolValue]) {
            //删除
            [marray addObject:self.list[[key intValue]]];
            
        }else{
            //未选中
            
        }
        
    }
    
    if (marray.count == 0) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请选择选项！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }

    
    MovieVC *vc = [[MovieVC alloc] init];
    vc.list = marray;
    vc.type = self.type;
    if (self.type == 2) {
        vc.localList = self.dataList1;
    }else if(self.type == 1){
    
        vc.localList = self.dataList;
    }
    [self.navigationController pushViewController:vc animated:YES];
 
}
@end





















