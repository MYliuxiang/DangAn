//
//  DangAXVC.h
//  DangAn
//
//  Created by Viatom on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "FileMangerCell.h"
#import "AdressCell.h"
#import "DangACVC.h"
#import "FModel.h"
#import "OneAlert.h"
#import "LModel.h"
#import "WarehouseCell.h"


@interface DangAXVC : BaseViewController<LXOneViewDelegate,LXSugressViewDelegate,UIAlertViewDelegate,ZFActionSheetDelegate,ScanVCDelegate>
{
    int _pageIndex;
    BOOL _isdownLoad;
    
}
@property (nonatomic,retain)NSMutableArray *dataList;
@property (nonatomic,copy)NSString *p_box_id;
@property (nonatomic,copy)NSString *titleText;
@property (nonatomic,copy)NSString *noteText;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (nonatomic,copy) NSString *count;
@property (nonatomic,copy)void(^updataBlock)(NSString *dd);
@property (nonatomic,copy)void(^deletedBlock)();

@property (nonatomic,retain)LModel *lmodel;

- (IBAction)modifyAC:(UIButton *)sender;

@end
