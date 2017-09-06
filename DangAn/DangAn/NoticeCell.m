//
//  NoticeCell.m
//  DangAn
//
//  Created by Viatom on 16/8/17.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "NoticeCell.h"

@implementation NoticeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}
- (void)setModel:(Notice *)model
{
    _model = model;
    self.timeLabel.text = _model.time;
    self.neilabel.text = _model.content;

}

@end
