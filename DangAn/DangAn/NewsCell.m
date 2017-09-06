//
//  NewsCell.m
//  DangAn
//
//  Created by 刘翔 on 16/6/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "NewsCell.h"

@implementation NewsCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.headerImageView.layer.cornerRadius = 15;
    self.headerImageView.layer.masksToBounds = YES;
}

- (void)setModel:(CommentModel *)model
{
    _model = model;
    self.timeLabel.text = model.time;
    self.contentLabel.text = model.content;
    [self.headerImageView sd_setImageWithURL:[NSURL URLWithString:model.headimgurl]];
    self.titleLabel.text = model.username;

}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
