//
//  DangAnDetailsVC.h
//  DangAn
//
//  Created by 李江 on 16/8/21.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface DangAnDetailsVC : BaseViewController



@property (nonatomic,copy)NSString *p_file_id;
@property (nonatomic,copy)NSString *stateText;
@property (nonatomic,copy)NSString *state;
@property (nonatomic,copy)NSString *titleText;
@property (nonatomic,copy)NSString *noteText;

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIImageView *shopImage;

@property (weak, nonatomic) IBOutlet UILabel *titlelable;

@property (weak, nonatomic) IBOutlet UILabel *beizhulable;

@property (weak, nonatomic) IBOutlet UILabel *diaoyuelable;

@property (weak, nonatomic) IBOutlet UIImageView *diaoyueImage;
@property (weak, nonatomic) IBOutlet UIImageView *huikuimage;


@property (weak, nonatomic) IBOutlet UILabel *huikulable;
@property (weak, nonatomic) IBOutlet UIImageView *xiaohuiimage;
@property (weak, nonatomic) IBOutlet UILabel *xiaohuilable;
@property (weak, nonatomic) IBOutlet UIView *diaoyueView;
@property (weak, nonatomic) IBOutlet UIView *xiaohuiView;
@property (weak, nonatomic) IBOutlet UIView *huikuView;
@property (weak, nonatomic) IBOutlet UILabel *zaikullable;
@property (weak, nonatomic) IBOutlet UIImageView *zaikuimage;
@property (strong, nonatomic) IBOutlet UIView *hederView;


@property (weak, nonatomic) IBOutlet UIView *yjlikuView;

@property (weak, nonatomic) IBOutlet UILabel *yjlikuLable;
@property (weak, nonatomic) IBOutlet UIImageView *yjlikuImage;
@property (weak, nonatomic) IBOutlet UILabel *label_statrTime;
@property (weak, nonatomic) IBOutlet UILabel *lable_endTime;

@end
