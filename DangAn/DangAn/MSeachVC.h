//
//  MSeachVC.h
//  DangAn
//
//  Created by 刘翔 on 16/6/11.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface MSeachVC : BaseViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
{
    int _pageIndex;
    BOOL _isdownLoad;
    
}
- (IBAction)cancleAC:(UIButton *)sender;
- (IBAction)erWeiAC:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *searchText;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,retain) NSMutableArray *dataList;
@property (nonatomic,retain) NSMutableArray *dataList1;
@property (nonatomic,retain) NSMutableArray *dataList2;
@property (nonatomic,retain) NSMutableArray *titleArray;
@property (nonatomic,retain) NSMutableArray *list;


@end
