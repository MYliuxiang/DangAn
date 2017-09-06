//
//  MultiselectCell.m
//  DangAn
//
//  Created by 刘翔 on 16/7/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "MultiselectCell.h"

@implementation MultiselectCell

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
        self.placeLabel.hidden = YES;
        
    }else if ([_model.level intValue] == 2){
        //箱
        self.myImageView.image = [UIImage imageNamed:@"档案箱详情"];
        self.placeLabel.hidden = NO;

    }else{
        //册
        self.myImageView.image = [UIImage imageNamed:@"档案册详情"];
        self.placeLabel.hidden = NO;

        
    }
    
    if (_model.relationid_numbe.length == 0 || [_model.relationid_numbe isEqualToString:@"(null)"] ||_model.relationid_numbe == nil) {
        //不存在
        
        self.placeLabel.text = [NSString stringWithFormat:@"未添加到任何位置"];
        self.placeLabel.textColor = Color(252, 13, 27);

        
        
    }else{
        //存在
        self.placeLabel.text = [NSString stringWithFormat:@"位置：%@",_model.relationid_numbe];
        self.placeLabel.textColor = [UIColor blackColor];
        

        
    }
    
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_model.ddescription];
    self.titleLabel.text = _model.number;
    //    self.placeLabel.text = [NSString stringWithFormat:@"位置：%@",_model.relationid_numbe];
    
    
}



- (void)setIsseleted:(BOOL)Isseleted
{
    _Isseleted = Isseleted;
    self.seletedBtn.selected = _Isseleted;

}


@end


