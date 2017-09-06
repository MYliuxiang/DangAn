//
//  DangACVC.m
//  DangAn
//
//  Created by 刘翔 on 16/6/14.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "DangACVC.h"
#import "MSSBrowseDefine.h"
#import "BaseNavigationController.h"
#import "MSeachVC.h"

@interface DangACVC ()<PhotoCellDelegate>

@end

@implementation DangACVC

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.text = @"档案册";
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.dataList = [NSMutableArray array];
    self.thumbArray = [NSMutableArray array];
    self.stateImage.layer.cornerRadius = 5;
    self.stateImage.layer.masksToBounds = YES;
    self.stateImage.backgroundColor = [MyColor colorWithHexString:@"#26d400"];
    
    
    if ([self.state integerValue] == 1) {
        
        self.stateImage.backgroundColor = [MyColor colorWithHexString:@"#26d400"];
        self.stateLabel.textColor = [MyColor colorWithHexString:@"#26d400"];
        
    }else{
        
        self.stateImage.backgroundColor = [MyColor colorWithHexString:@"#fe3a39"];
        self.stateLabel.textColor = [MyColor colorWithHexString:@"#fe3a39"];
        
    }

    
    self.oneView.layer.masksToBounds = YES;
    self.oneView.layer.cornerRadius = 5;
    self.oneView.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.oneView.layer.borderWidth = 1;
    
  

    if ([self.state integerValue] == 1) {
        
        self.oneView.backgroundColor = [UIColor whiteColor];
        self.threeView.backgroundColor = Color_bg;

    }else{
        
        self.oneView.backgroundColor = Color_bg;
        self.threeView.backgroundColor = [UIColor whiteColor];

    }
    self.twoView.layer.masksToBounds = YES;
    self.twoView.layer.cornerRadius = 5;
    self.twoView.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.twoView.layer.borderWidth = 1;

    self.threeView.layer.masksToBounds = YES;
    self.threeView.layer.cornerRadius = 5;
    self.threeView.layer.borderColor = [MyColor colorWithHexString:@"#c8c8c8"].CGColor;
    self.threeView.layer.borderWidth = 1;

    
    [self addrighttitleString:@"编辑"];
    
    _photosArray = [NSMutableArray array];
    x=1;
    
    rotateAniFlag = YES;
    
    self.headerView.height = 150 + 20 + (kScreenWidth - 80) / 6.0 * ((self.thumbArray.count ) / 6 + 1) + (self.thumbArray.count + 1) / 6 * 10 ;
    self.tableView.tableHeaderView = self.headerView;

    
    _layout.sectionInset=UIEdgeInsetsMake(0, 0, 0, 0);
    _layout.minimumLineSpacing=10;
    _layout.minimumInteritemSpacing= 0;
    [_layout setScrollDirection:UICollectionViewScrollDirectionVertical];//滚动方向
    
    
//    self.collection = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, fDeviceWidth, fDeviceHeight) collectionViewLayout:flowLayout];
    
    
    //设置代理
    self.collection.showsVerticalScrollIndicator = NO;
    self.collection.backgroundColor = [UIColor whiteColor];
    [_collection registerNib:[UINib nibWithNibName:@"PhotoCell" bundle:nil] forCellWithReuseIdentifier:@"PhotoCellID"];
    
    
    self.stateLabel.text = self.stateText;
    self.titlelabel.text = self.titleText;
    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",self.noteText];
    
    _tableView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_tableView.mj_header beginRefreshing];
    _tableView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    UIButton *rightbutton1 = [UIButton buttonWithType:UIButtonTypeCustom];
    rightbutton1.frame = CGRectMake(kScreenWidth - 50 / 2.0 - 15  - 25 - 15, 20 + (self.nav.height - 20 - 50 / 2.0) / 2.0 , 50 / 2.0, 50 / 2.0);
    [rightbutton1 setImage:[UIImage imageNamed:@"Search"] forState:UIControlStateNormal];
    [rightbutton1 addTarget:self action:@selector(rightAC1) forControlEvents:UIControlEventTouchUpInside];
    [self.nav addSubview:rightbutton1];
    
    
}

