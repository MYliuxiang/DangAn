//
//  DYSearchVC.h
//  DangAn
//
//  Created by lijiang on 16/8/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@protocol DYSearchVCDelegate <NSObject>

- (void)giveborrow_idArray:(NSArray *)borrow_idArray;

@end

@interface DYSearchVC : BaseViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
{
    int _pageIndex;
    BOOL _isdownLoad;
    
}
- (IBAction)cancleAC:(UIButton *)sender;
- (IBAction)erWeiAC:(id)sender;
@property (nonatomic,assign)id<DYSearchVCDelegate> delegate;
@property (weak, nonatomic) IBOutlet UITextField *searchText;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,retain) NSMutableArray *dataList;
@property (nonatomic,retain) NSMutableArray *borrow_idArray;
@property (weak, nonatomic) IBOutlet UIButton *btu_add;
@property (nonatomic, assign)BOOL isdingyue;
@property (nonatomic,strong)NSString *product_id;
//@property (nonatomic,strong)NSString *type; //1是首页列表进来  2是VIP下单进来
@property (nonatomic, assign)NSString *file_status; //
- (IBAction)btuAddAction:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *footView;
@end
