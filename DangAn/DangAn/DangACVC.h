//
//  DangACVC.h
//  DangAn
//
//  Created by 刘翔 on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "FileMangerCell.h"
#import "JieYueCell.h"
#import "JieYueOneCell.h"
#import "PhotoCell.h"
#import "YTAnimation.h"
#import "MAImagePickerController.h"
#import "LModel.h"
#import "CModel.h"
#import "JHModel.h"
#import "OneAlert.h"

@interface DangACVC : BaseViewController<UICollectionViewDelegate,UICollectionViewDataSource,UIGestureRecognizerDelegate,MAImagePickerControllerDelegate,LXOneViewDelegate,LXSugressViewDelegate,UIAlertViewDelegate,ZFActionSheetDelegate,ScanVCDelegate>
{
    NSMutableArray *_photosArray;
    BOOL x;
    BOOL rotateAniFlag;
    
    int _pageIndex;
    BOOL _isdownLoad;
        
}


@property (nonatomic,retain) NSMutableArray *dataList;
@property (nonatomic,retain)LModel *lmodel;
@property (nonatomic,retain)CModel *cmodel;
@property (nonatomic,copy)NSString *p_file_id;
@property (nonatomic,copy)NSString *stateText;
@property (nonatomic,copy)NSString *state;
@property (nonatomic,copy)NSString *titleText;
@property (nonatomic,copy)NSString *noteText;
@property (nonatomic,retain)NSMutableArray *thumbArray;
//@property (nonatomic,copy)void(^updataBlock)(NSString *dd);
//@property (nonatomic,copy)void(^deletedBlock)();


@property (weak, nonatomic) IBOutlet UILabel *stateLabel;
@property (weak, nonatomic) IBOutlet UIImageView *stateImage;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (weak, nonatomic) IBOutlet UILabel *titlelabel;
@property (weak, nonatomic) IBOutlet UILabel *noteLabel;
- (IBAction)moyfixAC:(UIButton *)sender;

@property (strong, nonatomic) IBOutlet UIView *oneHeader;
- (IBAction)guihai:(id)sender;

- (IBAction)jieyue:(id)sender;

- (IBAction)xiaohui:(id)sender;

@property (weak, nonatomic) IBOutlet UIView *oneView;
@property (weak, nonatomic) IBOutlet UIView *twoView;
@property (weak, nonatomic) IBOutlet UIView *threeView;
@property (weak, nonatomic) IBOutlet UICollectionView *collection;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;

@end
