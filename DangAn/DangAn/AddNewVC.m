//
//  AddNewVC.m
//  DangAn
//
//  Created by 刘翔 on 16/6/19.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "AddNewVC.h"
#import "AddScanVC.h"
#import "UITableView+SDAutoTableViewCellHeight.h"
#import "MultiselectVC.h"
#import "AddAlert.h"


@interface AddNewVC ()<MAImagePickerControllerDelegate>

@end

@implementation AddNewVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.text = @"添加新档案";
    
    
    
    AddAlert  *alert = [[AddAlert alloc] initAddAlert];
    [alert show];
    
    
    self.dataList = [NSMutableArray array];
    self.dataList1 = [NSMutableArray array];
    self.dataList2 = [NSMutableArray array];
    [self addrighttitleString:@"多选"];
    [self border];
    self.footerView.height = 145;
    self.footerView.width = kScreenWidth;
    _tableview.tableFooterView = self.footerView;
    _ExpandedMainCellRow = -1;
    _ExpandedMainCellRow1 = -1;
    _ExpandedMainCellRow2 = -1;

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(reciveNotice:) name:NoticeScanAdd object:nil];
    self.index = 0;
    // 提供数据模型的数组
    // 用于记录 主Cell和附加Cell 以及 附加状态的数组;二者长度相同
    _statusDictArr = [NSMutableArray array];
    // 加载数据源
//    [self _loadData];
    
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:NoticeScanAdd object:nil];

}

- (void)reciveNotice:(NSNotification *)notification{
    
    NSLog(@"收到消息啦!!!");
    
    ScanModel *model = [notification.userInfo objectForKey:@"place"];
    NSArray *list = [notification.userInfo objectForKey:@"list"];
//    for (int i = 0; i < list.count; i++) {
//        
//        ScanModel *model1 = list[i];
//        model1.relationid_numbe = model.number;
//    }

    if (self.index == 2) {
        
        for(int i = 0; i< self.dataList2.count;i ++){
        
            ScanModel *m = self.dataList2[i];
            for (int j = 0; j < list.count; j++) {
                
                ScanModel *m2 = list[j];
                if ([m.number isEqualToString:m2.number]) {

                    m.relationid_numbe = model.number;
                }
            }
        
        }
        
        
    }else if (self.index == 1){
    
        for(int i = 0; i< self.dataList1.count;i ++){
            
            ScanModel *m = self.dataList1[i];
            for (int j = 0; j < list.count; j++) {
                
                ScanModel *m2 = list[j];
                if ([m.number isEqualToString:m2.number]) {
                    m.relationid_numbe = model.number;
                }
            }
            
        }

    
    }
    
    [self.tableview reloadData];

    
}

- (void)border{

    
    self.addbtn.layer.cornerRadius = 5;
    self.addbtn.layer.masksToBounds = YES;
    self.addbtn.layer.borderWidth = .5;
    self.addbtn.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    
    self.scanAddbtn.layer.cornerRadius = 5;
    self.scanAddbtn.layer.masksToBounds = YES;
    self.scanAddbtn.layer.borderWidth = .5;
    self.scanAddbtn.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    
    self.saveBtn.layer.cornerRadius = 5;
    self.saveBtn.layer.masksToBounds = YES;
    self.saveBtn.layer.borderWidth = .5;
    self.saveBtn.layer.borderColor = Color(13, 148, 252).CGColor;

}

#pragma mark -------多选-----------
- (void)rightAction
{
    if (self.index == 0) {
        if (self.dataList.count == 0) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"亲，请先添加！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }
    }
    
    if (self.index == 1) {
        if (self.dataList1.count == 0) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"亲，请先添加！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }
    }
    
    if (self.index == 2) {
        if (self.dataList2.count == 0) {
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil message:@"亲，请先添加！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }
    }
    MultiselectVC *mvc = [[MultiselectVC alloc] init];
    
        NSMutableArray *array = [NSMutableArray arrayWithArray:self.dataList];
        if (_ExpandedMainCellRow != -1) {
            
            ScanModel *model = array[_ExpandedMainCellRow + 1];
            [array removeObject:model];
        }
        mvc.dataList = array;
        
        
    
        NSMutableArray *array1 = [NSMutableArray arrayWithArray:self.dataList1];
        if (_ExpandedMainCellRow1 != -1) {
            
            ScanModel *model = array1[_ExpandedMainCellRow1 + 1];
            [array1 removeObject:model];
        }

        mvc.dataList1 = array1;
        
        NSMutableArray *array2 = [NSMutableArray arrayWithArray:self.dataList2];
        if (_ExpandedMainCellRow2 != -1) {
            
            ScanModel *model = array2[_ExpandedMainCellRow2 + 1];
            [array2 removeObject:model];
        }
    mvc.dataList2 = array2;
    mvc.type = self.index;
    mvc.doneBlock = ^(NSArray *list){
    
        if (self.index == 0) {
            
            _ExpandedMainCellRow = -1;
            self.dataList = [NSMutableArray arrayWithArray:list];
            
        }else if(self.index == 1){
            
            _ExpandedMainCellRow1 = -1;
            self.dataList1 = [NSMutableArray arrayWithArray:list];
            
        }else{
        
            _ExpandedMainCellRow2 = -1;
            self.dataList2 = [NSMutableArray arrayWithArray:list];
        }
        [self.tableview reloadData];
    };
    [self.navigationController pushViewController:mvc animated:YES];
    
}

//- (void)_loadData
//{
//    for (int i = 0 ; i<5; i++) {
//        AddModel *model = [[AddModel alloc] init];
//        model.images = @[@"",@"",@"",@"",@"",@"",@"",@"",@"",@""];
//        [_dataList addObject:model];
//    }
//    
//    NSDictionary *statusDict = @{ @"Cell": @"AddCell",
//                                   @"isAttached":@(NO)
//                                   };
//    for (NSString *str in _dataList) {
//        [_statusDictArr addObject:statusDict];
//    }
//
//    [_tableview reloadData];
//
//}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -------UITableView Delegate ------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (self.index == 0) {
        return self.dataList.count;
    }else if (self.index == 1){
    
        return self.dataList1.count;
    }
    return self.dataList2.count;
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (self.index == 0) {
        
        ScanModel *model = self.dataList[indexPath.row];
        
        if ([model.cell isEqualToString:@"AddCell"])
        {
            static NSString *cellID_1 = @"AddCell";
            AddCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID_1];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"AddCell" owner:nil options:nil]lastObject];
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
            }
            // 传递数据源
            // 设置cell中独一无二的内容
