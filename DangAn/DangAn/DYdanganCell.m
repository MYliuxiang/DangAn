//
//  DYdanganCell.m
//  DangAn
//
//  Created by lijiang on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "DYdanganCell.h"

@implementation DYdanganCell

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.lable_bianhao.textColor = Color_text;
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
