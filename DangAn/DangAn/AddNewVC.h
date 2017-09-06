//
//  AddNewVC.h
//  DangAn
//
//  Created by 刘翔 on 16/6/19.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "AddToolCell.h"
#import "AddCell.h"
#import "AddScanVC.h"
#import "TwoFiledAlert.h"
#import "ScanModel.h"
#import "MovieVC.h"
#import "OneAlert.h"
#import "ThumbModel.h"
#import "FailAlert.h"
#import "MAImagePickerController.h"

@interface AddNewVC : BaseViewController<UITableViewDelegate,UITableViewDataSource,LXTwoViewDelegate,MAImagePickerControllerDelegate,LXOneViewDelegate>
{
    
    // 辅助的状态 字典 数组;长度与上面的modelArr一样
    NSMutableArray *_statusDictArr;
    // 记录已经展开的行号
    int _ExpandedMainCellRow;
    int _ExpandedMainCellRow1;
    int _ExpandedMainCellRow2;

}

@property (nonatomic,copy)void(^clink)();
@property (nonatomic,assign) int fixIndex;
@property (nonatomic,assign) int photoIndex;
@property (nonatomic,assign) int index;
@property (weak, nonatomic) IBOutlet UIButton *addbtn;
@property (weak, nonatomic) IBOutlet UIButton *scanAddbtn;

@property (weak, nonatomic) IBOutlet UIButton *saveBtn;

@property (weak, nonatomic) IBOutlet UISegmentedControl *sgement;
- (IBAction)segmentAC:(UISegmentedControl *)sender;
@property (weak, nonatomic) IBOutlet UITableView *tableview;

@property (nonatomic,retain) NSMutableArray *dataList;
@property (nonatomic,retain) NSMutableArray *dataList1;
@property (nonatomic,retain) NSMutableArray *dataList2;
@property (strong, nonatomic) IBOutlet UIView *footerView;


- (IBAction)addAC:(UIButton *)sender;

- (IBAction)scanAddAC:(UIButton *)sender;
- (IBAction)saveAC:(UIButton *)sender;

@end
