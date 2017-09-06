//
//  WarehouseCell.m
//  DangAn
//
//  Created by 刘翔 on 16/6/12.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "WarehouseCell.h"

@implementation WarehouseCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.stateImageView.layer.cornerRadius = 5;
    self.stateImageView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setIsOnline:(BOOL)isOnline
{
    _isOnline = isOnline;
   
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

- (void)setFmodel:(FModel *)fmodel
{
    _fmodel = fmodel;
    if ([_fmodel.file_status integerValue] == 1) {
        
        self.stateImageView.backgroundColor = [MyColor colorWithHexString:@"#26d400"];
        
        self.stateLabel.textColor = [MyColor colorWithHexString:@"#26d400"];
        self.stateLabel.text = _fmodel.file_status_text;
    }else{
        
        self.stateImageView.backgroundColor = [MyColor colorWithHexString:@"#fe3a39"];
        
        self.stateLabel.textColor = [MyColor colorWithHexString:@"#fe3a39"];
        self.stateLabel.text = _fmodel.file_status_text;
        
    }
    if ([_fmodel.level intValue] == 1) {
        //货架
        self.myImageView.image = [UIImage imageNamed:@"货架详情"];
        
    }else if ([_fmodel.level intValue] == 2){
        //箱
        self.myImageView.image = [UIImage imageNamed:@"档案箱详情"];
        
    }else{
        //册
        self.myImageView.image = [UIImage imageNamed:@"档案册详情"];
        
        
    }
    
    self.titleLabel.text = _fmodel.number;
    
    if(_fmodel.ddescription.length == 0){
        
        self.noteLabel.text = @"无备注";
    }else{
        self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_fmodel.ddescription];
    }
    self.countLabel.text = _fmodel.thumb_count;
}

@end
