//
//  OrderSureProductCell.h
//  DangAn
//
//  Created by 李江 on 16/8/21.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrderSureListModel.h"
@interface OrderSureProductCell : UITableViewCell


@property (weak, nonatomic) IBOutlet UIImageView *shopimage;
@property (weak, nonatomic) IBOutlet UILabel *shoptitile;

@property (weak, nonatomic) IBOutlet UIView *addView;

@property (weak, nonatomic) IBOutlet UILabel *numLabel;

@property (nonatomic,strong)OrderSureListModel *model;
@property (weak, nonatomic) IBOutlet UILabel *PTnumLable;

- (IBAction)addAction:(id)sender;



- (IBAction)jianAction:(id)sender;
@end
