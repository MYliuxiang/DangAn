//
//  OrderSureOneCell.m
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderSureOneCell.h"

@implementation OrderSureOneCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.lable_adree.textColor = Color_text;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
