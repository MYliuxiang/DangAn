//
//  CollectionHeaderView.h
//  DangAn
//
//  Created by 未来社区 on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CollectionHeaderView : UICollectionReusableView
@property (weak, nonatomic) IBOutlet UISearchBar *Sousu;
@property (weak, nonatomic) IBOutlet UILabel *H_Label;
@property (weak, nonatomic) IBOutlet UILabel *B_Label;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *width_hederview;
@property (weak, nonatomic) IBOutlet UILabel *rongliang;

@end
