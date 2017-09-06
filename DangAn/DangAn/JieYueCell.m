//
//  JieYueCell.m
//  DangAn
//
//  Created by 刘翔 on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "JieYueCell.h"

@implementation JieYueCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setModel:(JHModel *)model
{
    _model = model;
    self.nameLanel.text = _model.name;
    self.timeOneLabel.text = _model.start_time;
    self.timeTwoLabel.text = _model.end_time;

}

@end