#pragma mark -------搜索--------
- (void)rightAC1
{
    MSeachVC *vc = [[MSeachVC alloc] init];
    BaseNavigationController *nav = [[BaseNavigationController alloc] initWithRootViewController:vc];
    
    [self presentViewController:nav animated:YES completion:nil];
    
}

////下啦刷新
- (void)downLoad
{
    _isdownLoad = YES;
    _pageIndex = 1;
    [self _loadData];
    
}

//上啦加载
- (void)upLoad
{
    _isdownLoad = NO;
    [self _loadData];
    
}

- (void)_loadData
{
    
    NSDictionary *params;
    NSString *url;
   
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"page":[NSString stringWithFormat:@"%d",_pageIndex],@"p_file_id":self.p_file_id};
    url = Url_Archive_fileInfo;
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    JHModel *model = [[JHModel alloc] initWithDataDic:subDic];
                    [marray addObject:model];
                }
                
                if (_isdownLoad) {
                    self.dataList = marray;
                  
                    self.stateLabel.text = dic[@"info"][@"file_status_text"];
                    self.state = dic[@"info"][@"file_status"];
                    if ([self.state integerValue] == 1) {
                        
                        self.stateImage.backgroundColor = [MyColor colorWithHexString:@"#26d400"];
                        self.stateLabel.textColor = [MyColor colorWithHexString:@"#26d400"];
                        
                    }else{
                        
                        self.stateImage.backgroundColor = [MyColor colorWithHexString:@"#fe3a39"];
                        self.stateLabel.textColor = [MyColor colorWithHexString:@"#fe3a39"];
                        
                    }
                    
                    if ([self.state integerValue] == 1) {
                        
                        self.oneView.backgroundColor = [UIColor whiteColor];
                        self.threeView.backgroundColor = Color_bg;
                        
                    }else{
                        
                        self.oneView.backgroundColor = Color_bg;
                        self.threeView.backgroundColor = [UIColor whiteColor];
                        
                    }

                    
                    self.titlelabel.text = dic[@"info"][@"number"];
                    self.noteLabel.text =  [NSString stringWithFormat:@"备注：%@",dic[@"info"][@"description"]];
                    NSMutableArray *marray1 = [NSMutableArray array];
                    NSArray *array1 = dic[@"info"][@"thumb_list"];
                    for (NSDictionary *subdic in array1) {
                        
                        ThumbModel *thumbModel = [[ThumbModel alloc] initWithDataDic:subdic];
                        [marray1 addObject:thumbModel];
                        
                    }
                    
                    self.thumbArray = marray1;
                    [self.collection reloadData];
                    self.lmodel = [[LModel alloc] initWithDataDic:dic[@"address_info"]];
                    self.lmodel.ddescription = dic[@"address_info"][@"description"];
                    
                    self.cmodel = [[CModel alloc] initWithDataDic:dic[@"box_info"]];
                    self.cmodel.ddescription = dic[@"box_info"][@"description"];
                    
                    self.headerView.height = 150 + 20 + (kScreenWidth - 80) / 6.0 * ((self.thumbArray.count ) / 6 + 1) + (self.thumbArray.count + 1) / 6 * 10 ;
                    self.tableView.tableHeaderView = self.headerView;
                    
                    
                } else {
                    
                    [self.dataList addObjectsFromArray:marray];
                }
                
                if ([dic[@"page"] intValue] == 0) {
                    //没有更多了
                    if (_isdownLoad) {
                        
                        [_tableView.mj_header endRefreshing];
                        [_tableView.mj_footer endRefreshingWithNoMoreData];
                        
                    } else {
                        
                        [_tableView.mj_footer endRefreshing];
                        [_tableView.mj_footer endRefreshingWithNoMoreData];
                    }
                    
                    
                }else{
                    
                    //还有更多
                    if (_isdownLoad) {
                        
                        [_tableView.mj_header endRefreshing];
                        [_tableView.mj_footer resetNoMoreData];
                    } else {
                        
                        [_tableView.mj_footer endRefreshing];
                        [_tableView.mj_footer resetNoMoreData];
                    }
                    
                }
                
                [_tableView reloadData];
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                if (_isdownLoad) {
                    [_tableView.mj_header endRefreshing];
                } else {
                    [_tableView.mj_footer endRefreshing];
                }
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
        if (_isdownLoad) {
            [_tableView.mj_header endRefreshing];
        } else {
            [_tableView.mj_footer endRefreshing];
        }
        
    }];
    
}



