//
//  WenjianVC.m
//  DangAn
//
//  Created by 未来社区 on 16/6/16.
//  Copyright © 2016年 lijiang. All rights reserved.
//

#import "WenjianVC.h"
#import "WenjianCoCell.h"
#import "WenjiandeModel.h"

@interface WenjianVC ()<MAImagePickerControllerDelegate,LXOneViewDelegate>
@property(nonatomic,assign)BOOL type;
@property(nonatomic,strong)NSMutableDictionary *seleDic;
@property(nonatomic,strong)NSMutableArray *dataAry;
@property(nonatomic,assign)NSInteger pageIndex1;
@property(nonatomic,assign)NSInteger weizhi1;
@property(nonatomic,assign)NSInteger weizhi2;



@end

#define SHCollectionReusableViewFooter   @"CollectionFooter"


@implementation WenjianVC{

    NSString *_cellIdentifier;
    UIView *_blueView;
    UILabel *sele_label ;
    UILabel *yeshu;
    BOOL _isdownLoad;
    UILabel *zongji;
}


- (void)dealloc{
    
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.text = self.title;
    [self addrighttitleString:@"选择"];
    _type = YES;
    _seleDic = [NSMutableDictionary new];
    _dataAry = [NSMutableArray new];

    
    [self _initView];
    
    _CollectionView.mj_header = [MJRefreshNormalHeader headerWithRefreshingTarget:self refreshingAction:@selector(downLoad)];
    [_CollectionView.mj_header beginRefreshing];
    
    
   _CollectionView.mj_footer = [MJRefreshBackStateFooter footerWithRefreshingTarget:self refreshingAction:@selector(upLoad)];
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(reload) name:@"wenjianshanchu1" object:nil];
    
    
}

- (void)back{

    [self.navigationController popToRootViewControllerAnimated:YES];

}


- (void)reload{

   [_CollectionView.mj_header beginRefreshing];

}

- (void)_initView{
    CGFloat Collectionwidth = (kScreenWidth-20)/3.0;
    _layout.sectionInset =UIEdgeInsetsMake(5,5,5,5);
    _layout.itemSize = CGSizeMake(Collectionwidth,250/2.0*ratioHeight);
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    _layout.footerReferenceSize=CGSizeMake(self.view.frame.size.width, 150);//尾视图大小
    
    _cellIdentifier=@"WenjianCoCell";
    UINib *nib=[UINib nibWithNibName:@"WenjianCoCell" bundle: [NSBundle mainBundle]];
    [_CollectionView registerNib:nib forCellWithReuseIdentifier:_cellIdentifier];
    
    _layout.footerReferenceSize=CGSizeMake(self.view.frame.size.width, 70);//尾视图大小
    [_CollectionView registerClass:[UICollectionReusableView class]  forSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:SHCollectionReusableViewFooter];
   

    
    
    
    _blueView = [[UIView alloc]initWithFrame:CGRectMake(0, kScreenHeight-50,kScreenHeight, 50)];
    _blueView.backgroundColor = Color_blue;
    [self.view addSubview:_blueView];
    _blueView.hidden = YES;

    //删除按钮
    UIButton *deleButton = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 50*ratioWidth, _blueView.height)];
    [_blueView addSubview:deleButton];
    [deleButton setImage:[UIImage imageNamed:@"删除图标"] forState:UIControlStateNormal];
    [deleButton addTarget:self action:@selector(deleButton) forControlEvents:UIControlEventTouchUpInside];
    
    //选中数量
    sele_label = [[UILabel alloc]initWithFrame:CGRectMake(deleButton.right, 0, kScreenWidth-100*ratioWidth, _blueView.height)];
    sele_label.font = [UIFont systemFontOfSize:14];
    sele_label.textColor = [UIColor whiteColor];
    sele_label.textAlignment = NSTextAlignmentCenter;
    sele_label.text =@"";
    [_blueView addSubview:sele_label];

    //下载按钮
    UIButton *xiazaiButton = [[UIButton alloc]initWithFrame:CGRectMake(sele_label.right, 0, 50*ratioWidth, _blueView.height)];
    [_blueView addSubview:xiazaiButton];
    [xiazaiButton setImage:[UIImage imageNamed:@"下载图标"] forState:UIControlStateNormal];
    [xiazaiButton addTarget:self action:@selector(xiazaiButton) forControlEvents:UIControlEventTouchUpInside];
    
 
     [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(shuaxin) name:@"wenjianshanchu" object:nil];
    
    
    
    UIButton *tianjia = [[UIButton alloc]initWithFrame:CGRectMake(kScreenWidth-80,kScreenHeight-64-120,60,60)];
    [tianjia setImage:[UIImage imageNamed:@"添加"] forState:UIControlStateNormal];
    [self.view addSubview:tianjia];
    [tianjia addTarget:self action:@selector(tainjiaAction:) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}