//            int tempRow = indexPath.row;
//            if (_ExpandedMainCellRow != -1 && indexPath.row > _ExpandedMainCellRow) {
//                tempRow = indexPath.row - 1;
//            }
//            // 如果是由于 刚才展开的行,被关闭,而导致 本方法被调用;则没有展开的,还是按原来的位置取数据模型
//            if (_ExpandedMainCellRow == -1) {
//                tempRow = indexPath.row;
//            }
            
            
                cell.model = self.dataList[indexPath.row];
           
            if (_ExpandedMainCellRow == indexPath.row) {
                
                cell.isseleted = YES;
            }else{
                
                cell.isseleted = NO;
            }
            
            AddNewVC *this = self;
            cell.clinkBlock = ^(int row){
                [this showHideChangeStatusView:row];
            };
            
            return cell;
        }else if([model.cell isEqualToString:@"AddToolCell"]){
            static NSString *cellID_2 = @"AddToolCell";
            AddToolCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID_2];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"AddToolCell" owner:nil options:nil]lastObject];            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            }
            
            cell.yidongBtn.hidden = YES;
            cell.photoBtn.hidden = YES;
            AddNewVC *this = self;
            cell.clinkBlock = ^(int row,int index){
                if(index == 0){
                
                    [this moveAC:row];

                }else if(index == 1){
                
                    [this photo:row];
                    
                }else if (index == 2){
                
                    [this fix:row];

                }else{
                
                    [this closeAddToolcell:row];

                }
                
                
            };
            
            
            
            return cell;
        }
        return nil;

        
    }else if (self.index == 1){
        
        ScanModel *model = self.dataList1[indexPath.row];

        if ([model.cell isEqualToString:@"AddCell"])
        {
            static NSString *cellID_1 = @"AddCell1";
            AddCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID_1];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"AddCell" owner:nil options:nil]lastObject];
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
            }
            // 传递数据源
            // 设置cell中独一无二的内容
