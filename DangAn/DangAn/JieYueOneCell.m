//
//  JieYueOneCell.m
//  DangAn
//
//  Created by Viatom on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "JieYueOneCell.h"

@implementation JieYueOneCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.twoImageView.layer.cornerRadius = 5;
    self.twoImageView.layer.masksToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setCmodel:(CModel *)cmodel
{
    _cmodel = cmodel;
    self.titleLabel2.text = _cmodel.number;
    if (_cmodel.ddescription == nil) {
        
        self.noteLabel2.text = [NSString stringWithFormat:@"备注：%@",@""];
        
    }else{
    
        self.noteLabel2.text = [NSString stringWithFormat:@"备注：%@",_cmodel.ddescription];

    }

}

- (void)setLmodel:(LModel *)lmodel
{
    _lmodel = lmodel;
    self.titleLabel1.text = _lmodel.number;
    if (_lmodel.ddescription == nil) {
        
        self.noteLabel1.text = [NSString stringWithFormat:@"备注：%@",@""];
        
    }else{
        
        self.noteLabel1.text = [NSString stringWithFormat:@"备注：%@",_lmodel.ddescription];
        
    }

}

- (IBAction)seeOneAC:(UIButton *)sender {
}

- (IBAction)seeTwoAC:(UIButton *)sender {
}
@end
