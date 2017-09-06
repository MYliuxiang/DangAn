//
//  TouristCollectionViewCell.m
//  Palm
//
//  Created by 李黎明 on 14/12/2.
//  Copyright (c) 2014年 com.liliming. All rights reserved.
//

#import "TouristCollectionViewCell.h"

@implementation TouristCollectionViewCell

- (void)awakeFromNib {
    // Initialization code
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = 3.0;
    self.layer.borderWidth = 0.3;
    self.layer.borderColor = [UIColorFromRGB(0x959595) CGColor];
}
//- (IBAction)deleAction:(UIButton *)sender {
//    sender.selected =! sender.selected;
//}

- (void)layoutSubviews{
    [super layoutSubviews];
    
    self.ShowImage.userInteractionEnabled = YES;
    [self.ShowImage setContentMode:UIViewContentModeScaleAspectFill];
    
    self.ShowImage.clipsToBounds = YES;
    //开启线程
    [self.ShowImage sd_setImageWithURL:[NSURL URLWithString:self.imgName] placeholderImage:nil];
    
}

@end
