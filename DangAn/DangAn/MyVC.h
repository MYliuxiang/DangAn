//
//  MyVC.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "NoticeVC.h"

@interface MyVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>

@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIImageView *headerImageView;
@property (nonatomic,retain)NSArray *images;
@property (nonatomic,retain)NSArray *titles;
@property (weak, nonatomic) IBOutlet UILabel *lable_name;

@property (strong, nonatomic) IBOutlet UIView *footView;
@property (weak, nonatomic) IBOutlet UILabel *footLabel;

- (IBAction)noticeAC:(UIButton *)sender;



@end
