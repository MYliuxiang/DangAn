//
//  OrderStateCell.h
//  DangAn
//
//  Created by lijiang on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OrderStateCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *image_type;

@property (weak, nonatomic) IBOutlet UILabel *label_title;

@property (weak, nonatomic) IBOutlet UILabel *lable_time;

@property (weak, nonatomic) IBOutlet UIButton *btn_lookmap;


@end
