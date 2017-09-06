//
//  DYSearchCell.m
//  DangAn
//
//  Created by 李江 on 16/8/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "DYSearchCell.h"

@implementation DYSearchCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.stateImageView.layer.cornerRadius = 5;
    self.stateImageView.layer.masksToBounds = YES;
}


- (void)setModel:(DAModel *)model
{
    _model = model;
    
    if ([_model.file_status integerValue] == 1) {
        
        self.stateImageView.backgroundColor = [MyColor colorWithHexString:@"#26d400"];
        
        self.stateLabel.textColor = [MyColor colorWithHexString:@"#26d400"];
        self.stateLabel.text = _model.file_status_text;
    }else{
        
        self.stateImageView.backgroundColor = [MyColor colorWithHexString:@"#fe3a39"];
        
        self.stateLabel.textColor = [MyColor colorWithHexString:@"#fe3a39"];
        self.stateLabel.text = _model.file_status_text;
        
    }

   
    
    self.titleLabel.text = _model.number;
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_model.ddescription];
    
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
