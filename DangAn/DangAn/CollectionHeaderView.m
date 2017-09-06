//
//  CollectionHeaderView.m
//  DangAn
//
//  Created by 未来社区 on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "CollectionHeaderView.h"

@implementation CollectionHeaderView

- (void)awakeFromNib {
    [super awakeFromNib];

    _H_Label.layer.masksToBounds = YES;
    _H_Label.layer.cornerRadius = _H_Label.height/2.0;
    
    
    _B_Label.layer.masksToBounds = YES;
    _B_Label.layer.cornerRadius = _H_Label.height/2.0;
    
    
}

@end