//            int tempRow = indexPath.row;
//            if (_ExpandedMainCellRow1 != -1 && indexPath.row > _ExpandedMainCellRow1) {
//                tempRow = indexPath.row - 1;
//            }
//            // 如果是由于 刚才展开的行,被关闭,而导致 本方法被调用;则没有展开的,还是按原来的位置取数据模型
//            if (_ExpandedMainCellRow1 == -1) {
//                tempRow = indexPath.row;
//            }
            
            
                cell.model = self.dataList1[indexPath.row];
                
        if (_ExpandedMainCellRow1 == indexPath.row) {
                cell.isseleted = YES;
            }else{
                
                cell.isseleted = NO;
            }
            
            AddNewVC *this = self;
            cell.clinkBlock = ^(int row){
                [this showHideChangeStatusView:row];
            };
            
            return cell;
        }else if([model.cell isEqualToString:@"AddToolCell"]){
            static NSString *cellID_2 = @"AddToolCell1";
            AddToolCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID_2];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"AddToolCell" owner:nil options:nil] lastObject];
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
            }
            
            cell.photoBtn.hidden = YES;

            
            AddNewVC *this = self;
            cell.clinkBlock = ^(int row,int index){
                
                
                if(index == 0){
                    
                    [this moveAC:row];

                }else if(index == 1){
                    
                    [this photo:row];

                }else if (index == 2){
                    
                    [this fix:row];

                }else{
                    
                    [this closeAddToolcell:row];
                    
                }
                //            [this closeAddcell:row - 1];
                
            };
            
            
            
            return cell;
        }
        return nil;
    
    }else{
        
        ScanModel *model = self.dataList2[indexPath.row];

    
        if ([model.cell isEqualToString:@"AddCell"])
        {
            static NSString *cellID_1 = @"AddCell2";
            AddCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID_1];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"AddCell" owner:nil options:nil]lastObject];
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
            }
            // 传递数据源
            // 设置cell中独一无二的内容
            cell.model = self.dataList2[indexPath.row];
            
            if (_ExpandedMainCellRow2 == indexPath.row ) {
                cell.isseleted = YES;
            }else{
                
                cell.isseleted = NO;
            }
            
            AddNewVC *this = self;
            cell.clinkBlock = ^(int row){
                [this showHideChangeStatusView:row];
            };
            
            return cell;
        }else if([model.cell isEqualToString:@"AddToolCell"]){
            static NSString *cellID_2 = @"AddToolCell2";
            AddToolCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID_2];
            if (cell == nil) {
                cell = [[[NSBundle mainBundle] loadNibNamed:@"AddToolCell" owner:nil options:nil]lastObject];
                cell.selectionStyle = UITableViewCellSelectionStyleNone;
            }
            
            AddNewVC *this = self;
            cell.clinkBlock = ^(int row,int index){
                
                
                if(index == 0){
                    
                    [this moveAC:row];
                    
                }else if(index == 1){
                    
                    [this photo:row];

                }else if (index == 2){
                    
                    [this fix:row];
                    
                }else{
                    
                    [this closeAddToolcell:row];
                    
                }
                //            [this closeAddcell:row - 1];
                
                
            };
            
            return cell;
        }
        return nil;
        
    
    }
    
    
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
    
    if (self.index == 0) {
        ScanModel *model = self.dataList[indexPath.row];
        if ([model.cell isEqualToString:@"AddCell"]){
            
            if (_ExpandedMainCellRow == -1) {
                
                return [self.tableview cellHeightForIndexPath:indexPath model:self.dataList[indexPath.row] keyPath:@"model" cellClass:[AddCell class] contentViewWidth:kScreenWidth];
            }else{
                
                
                    return [self.tableview cellHeightForIndexPath:indexPath model:self.dataList[indexPath.row] keyPath:@"model" cellClass:[AddCell class] contentViewWidth:kScreenWidth];
                
            }
            

            
        }else{
            
            return 45;
            
        }

        
    }else if (self.index == 1){
    
        ScanModel *model = self.dataList1[indexPath.row];
        if ([model.cell isEqualToString:@"AddCell"]){
            
            if (_ExpandedMainCellRow1 == -1) {
                
                return [self.tableview cellHeightForIndexPath:indexPath model:self.dataList1[indexPath.row] keyPath:@"model" cellClass:[AddCell class] contentViewWidth:kScreenWidth];
            }else{
            
                return [self.tableview cellHeightForIndexPath:indexPath model:self.dataList1[indexPath.row] keyPath:@"model" cellClass:[AddCell class] contentViewWidth:kScreenWidth];
            
            }
            
        }else{
            
            return 45;
            
        }
        

    }else{
    
        ScanModel *model = self.dataList2[indexPath.row];
        if ([model.cell isEqualToString:@"AddCell"]){
            
            if (_ExpandedMainCellRow2 == -1) {
                
                return [self.tableview cellHeightForIndexPath:indexPath model:self.dataList2[indexPath.row] keyPath:@"model" cellClass:[AddCell class] contentViewWidth:kScreenWidth];
            }else{
                
                
                    return [self.tableview cellHeightForIndexPath:indexPath model:self.dataList2[indexPath.row] keyPath:@"model" cellClass:[AddCell class] contentViewWidth:kScreenWidth];
                }
            

            
        }else{
            
            return 45;
            
        }
            
    }
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
//     [tableView deselectRowAtIndexPath:indexPath animated:YES];
//    [self showHideChangeStatusView:indexPath.row];

}


