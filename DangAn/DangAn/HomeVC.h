//
//  HomeVC.h
//  DangAn
//
//  Created by lijiang on 16/5/30.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "BaseViewController.h"
#import "HomeAlert.h"
#import "NewsModel.h"
#import "CycleModel.h"

@interface HomeVC : BaseViewController<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,LXViewDelegate,SDCycleScrollViewDelegate>
{
    int _pageIndex;
    BOOL _isdownLoad;
    BOOL _isFirst;

}
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UIView *headerView;
@property (strong, nonatomic) IBOutlet UIView *firstHeader;
@property(nonatomic, strong)SDCycleScrollView *cycleScrollView;
@property (nonatomic,retain) NSMutableArray *cycleList;

@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *myLaout;
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@property (nonatomic,retain)NSArray *imageNames;
@property (nonatomic,retain)NSArray *titles;
@property (nonatomic,retain)NSMutableArray *dataList;



@end
