//
//  AddScanVC.h
//  DangAn
//
//  Created by Viatom on 16/7/12.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "ZBarSDK.h"
#import "ScanModel.h"
#import "QRAddCell.h"
#import "ThumbModel.h"
@interface AddScanVC : BaseViewController<UIImagePickerControllerDelegate,UINavigationControllerDelegate>
@property (nonatomic,retain)UIImagePickerController *imgPicker;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet UIButton *doneBtn;
@property (nonatomic,retain)NSMutableArray *dataList;
@property (nonatomic,copy)  void (^doneBlock)(NSArray *);
@property (nonatomic,assign) int index;
@property (nonatomic,retain) NSArray *oldArray;

- (IBAction)doneAC:(id)sender;


@end
