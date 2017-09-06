//
//  WenjianVC.h
//  DangAn
//
//  Created by 未来社区 on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface WenjianVC : BaseViewController<UICollectionViewDelegate,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *CollectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;
@property(nonatomic,strong)NSString *zhujianid;
@property(nonatomic,strong)NSString *title;

@end
