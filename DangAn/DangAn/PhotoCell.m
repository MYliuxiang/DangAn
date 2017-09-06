//
//  PhotoCell.m
//  DangAn
//
//  Created by Viatom on 16/6/15.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "PhotoCell.h"

@implementation PhotoCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    _btn=[UIButton buttonWithType:UIButtonTypeCustom];
    _btn.frame=CGRectMake(0, 0, 20, 20);
    [_btn setImage:[UIImage imageNamed:@"搜索页删除字符"] forState:UIControlStateNormal];
    _btn.hidden=YES;
    [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:_btn];
    
    //长按手势
    UILongPressGestureRecognizer *lpgr = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(longClick:)];
    [self addGestureRecognizer:lpgr];
    
    
    //        self.myImageView.userInteractionEnabled=YES;
    UITapGestureRecognizer *singletap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    [singletap setNumberOfTapsRequired:1];
    [self.photoImageView addGestureRecognizer:singletap];
    self.photoImageView.userInteractionEnabled = YES;
}

//单击手势
- (void) handleSingleTap:(UITapGestureRecognizer *) gestureRecognizer
{
//    if (!self.islast) {
    
    [self.delegate hideAllDeleteBtn:_path];

//    }
}

- (void)setIslast:(BOOL)islast
{
    _islast = islast;
    if (_islast) {
        
        self.photoImageView.image = [UIImage imageNamed:@"拍照按钮"];

    }

}

//长按手势
- (void)longClick:(UILongPressGestureRecognizer *)lpgr
{
    //    _btn.hidden=NO;
    if (!self.islast) {

    [self.delegate showAllDeleteBtn];
    }
}


-(void)btnClick
{
//    if (!self.islast) {

    NSLog(@"%@",_path);
    [self.delegate deleteCellAtIndexpath:_path];
//    }
}


@end
