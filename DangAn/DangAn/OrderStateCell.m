//
//  OrderStateCell.m
//  DangAn
//
//  Created by lijiang on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderStateCell.h"

@implementation OrderStateCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    _btn_lookmap.userInteractionEnabled = NO;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