#pragma mark - 点击了cell最右边的按钮时调用
//显示 或者 隐藏 用于更改状态的view
- (void)showHideChangeStatusView:(int)row
{
    if (self.index == 0) {
        
        if (row == _ExpandedMainCellRow) {
            // 如果这次点击的行 已经是打开的行,则直接关闭,并返回
            [self closeOneExpandedCell:_ExpandedMainCellRow];
        
        }else{
            if (_ExpandedMainCellRow == -1) {
                //代表从来没有展开过,首次展开
                [self expandOneRow:row];
            } else {
                // 如果本次点击的行还没有展开,先关闭上次的展开的行;再展开开次的行
                // 特别注意,这个row行号是包含了已经展开的AttachCell,因此,要 减去 1;此时的行号才是modelArr中的行号
                if (_ExpandedMainCellRow < row) {
                    // 展开的行,在上面;新点击的行 在下面
                    row = row - 1;
                }
                [self closeOneExpandedCell:_ExpandedMainCellRow];
                [self expandOneRow:row];
            }
            
        
        }
    

    }else if (self.index == 1){
        
        if (row == _ExpandedMainCellRow1) {
            // 如果这次点击的行 已经是打开的行,则直接关闭,并返回
            [self closeOneExpandedCell:_ExpandedMainCellRow1];
            
        }else{
            if (_ExpandedMainCellRow1 == -1) {
                //代表从来没有展开过,首次展开
                [self expandOneRow:row];
            } else {
                // 如果本次点击的行还没有展开,先关闭上次的展开的行;再展开开次的行
                // 特别注意,这个row行号是包含了已经展开的AttachCell,因此,要 减去 1;此时的行号才是modelArr中的行号
                if (_ExpandedMainCellRow1 < row) {
                    // 展开的行,在上面;新点击的行 在下面
                    row = row - 1;
                }
                [self closeOneExpandedCell:_ExpandedMainCellRow1];
                [self expandOneRow:row];
            }
            
            
        }
        

    
    }else{
        
        if (row == _ExpandedMainCellRow2) {
            // 如果这次点击的行 已经是打开的行,则直接关闭,并返回
            [self closeOneExpandedCell:_ExpandedMainCellRow2];
            
        }else{
            if (_ExpandedMainCellRow2 == -1) {
                //代表从来没有展开过,首次展开
                [self expandOneRow:row];
            } else {
                // 如果本次点击的行还没有展开,先关闭上次的展开的行;再展开开次的行
                // 特别注意,这个row行号是包含了已经展开的AttachCell,因此,要 减去 1;此时的行号才是modelArr中的行号
                if (_ExpandedMainCellRow2 < row) {
                    // 展开的行,在上面;新点击的行 在下面
                    row = row - 1;
                }
                [self closeOneExpandedCell:_ExpandedMainCellRow2];
                [self expandOneRow:row];
            }
            
            
        }
        

    
    }
   
}

- (void)fix:(int)row
{
    
    self.fixIndex = row;
    if (self.index == 0) {
        
        ScanModel *model = self.dataList[row - 1];
        OneAlert *alert = [[OneAlert alloc] initWithTitle:@"备注信息" Message:model.number Placeholdet:@"备注" delegate:self];
        [alert show];
        
        
    }else if (self.index == 1){
        
        ScanModel *model = self.dataList1[row - 1];
        OneAlert *alert = [[OneAlert alloc] initWithTitle:@"备注信息" Message:model.number Placeholdet:@"备注" delegate:self];
        [alert show];
    
    }else{
    
        ScanModel *model = self.dataList2[row - 1];
        OneAlert *alert = [[OneAlert alloc] initWithTitle:@"备注信息" Message:model.number Placeholdet:@"备注" delegate:self];
        [alert show];
    }
    

}

#pragma  mark ---------- LXOneViewDelegate-------
- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text
{
    
    if (self.index == 0) {
        
        ScanModel *model = self.dataList[self.fixIndex - 1];
        model.ddescription = text;
       
        
        
    }else if (self.index == 1){
        
        ScanModel *model = self.dataList1[self.fixIndex - 1];
        model.ddescription = text;

        
    }else{
        
        ScanModel *model = self.dataList2[self.fixIndex - 1];
        model.ddescription = text;

    }
    
    NSIndexPath *indexPath=[NSIndexPath indexPathForRow:self.fixIndex - 1 inSection:0];
    [self.tableview reloadRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath,nil] withRowAnimation:UITableViewRowAnimationNone];
    
}

- (void)photo:(int)row
{
    
        self.photoIndex = row;
        MAImagePickerController *imagePicker = [[MAImagePickerController alloc] init];
        [imagePicker setDelegate:self];
        [imagePicker setSourceType:MAImagePickerControllerSourceTypeCamera];
    
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:imagePicker];
        [self presentViewController:navigationController animated:YES completion:nil];
}


