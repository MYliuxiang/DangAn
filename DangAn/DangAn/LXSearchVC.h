//
//  LXSearchVC.h
//  DangAn
//
//  Created by Viatom on 16/8/4.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

typedef NS_ENUM(NSInteger, SearChtype) {
    SearChtypeL          = -1,
    SearChtypeC     = 0,
    SearChtypeF = 1,
};

@interface LXSearchVC : BaseViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
{
    int _pageIndex;
    BOOL _isdownLoad;
    
}
- (IBAction)cancleAC:(UIButton *)sender;
- (IBAction)erWeiAC:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *searchText;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,assign) NSInteger searChtype;
@property (nonatomic,copy) NSString *url;
@property (nonatomic,retain) NSMutableArray *dataList;
@property (nonatomic,retain) NSMutableArray *dataList1;
@property (nonatomic,retain) NSMutableArray *dataList2;
@property (nonatomic,retain) NSMutableArray *titleArray;
@property (nonatomic,retain) NSMutableArray *list;


@end
