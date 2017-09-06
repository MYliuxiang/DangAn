//
//  MoveCell.m
//  DangAn
//
//  Created by Viatom on 16/8/1.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "MoveCell.h"

@implementation MoveCell

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
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_model.ddescription];
    
    
    
}


@end
