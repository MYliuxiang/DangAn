//
//  YunStorageVC.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"

@interface YunStorageVC : BaseViewController<UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource>
@property (weak, nonatomic) IBOutlet UICollectionView *CollectionView;
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *layout;


@end
