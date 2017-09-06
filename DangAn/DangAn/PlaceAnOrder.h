//
//  PlaceAnOrder.h
//  DangAn
//
//  Created by 李江 on 16/6/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface PlaceAnOrder : BaseViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *TypeTableView;

@property (weak, nonatomic) IBOutlet UITableView *ShopTableView;

@property (weak, nonatomic) IBOutlet UILabel *label_Price;
@property (weak, nonatomic) IBOutlet UILabel *label_shopNum;

@property (weak, nonatomic) IBOutlet UIButton *btu_Done;

- (IBAction)btuDone:(id)sender;

@end
