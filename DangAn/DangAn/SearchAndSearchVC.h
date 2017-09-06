//
//  SearchAndSearchVC.h
//  DangAn
//
//  Created by 李江 on 16/10/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface SearchAndSearchVC : BaseViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>

{
    int _pageIndex;
    BOOL _isdownLoad;
    
}

- (IBAction)cancleAC:(UIButton *)sender;
- (IBAction)erWeiAC:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *searchText;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,retain) NSMutableArray *dataList;
@property (nonatomic,strong)NSString *product_id;


@end
