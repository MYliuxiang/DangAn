//
//  VIPbusinessVC.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface VIPbusinessVC : BaseViewController
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (strong, nonatomic) IBOutlet UIView *hedeView;
@property (strong, nonatomic) IBOutlet UIView *LoginHeaderView;

@property (weak, nonatomic) IBOutlet UIImageView *image_user;

@property (weak, nonatomic) IBOutlet UILabel *lable_title;

@property (weak, nonatomic) IBOutlet UILabel *label_manger;

@property (weak, nonatomic) IBOutlet UIView *heder_lineView;

@property(nonatomic, strong)SDCycleScrollView *cycleScrollView;

- (IBAction)LoginAction:(id)sender;

@end
