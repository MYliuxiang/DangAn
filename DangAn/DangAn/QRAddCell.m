//
//  QRAddCell.m
//  DangAn
//
//  Created by 刘翔 on 16/7/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "QRAddCell.h"

@implementation QRAddCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(ScanModel *)model
{
    _model = model;
    if ([_model.level intValue] == 1) {
        //货架
        self.myImageView.image = [UIImage imageNamed:@"货架详情"];
        
    }else if ([_model.level intValue] == 2){
        //箱
        self.myImageView.image = [UIImage imageNamed:@"档案箱详情"];
        
    }else{
        //册
        self.myImageView.image = [UIImage imageNamed:@"档案册详情"];
        
        
    }
    self.titleLabel.text = _model.number;
    if(_model.ddescription.length == 0){
    
        self.noteLabel.text = @"无备注";

    }else{
        
        self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_model.ddescription];

    }

    
    
}


@end