#pragma mark -------MAImagePickerControllerDelegate--------
- (void)imagePickerDidCancel
{

}
- (void)imagePickerDidChooseImageWithImageData:(UIImage *)image
{
    
    
    [WXDataService postImage:Url_thumbUpload params:nil fileData:UIImageJPEGRepresentation(image, .3) finishBlock:^(id result) {
        
        
        if ([[result objectForKey:@"status"] integerValue] == 0) {
            
            ThumbModel *thumbModel = [[ThumbModel alloc] initWithDataDic:result[@"result"]];
            if (self.index == 0) {
                
                ScanModel *model = self.dataList[self.photoIndex - 1];
                [model.thumbArray addObject:thumbModel];
                
            }else if (self.index == 1){
            
                ScanModel *model = self.dataList1[self.photoIndex - 1];
                [model.thumbArray addObject:thumbModel];
               
                
            }else{
            
                ScanModel *model = self.dataList2[self.photoIndex - 1];
                [model.thumbArray addObject:thumbModel];
              
            }
            
            NSIndexPath *indexPath=[NSIndexPath indexPathForRow:self.photoIndex - 1 inSection:0];
            [self.tableview reloadRowsAtIndexPaths:[NSArray arrayWithObjects:indexPath,nil] withRowAnimation:UITableViewRowAnimationNone];
            
        }
        
        //没有数据了
        if ([[result objectForKey:@"status"] integerValue] == 1) {
            
            [MBProgressHUD showError:result[@"msg"] toView:self.view];
            
        }
     } errorBlock:^(NSError *error) {
         NSLog(@"%@",error);
         
         [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
         
     }];
    

}



- (void)moveAC:(int)row
{
    MovieVC *vc = [[MovieVC alloc] init];

    if (self.index == 0) {
        
    }else if(self.index == 1){
    
        NSMutableArray *marray = [NSMutableArray array];
        [marray addObject:self.dataList1[row - 1]];
        vc.list = marray;
        
        
        NSMutableArray *localArray = [NSMutableArray arrayWithArray:self.dataList];
        for (ScanModel *model in localArray) {
            
            if ([model.cell isEqualToString:@"AddToolCell"]) {
                [localArray removeObject:model];
            }
        }
        
        vc.localList = localArray;

        
    }else{
        
        NSMutableArray *marray = [NSMutableArray array];
        [marray addObject:self.dataList2[row - 1]];
        vc.list = marray;
        
        NSMutableArray *localArray = [NSMutableArray arrayWithArray:self.dataList1];
        for (ScanModel *model in localArray) {
        
            if ([model.cell isEqualToString:@"AddToolCell"]) {
                [localArray removeObject:model];
            }
        }
        
        vc.localList = localArray;
    
    }
    vc.type = self.index;
  
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)closeAddToolcell:(int)row
{

    if (self.index == 0) {
        
        _ExpandedMainCellRow = -1;
        
        // 主Cell数组中的的下一个位置处的AttchedCell删除
        [self.dataList removeObjectAtIndex:row];
        [self.dataList removeObjectAtIndex:row -1];
        
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *path1 = [NSIndexPath indexPathForRow:row - 1 inSection:0];
        
        [_tableview deleteRowsAtIndexPaths:@[path,path1]  withRowAnimation:UITableViewRowAnimationTop];
        [_tableview endUpdates];
        

    }else if (self.index == 1){
        
        _ExpandedMainCellRow1 = -1;
        
        // 主Cell数组中的的下一个位置处的AttchedCell删除
        [self.dataList1 removeObjectAtIndex:row];
        [self.dataList1 removeObjectAtIndex:row -1];
        
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *path1 = [NSIndexPath indexPathForRow:row - 1 inSection:0];
        
        [_tableview deleteRowsAtIndexPaths:@[path,path1]  withRowAnimation:UITableViewRowAnimationTop];
        [_tableview endUpdates];
        

    }else{
        
        _ExpandedMainCellRow2 = -1;
        
        // 主Cell数组中的的下一个位置处的AttchedCell删除
        [self.dataList2 removeObjectAtIndex:row];
        [self.dataList2 removeObjectAtIndex:row -1];
        
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *path1 = [NSIndexPath indexPathForRow:row - 1 inSection:0];
        
        [_tableview deleteRowsAtIndexPaths:@[path,path1]  withRowAnimation:UITableViewRowAnimationTop];
        [_tableview endUpdates];
        

        
    }
}


// 关闭一个指定行的ExpandedCell
- (void)closeOneExpandedCell:(int)row
{
    
    if (self.index == 0) {
        
        // 因为本操作执行完成后,就没有展开的行,所以要先清零;必须先清零~~~~因为tableViewupdate方法中会调用cellForRow方法
        _ExpandedMainCellRow = -1;

        ScanModel *model = self.dataList[row];
        model.cell = @"AddCell";
        model.isAttached = NO;
       
        NSIndexPath *path1 = [NSIndexPath indexPathForRow:row inSection:0];
        [self.tableview reloadRowsAtIndexPaths:[NSArray arrayWithObjects:path1,nil] withRowAnimation:UITableViewRowAnimationNone];
        
        [self.dataList removeObjectAtIndex:row+1];
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row+1 inSection:0];
        [_tableview deleteRowsAtIndexPaths:@[path]  withRowAnimation:UITableViewRowAnimationBottom];
        [_tableview endUpdates];
        
        

    }else if (self.index == 1){
        
        // 因为本操作执行完成后,就没有展开的行,所以要先清零;必须先清零~~~~因为tableViewupdate方法中会调用cellForRow方法
        _ExpandedMainCellRow1 = -1;
        
        
        ScanModel *model = self.dataList1[row];
        model.cell = @"AddCell";
        model.isAttached = NO;
        
        NSIndexPath *path1 = [NSIndexPath indexPathForRow:row inSection:0];
        [self.tableview reloadRowsAtIndexPaths:[NSArray arrayWithObjects:path1,nil] withRowAnimation:UITableViewRowAnimationNone];
        // 主Cell数组中的的下一个位置处的AttchedCell删除
        [self.dataList1 removeObjectAtIndex:row+1];
        
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row+1 inSection:0];
        [_tableview deleteRowsAtIndexPaths:@[path]  withRowAnimation:UITableViewRowAnimationTop];
        [_tableview endUpdates];
    }else{
        
       
        _ExpandedMainCellRow2 = -1;
        
        
        ScanModel *model = self.dataList2[row];
        model.cell = @"AddCell";
        model.isAttached = NO;
        
        NSIndexPath *path1 = [NSIndexPath indexPathForRow:row inSection:0];
        [self.tableview reloadRowsAtIndexPaths:[NSArray arrayWithObjects:path1,nil] withRowAnimation:UITableViewRowAnimationNone];
        
        [self.dataList2 removeObjectAtIndex:row+1];
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row+1 inSection:0];
        [_tableview deleteRowsAtIndexPaths:@[path]  withRowAnimation:UITableViewRowAnimationTop];
        [_tableview endUpdates];

    }
    
    
}
//记录下 并且 展开指定的行 (顺序千万不能反)
- (void)expandOneRow:(int)row
{
    
    if (self.index == 0) {
        
        _ExpandedMainCellRow = row;
        // 如果第0行没有打开附加的cell,则打开附加cell
        
        ScanModel *model = self.dataList[row];
        model.cell = @"AddCell";
        model.isAttached = YES;

        
//        NSDictionary *dic = @{@"Cell": @"AddCell",@"isAttached":@(YES)};
        // 修改主Cell的状态字 isAttached为yes
//        _statusDictArr[row] = dic;
        // 插入一个新的ChangeStatusCell到数组中
        
        ScanModel *model1 = [[ScanModel alloc] initWithDataDic:nil];
        model1.cell = @"AddToolCell";
        model1.isAttached = YES;

        [self.dataList insertObject:model1 atIndex:row + 1];
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row + 1 inSection:0];
        [_tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
        [_tableview endUpdates];
        
        if (row == _dataList.count -1) {
            // 如果展开的是最后一行,还要让tableView向上滚动44的高度
            [self showExpandedCellForLastRow];
        }

    }else if (self.index == 1){
        _ExpandedMainCellRow1 = row;
        // 如果第0行没有打开附加的cell,则打开附加cell
        
        ScanModel *model = self.dataList1[row];
        model.cell = @"AddCell";
        model.isAttached = YES;
        
        ScanModel *model1 = [[ScanModel alloc] initWithDataDic:nil];
        model1.cell = @"AddToolCell";
        model1.isAttached = YES;
        
      
        [self.dataList1 insertObject:model1 atIndex:row + 1];
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row + 1 inSection:0];
        [_tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
        [_tableview endUpdates];
        
        if (row == _dataList.count -1) {
            // 如果展开的是最后一行,还要让tableView向上滚动44的高度
            [self showExpandedCellForLastRow];
        }

        
    }else{
        
        _ExpandedMainCellRow2 = row;
        // 如果第0行没有打开附加的cell,则打开附加cell
        
        ScanModel *model = self.dataList2[row];
        model.cell = @"AddCell";
        model.isAttached = YES;
        
        ScanModel *model1 = [[ScanModel alloc] initWithDataDic:nil];
        model1.cell = @"AddToolCell";
        model1.isAttached = YES;
        
        [self.dataList2 insertObject:model1 atIndex:row + 1];
        [_tableview beginUpdates];
        NSIndexPath *path = [NSIndexPath indexPathForRow:row + 1 inSection:0];
        [_tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
        [_tableview endUpdates];
        
        if (row == _dataList.count -1) {
            // 如果展开的是最后一行,还要让tableView向上滚动44的高度
            [self showExpandedCellForLastRow];
        }

    }
    
}

- (void)showExpandedCellForLastRow
{
    
    NSIndexPath *path = [NSIndexPath indexPathForRow:_dataList.count  inSection:0];
    [_tableview scrollToRowAtIndexPath:path atScrollPosition:UITableViewScrollPositionMiddle animated:YES];
}

- (IBAction)segmentAC:(UISegmentedControl *)sender {
    
    self.index = sender.selectedSegmentIndex;
   
    [_tableview reloadData];
    
}

#pragma mark ------手动添加----------
- (IBAction)addAC:(UIButton *)sender {
    
    
    //手动添加时，货架显示：输入14位编号。档案箱显示：输入9位编号。档案册显示：输入10位编号
    
    if (self.index == 0) {
        
        TwoFiledAlert *alert = [[TwoFiledAlert alloc] initWithTitle:@"手动添加" Placeholdet1:@"输入14位编号" Placeholdet2:@"备注" delegate:self];
        [alert show];
        
    }else if (self.index == 1){
        
        TwoFiledAlert *alert = [[TwoFiledAlert alloc] initWithTitle:@"手动添加" Placeholdet1:@"输入9位编号" Placeholdet2:@"备注" delegate:self];
        [alert show];
    
    }else{
        
        TwoFiledAlert *alert = [[TwoFiledAlert alloc] initWithTitle:@"手动添加" Placeholdet1:@"输入10位编号" Placeholdet2:@"备注" delegate:self];
        [alert show];
    
    }
    
   
    
    
}

#pragma mark ------扫码添加----------
- (IBAction)scanAddAC:(UIButton *)sender
{
    
    AddScanVC *vc = [[AddScanVC alloc] init];
    vc.index = self.index;
    if (self.index == 0) {
        
        vc.oldArray = self.dataList;
        
    }else if (self.index == 1){
        
        vc.oldArray = self.dataList1;

    }else{
        
        vc.oldArray = self.dataList2;

    }
    
    
    
//    __weak AddNewVC *this = self;
    vc.doneBlock = ^(NSArray *list){
        for (ScanModel *model in list) {
            if ([model.level integerValue] == 1) {
                
                [_dataList addObject:model];
                
                
            }else if([model.level integerValue] == 2){
            
                [_dataList1 addObject:model];
                
            }else{
                
                [_dataList2 addObject:model];
            
            }
            [_tableview reloadData];
        }
    
    };
    [self.navigationController pushViewController:vc animated:YES];
    
    
}

#pragma mark ------保存----------
- (IBAction)saveAC:(UIButton *)sender {
    
    if (self.dataList.count == 0 && self.dataList1.count == 0 && self.dataList2.count == 0) {
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请先添加，然后在保存！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
        [alert show];
        return;
    }
    
    for (int i = 0; i<self.dataList1.count; i++) {
        ScanModel *model = self.dataList1[i];
        if ([model.cell isEqualToString:@"AddCell"]) {
            
            if(model.relationid_numbe == nil){
                
        FailAlert *alert = [[FailAlert alloc] initWithTitle:@"提交失败" messsage:@"请移动位置！" delegate:nil];
                    [alert show];
                return;

            }
            
        }
    }

    for (int i = 0; i<self.dataList2.count; i++) {
        ScanModel *model = self.dataList2[i];
        if ([model.cell isEqualToString:@"AddCell"]) {
            
            if(model.relationid_numbe == nil){
                
                FailAlert *alert = [[FailAlert alloc] initWithTitle:@"提交失败" messsage:@"请移动位置！" delegate:nil];

                [alert show];
                return;
                
            }
            
        }
    }
    
    NSMutableArray *marray = [NSMutableArray array];
    for (int i = 0; i<self.dataList.count; i++) {
        ScanModel *model = self.dataList[i];
        if ([model.cell isEqualToString:@"AddCell"]) {
            NSMutableArray *array1 = [NSMutableArray array];
            for (int i = 0; i < model.thumbArray.count; i++) {
                ThumbModel *thumbModel = model.thumbArray[i];
                NSDictionary *sdic = @{@"path":thumbModel.path};
                [array1 addObject:sdic];
                
            }
            NSLog(@"%@%@",model.is_have,[self format:model.is_have]);
            NSDictionary *dic = @{@"is_have":[self format:model.is_have],@"p_file_id":[self format:model.p_file_id],@"number":[self format:model.number],@"description":[self format:model.ddescription],@"relationid_number":[self format:model.relationid_numbe],@"level":[self format:model.level],@"thumb_list":array1};
            [marray addObject:dic];
        }
    }
    
    for (int i = 0; i<self.dataList1.count; i++) {
        ScanModel *model = self.dataList1[i];
        if ([model.cell isEqualToString:@"AddCell"]) {
            NSMutableArray *array1 = [NSMutableArray array];
            for (int i = 0; i < model.thumbArray.count; i++) {
                ThumbModel *thumbModel = model.thumbArray[i];
                NSDictionary *sdic = @{@"path":thumbModel.path};
                [array1 addObject:sdic];
                
            }
            
            NSDictionary *dic = @{@"is_have":[self format:model.is_have],@"p_file_id":[self format:model.p_file_id],@"number":[self format:model.number],@"description":[self format:model.ddescription],@"relationid_number":[self format:model.relationid_numbe],@"level":[self format:model.level],@"thumb_list":array1};
            [marray addObject:dic];
        }
    }

    for (int i = 0; i<self.dataList2.count; i++) {
        ScanModel *model = self.dataList2[i];
        if ([model.cell isEqualToString:@"AddCell"]) {
            NSMutableArray *array1 = [NSMutableArray array];
            for (int i = 0; i < model.thumbArray.count; i++) {
                ThumbModel *thumbModel = model.thumbArray[i];
                NSDictionary *sdic = @{@"path":thumbModel.path};
                [array1 addObject:sdic];
                
            }
            
            NSDictionary *dic = @{@"is_have":[self format:model.is_have],@"p_file_id":[self format:model.p_file_id],@"number":[self format:model.number],@"description":[self format:model.ddescription],@"relationid_number":[self format:model.relationid_numbe],@"level":[self format:model.level],@"thumb_list":array1};
            [marray addObject:dic];
        }
    }
    
    NSDictionary *params;
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"list":marray};
    
    [WXDataService requestAFWithURL:Url_Archive_addNewsFile params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                self.clink();
                [self.navigationController popViewControllerAnimated:YES];
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                [self.navigationController popViewControllerAnimated:YES];

            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
}

- (NSString *)format:(NSString *)formatStr
{
    NSString *str = [NSString string];
    if (formatStr == nil || formatStr.length == 0 || [formatStr isKindOfClass:[NSNull class]]) {
        str = @"";
    }else{
    
        str = formatStr;
    }
    
    return str;

}

#pragma mark -------------LXTwoView  Delegate----------
- (void)clickindex:(int)index lxView:(TwoFiledAlert *)alert whiteText1:(NSString *)text1 withTwxt2:(NSString *)text2
{

    //手动添加时，货架显示：输入14位编号。档案箱显示：输入9位编号。档案册显示：输入10位编号

    if (self.index == 0) {
        
        if (text1.length != 14) {
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入14位编号！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }
      
        for (ScanModel *m in self.dataList){
            
            if ([text1 isEqualToString:m.number]) {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经添加过！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                [alert show];
                return;

            }
        }
        
        
        
    }else if (self.index == 1){
    
        if (text1.length != 9) {
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入9位编号！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }
        
        for (ScanModel *m in self.dataList1){
            
            if ([text1 isEqualToString:m.number]) {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经添加过！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                [alert show];
                return;

            }
        }


    }else{
    
    
        if (text1.length != 10) {
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"请输入10位编号！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            [alert show];
            return;
        }

        for (ScanModel *m in self.dataList2){
            
            if ([text1 isEqualToString:m.number]) {
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经添加过！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                [alert show];
                return;
            }
        }

        
    }
    
    
    NSDictionary *params;
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"number":text1,@"level":[NSString stringWithFormat:@"%d",self.index + 1]};
    
    [WXDataService requestAFWithURL:Url_Archive_manuallyAdd params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if(result){
            NSDictionary *dic = result[@"result"];
            if ([[result objectForKey:@"status"] integerValue] == 0) {
            //请求成功
                ScanModel *model = [[ScanModel alloc] initWithDataDic:nil];
                model.number = text1;
                model.ddescription = text2;
                model.level = [NSString stringWithFormat:@"%d",self.index + 1];
                model.is_have = @"0";
        if(self.index == 0){
            
                if(self.dataList.count == 0){
                    
                [self.dataList addObject:model];
                [self.tableview beginUpdates];
                NSIndexPath *path = [NSIndexPath indexPathForRow:0  inSection:0];
                [self.tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
                [self.tableview endUpdates];
                    
            }else{
                
                BOOL isadd = NO;
            for (ScanModel *m in self.dataList) {
                
                if ([model.number isEqualToString:m.number]) {
                    

                    isadd = YES;
                    
                }
            }
                if (isadd) {
                    
                                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经添加过！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                                            [alert show];
                    
                }else{
                
                                    [self.dataList addObject:model];
                                    [self.tableview beginUpdates];
                                    NSIndexPath *path = [NSIndexPath indexPathForRow:self.dataList.count - 1  inSection:0];
                                    [self.tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
                                        [self.tableview endUpdates];
                    
                }
                
            }
          
                
            
                }else if(self.index == 1){
                
                
                ScanModel *model = [[ScanModel alloc] initWithDataDic:nil];
                    model.number = text1;
                    model.ddescription = text2;
                model.level = [NSString stringWithFormat:@"%d",self.index + 1];
                    model.is_have = @"0";

                    
                    if(self.dataList1.count == 0){
                        
                        [self.dataList1 addObject:model];
                        [self.tableview beginUpdates];
                        NSIndexPath *path = [NSIndexPath indexPathForRow:0  inSection:0];
                        [self.tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
                        [self.tableview endUpdates];
                        
                        
                    }else{
                        
                        BOOL isadd = NO;
                        for (ScanModel *m in self.dataList) {
                            
                            if ([model.number isEqualToString:m.number]) {
                                
                                
                                isadd = YES;
                                
                            }
                        }
                        if (isadd) {
                            
                            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经添加过！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                            [alert show];
                            
                        }else{
                            
                            [self.dataList1 addObject:model];
                            [self.tableview beginUpdates];
                            NSIndexPath *path = [NSIndexPath indexPathForRow:self.dataList1.count - 1  inSection:0];
                            [self.tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
                            [self.tableview endUpdates];
                            
                            
                        }
                        
                        
                }
                
                
                }else{
                
                    ScanModel *model = [[ScanModel alloc] initWithDataDic:nil];
                    model.number = text1;
                    model.ddescription = text2;
                    model.level = [NSString stringWithFormat:@"%d",self.index + 1];
                    model.is_have = @"0";

                    
                        if(self.dataList2.count == 0){
                            
                            [self.dataList2 addObject:model];
                            [self.tableview beginUpdates];
                            NSIndexPath *path = [NSIndexPath indexPathForRow:0  inSection:0];
                            [self.tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
                            [self.tableview endUpdates];
                            
                            
                        }else{
                            
                            BOOL isadd = NO;
                            for (ScanModel *m in self.dataList) {
                                
                                if ([model.number isEqualToString:m.number]) {
                                    
                                    
                                    isadd = YES;
                                    
                                }
                            }
                            if (isadd) {
                                
                                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"您已经添加过！" delegate:nil cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
                                [alert show];
                                
                            }else{
                                
                                [self.dataList2 addObject:model];
                                [self.tableview beginUpdates];
                                NSIndexPath *path = [NSIndexPath indexPathForRow:self.dataList2.count - 1  inSection:0];
                                [self.tableview insertRowsAtIndexPaths:@[path] withRowAnimation:UITableViewRowAnimationTop];
                                [self.tableview endUpdates];
                                
                                
                            }
                            
                }
                
            }
            
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

@end
