- (void)tainjiaAction:(UIButton *)button{

    
    MAImagePickerController *imagePicker = [[MAImagePickerController alloc] init];
    [imagePicker setDelegate:self];
    [imagePicker setSourceType:MAImagePickerControllerSourceTypeCamera];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:imagePicker];
    [self presentViewController:navigationController animated:YES completion:nil];
    

}


//长按手势方法
- (void)longPressGestureRecognized:(id)sender {
    
    UILongPressGestureRecognizer *longPress = (UILongPressGestureRecognizer *)sender;
    UIGestureRecognizerState state = longPress.state;
    
    static UIView       *snapshot = nil;        ///< A snapshot of the row user is moving
    
    //判断手势状态
    switch (state) {
        case UIGestureRecognizerStateBegan:{
            //判断手势落点位置是否在路径上
            NSIndexPath *indexPath = [self.CollectionView indexPathForItemAtPoint:[longPress locationInView:self.CollectionView]];
            
 
            if (indexPath.row !=_dataAry.count) {
                
                UICollectionViewCell *cell = [self.CollectionView cellForItemAtIndexPath:indexPath];
                snapshot = [self customSnapshotFromView:cell];
                snapshot.center = cell.center;
                [self.CollectionView addSubview:snapshot];
                
                [UIView animateWithDuration:0.25 animations:^{
                    
                    // Offset for gesture location.
                    
                    snapshot.transform = CGAffineTransformMakeScale(1.05, 1.05);
                    snapshot.alpha = 0.28;
                    
                    // Black out.
                    //cell.backgroundColor = [UIColor blackColor];
                } completion:nil];
                
            }else{
            
                indexPath=nil;
            }
            
            
            
            
     
            if (indexPath == nil) {
                break;
            }
            //在路径上则开始移动该路径上的cell
            [self.CollectionView beginInteractiveMovementForItemAtIndexPath:indexPath];
        }
            break;
        case UIGestureRecognizerStateChanged:
            //移动过程当中随时更新cell位置
            
            [self.CollectionView updateInteractiveMovementTargetPosition:[longPress locationInView:self.CollectionView]];
            
            break;
            
        case UIGestureRecognizerStateEnded:
            //移动结束后关闭cell移动
            [self.CollectionView endInteractiveMovement];
            [snapshot removeFromSuperview];
            
            break;
        default:
            [self.CollectionView cancelInteractiveMovement];
            break;
    }
    
    // More coming soon...
}


//自定制快照样式
- (UIView *)customSnapshotFromView:(UIView *)inputView {
    
    UIView *snapshot = [inputView snapshotViewAfterScreenUpdates:YES];
    snapshot.layer.masksToBounds = NO;
    snapshot.layer.cornerRadius = 0.0;
    snapshot.layer.shadowOffset = CGSizeMake(-5.0, 0.0);
    snapshot.layer.shadowRadius = 5.0;
    snapshot.layer.shadowOpacity = 0.4;
    
    return snapshot;
}






- (void)shuaxin{
    
    [_CollectionView.mj_header beginRefreshing];
    
}


