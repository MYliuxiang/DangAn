//
//  MultiselectVC.h
//  DangAn
//
//  Created by 刘翔 on 16/7/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "ScanModel.h"

@interface MultiselectVC : BaseViewController<UITableViewDelegate,UITableViewDataSource,UIAlertViewDelegate>
{
    UIButton *_backBtn;

}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (weak, nonatomic) IBOutlet UIButton *yidongBtn;

@property (weak, nonatomic) IBOutlet UILabel *countLabel;

@property (nonatomic,retain) NSMutableArray *list;

@property (nonatomic, retain) NSMutableArray *dataList;

@property (nonatomic,retain) NSMutableArray *dataList1;

@property (nonatomic,retain) NSMutableArray *dataList2;

@property (nonatomic,retain) NSMutableDictionary *mdic;

@property (nonatomic,copy)  void (^doneBlock)(NSArray *list);

@property (nonatomic,assign)int count;

@property (nonatomic,assign)int type;

- (IBAction)deletedAC:(id)sender;
- (IBAction)yidongAC:(id)sender;

@end
