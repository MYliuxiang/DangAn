//
//  SeleWenjianVC.h
//  DangAn
//
//  Created by macvivi on 16/8/10.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@protocol SeleWenjianVCdelegate <NSObject>

- (void)shuaxin;

@end


@interface SeleWenjianVC : BaseViewController<UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *CollectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;

@property (weak, nonatomic) IBOutlet UIButton *enter;
@property(nonatomic,strong)NSArray *idAry;
@property(nonatomic,weak) id<SeleWenjianVCdelegate >delegate;

@end
