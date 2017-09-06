//
//  HeaderCell.m
//  DangAn
//
//  Created by 刘翔 on 16/6/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "HeaderCell.h"

@implementation HeaderCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setImage:(UIImage *)image titles:(NSString *)titles
{
    self.image.image = image;
    self.label.text = titles;

}

@end
