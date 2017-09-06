//
//  FileMangerCell.m
//  DangAn
//
//  Created by 刘翔 on 16/6/13.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "FileMangerCell.h"

@implementation FileMangerCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(LModel *)model
{
    
    _model = model;
    if ([_model.level intValue] == 1) {
        //货架
        self.imageImg.image = [UIImage imageNamed:@"货架详情"];
        
    }else if ([_model.level intValue] == 2){
        //箱
        self.imageImg.image = [UIImage imageNamed:@"档案箱详情"];
        
    }else{
        //册
        self.imageImg.image = [UIImage imageNamed:@"档案册详情"];
        
        
    }
    self.titleLabel.text = _model.number;
    if(_model.ddescription.length == 0 || [_model.description isKindOfClass:[NSNull class]] ){
    
        self.noteLabel.text = @"无备注";
        
    }else{
        
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_model.ddescription];
        
    }
    
    self.countLabel.text = [NSString stringWithFormat:@"%@箱%@册",_model.box_count,_model.file_count];
    
    
}

- (void)setDmodel:(DAModel *)dmodel
{
    
    _dmodel = dmodel;
    if ([_dmodel.level intValue] == 1) {
        //货架
        self.imageImg.image = [UIImage imageNamed:@"货架详情"];
        
    }else if ([_dmodel.level intValue] == 2){
        //箱
        self.imageImg.image = [UIImage imageNamed:@"档案箱详情"];
        
    }else{
        //册
        self.imageImg.image = [UIImage imageNamed:@"档案册详情"];
        
    }
    self.titleLabel.text = _dmodel.number;
    
    if(_dmodel.ddescription.length == 0){
        
        self.noteLabel.text = @"无备注";
        
    }else{
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_dmodel.ddescription];
    }

    
    
}


- (void)setCmodel:(CModel *)cmodel
{
    
    _cmodel = cmodel;
    if ([_cmodel.level intValue] == 1) {
        //货架
        self.imageImg.image = [UIImage imageNamed:@"货架详情"];
        
    }else if ([_cmodel.level intValue] == 2){
        //箱
        self.imageImg.image = [UIImage imageNamed:@"档案箱详情"];
        
    }else{
        //册
        self.imageImg.image = [UIImage imageNamed:@"档案册详情"];
        
        
    }
    self.titleLabel.text = _cmodel.number;
    
    if(_cmodel.ddescription.length == 0){
        
        self.noteLabel.text = @"无备注";
        
    }else{
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_cmodel.ddescription];
    }
    
    self.countLabel.text = [NSString stringWithFormat:@"%@册",_cmodel.file_count];

}

- (void)setFmodel:(FModel *)fmodel
{
    
    _fmodel = fmodel;
    if ([_fmodel.level intValue] == 1) {
        //货架
        self.imageImg.image = [UIImage imageNamed:@"货架详情"];
        
    }else if ([_fmodel.level intValue] == 2){
        //箱
        self.imageImg.image = [UIImage imageNamed:@"档案箱详情"];
        
    }else{
        //册
        self.imageImg.image = [UIImage imageNamed:@"档案册详情"];
        
        
    }
    self.titleLabel.text = _fmodel.number;
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",_fmodel.ddescription];
    self.countLabel.text = _fmodel.thumb_count;

}

@end
