//
//  NoticeVC.h
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "Notice.h"

@interface NoticeVC : BaseViewController
{
    int _pageIndex;
    BOOL _isdownLoad;
    
}

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,retain)NSMutableArray *dataList;

@end