////下啦刷新
- (void)downLoad
{
    _isdownLoad = YES;
    _pageIndex1 = 1;
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
 
    params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"page":[NSString stringWithFormat:@"%d",_pageIndex1],@"relationid":self.zhujianid};
    url = Url_Cloud_listFile;
    
    [WXDataService requestAFWithURL:url params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        _pageIndex1 ++;
        
        if(result){
            NSDictionary *dic = result[@"result"];
            
            if ([[result objectForKey:@"status"] integerValue] == 0) {
                
                
                NSMutableArray *marray = [NSMutableArray array];
                
                NSArray *array = dic[@"list"];
                for (NSDictionary *subDic in array) {
                    WenjiandeModel *model = [[WenjiandeModel alloc] initWithDataDic:subDic];
                    [marray addObject:model];
                }
                
                if (_isdownLoad) {
                    self.dataAry = marray;

                } else {
                    
                    [self.dataAry addObjectsFromArray:marray];
                }
                
                if ([dic[@"page"] intValue] == 0) {
                    //没有更多了
                    if (_isdownLoad) {
                        
                        [_CollectionView.mj_header endRefreshing];
                        [_CollectionView.mj_footer endRefreshingWithNoMoreData];
                        
                    } else {
                        
                        [_CollectionView.mj_footer endRefreshing];
                        [_CollectionView.mj_footer endRefreshingWithNoMoreData];
                    }
                    
                    
                }else{
                    
                    //还有更多
                    if (_isdownLoad) {
                        
                        [_CollectionView.mj_header endRefreshing];
                        [_CollectionView.mj_footer resetNoMoreData];
                    } else {
                        
                        [_CollectionView.mj_footer endRefreshing];
                        [_CollectionView.mj_footer resetNoMoreData];
                    }
                    
                }
                
                [_CollectionView reloadData];
                
            }
            
            //没有数据了
            if ([[result objectForKey:@"status"] integerValue] == 1) {
                if (_isdownLoad) {
                    [_CollectionView.mj_header endRefreshing];
                } else {
                    [_CollectionView.mj_footer endRefreshing];
                }
                
                [MBProgressHUD showError:result[@"msg"] toView:self.view];
                
            }
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
        if (_isdownLoad) {
            [_CollectionView.mj_header endRefreshing];
        } else {
            [_CollectionView.mj_footer endRefreshing];
        }
        
    }];
    
}



