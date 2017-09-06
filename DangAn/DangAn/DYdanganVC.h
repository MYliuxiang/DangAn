//
//  DYdanganVC.h
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"


@protocol DYdanganVCDelegate <NSObject>

- (void)giveborrow_idArray:(NSString *)product_id;

@end

@interface DYdanganVC : BaseViewController

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *hederView;
@property (weak, nonatomic) IBOutlet UIButton *btu_add;
- (IBAction)btuAddAction:(id)sender;

@property (strong, nonatomic) IBOutlet UIView *footView;

@property (weak, nonatomic) IBOutlet UILabel *lable_head;

@property (nonatomic,strong)NSArray *archivesArray;

@property (nonatomic,strong)NSArray *ArrayList;

@property (nonatomic,strong)NSString *product_id;


@property (nonatomic,assign)id<DYdanganVCDelegate> delegate;

@property (nonatomic,assign)BOOL isadd;

@end