#pragma mark -- UICollectionViewDataSource
//定义展示的UICollectionViewCell的个数
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.thumbArray.count + 1;
    
}
//定义展示的Section的个数
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

//每个UICollectionView展示的内容
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    PhotoCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"PhotoCellID" forIndexPath:indexPath];
        
    cell.path=indexPath;
    cell.photoImageView.userInteractionEnabled= x ?NO:YES;
    cell.photoImageView.tag = indexPath.row + 100;
    cell.delegate=self;
    
//    if (cell.photoImageView.subviews.count>0) {
//        HZImagesGroupView *imageGroupView = cell.photoImageView.subviews[0];
//        [imageGroupView removeFromSuperview];
//    }
//    
//    HZImagesGroupView *imagesGroupView = [[HZImagesGroupView alloc] init];
//    NSMutableArray *temp = [NSMutableArray array];
//    for (ThumbModel *model in self.thumbArray) {
//        HZPhotoItemModel *item = [[HZPhotoItemModel alloc] init];
//        item.thumbnail_pic = model.thumb_show;
//        [temp addObject:item];
//    }
//    imagesGroupView.photoItemArray = [temp copy];
//    [cell.photoImageView addSubview:imagesGroupView];

    if (indexPath.row == self.thumbArray.count) {
        cell.islast = YES;
//        imagesGroupView.hidden = YES;
        
    }else{
    
        cell.islast = NO;
//        imagesGroupView.hidden = NO;

    }
    
    if (cell.islast) {
        
        cell.btn.hidden= YES;
        cell.photoImageView.contentMode = UIViewContentModeCenter;
        cell.photoImageView.image = [UIImage imageNamed:@"拍照按钮"];

    }else{
    
        ThumbModel *model = self.thumbArray[indexPath.row];
        [cell.photoImageView sd_setImageWithURL:[NSURL URLWithString:model.thumb_show] placeholderImage:[UIImage imageNamed:@"5"]];
        cell.photoImageView.contentMode = UIViewContentModeScaleToFill;

    cell.btn.hidden=x?YES:NO;

    if (!rotateAniFlag) {
        
        [YTAnimation vibrateAnimation:cell];
        
    }else{
        
        [cell.layer removeAnimationForKey:@"shake"];
    }
        
    }


    [cell setNeedsLayout];
    return cell;
}

-(void) hideAllDeleteBtn:(NSIndexPath *)path
{
    if (!x) {
        x=1;
        rotateAniFlag = YES;
        [self.collection reloadData];
        
    }
    
    if (path.row == self.thumbArray.count) {
        
        MAImagePickerController *imagePicker = [[MAImagePickerController alloc] init];
        [imagePicker setDelegate:self];
        [imagePicker setSourceType:MAImagePickerControllerSourceTypeCamera];
        
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:imagePicker];
        [self presentViewController:navigationController animated:YES completion:nil];
    }

    
}

-(void)showAllDeleteBtn
{
    x=0;
    rotateAniFlag = NO;
    
    [self.collection reloadData];
    
    //    for (CollectionViewCell *cell in  self.collectionView.subviews) {
    //        CollectionViewCell *myCell=cell;
    //        myCell.btn.hidden=NO;
    //    }
}


-(void)deleteCellAtIndexpath:(NSIndexPath *)path
{
    NSLog(@"%@",path);


    
    ThumbModel *model = self.thumbArray[path.row];
    NSDictionary *params;
    
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"p_file_id":self.p_file_id,@"p_img_id":model.p_img_id};
    
    [WXDataService requestAFWithURL:Url_Archive_delFileThumb params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if(result){
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                [self.collection performBatchUpdates:^{
                    
                    [self.thumbArray removeObjectAtIndex:path.row];
                    [self.collection deleteItemsAtIndexPaths:@[path]];
                    
                } completion:^(BOOL finished) {
                    
                    //[self.collection reloadData];
                }];
                
                self.headerView.height = 150 + 20 + (kScreenWidth - 80) / 6.0 * ((self.thumbArray.count ) / 6 + 1) + (self.thumbArray.count + 1) / 6 * 10 ;
                [self.tableView beginUpdates];
                [self.tableView setTableHeaderView:self.headerView];
                [self.tableView endUpdates];
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
}

-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"%f,%f",self.collection.contentOffset.x,self.collection.contentOffset.y);
    
}

