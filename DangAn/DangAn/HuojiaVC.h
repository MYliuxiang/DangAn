//
//  HuojiaVC.h
//  DangAn
//
//  Created by Viatom on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "FileMangerCell.h"
#import "DangAXVC.h"
#import "CModel.h"
#import "OneAlert.h"

@interface HuojiaVC : BaseViewController<UITableViewDelegate,UITableViewDataSource,LXOneViewDelegate,ZFActionSheetDelegate,ScanVCDelegate>
{
    int _pageIndex;
    BOOL _isdownLoad;
    
}
//@property (nonatomic,copy)void(^updataBlock)(NSString *dd);
//@property (nonatomic,copy)void(^deletedBlock)();

@property (nonatomic,copy)NSString *p_address_id;
@property (nonatomic,copy)NSString *titleText;
@property (nonatomic,copy)NSString *noteText;
@property (nonatomic,retain) NSMutableArray *dataList;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
@property (nonatomic,copy) NSString *count;

- (IBAction)modiyAC:(UIButton *)sender;


@end
