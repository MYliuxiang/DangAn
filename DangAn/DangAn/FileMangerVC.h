//
//  FileMangerVC.h
//  DangAn
//
//  Created by 刘翔 on 16/6/13.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "FileMangerCell.h"
#import "HuojiaVC.h"
#import "LModel.h"

@interface FileMangerVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>
{
    int _pageIndex;
    BOOL _isdownLoad;
    
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,retain) NSMutableArray *dataList;
@property (nonatomic,copy) NSString *count;



@end