//cell是否可以删除
- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath
{
    return YES;
}



#pragma mark --UICollectionView DelegateFlowLayout
//定义每个UICollectionView 的大小
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return CGSizeMake((kScreenWidth - 70)/6.0, (kScreenWidth - 70)/6.0);
}


#pragma mark --UICollectionViewDelegate
//UICollectionView被选中时调用的方法
-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.row == self.thumbArray.count) {
        
        MAImagePickerController *imagePicker = [[MAImagePickerController alloc] init];
        [imagePicker setDelegate:self];
        [imagePicker setSourceType:MAImagePickerControllerSourceTypeCamera];
        
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:imagePicker];
        [self presentViewController:navigationController animated:YES completion:nil];
    }else{
    
    
//        HZPhotoBrowser *browserVc = [[HZPhotoBrowser alloc] init];
//        browserVc.sourceImagesContainerView = self.view;
//        browserVc.imageCount = self.thumbArray.count;
//        browserVc.currentImageIndex = indexPath.row;
//        // 代理
//        browserVc.delegate = self;
//        // 展示图片浏览器
//        [browserVc show];
        
        NSArray *bigUrlArray = @[@"http://7xjtvh.com1.z0.glb.clouddn.com/browse01.jpg",
                                 @"http://7xjtvh.com1.z0.glb.clouddn.com/browse02.jpg",
                                 @"http://7xjtvh.com1.z0.glb.clouddn.com/browse03.jpg",
                                 @"http://7xjtvh.com1.z0.glb.clouddn.com/browse04.jpg",
                                 @"http://7xjtvh.com1.z0.glb.clouddn.com/browse05.jpg",
                                 @"http://7xjtvh.com1.z0.glb.clouddn.com/browse06.jpg",
                                 @"http://7xjtvh.com1.z0.glb.clouddn.com/browse07.jpg",
                                 @"http://7xjtvh.com1.z0.glb.clouddn.com/browse08.jpg",
                                 @"http://7xjtvh.com1.z0.glb.clouddn.com/browse09.jpg"];
        // 加载网络图片
        NSMutableArray *browseItemArray = [[NSMutableArray alloc]init];
        int i = 0;
        for(i = 0;i < self.thumbArray.count ;i++)
        {
            ThumbModel *model = self.thumbArray[i];
            UIImageView *imageView = [self.view viewWithTag:i + 100];
            MSSBrowseModel *browseItem = [[MSSBrowseModel alloc]init];
            browseItem.bigImageUrl = model.thumb_show;// 加载网络图片大图地址
            browseItem.smallImageView = imageView;// 小图
            [browseItemArray addObject:browseItem];
        }
        PhotoCell *cell = (PhotoCell *)[self.collection cellForItemAtIndexPath:indexPath];
        MSSBrowseNetworkViewController *bvc = [[MSSBrowseNetworkViewController alloc]initWithBrowseItemArray:browseItemArray currentIndex:cell.photoImageView.tag - 100];
        //    bvc.isEqualRatio = NO;// 大图小图不等比时需要设置这个属性（建议等比）
        [bvc showBrowseViewController];
    
        
    }
    
}

////#pragma mark - photobrowser代理方法
//- (UIImage *)photoBrowser:(HZPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
//{
//    NSIndexPath *indexpath = [NSIndexPath indexPathForRow:index inSection:0];
//    PhotoCell *cell = (PhotoCell *)[self.collection cellForItemAtIndexPath:indexpath];
//    
//    return cell.photoImageView.image;
//}
//

//- (NSURL *)photoBrowser:(HZPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index
//{
//    ThumbModel *model = self.thumbArray[index];
//    NSString *urlStr = model.thumb_show;
//    return [NSURL URLWithString:urlStr];
//}


