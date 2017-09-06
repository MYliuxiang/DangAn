//
//  MovieVC.h
//  DangAn
//
//  Created by Viatom on 16/8/1.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "ScanModel.h"

@interface MovieVC : BaseViewController<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UIButton *scanAddbtn;
@property (weak, nonatomic) IBOutlet UIButton *addbtn;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *saveBtn;
@property (nonatomic,retain) NSMutableArray *dataList;
@property (nonatomic,retain) NSMutableArray *list;
@property (nonatomic,retain) NSMutableArray *localList;
@property (nonatomic,assign) int type;
@property (nonatomic,assign) int seteled;
- (IBAction)doneAC:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *footerView;
- (IBAction)shouAC:(id)sender;

- (IBAction)scanAdd:(id)sender;

@end
