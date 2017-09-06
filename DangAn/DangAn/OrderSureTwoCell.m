//
//  OrderSureTwoCell.m
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "OrderSureTwoCell.h"

@implementation OrderSureTwoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.lable.textColor = Color_text;
    self.lable2.textColor = Color_text;
    self.lable3.textColor = Color_text;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
