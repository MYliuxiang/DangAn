//
//  HomeCell.m
//  DangAn
//
//  Created by Viatom on 16/6/2.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "HomeCell.h"

@implementation HomeCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    UIImageView *bgimageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 84.5, kScreenWidth - 15, 0.5)];
    bgimageView.backgroundColor = [MyColor colorWithHexString:@"#c8c8c8"];
    [self.contentView addSubview:bgimageView];
    
}


- (void)setModel:(NewsModel *)model
{
    _model = model;
    [self.thumbImage sd_setImageWithURL:[NSURL URLWithString:_model.thumb]];
    self.timeLabel.text = _model.time;
    self.titleLabel.text = _model.title;

}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
