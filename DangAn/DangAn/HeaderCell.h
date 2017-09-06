//
//  HeaderCell.h
//  DangAn
//
//  Created by 刘翔 on 16/6/5.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HeaderCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *label;

- (void)setImage:(UIImage *)image titles:(NSString *)titles;

@end