//下载接口
- (void)xiazaiData:(NSArray *)idAry email:(NSString *)email{
    
    //    *member_id 用户的id
    //    *cloud_folder_id 档案的主键id(数组形式)
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_img_id":idAry,@"email":email};
    
    [WXDataService requestAFWithURL:Url_Cloud_downloadFile params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
            [self.CollectionView reloadData];
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}


//删除接口
- (void)delegateData:(NSArray *)idAry{
    
    //    *member_id 用户的id
    //    *cloud_folder_id 档案的主键id(数组形式)
    
    
    NSDictionary *params = @{@"member_id":[UserDefaults objectForKey:Member_id],@"cloud_img_id":idAry};
    
    [WXDataService requestAFWithURL:Url_Cloud_deleteFile params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0){
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
            [[NSNotificationCenter defaultCenter]postNotificationName:@"wenjianshanchu" object:nil];
            
        }else{
            [MBProgressHUD showError:result[@"msg"]  toView:self.view];
        }
        
        [_CollectionView reloadData];
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
}



//排序
- (void)paixu_loaddata{
    
//    file_id 拖动文件的id
//    sort_id 插入的位置(从1开始,1,2,3...)
//    page 当前页码

    WenjiandeModel *model = self.dataAry[_weizhi1];
    NSString *fileid = model.cloud_img_id;
    
   
    NSDictionary *params = @{@"file_id":fileid,@"sort_id":@(_weizhi2),@"page":@(_pageIndex1-1)};
    
    [WXDataService requestAFWithURL:Url_Cloud_sortFile params:params httpMethod:@"POST" isHUD:NO finishBlock:^(id result) {
        if ([[result objectForKey:@"status"] integerValue] == 0){
            [MBProgressHUD showSuccess:result[@"msg"]  toView:self.view];
        
        }
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    
    


}



#pragma mark -------------------所有点击事件--------------------------

- (void)rightAction{
    _type =!_type;
    if (!_type) {
        _blueView.hidden = NO;
        [self.rightbutton setTitle:@"取消" forState:UIControlStateNormal];
    }else{
        _blueView.hidden = YES;
        [self.rightbutton setTitle:@"选择" forState:UIControlStateNormal];
        [_seleDic removeAllObjects];
    }
    [_CollectionView reloadData];
    
    
    //    添加长按手势
    UILongPressGestureRecognizer *longPress = [[UILongPressGestureRecognizer alloc]
                                               initWithTarget:self action:@selector(longPressGestureRecognized:)];
    [self.CollectionView addGestureRecognizer:longPress];
    

}

//下载点击事件
-(void)xiazaiButton{
    
    
    OneAlert* one = [[OneAlert alloc]initWithTitle:@"输入邮箱" Message:nil Placeholdet:@"输入邮箱" delegate:self];
    [one show];
    
    NSLog(@"下载");

}




//删除点击事件
- (void)deleButton{
    NSLog(@"删除");

    NSMutableArray *hh = [NSMutableArray new];
    NSArray *gg = [_seleDic allKeys];
    [gg enumerateObjectsUsingBlock:^(NSString *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSInteger q = [obj integerValue];
        NSString *w = _dataAry[q];
        [hh addObject:w];
    }];
    [hh enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [_dataAry removeObject:obj];
    }];
    
 
    
    
    NSArray *deleteArrarys = [_seleDic allValues];
    [self delegateData:deleteArrarys];
    
    [_seleDic removeAllObjects];
    sele_label.text  = @"";
    
    [_CollectionView reloadData];
    
   
}



#pragma mark-------------------弹出试图的代理方法------------------
- (void)clickindex:(int)index lxView:(OneAlert *)alert whiteText:(NSString *)text{
    NSLog(@"%d",index);
    
    if (index==1) {
        
        NSArray *deleteArrarys = [_seleDic allValues];
        
        [self xiazaiData:deleteArrarys email:text];
    }
}






- (BOOL)collectionView:(UICollectionView *)collectionView canMoveItemAtIndexPath:(NSIndexPath *)indexPath{
    //返回YES允许其item移动
    return YES;
}

//CollectionView move 方法
- (void)collectionView:(UICollectionView *)collectionView moveItemAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath*)destinationIndexPath {
    NSLog(@"sourceIndexPath=%d",sourceIndexPath.item);
    NSLog(@"destinationIndexPath=%d",destinationIndexPath.item);
    
    _weizhi1 =sourceIndexPath.item;
    _weizhi2 =destinationIndexPath.item+1;

    [self paixu_loaddata];

        //取出源item数据
    id objc = [_dataAry objectAtIndex:sourceIndexPath.item];

    //从资源数组中移除该数据
    [_dataAry removeObject:objc];
    //将数据插入到资源数组中的目标位置上
    [_dataAry insertObject:objc atIndex:destinationIndexPath.item];
    
    
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    
         return _dataAry.count;

   
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    WenjianCoCell *cell = (WenjianCoCell *)[collectionView dequeueReusableCellWithReuseIdentifier:_cellIdentifier forIndexPath:indexPath];
    cell.backgroundColor = [UIColor whiteColor];
    cell.layer.borderWidth = 0.3;
    cell.layer.borderColor = UIColorFromRGB(0xf0f0f0).CGColor;

    
    WenjiandeModel *model = _dataAry[indexPath.row];
    
    cell.shuliang.hidden = YES;
    cell.seleImg.hidden = YES;
    cell.imgView.hidden = NO;
    cell.seleImg.userInteractionEnabled = NO;
    [cell.seleImg setImage:[UIImage imageNamed:@"选择"] forState:UIControlStateNormal];
   
   
//    NSTimeInterval time=[model.addtime doubleValue];//因为时差问题要加8小时 == 28800 sec
//    NSDate *detaildate=[NSDate dateWithTimeIntervalSince1970:time];
//    //实例化一个NSDateFormatter对象
//    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
//    //设定时间格式,这里可以设置成自己需要的格式
//    [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
//    [dateFormatter setTimeStyle:NSDateFormatterShortStyle];
//    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    cell.time.text= model.time;
    
    
    
    
        
    [cell.imgView sd_setImageWithURL:[NSURL URLWithString:model.img_show]];
    if (!_type) {
        
        NSString *sele = [_seleDic objectForKey:[NSString stringWithFormat:@"%ld",(long)indexPath.row]];
        if (sele.length !=0) {
            cell.seleImg.hidden = NO;
        }
        cell.shuliang.hidden = NO;
    }
    cell.shuliang.text = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
        
//    }
    
    return cell;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumLineSpacingForSectionAtIndex:(NSInteger)section
{
    return 5;
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section
{
    return 5;
}


- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath{

    if (indexPath.row==_dataAry.count) {
        NSLog(@"相机");
       


    }else{
        if (!_type) {
            
            WenjiandeModel *model = _dataAry[indexPath.row];
            NSString *valve = [_seleDic objectForKey:[NSString stringWithFormat:@"%ld",(long)indexPath.row]];
            
            if ( ![valve isEqualToString: model.cloud_img_id]) {
                [_seleDic setObject:model.cloud_img_id forKey:[NSString stringWithFormat:@"%ld",(long)indexPath.row]];
            }else{
                [_seleDic removeObjectForKey:[NSString stringWithFormat:@"%ld",(long)indexPath.row]];
            }
            sele_label.text = [NSString stringWithFormat:@"选中%ld个文件",(long)[_seleDic count]];
            [_CollectionView reloadData];
        }else{
            
            PhotoViewController *photoVC = [[PhotoViewController alloc] init];
            //
            NSMutableArray *urlary = [[NSMutableArray alloc]init];
            [self.dataAry enumerateObjectsUsingBlock:^(WenjiandeModel *obj, NSUInteger idx, BOOL * _Nonnull stop) {
                
                [urlary addObject:obj.img_show];
            }];
            //
            
            photoVC.urls= [NSMutableArray new];
            photoVC.urls = urlary;
            photoVC.index = indexPath.item;
            photoVC.listAry = [NSMutableArray new];
            photoVC.listAry = _dataAry;
            [self presentViewController:photoVC animated:YES completion:NULL];
            
        }
    }
  
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    
    UICollectionReusableView *reusableview = nil;
    if (kind == UICollectionElementKindSectionFooter) {
        
        UICollectionReusableView *footerview = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionFooter withReuseIdentifier:SHCollectionReusableViewFooter forIndexPath:indexPath];
        /**
         *   如果头尾视图没什么很多内容,直接创建对应控件进行添加即可,无需自定义.
         */
        
        
        for (UIView *sub in footerview.subviews) {
            
            [sub removeFromSuperview];
            
        }
        
        
        zongji = [[UILabel alloc]initWithFrame:CGRectMake(0,30,kScreenWidth, 20)];
        zongji.font = [UIFont systemFontOfSize:13];
        zongji.textColor = Color_text;
        zongji.textAlignment = NSTextAlignmentCenter;
        [footerview addSubview:zongji];
        
        
        if (_type) {
            zongji.text = [NSString stringWithFormat:@"共包含%d页内容",_dataAry.count];
            
        }else{
             zongji.text = [NSString stringWithFormat:@"拖动文件进行排序"];
        }

        reusableview = footerview;
    }
    
    
    
    
    return reusableview;
}




#pragma mark -------MAImagePickerControllerDelegate--------

- (void)imagePickerDidChooseImageWithImageData:(UIImage *)image
{
      [self dismissViewControllerAnimated:YES completion:nil];
    
    [WXDataService postImage:Url_thumbUpload params:nil fileData:UIImageJPEGRepresentation(image, .3) finishBlock:^(id result) {
        
        
        if ([[result objectForKey:@"status"] integerValue] == 0) {

            NSString *path = result[@"result"][@"path"];
            [self shangchuan:path];
        }
        
        //没有数据了
        if ([[result objectForKey:@"status"] integerValue] == 1) {
            
            [MBProgressHUD showError:result[@"msg"] toView:self.view];
            
        }
        
        [_CollectionView.mj_header beginRefreshing];
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
        
        [MBProgressHUD showError:@"网络连接失败！" toView:self.view];
        
    }];
    
    
}


- (void)imagePickerDidCancel
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



//上传文件
- (void)shangchuan:(NSString *)imageName{

//    *relationid 所属文件夹的id
//    *member_id 用户的id
//    *path 文件路径(上传文件返回的路径)
//    *member_id 用户的id
    
    NSDictionary *params = @{@"relationid":self.zhujianid,@"member_id":[UserDefaults objectForKey:Member_id],@"path":imageName};

    
    [WXDataService requestAFWithURL:Url_Cloud_touchFile params:params httpMethod:@"POST" isHUD:YES finishBlock:^(id result) {
        
        if ([[result objectForKey:@"status"] integerValue] == 0) {
            [MBProgressHUD showSuccess:result[@"msg"] toView:self.view];
             [[NSNotificationCenter defaultCenter]postNotificationName:@"wenjianshanchu" object:nil];
        }
        
    } errorBlock:^(NSError *error) {
        NSLog(@"%@",error);
    }];
    

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
