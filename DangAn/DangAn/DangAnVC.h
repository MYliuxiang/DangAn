//
//  DangAnVC.h
//  DangAn
//
//  Created by 未来社区 on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface DangAnVC : BaseViewController<UITableViewDataSource,UITableViewDelegate>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmmentVC;
@property (nonatomic,copy)NSString *DAtitle;
@property (nonatomic,copy)NSString *DAid;
@property (nonatomic,assign)NSInteger type;

@end
