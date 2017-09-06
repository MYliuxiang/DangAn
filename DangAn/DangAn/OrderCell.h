//
//  OrderCell.h
//  DangAn
//
//  Created by 李江 on 16/6/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OrderVCModel.h"
@interface OrderCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *OrderNum;
@property (weak, nonatomic) IBOutlet UILabel *Ordertime;
@property (weak, nonatomic) IBOutlet UILabel *OrderState;
@property (nonatomic,strong)OrderVCModel *model;

@end