#pragma mark -------MAImagePickerControllerDelegate--------
- (void)imagePickerDidCancel
{
    
}
- (void)imagePickerDidChooseImageWithImageData:(UIImage *)image
{
    
    
    [WXDataService postImage:Url_thumbUpload params:nil fileData:UIImageJPEGRepresentation(image, .3) finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0) {
            
            ThumbModel *thumbModel = [[ThumbModel alloc] initWithDataDic:result[@"result"]];
            
            [self addPhoto:thumbModel];
           
            
        }
        
        //没有数据了
        if ([[result objectForKey:@"status"] integerValue] == 1) {
            
            [MBProgressHUD showError:result[@"msg"] toView:self.view];
            
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
    
}

- (void)addPhoto:(ThumbModel *)model
{

    NSDictionary *params;
    
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"p_file_id":self.p_file_id,@"path":model.path};
    
    [WXDataService requestAFWithURL:Url_Archive_addFileThumb params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if(result){
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                NSDictionary *dic = result[@"result"];
                ThumbModel *thumbModel = [[ThumbModel alloc] initWithDataDic:dic];
                
                  [self.collection performBatchUpdates:^{
                    [self.thumbArray insertObject:thumbModel atIndex:0];
                    [self.collection insertItemsAtIndexPaths:@[[NSIndexPath indexPathForItem:0 inSection:0]]];
                    
                } completion:^(BOOL finished) {
                    
                    [self.collection reloadData];
                    
                }];
                
                self.headerView.height = 150 + 20 + (kScreenWidth - 80) / 6.0 * ((self.thumbArray.count ) / 6 + 1) + (self.thumbArray.count + 1) / 6 * 10 ;
                [self.tableView beginUpdates];
                [self.tableView setTableHeaderView:self.headerView];
                [self.tableView endUpdates];
              
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];


}


#pragma mark --------编辑--------
- (void)rightAction
{
    NSArray *array;
//    if (self.dataList.count == 0) {
//        
//        array = @[@"备注信息",@"添加档案",@"更换条码",@"删除"];
//    }else{
//        
        array = @[@"备注信息",@"添加档案",@"更换条码"];
        
//    }
    ZFActionSheet *sheet = [ZFActionSheet actionSheetWithTitle:nil confirms:array cancel:@"取消" style:ZFActionSheetStyleDefault];
    sheet.delegate = self;
    [sheet showInView:self.view];
    self.text = @"档案管理";

    NSLog(@"编辑");
    
}

#pragma mark ------ZFActionSheetDelegate-------
- (void)clickAction:(ZFActionSheet *)actionSheet atIndex:(NSUInteger)index
{
    self.text = @"档案册";

    if (index == 0) {
        //备注信息
        [self moyfixAC:nil];
    }else if (index == 1){
        //添加档案
        AddNewVC *vc = [[AddNewVC alloc] init];
        vc.clink = ^(){
            
            SugressAlert *alert = [[SugressAlert alloc] initWithMessage:@"添加成功" title1:@"完成" title2:@"继续添加" delegate:self];
            [alert show];
            
        };
        [self.navigationController pushViewController:vc animated:YES];
        
        
        
    }else if (index == 2){
        //更换条码
        
        ScanVC *vc = [[ScanVC alloc] init];
        vc.delegate = self;
        [self.navigationController pushViewController:vc animated:YES];
        
        
    }else if(index == 3){
        //删除
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"亲！您确定要删除吗？" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [alert show];
        
    }
    
    
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (alertView.tag == 100) {
        
        if (buttonIndex == 1) {
       
        NSDictionary *params;
        
        params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"p_file_id":self.p_file_id};
        
        [WXDataService requestAFWithURL:Url_Archive_fileDestroy params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
            
            if(result){
                
                if ([[result objectForKey:@"status"] integerValue] == 0) {
                    
                    [self.navigationController popViewControllerAnimated:YES];
                    
                }
                
                //没有数据了
                if ([[result objectForKey:@"status"] integerValue] == 1) {
                    
                    [MBProgressHUD showError:result[@"msg"] toView:self.view];
                    
                }
            }
        } errorBlock:^(NSError *error) {
            NSLog(@"%@",error);
            
            [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
            
        }];

        return;
        }
        }else{
        
            if (buttonIndex == 1) {
                [self deleted];
            }

        }
    

}

#pragma mark --------添加成功---------------
- (void)clickindex:(int)index lxView:(SugressAlert *)alert
{
    
    if(index == 1){
        
        AddNewVC *vc = [[AddNewVC alloc] init];
        vc.clink = ^(){
            
            SugressAlert *alert = [[SugressAlert alloc] initWithMessage:@"添加成功" title1:@"完成" title2:@"继续添加" delegate:self];
            [alert show];
            
        };
        [self.navigationController pushViewController:vc animated:YES];
        
        
    }
    
}

#pragma mark -------ScanVCDelegate-----
- (void)scanStr:(NSString *)scanStr
{
    
    NSDictionary *params;
    
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"level":@"3",@"number":scanStr,@"id":self.p_file_id};
    
    [WXDataService requestAFWithURL:Url_Archive_updateFileNumber params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if(result){
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                self.titleText = scanStr;
                self.titlelabel.text = scanStr;
                //                    self.updataBlock(text);
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
    
}


- (void)deleted
{
    NSDictionary *params;
    
    params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"level":@"3",@"id":self.p_file_id};
    
    [WXDataService requestAFWithURL:Url_Archive_deleteFile params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if(result){
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
//                self.deletedBlock();
                [self.navigationController popViewControllerAnimated:YES];

                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
    
}


#pragma  mark --------UITableView Delegete----------
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
//    if (self.dataList.count == 0) {
//        return 1;
//    }
    return 2;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    }
    return self.dataList.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0) {
        
        static NSString *identifire = @"cellID1";
        JieYueOneCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
        if (cell == nil) {
            cell = [[[NSBundle mainBundle] loadNibNamed:@"JieYueOneCell" owner:nil options:nil] lastObject];
            cell.accessoryType = UITableViewCellAccessoryNone;
            cell.selectionStyle = UITableViewCellSelectionStyleNone;
            [cell.btn addTarget:self action:@selector(btnAC) forControlEvents:UIControlEventTouchUpInside];
            [cell.btn1 addTarget:self action:@selector(btnAC1) forControlEvents:UIControlEventTouchUpInside];


        }
        cell.cmodel = self.cmodel;
        cell.lmodel = self.lmodel;
        return cell;
        
    }else{
    static NSString *identifire = @"cellID";
    JieYueCell *cell = [tableView dequeueReusableCellWithIdentifier:identifire];
    if (cell == nil) {
        cell = [[[NSBundle mainBundle] loadNibNamed:@"JieYueCell" owner:nil options:nil] lastObject];
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
        
    }
        cell.model = self.dataList[indexPath.row];
    
    return cell;
    }
    
    
    
}

#pragma mark ----查看 --------
- (void)btnAC
{
    HuojiaVC *vc = [[HuojiaVC alloc] init];
    vc.p_address_id = _lmodel.p_address_id;
    vc.titleText = _lmodel.number;
    vc.noteText = _lmodel.ddescription;

    [self.navigationController pushViewController:vc animated:YES];

}

- (void)btnAC1
{
    
//    CModel *model = self.dataList[indexPath.row];
    DangAXVC *vc = [[DangAXVC alloc] init];
    vc.p_box_id = _cmodel.p_box_id;
    vc.titleText = _cmodel.number;
    vc.noteText = _cmodel.ddescription;
    [self.navigationController pushViewController:vc animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        return 30;
        
    }else{
    return 140;
    }
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return .1;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
    
        return 130;
    }
    return 70;
    
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    if (section == 0) {
        
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 30)];
        view.backgroundColor = Color(248, 248, 248);
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, kScreenWidth - 20, 30)];
        label.font = [UIFont systemFontOfSize:12];
        label.textColor = [UIColor lightGrayColor];
        [view addSubview:label];
//        if (section == 0) {
        
            label.text = @"所在位置";
            
//        }else{
//            
//            label.text = @"借阅记录";
//            
//        }
        return view;
    }else{
    
        return self.oneHeader;
    }
  
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)moyfixAC:(UIButton *)sender {
    OneAlert *alert = [[OneAlert alloc] initWithTitle:@"备注信息" Message:self.titleText Placeholdet:@"备注" delegate:self];
    [alert show];
    
}

#pragma  mark ---------- LXOneViewDelegate-------
- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text
{
    if (alert.tag == 100) {
        //归还
        if(index == 1){
            
            NSDictionary *params;
            
            params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"name":text,@"p_file_id":self.p_file_id};
            
            [WXDataService requestAFWithURL:Url_Archive_fileStill params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
                
                if(result){
                    
                    if ([[result objectForKey:@"status"] integerValue] == 0) {
                        
                        [MBProgressHUD showSuccess:@"归档成功" toView:self.view];

                        [_tableView.mj_header beginRefreshing];
                        
                    }
                    
                    //没有数据了
                    if ([[result objectForKey:@"status"] integerValue] == 1) {
                        
                        [MBProgressHUD showError:result[@"msg"] toView:self.view];
                        
                    }
                }
            } errorBlock:^(NSError *error) {
                NSLog(@"%@",error);
                
                [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
                
            }];
            
        }

        
    }else if (alert.tag == 101){
        //借阅
        if(index == 1){
            
            NSDictionary *params;
            
             params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"name":text,@"p_file_id":self.p_file_id};
            
            [WXDataService requestAFWithURL:Url_Archive_fileBorrow params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
                
                if(result){
                    
                    if ([[result objectForKey:@"status"] integerValue] == 0) {
                        
                        [MBProgressHUD showSuccess:@"借阅成功" toView:self.view];
                        [_tableView.mj_header beginRefreshing];


                    }
                    
                    
                    //没有数据了
                    if ([[result objectForKey:@"status"] integerValue] == 1) {
                        
                        [MBProgressHUD showError:result[@"msg"] toView:self.view];
                        
                    }
                }
            } errorBlock:^(NSError *error) {
                NSLog(@"%@",error);
                
                [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
                
            }];
            
        }

        
    
    }else{
    if(index == 1){
        
        NSDictionary *params;
        
        params = @{@"member_id":[NSString stringWithFormat:@"%@",[UserDefaults objectForKey:Member_id]],@"level":@"3",@"description":text,@"id":self.p_file_id};
        
        [WXDataService requestAFWithURL:Url_Archive_Archive_updateDescription params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
            
            if(result){
                
                if ([[result objectForKey:@"status"] integerValue] == 0) {
                    
                    self.noteText = text;
                    self.noteLabel.text = [NSString stringWithFormat:@"备注：%@",text];
//                    self.updataBlock(text);
                    
                }
                
                //没有数据了
                if ([[result objectForKey:@"status"] integerValue] == 1) {
                    
                    [MBProgressHUD showError:result[@"msg"] toView:self.view];
                    
                }
            }
        } errorBlock:^(NSError *error) {
            NSLog(@"%@",error);
            
            [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
            
        }];
        
    }
    }
    

}


- (IBAction)guihai:(id)sender {
    
    
    if ([self.state integerValue] == 1) {
//        在库
        return;
    }
    NSLog(@"归还");
    OneAlert *alert = [[OneAlert alloc] initWithTitle:@"归档人" Message:self.titleText Placeholdet:@"输入姓名" delegate:self];
    [alert.button2 setTitle:@"保存" forState:UIControlStateNormal];
    alert.tag = 100;
    [alert show];
    
    
}

- (IBAction)jieyue:(id)sender {
    NSLog(@"借阅");
    if ([self.state integerValue] == 1) {
        //        在库
        
        OneAlert *alert = [[OneAlert alloc] initWithTitle:@"借阅人" Message:self.titleText Placeholdet:@"输入姓名" delegate:self];
        [alert.button2 setTitle:@"保存" forState:UIControlStateNormal];
        alert.tag = 101;
        [alert show];
    }
   
    
}

- (IBAction)xiaohui:(id)sender {
    NSLog(@"销毁");
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"提示" message:@"是否销毁档案?" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    alert.tag = 100;
    [alert show];
    
    
}

@end
